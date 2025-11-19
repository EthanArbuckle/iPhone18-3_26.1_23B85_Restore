@interface _CATProxyWaitToken
- (_CATProxyWaitToken)initWithExclusive:(BOOL)a3 group:(id)a4;
- (void)dealloc;
- (void)invalidate;
- (void)notifyWithResourceProxy:(id)a3;
@end

@implementation _CATProxyWaitToken

- (_CATProxyWaitToken)initWithExclusive:(BOOL)a3 group:(id)a4
{
  v7 = a4;
  if (!v7)
  {
    [_CATProxyWaitToken initWithExclusive:group:];
  }

  v11.receiver = self;
  v11.super_class = _CATProxyWaitToken;
  v8 = [(_CATProxyWaitToken *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_isExclusive = a3;
    objc_storeStrong(&v8->mGroup, a4);
    dispatch_group_enter(v9->mGroup);
  }

  return v9;
}

- (void)dealloc
{
  [(_CATProxyWaitToken *)self cancel];
  v3.receiver = self;
  v3.super_class = _CATProxyWaitToken;
  [(_CATProxyWaitToken *)&v3 dealloc];
}

- (void)notifyWithResourceProxy:(id)a3
{
  v5 = a3;
  v6 = 0;
  atomic_compare_exchange_strong(&self->mFinished, &v6, 1u);
  if (!v6)
  {
    v8 = v5;
    objc_storeStrong(&self->_resourceProxy, a3);
    dispatch_group_leave(self->mGroup);
    mGroup = self->mGroup;
    self->mGroup = 0;

    v5 = v8;
  }
}

- (void)invalidate
{
  resourceProxy = self->_resourceProxy;
  self->_resourceProxy = 0;
  MEMORY[0x2821F96F8]();
}

- (void)initWithExclusive:group:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"group" object:? file:? lineNumber:? description:?];
}

@end