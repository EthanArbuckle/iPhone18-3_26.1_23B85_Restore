@interface PKShareAuthorizationSession
- (PKShareAuthorizationSession)init;
- (void)authorizeDeviceOwnerWithAuthHandler:(id)handler completion:(id)completion;
- (void)dealloc;
- (void)invalidate;
@end

@implementation PKShareAuthorizationSession

- (PKShareAuthorizationSession)init
{
  v3.receiver = self;
  v3.super_class = PKShareAuthorizationSession;
  return [(PKShareAuthorizationSession *)&v3 init];
}

- (void)dealloc
{
  [(PKShareAuthorizationSession *)self invalidate];
  v3.receiver = self;
  v3.super_class = PKShareAuthorizationSession;
  [(PKShareAuthorizationSession *)&v3 dealloc];
}

- (void)invalidate
{
  [(LAContext *)self->_context invalidate];
  context = self->_context;
  self->_context = 0;
}

- (void)authorizeDeviceOwnerWithAuthHandler:(id)handler completion:(id)completion
{
  handlerCopy = handler;
  completionCopy = completion;
  context = self->_context;
  if (!context)
  {
    v8 = objc_alloc_init(MEMORY[0x1E696EE50]);
    v9 = self->_context;
    self->_context = v8;

    context = self->_context;
  }

  [PKShareAuthorizer _authorizeDeviceOwnerWithAuthHandler:handlerCopy completion:completionCopy context:context invalidateContext:0];
}

@end