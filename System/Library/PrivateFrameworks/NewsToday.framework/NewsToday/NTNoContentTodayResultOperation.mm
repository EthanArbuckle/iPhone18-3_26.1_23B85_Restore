@interface NTNoContentTodayResultOperation
- (BOOL)validateOperation;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
- (void)validateOperation;
@end

@implementation NTNoContentTodayResultOperation

- (BOOL)validateOperation
{
  headlineResultCompletionHandler = [(NTTodayResultOperation *)self headlineResultCompletionHandler];

  if (!headlineResultCompletionHandler && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNoContentTodayResultOperation validateOperation];
  }

  return headlineResultCompletionHandler != 0;
}

- (void)performOperation
{
  v3 = [NTTodayResults alloc];
  v4 = objc_opt_new();
  date = [MEMORY[0x277CBEAA8] date];
  v7 = [(NTTodayResults *)v3 initWithSourceIdentifier:@"unknown" sections:v4 expirationDate:date headlineScale:1.0];

  v6 = objc_opt_new();
  [v6 setTodaySourceIdentifier:@"unknown"];
  [(NTNoContentTodayResultOperation *)self setResultTodayResults:v7];
  [(NTNoContentTodayResultOperation *)self setResultAssetHandlesByAssetID:MEMORY[0x277CBEC10]];
  [(NTNoContentTodayResultOperation *)self setResultFetchInfo:v6];
  [(FCOperation *)self finishedPerformingOperationWithError:0];
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  headlineResultCompletionHandler = [(NTTodayResultOperation *)self headlineResultCompletionHandler];
  resultTodayResults = [(NTNoContentTodayResultOperation *)self resultTodayResults];
  resultAssetHandlesByAssetID = [(NTNoContentTodayResultOperation *)self resultAssetHandlesByAssetID];
  resultFetchInfo = [(NTNoContentTodayResultOperation *)self resultFetchInfo];
  headlineResultCompletionHandler[2](headlineResultCompletionHandler, resultTodayResults, resultAssetHandlesByAssetID, resultFetchInfo, errorCopy);
}

- (void)validateOperation
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No content result operation must have a completion handler"];
  v2 = 136315906;
  v3 = "[NTNoContentTodayResultOperation validateOperation]";
  v4 = 2080;
  v5 = "NTNoContentTodayResultOperation.m";
  v6 = 1024;
  v7 = 27;
  v8 = 2114;
  v9 = v0;
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v2, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

@end