@interface IMInvocationCapturingProxy
- (BOOL)respondsToSelector:(SEL)a3;
- (IMInvocationCapturingProxy)initWithProtocol:(id)a3 forwardingHandler:(id)a4;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation IMInvocationCapturingProxy

- (IMInvocationCapturingProxy)initWithProtocol:(id)a3 forwardingHandler:(id)a4
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
  v3 = [(IMInvocationCapturingProxy *)self methodSignatureForSelector:a3];
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

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  [v4 retainArguments];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A861F8C8;
  aBlock[3] = &unk_1E78262E0;
  v8 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  (*(self->_forwardingHandler + 2))(self->_forwardingHandler, [v5 selector], v6);
}

@end