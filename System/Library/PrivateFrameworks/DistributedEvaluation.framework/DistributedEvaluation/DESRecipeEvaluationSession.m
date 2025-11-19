@interface DESRecipeEvaluationSession
- (id)_initWithResumptionURL:(id)a3 recordSet:(id)a4 protocolClass:(Class)a5 error:(id *)a6;
- (void)completeWithError:(id)a3 completionHandler:(id)a4;
- (void)completeWithJSONResult:(id)a3 binaryResult:(id)a4 completionHandler:(id)a5;
- (void)downloadAttachmentsWithConfiguration:(id)a3 completion:(id)a4;
@end

@implementation DESRecipeEvaluationSession

- (id)_initWithResumptionURL:(id)a3 recordSet:(id)a4 protocolClass:(Class)a5 error:(id *)a6
{
  DESLogAndSetSunsetError(a6);

  return 0;
}

- (void)downloadAttachmentsWithConfiguration:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = DESLogAndReturnSunsetError();
  (*(a4 + 2))(v5, v6);
}

- (void)completeWithJSONResult:(id)a3 binaryResult:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v5 = DESLogAndReturnSunsetError();
  v6 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7);
    v6 = v7;
  }
}

- (void)completeWithError:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v4 = DESLogAndReturnSunsetError();
  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6);
    v5 = v6;
  }
}

@end