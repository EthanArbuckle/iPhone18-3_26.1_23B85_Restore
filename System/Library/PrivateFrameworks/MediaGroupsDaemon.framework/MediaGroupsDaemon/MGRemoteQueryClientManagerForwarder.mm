@interface MGRemoteQueryClientManagerForwarder
- (MGRemoteQueryClientManager)manager;
- (MGRemoteQueryClientManagerForwarder)initWithClientManager:(id)manager;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
@end

@implementation MGRemoteQueryClientManagerForwarder

- (MGRemoteQueryClientManagerForwarder)initWithClientManager:(id)manager
{
  managerCopy = manager;
  v8.receiver = self;
  v8.super_class = MGRemoteQueryClientManagerForwarder;
  v5 = [(MGRemoteQueryClientManagerForwarder *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_manager, managerCopy);
  }

  return v6;
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  sessionCopy = session;
  challengeCopy = challenge;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  v11 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained URLSession:sessionCopy didReceiveChallenge:challengeCopy completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 2, 0);
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  sessionCopy = session;
  taskCopy = task;
  responseCopy = response;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  v14 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained URLSession:sessionCopy dataTask:taskCopy didReceiveResponse:responseCopy completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  sessionCopy = session;
  dataCopy = data;
  taskCopy = task;
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  v11 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained URLSession:sessionCopy dataTask:taskCopy didReceiveData:dataCopy];
  }

  else
  {
    [taskCopy cancel];
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  v11 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained URLSession:sessionCopy task:taskCopy didCompleteWithError:errorCopy];
  }
}

- (MGRemoteQueryClientManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

@end