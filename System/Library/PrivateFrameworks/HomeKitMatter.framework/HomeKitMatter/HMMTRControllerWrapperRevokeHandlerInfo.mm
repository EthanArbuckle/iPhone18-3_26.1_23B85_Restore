@interface HMMTRControllerWrapperRevokeHandlerInfo
- (HMMTRControllerWrapperRevokeHandlerInfo)initWithHandler:(id)handler queue:(id)queue;
@end

@implementation HMMTRControllerWrapperRevokeHandlerInfo

- (HMMTRControllerWrapperRevokeHandlerInfo)initWithHandler:(id)handler queue:(id)queue
{
  handlerCopy = handler;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = HMMTRControllerWrapperRevokeHandlerInfo;
  v8 = [(HMMTRControllerWrapperRevokeHandlerInfo *)&v12 init];
  if (v8)
  {
    v9 = MEMORY[0x2318887D0](handlerCopy);
    handler = v8->_handler;
    v8->_handler = v9;

    objc_storeStrong(&v8->_queue, queue);
  }

  return v8;
}

@end