@interface HMMTRControllerWrapperRevokeHandlerInfo
- (HMMTRControllerWrapperRevokeHandlerInfo)initWithHandler:(id)a3 queue:(id)a4;
@end

@implementation HMMTRControllerWrapperRevokeHandlerInfo

- (HMMTRControllerWrapperRevokeHandlerInfo)initWithHandler:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HMMTRControllerWrapperRevokeHandlerInfo;
  v8 = [(HMMTRControllerWrapperRevokeHandlerInfo *)&v12 init];
  if (v8)
  {
    v9 = MEMORY[0x2318887D0](v6);
    handler = v8->_handler;
    v8->_handler = v9;

    objc_storeStrong(&v8->_queue, a4);
  }

  return v8;
}

@end