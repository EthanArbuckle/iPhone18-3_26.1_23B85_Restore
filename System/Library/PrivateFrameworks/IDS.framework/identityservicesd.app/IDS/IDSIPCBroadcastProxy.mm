@interface IDSIPCBroadcastProxy
- (IDSIPCBroadcastProxy)initWithProtocol:(id)protocol xpcProxy:(id)proxy nwProxy:(id)nwProxy;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
- (void)sendXPCObject:(id)object;
@end

@implementation IDSIPCBroadcastProxy

- (IDSIPCBroadcastProxy)initWithProtocol:(id)protocol xpcProxy:(id)proxy nwProxy:(id)nwProxy
{
  protocolCopy = protocol;
  proxyCopy = proxy;
  nwProxyCopy = nwProxy;
  v12 = nwProxyCopy;
  if (protocolCopy && proxyCopy | nwProxyCopy)
  {
    objc_storeStrong(&self->_protocol, protocol);
    objc_storeStrong(&self->_xpcBroadcastProxy, proxy);
    objc_storeStrong(&self->_nwBroadcastProxy, nwProxy);
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v4 = self->_protocol;
  MethodDescription = protocol_getMethodDescription(v4, selector, 1, 1);
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
    types = protocol_getMethodDescription(v4, selector, 0, 1).types;
    if (types)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  xpcBroadcastProxy = [(IDSIPCBroadcastProxy *)self xpcBroadcastProxy];

  if (xpcBroadcastProxy)
  {
    xpcBroadcastProxy2 = [(IDSIPCBroadcastProxy *)self xpcBroadcastProxy];
    [invocationCopy invokeWithTarget:xpcBroadcastProxy2];
  }

  nwBroadcastProxy = [(IDSIPCBroadcastProxy *)self nwBroadcastProxy];
  [invocationCopy selector];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    nwBroadcastProxy2 = [(IDSIPCBroadcastProxy *)self nwBroadcastProxy];
    [invocationCopy invokeWithTarget:nwBroadcastProxy2];
  }
}

- (void)sendXPCObject:(id)object
{
  if (object)
  {
    objectCopy = object;
    xpcBroadcastProxy = [(IDSIPCBroadcastProxy *)self xpcBroadcastProxy];
    [xpcBroadcastProxy sendXPCObject:objectCopy];
  }
}

@end