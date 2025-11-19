@interface IMMessageContext
- (IMMessageContext)init;
- (OS_xpc_object)xpcMessage;
- (void)setXpcMessage:(id)a3;
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

- (void)setXpcMessage:(id)a3
{
  v6 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_xpcMessage != v6)
  {
    objc_storeStrong(&v5->_xpcMessage, a3);
  }

  objc_sync_exit(v5);
}

- (OS_xpc_object)xpcMessage
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_xpcMessage;
  objc_sync_exit(v2);

  return v3;
}

@end