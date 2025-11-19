@interface CRKStudentdBackedInstructordTransportProvider
- (CRKStudentdBackedInstructordTransportProvider)initWithStudentDaemonProxy:(id)a3 classroomAppBundleURL:(id)a4 instructordBundleIdentifier:(id)a5;
- (void)fetchTransportOperationDidFinish:(id)a3 completion:(id)a4;
- (void)fetchTransportWithCompletion:(id)a3;
@end

@implementation CRKStudentdBackedInstructordTransportProvider

- (CRKStudentdBackedInstructordTransportProvider)initWithStudentDaemonProxy:(id)a3 classroomAppBundleURL:(id)a4 instructordBundleIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = CRKStudentdBackedInstructordTransportProvider;
  v11 = [(CRKStudentdBackedInstructordTransportProvider *)&v17 init];
  if (v11)
  {
    if (v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = objc_opt_new();
    }

    studentDaemonProxy = v11->_studentDaemonProxy;
    v11->_studentDaemonProxy = v12;

    v14 = [v10 copy];
    instructordBundleIdentifier = v11->_instructordBundleIdentifier;
    v11->_instructordBundleIdentifier = v14;

    objc_storeStrong(&v11->_classroomAppBundleURL, a4);
  }

  return v11;
}

- (void)fetchTransportWithCompletion:(id)a3
{
  v4 = a3;
  v11 = objc_opt_new();
  v5 = [(CRKStudentdBackedInstructordTransportProvider *)self classroomAppBundleURL];
  [v11 setClassroomAppBundleURL:v5];

  v6 = [(CRKStudentdBackedInstructordTransportProvider *)self instructordBundleIdentifier];
  [v11 setInstructordBundleIdentifier:v6];

  v7 = [(CRKStudentdBackedInstructordTransportProvider *)self studentDaemonProxy];
  v8 = [v7 operationForRequest:v11];

  v9 = MEMORY[0x245D3AAD0](v4);
  [v8 addTarget:self selector:sel_fetchTransportOperationDidFinish_completion_ forOperationEvents:6 userInfo:v9];

  v10 = [MEMORY[0x277CF9540] crk_backgroundQueue];
  [v10 addOperation:v8];
}

- (void)fetchTransportOperationDidFinish:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 error];

  if (v7)
  {
    v12 = [v6 error];

    v5[2](v5, 0, v12);
  }

  else
  {
    v12 = [v6 resultObject];

    v8 = objc_alloc(MEMORY[0x277CCAE80]);
    v9 = [v12 endpoint];
    v10 = [v8 initWithListenerEndpoint:v9];

    v11 = [objc_alloc(MEMORY[0x277CF95B8]) initWithXPCConnection:v10];
    (v5)[2](v5, v11, 0);

    v5 = v10;
  }
}

@end