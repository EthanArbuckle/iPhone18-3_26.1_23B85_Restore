@interface IMServiceReachabilityResponseBlockHandler
- (IMServiceReachabilityResponseBlockHandler)initWithBlock:(id)block;
- (void)reachabilityRequest:(id)request updatedWithResult:(id)result;
@end

@implementation IMServiceReachabilityResponseBlockHandler

- (IMServiceReachabilityResponseBlockHandler)initWithBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = IMServiceReachabilityResponseBlockHandler;
  v5 = [(IMServiceReachabilityResponseBlockHandler *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(blockCopy);
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

- (void)reachabilityRequest:(id)request updatedWithResult:(id)result
{
  resultCopy = result;
  requestCopy = request;
  block = [(IMServiceReachabilityResponseBlockHandler *)self block];
  block[2](block, requestCopy, resultCopy);
}

@end