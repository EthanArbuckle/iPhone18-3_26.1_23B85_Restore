@interface NSSNewsAnalyticsSubmitEnvelopesOperation
- (BOOL)validateOperation;
- (NSSNewsAnalyticsSubmitEnvelopesOperation)init;
- (void)operationDidFinishWithError:(id)error;
- (void)performOperation;
- (void)validateOperation;
@end

@implementation NSSNewsAnalyticsSubmitEnvelopesOperation

- (NSSNewsAnalyticsSubmitEnvelopesOperation)init
{
  v3.receiver = self;
  v3.super_class = NSSNewsAnalyticsSubmitEnvelopesOperation;
  return [(FCOperation *)&v3 init];
}

- (BOOL)validateOperation
{
  envelopes = [(NSSNewsAnalyticsSubmitEnvelopesOperation *)self envelopes];

  if (!envelopes && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NSSNewsAnalyticsSubmitEnvelopesOperation validateOperation];
  }

  return envelopes != 0;
}

- (void)performOperation
{
  envelopes = [(NSSNewsAnalyticsSubmitEnvelopesOperation *)self envelopes];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__NSSNewsAnalyticsSubmitEnvelopesOperation_performOperation__block_invoke;
  v10[3] = &unk_279980D48;
  v10[4] = self;
  v4 = MEMORY[0x25F882600](v10);
  if ([envelopes count])
  {
    v5 = objc_alloc(MEMORY[0x277CCAE80]);
    v6 = [v5 initWithMachServiceName:*MEMORY[0x277D313E0] options:0];
    v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286DA6CD0];
    [v6 setRemoteObjectInterface:v7];
    [v6 resume];
    v8 = [v6 remoteObjectProxyWithErrorHandler:v4];
    [v8 submitEnvelopes:envelopes withCompletion:v4];
    [MEMORY[0x277D2F918] registerEnvelopesAsSubmittedToUploader:envelopes];
  }

  else
  {
    v9 = v4;
    v9[2](v9, 0);
    v6 = v9;
  }
}

- (void)operationDidFinishWithError:(id)error
{
  errorCopy = error;
  submissionCompletion = [(NSSNewsAnalyticsSubmitEnvelopesOperation *)self submissionCompletion];

  if (submissionCompletion)
  {
    submissionCompletion2 = [(NSSNewsAnalyticsSubmitEnvelopesOperation *)self submissionCompletion];
    (submissionCompletion2)[2](submissionCompletion2, errorCopy);
  }
}

- (void)validateOperation
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"submit envelopes operation requires envelopes"];
  v2 = 136315906;
  v3 = "[NSSNewsAnalyticsSubmitEnvelopesOperation validateOperation]";
  v4 = 2080;
  v5 = "NSSNewsAnalyticsSubmitEnvelopesOperation.m";
  v6 = 1024;
  v7 = 42;
  v8 = 2114;
  v9 = v0;
  _os_log_error_impl(&dword_25BF0A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v2, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

@end