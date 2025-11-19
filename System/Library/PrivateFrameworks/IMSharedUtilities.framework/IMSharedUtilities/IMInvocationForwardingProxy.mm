@interface IMInvocationForwardingProxy
- (BOOL)respondsToSelector:(SEL)a3;
- (IMInvocationForwardingProxy)initWithProtocol:(id)a3 forwardingHandler:(id)a4;
- (id)methodSignatureForSelector:(SEL)a3;
@end

@implementation IMInvocationForwardingProxy

- (IMInvocationForwardingProxy)initWithProtocol:(id)a3 forwardingHandler:(id)a4
{
  objc_storeStrong(&self->_protocol, a3);
  v7 = a3;
  v8 = a4;
  v9 = [v8 copy];

  forwardingHandler = self->_forwardingHandler;
  self->_forwardingHandler = v9;

  return self;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v3 = [(IMInvocationForwardingProxy *)self methodSignatureForSelector:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  MethodDescription = protocol_getMethodDescription(self->_protocol, a3, 1, 1);
  types = MethodDescription.types;
  if (MethodDescription.name || (v7 = protocol_getMethodDescription(self->_protocol, a3, 0, 1), types = v7.types, v7.name) || (sel_respondsToSelector_ != a3 ? (v8 = sel_conformsToProtocol_ == a3) : (v8 = 1), !v8))
  {
    v9 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:types];
  }

  else
  {
    v9 = [MEMORY[0x1E69E58C0] methodSignatureForSelector:a3];
  }

  return v9;
}

@end