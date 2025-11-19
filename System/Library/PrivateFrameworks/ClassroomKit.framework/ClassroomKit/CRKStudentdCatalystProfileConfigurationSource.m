@interface CRKStudentdCatalystProfileConfigurationSource
- (CRKStudentdCatalystProfileConfigurationSource)initWithStudentDaemonProxy:(id)a3 callbackQueue:(id)a4;
- (void)fetchConfiguration:(id)a3;
- (void)fetchConfigurationOperationDidFinish:(id)a3 completion:(id)a4;
- (void)setConfiguration:(id)a3 completion:(id)a4;
@end

@implementation CRKStudentdCatalystProfileConfigurationSource

- (CRKStudentdCatalystProfileConfigurationSource)initWithStudentDaemonProxy:(id)a3 callbackQueue:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = CRKStudentdCatalystProfileConfigurationSource;
  v7 = [(CRKStudentdCatalystProfileConfigurationSource *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_studentDaemonProxy, a3);
  }

  return v8;
}

- (void)fetchConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(CRKStudentdCatalystProfileConfigurationSource *)self studentDaemonProxy];
  v6 = objc_opt_new();
  v9 = [v5 operationForRequest:v6];

  v7 = MEMORY[0x245D3AAD0](v4);
  [v9 addTarget:self selector:sel_fetchConfigurationOperationDidFinish_completion_ forOperationEvents:6 userInfo:v7];

  v8 = [MEMORY[0x277CF9540] crk_backgroundQueue];
  [v8 addOperation:v9];
}

- (void)setConfiguration:(id)a3 completion:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"CRKStudentdCatalystProfileConfigurationSource.m" lineNumber:44 description:@"setConfiguration is not supported"];
}

- (void)fetchConfigurationOperationDidFinish:(id)a3 completion:(id)a4
{
  v10 = a3;
  v5 = a4;
  v6 = [v10 error];
  if (v6)
  {
    v5[2](v5, 0, v6);
  }

  else
  {
    v7 = [v10 resultObject];
    v8 = [v7 configurationsByType];
    v9 = [v8 objectForKeyedSubscript:&unk_285672658];

    (v5)[2](v5, v9, 0);
  }
}

@end