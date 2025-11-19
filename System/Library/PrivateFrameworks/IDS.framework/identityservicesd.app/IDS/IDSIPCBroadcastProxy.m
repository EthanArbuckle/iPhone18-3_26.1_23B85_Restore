@interface IDSIPCBroadcastProxy
- (IDSIPCBroadcastProxy)initWithProtocol:(id)a3 xpcProxy:(id)a4 nwProxy:(id)a5;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
- (void)sendXPCObject:(id)a3;
@end

@implementation IDSIPCBroadcastProxy

- (IDSIPCBroadcastProxy)initWithProtocol:(id)a3 xpcProxy:(id)a4 nwProxy:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v9 && v10 | v11)
  {
    objc_storeStrong(&self->_protocol, a3);
    objc_storeStrong(&self->_xpcBroadcastProxy, a4);
    objc_storeStrong(&self->_nwBroadcastProxy, a5);
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v4 = self->_protocol;
  MethodDescription = protocol_getMethodDescription(v4, a3, 1, 1);
  types = MethodDescription.types;
  if (MethodDescription.name)
  {
    if (MethodDescription.types)
    {
LABEL_3:
      v7 = [NSMethodSignature signatureWithObjCTypes:types];
      goto LABEL_6;
    }
  }

  else
  {
    types = protocol_getMethodDescription(v4, a3, 0, 1).types;
    if (types)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (void)forwardInvocation:(id)a3
{
  v9 = a3;
  v4 = [(IDSIPCBroadcastProxy *)self xpcBroadcastProxy];

  if (v4)
  {
    v5 = [(IDSIPCBroadcastProxy *)self xpcBroadcastProxy];
    [v9 invokeWithTarget:v5];
  }

  v6 = [(IDSIPCBroadcastProxy *)self nwBroadcastProxy];
  [v9 selector];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(IDSIPCBroadcastProxy *)self nwBroadcastProxy];
    [v9 invokeWithTarget:v8];
  }
}

- (void)sendXPCObject:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(IDSIPCBroadcastProxy *)self xpcBroadcastProxy];
    [v5 sendXPCObject:v4];
  }
}

@end