@interface CRKStudentdBackedInstructordTransportProvider
- (CRKStudentdBackedInstructordTransportProvider)initWithStudentDaemonProxy:(id)proxy classroomAppBundleURL:(id)l instructordBundleIdentifier:(id)identifier;
- (void)fetchTransportOperationDidFinish:(id)finish completion:(id)completion;
- (void)fetchTransportWithCompletion:(id)completion;
@end

@implementation CRKStudentdBackedInstructordTransportProvider

- (CRKStudentdBackedInstructordTransportProvider)initWithStudentDaemonProxy:(id)proxy classroomAppBundleURL:(id)l instructordBundleIdentifier:(id)identifier
{
  proxyCopy = proxy;
  lCopy = l;
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = CRKStudentdBackedInstructordTransportProvider;
  v11 = [(CRKStudentdBackedInstructordTransportProvider *)&v17 init];
  if (v11)
  {
    if (proxyCopy)
    {
      v12 = proxyCopy;
    }

    else
    {
      v12 = objc_opt_new();
    }

    studentDaemonProxy = v11->_studentDaemonProxy;
    v11->_studentDaemonProxy = v12;

    v14 = [identifierCopy copy];
    instructordBundleIdentifier = v11->_instructordBundleIdentifier;
    v11->_instructordBundleIdentifier = v14;

    objc_storeStrong(&v11->_classroomAppBundleURL, l);
  }

  return v11;
}

- (void)fetchTransportWithCompletion:(id)completion
{
  completionCopy = completion;
  v11 = objc_opt_new();
  classroomAppBundleURL = [(CRKStudentdBackedInstructordTransportProvider *)self classroomAppBundleURL];
  [v11 setClassroomAppBundleURL:classroomAppBundleURL];

  instructordBundleIdentifier = [(CRKStudentdBackedInstructordTransportProvider *)self instructordBundleIdentifier];
  [v11 setInstructordBundleIdentifier:instructordBundleIdentifier];

  studentDaemonProxy = [(CRKStudentdBackedInstructordTransportProvider *)self studentDaemonProxy];
  v8 = [studentDaemonProxy operationForRequest:v11];

  v9 = MEMORY[0x245D3AAD0](completionCopy);
  [v8 addTarget:self selector:sel_fetchTransportOperationDidFinish_completion_ forOperationEvents:6 userInfo:v9];

  crk_backgroundQueue = [MEMORY[0x277CF9540] crk_backgroundQueue];
  [crk_backgroundQueue addOperation:v8];
}

- (void)fetchTransportOperationDidFinish:(id)finish completion:(id)completion
{
  completionCopy = completion;
  finishCopy = finish;
  error = [finishCopy error];

  if (error)
  {
    error2 = [finishCopy error];

    completionCopy[2](completionCopy, 0, error2);
  }

  else
  {
    error2 = [finishCopy resultObject];

    v8 = objc_alloc(MEMORY[0x277CCAE80]);
    endpoint = [error2 endpoint];
    v10 = [v8 initWithListenerEndpoint:endpoint];

    v11 = [objc_alloc(MEMORY[0x277CF95B8]) initWithXPCConnection:v10];
    (completionCopy)[2](completionCopy, v11, 0);

    completionCopy = v10;
  }
}

@end