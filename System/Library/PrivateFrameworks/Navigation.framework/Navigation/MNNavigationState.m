@interface MNNavigationState
- (BOOL)requiresLocationAccess;
- (BOOL)respondsToSelector:(SEL)a3;
- (MNNavigationState)initWithStateManager:(id)a3;
- (MNNavigationStateManager)stateManager;
- (id)methodSignatureForSelector:(SEL)a3;
- (unint64_t)type;
- (void)dealloc;
- (void)forwardInvocation:(id)a3;
@end

@implementation MNNavigationState

- (MNNavigationStateManager)stateManager
{
  WeakRetained = objc_loadWeakRetained(&self->_stateManager);

  return WeakRetained;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if ([(MNNavigationState *)self _isSelectorValidForForwarding:?])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = MNNavigationState;
  return [(MNNavigationState *)&v6 respondsToSelector:a3];
}

- (id)methodSignatureForSelector:(SEL)a3
{
  if ([(MNNavigationState *)self _isSelectorValidForForwarding:?])
  {
    v5 = [MEMORY[0x1E695DF68] _navigation_methodSignatureForEmptyMethod];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MNNavigationState;
    v5 = [(MNNavigationState *)&v7 methodSignatureForSelector:a3];
  }

  return v5;
}

- (void)forwardInvocation:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [a3 selector];
  if ([(MNNavigationState *)self _isSelectorValidForForwarding:v4])
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromSelector(v4);
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = objc_opt_class();
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "%@ is not supported by state %@", &v9, 0x16u);
    }

    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];

    [(MNNavigationState *)self doesNotRecognizeSelector:v4];
  }
}

- (void)dealloc
{
  if ([(MNNavigationState *)self requiresHighMemoryThreshold])
  {
    v3 = +[MNXPCTransactionManager sharedInstance];
    [v3 removeHighMemoryThresholdRequest:self afterDelay:3.0];
  }

  v4.receiver = self;
  v4.super_class = MNNavigationState;
  [(MNNavigationState *)&v4 dealloc];
}

- (MNNavigationState)initWithStateManager:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MNNavigationState;
  v5 = [(MNNavigationState *)&v10 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 8) = xmmword_1D328D390;
    objc_storeWeak(v5 + 3, v4);
    if ([(MNNavigationState *)v6 requiresHighMemoryThreshold])
    {
      v7 = +[MNXPCTransactionManager sharedInstance];
      [v7 addHighMemoryThresholdRequest:v6];
    }

    v8 = v6;
  }

  return v6;
}

- (BOOL)requiresLocationAccess
{
  v3 = [(MNNavigationState *)self desiredLocationProviderType];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(MNNavigationState *)self desiredLocationProviderType]== 2;
  }

  return v3;
}

- (unint64_t)type
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "[MNNavigationState type]";
    v7 = 2080;
    v8 = "/Library/Caches/com.apple.xbs/Sources/Navigation/NavigationState/MNNavigationState.m";
    v9 = 1024;
    v10 = 27;
    _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", &v5, 0x1Cu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return -1;
}

@end