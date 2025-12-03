@interface CAMPendingLocalPersistenceWrapper
- (CAMPendingLocalPersistenceWrapper)initWithRequest:(id)request result:(id)result completionHandler:(id)handler;
@end

@implementation CAMPendingLocalPersistenceWrapper

- (CAMPendingLocalPersistenceWrapper)initWithRequest:(id)request result:(id)result completionHandler:(id)handler
{
  requestCopy = request;
  resultCopy = result;
  handlerCopy = handler;
  v18.receiver = self;
  v18.super_class = CAMPendingLocalPersistenceWrapper;
  v12 = [(CAMPendingLocalPersistenceWrapper *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, request);
    objc_storeStrong(&v13->_result, result);
    v14 = [handlerCopy copy];
    completionHandler = v13->_completionHandler;
    v13->_completionHandler = v14;

    v16 = v13;
  }

  return v13;
}

@end