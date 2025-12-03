@interface CRKSingleConnectionAttemptStudentDaemonProxy
- (CRKSingleConnectionAttemptStudentDaemonProxy)init;
- (CRKSingleConnectionAttemptStudentDaemonProxy)initWithTransportProvider:(id)provider;
- (id)operationForRequest:(id)request;
- (void)connect;
- (void)connectIfNeeded;
- (void)dealloc;
- (void)failWithError:(id)error;
@end

@implementation CRKSingleConnectionAttemptStudentDaemonProxy

- (void)dealloc
{
  [(CATTaskClient *)self->mTaskClient invalidate];
  v3.receiver = self;
  v3.super_class = CRKSingleConnectionAttemptStudentDaemonProxy;
  [(CRKSingleConnectionAttemptStudentDaemonProxy *)&v3 dealloc];
}

- (CRKSingleConnectionAttemptStudentDaemonProxy)init
{
  v3 = objc_opt_new();
  v4 = [(CRKSingleConnectionAttemptStudentDaemonProxy *)self initWithTransportProvider:v3];

  return v4;
}

- (CRKSingleConnectionAttemptStudentDaemonProxy)initWithTransportProvider:(id)provider
{
  providerCopy = provider;
  v11.receiver = self;
  v11.super_class = CRKSingleConnectionAttemptStudentDaemonProxy;
  v6 = [(CRKSingleConnectionAttemptStudentDaemonProxy *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mTransportProvider, provider);
    v8 = objc_opt_new();
    mTaskClient = v7->mTaskClient;
    v7->mTaskClient = v8;

    [(CATTaskClient *)v7->mTaskClient setDelegate:v7];
  }

  return v7;
}

- (void)connectIfNeeded
{
  if (!self->mDidAttemptToConnect)
  {
    self->mDidAttemptToConnect = 1;
    [(CRKSingleConnectionAttemptStudentDaemonProxy *)self connect];
  }
}

- (void)connect
{
  mTransportProvider = self->mTransportProvider;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__CRKSingleConnectionAttemptStudentDaemonProxy_connect__block_invoke;
  v3[3] = &unk_278DC3300;
  v3[4] = self;
  [(CRKTransportProviding *)mTransportProvider fetchTransportWithCompletion:v3];
}

uint64_t __55__CRKSingleConnectionAttemptStudentDaemonProxy_connect__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return [v3 failWithError:?];
  }

  else
  {
    return [v3[2] connectWithTransport:a2];
  }
}

- (void)failWithError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    [(CRKSingleConnectionAttemptStudentDaemonProxy *)a2 failWithError:?];
  }

  mError = self->mError;
  self->mError = errorCopy;
  v7 = errorCopy;

  [(CATTaskClient *)self->mTaskClient invalidateWithError:v7];
}

- (id)operationForRequest:(id)request
{
  requestCopy = request;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [(CRKSingleConnectionAttemptStudentDaemonProxy *)a2 operationForRequest:?];
  }

  [(CRKSingleConnectionAttemptStudentDaemonProxy *)self connectIfNeeded];
  if (self->mError)
  {
    [MEMORY[0x277CF9558] invalidRemoteTaskWithRequest:requestCopy error:?];
  }

  else
  {
    [(CATTaskClient *)self->mTaskClient prepareTaskOperationForRequest:requestCopy];
  }
  v6 = ;

  return v6;
}

- (void)failWithError:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKSingleConnectionAttemptStudentDaemonProxy.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"error"}];
}

- (void)operationForRequest:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"CRKSingleConnectionAttemptStudentDaemonProxy.m" lineNumber:71 description:{@"%@ must be called from the main thread", v4}];
}

@end