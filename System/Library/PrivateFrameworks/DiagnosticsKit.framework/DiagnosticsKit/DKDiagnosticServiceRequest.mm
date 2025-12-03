@interface DKDiagnosticServiceRequest
- (DKDiagnosticServiceRequest)initWithHostServicesDelegate:(id)delegate;
- (id)hostServicesDelegate;
- (void)_completeWithDiagnosticResult:(id)result error:(id)error;
- (void)cancelExtensionRequest;
- (void)completeWithPayload:(id)payload completion:(id)completion;
- (void)didFailStart;
- (void)didInterrupt;
- (void)didInvalidate;
- (void)dismissViewControllerWithCompletion:(id)completion;
@end

@implementation DKDiagnosticServiceRequest

- (DKDiagnosticServiceRequest)initWithHostServicesDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = DKDiagnosticServiceRequest;
  v5 = [(DKDiagnosticServiceRequest *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_completed = 0;
    objc_storeWeak(&v5->_hostServicesDelegate, delegateCopy);
  }

  return v6;
}

- (void)didInvalidate
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA450];
  v4 = DKErrorLocalizedDescriptionForCode(-1001);
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v3 errorWithDomain:@"DKErrorDomain" code:-1001 userInfo:v5];

  [(DKDiagnosticServiceRequest *)self _completeWithDiagnosticResult:0 error:v6];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)didInterrupt
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA450];
  v4 = DKErrorLocalizedDescriptionForCode(-1001);
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v3 errorWithDomain:@"DKErrorDomain" code:-1001 userInfo:v5];

  [(DKDiagnosticServiceRequest *)self _completeWithDiagnosticResult:0 error:v6];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)didFailStart
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA450];
  v4 = DKErrorLocalizedDescriptionForCode(-1001);
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v3 errorWithDomain:@"DKErrorDomain" code:-1001 userInfo:v5];

  [(DKDiagnosticServiceRequest *)self _completeWithDiagnosticResult:0 error:v6];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)completeWithPayload:(id)payload completion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  completionCopy = completion;
  v8 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[DKDiagnosticServiceRequest completeWithPayload:completion:]";
    v12 = 2112;
    v13 = payloadCopy;
    _os_log_impl(&dword_248B9D000, v8, OS_LOG_TYPE_DEFAULT, "%s: %@", &v10, 0x16u);
  }

  completionCopy[2](completionCopy);
  [(DKDiagnosticServiceRequest *)self _completeWithDiagnosticResult:payloadCopy error:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)cancelExtensionRequest
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[DKDiagnosticServiceRequest cancelExtensionRequest]";
    _os_log_impl(&dword_248B9D000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(DKDiagnosticServiceRequest *)self _completeWithDiagnosticResult:0 error:0];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)dismissViewControllerWithCompletion:(id)completion
{
  v8 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v4 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[DKDiagnosticServiceRequest dismissViewControllerWithCompletion:]";
    _os_log_impl(&dword_248B9D000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  completionCopy[2](completionCopy);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_completeWithDiagnosticResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  if (![(DKDiagnosticServiceRequest *)self completed])
  {
    [(DKDiagnosticServiceRequest *)self setCompleted:1];
    completion = [(DKDiagnosticServiceRequest *)self completion];

    if (completion)
    {
      completion2 = [(DKDiagnosticServiceRequest *)self completion];
      (completion2)[2](completion2, resultCopy, errorCopy);
    }

    connection = [(DKDiagnosticServiceRequest *)self connection];
    [connection invalidate];
  }
}

- (id)hostServicesDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_hostServicesDelegate);

  return WeakRetained;
}

@end