@interface IMInvocationForwardingProxy
- (BOOL)respondsToSelector:(SEL)selector;
- (IMInvocationForwardingProxy)initWithProtocol:(id)protocol forwardingHandler:(id)handler;
- (id)methodSignatureForSelector:(SEL)selector;
@end

@implementation IMInvocationForwardingProxy

- (IMInvocationForwardingProxy)initWithProtocol:(id)protocol forwardingHandler:(id)handler
{
  objc_storeStrong(&self->_protocol, protocol);
  protocolCopy = protocol;
  handlerCopy = handler;
  v9 = [handlerCopy copy];

  forwardingHandler = self->_forwardingHandler;
  self->_forwardingHandler = v9;

  return self;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v3 = [(IMInvocationForwardingProxy *)self methodSignatureForSelector:selector];
  v4 = v3 != 0;

  return v4;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  MethodDescription = protocol_getMethodDescription(self->_protocol, selector, 1, 1);
  types = MethodDescription.types;
  if (MethodDescription.name || (v7 = protocol_getMethodDescription(self->_protocol, selector, 0, 1), types = v7.types, v7.name) || (sel_respondsToSelector_ != selector ? (v8 = sel_conformsToProtocol_ == selector) : (v8 = 1), !v8))
  {
    v9 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:types];
  }

  else
  {
    v9 = [MEMORY[0x1E69E58C0] methodSignatureForSelector:selector];
  }

  return v9;
}

@end