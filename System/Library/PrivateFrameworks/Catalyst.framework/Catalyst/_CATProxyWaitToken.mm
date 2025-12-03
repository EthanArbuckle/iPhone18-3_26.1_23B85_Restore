@interface _CATProxyWaitToken
- (_CATProxyWaitToken)initWithExclusive:(BOOL)exclusive group:(id)group;
- (void)dealloc;
- (void)invalidate;
- (void)notifyWithResourceProxy:(id)proxy;
@end

@implementation _CATProxyWaitToken

- (_CATProxyWaitToken)initWithExclusive:(BOOL)exclusive group:(id)group
{
  groupCopy = group;
  if (!groupCopy)
  {
    [_CATProxyWaitToken initWithExclusive:group:];
  }

  v11.receiver = self;
  v11.super_class = _CATProxyWaitToken;
  v8 = [(_CATProxyWaitToken *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_isExclusive = exclusive;
    objc_storeStrong(&v8->mGroup, group);
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

- (void)notifyWithResourceProxy:(id)proxy
{
  proxyCopy = proxy;
  v6 = 0;
  atomic_compare_exchange_strong(&self->mFinished, &v6, 1u);
  if (!v6)
  {
    v8 = proxyCopy;
    objc_storeStrong(&self->_resourceProxy, proxy);
    dispatch_group_leave(self->mGroup);
    mGroup = self->mGroup;
    self->mGroup = 0;

    proxyCopy = v8;
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