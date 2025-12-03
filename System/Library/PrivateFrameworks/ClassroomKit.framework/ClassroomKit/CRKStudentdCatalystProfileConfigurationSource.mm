@interface CRKStudentdCatalystProfileConfigurationSource
- (CRKStudentdCatalystProfileConfigurationSource)initWithStudentDaemonProxy:(id)proxy callbackQueue:(id)queue;
- (void)fetchConfiguration:(id)configuration;
- (void)fetchConfigurationOperationDidFinish:(id)finish completion:(id)completion;
- (void)setConfiguration:(id)configuration completion:(id)completion;
@end

@implementation CRKStudentdCatalystProfileConfigurationSource

- (CRKStudentdCatalystProfileConfigurationSource)initWithStudentDaemonProxy:(id)proxy callbackQueue:(id)queue
{
  proxyCopy = proxy;
  v10.receiver = self;
  v10.super_class = CRKStudentdCatalystProfileConfigurationSource;
  v7 = [(CRKStudentdCatalystProfileConfigurationSource *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_studentDaemonProxy, proxy);
  }

  return v8;
}

- (void)fetchConfiguration:(id)configuration
{
  configurationCopy = configuration;
  studentDaemonProxy = [(CRKStudentdCatalystProfileConfigurationSource *)self studentDaemonProxy];
  v6 = objc_opt_new();
  v9 = [studentDaemonProxy operationForRequest:v6];

  v7 = MEMORY[0x245D3AAD0](configurationCopy);
  [v9 addTarget:self selector:sel_fetchConfigurationOperationDidFinish_completion_ forOperationEvents:6 userInfo:v7];

  crk_backgroundQueue = [MEMORY[0x277CF9540] crk_backgroundQueue];
  [crk_backgroundQueue addOperation:v9];
}

- (void)setConfiguration:(id)configuration completion:(id)completion
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CRKStudentdCatalystProfileConfigurationSource.m" lineNumber:44 description:@"setConfiguration is not supported"];
}

- (void)fetchConfigurationOperationDidFinish:(id)finish completion:(id)completion
{
  finishCopy = finish;
  completionCopy = completion;
  error = [finishCopy error];
  if (error)
  {
    completionCopy[2](completionCopy, 0, error);
  }

  else
  {
    resultObject = [finishCopy resultObject];
    configurationsByType = [resultObject configurationsByType];
    v9 = [configurationsByType objectForKeyedSubscript:&unk_285672658];

    (completionCopy)[2](completionCopy, v9, 0);
  }
}

@end