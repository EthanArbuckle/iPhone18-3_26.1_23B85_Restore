@interface IMMessageContext
- (IMMessageContext)init;
- (OS_xpc_object)xpcMessage;
- (void)setXpcMessage:(id)message;
@end

@implementation IMMessageContext

- (IMMessageContext)init
{
  v7.receiver = self;
  v7.super_class = IMMessageContext;
  v2 = [(IMMessageContext *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_needReply = 0;
    *&v2->_boost = 257;
    v4 = voucher_copy();
    voucher = v3->_voucher;
    v3->_voucher = v4;
  }

  return v3;
}

- (void)setXpcMessage:(id)message
{
  messageCopy = message;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_xpcMessage != messageCopy)
  {
    objc_storeStrong(&selfCopy->_xpcMessage, message);
  }

  objc_sync_exit(selfCopy);
}

- (OS_xpc_object)xpcMessage
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_xpcMessage;
  objc_sync_exit(selfCopy);

  return v3;
}

@end