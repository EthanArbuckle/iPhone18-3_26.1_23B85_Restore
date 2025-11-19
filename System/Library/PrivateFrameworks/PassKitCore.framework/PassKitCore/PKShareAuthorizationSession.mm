@interface PKShareAuthorizationSession
- (PKShareAuthorizationSession)init;
- (void)authorizeDeviceOwnerWithAuthHandler:(id)a3 completion:(id)a4;
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

- (void)authorizeDeviceOwnerWithAuthHandler:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  context = self->_context;
  if (!context)
  {
    v8 = objc_alloc_init(MEMORY[0x1E696EE50]);
    v9 = self->_context;
    self->_context = v8;

    context = self->_context;
  }

  [PKShareAuthorizer _authorizeDeviceOwnerWithAuthHandler:v10 completion:v6 context:context invalidateContext:0];
}

@end