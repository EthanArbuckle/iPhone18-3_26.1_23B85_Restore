@interface FBSceneObserver
- (BOOL)isEqual:(id)a3;
- (FBSceneObserver)initWithScene:(id)a3;
- (_BYTE)initWithDelegate:(_BYTE *)a1;
- (id)_initWithObserver:(id)a3;
- (id)delegate;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)observer;
- (id)scene:(id)a3 handleActions:(id)a4;
- (id)scene:(id)a3 handlePrivateActions:(id)a4;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (uint64_t)component;
- (uint64_t)delegateReceivesActions;
- (uint64_t)initWithComponent:(void *)a3 extension:;
- (uint64_t)observerHandlesActions;
- (uint64_t)receiverImplementsWillUpdate;
- (uint64_t)receiverWantsInactiveUpdates;
- (void)componentWillInvalidate:(id)a3;
- (void)configureInitialSettings:(id)a3;
- (void)initWithObserver:(void *)a1;
- (void)invalidate;
- (void)scene:(id)a3 clientDidConnect:(id)a4;
- (void)scene:(id)a3 didApplyUpdateWithContext:(id)a4;
- (void)scene:(id)a3 didCompleteUpdateWithContext:(id)a4 error:(id)a5;
- (void)scene:(id)a3 didPrepareUpdateWithContext:(id)a4;
- (void)scene:(id)a3 didReceiveActions:(id)a4;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)scene:(id)a3 didUpdateClientSettingsWithDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
- (void)scene:(id)a3 willUpdateSettings:(id)a4;
- (void)scene:(id)a3 willUpdateSettings:(id)a4 withTransitionContext:(id)a5;
- (void)sceneContentStateDidChange:(id)a3;
- (void)sceneDidActivate:(id)a3;
- (void)sceneDidDeactivate:(id)a3 withContext:(id)a4;
- (void)sceneDidDeactivate:(id)a3 withError:(id)a4;
- (void)sceneDidInvalidate:(id)a3;
- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4;
- (void)sceneWillActivate:(id)a3;
- (void)sceneWillDeactivate:(id)a3 withContext:(id)a4;
- (void)sceneWillDeactivate:(id)a3 withError:(id)a4;
@end

@implementation FBSceneObserver

- (uint64_t)receiverImplementsWillUpdate
{
  if (a1)
  {
    if (a1[50] & 1) != 0 || (a1[55] & 1) != 0 || (a1[49])
    {
      v1 = 1;
    }

    else
    {
      v1 = a1[54];
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (id)delegate
{
  if (!WeakRetained)
  {
LABEL_4:

    return WeakRetained;
  }

  if (*(WeakRetained + 32) == 1)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 1);
    goto LABEL_4;
  }

  WeakRetained = 0;

  return WeakRetained;
}

- (uint64_t)component
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

- (uint64_t)receiverWantsInactiveUpdates
{
  v1 = a1;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    if (WeakRetained)
    {
      LOBYTE(v1) = *(v1 + 48);
    }

    else
    {
      LOBYTE(v1) = 0;
    }
  }

  return v1 & 1;
}

- (id)observer
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 1);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)invalidate
{
  self->_delegateFlags.didDeactivateWithContext = 0;
  *&self->_delegateFlags.willUpdateSettingsLEGACY = 0;
  *&self->_observerFlags.didActivate = 0;
  *&self->_observerFlags.contentStateDidChange = 0;
  *&self->_componentFlags.willUpdateSettingsLEGACY = 0;
  self->_componentFlags.handlePrivateActions = 0;
  component = self->_component;
  self->_component = 0;

  objc_storeWeak(&self->_observer, 0);
}

- (uint64_t)delegateReceivesActions
{
  v1 = a1;
  if (a1)
  {
    if (*(a1 + 32) == 1)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 8));
      if (WeakRetained)
      {
        LOBYTE(v1) = *(v1 + 51);
      }

      else
      {
        LOBYTE(v1) = 0;
      }
    }

    else
    {
      LOBYTE(v1) = 0;
    }
  }

  return v1 & 1;
}

- (uint64_t)observerHandlesActions
{
  v1 = a1;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    if (WeakRetained)
    {
      LOBYTE(v1) = *(v1 + 47);
    }

    else
    {
      LOBYTE(v1) = 0;
    }
  }

  return v1 & 1;
}

- (id)_initWithObserver:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = FBSceneObserver;
  v5 = [(FBSceneObserver *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_observerAddress = v4;
    v5->_observerClass = objc_opt_class();
    objc_storeWeak(&v6->_observer, v4);
    v6->_observerFlags.contentStateDidChange = objc_opt_respondsToSelector() & 1;
    v6->_observerFlags.didUpdateSettings = objc_opt_respondsToSelector() & 1;
    v6->_observerFlags.updatePreparedLEGACY = objc_opt_respondsToSelector() & 1;
    v6->_observerFlags.updateAppliedLEGACY = objc_opt_respondsToSelector() & 1;
    v6->_observerFlags.updateCompletedLEGACY = objc_opt_respondsToSelector() & 1;
    v6->_observerFlags.didUpdateClientSettings = objc_opt_respondsToSelector() & 1;
    v6->_observerFlags.clientSettingsUpdatedLEGACY = objc_opt_respondsToSelector() & 1;
    v6->_observerFlags.willActivate = objc_opt_respondsToSelector() & 1;
    v6->_observerFlags.didActivate = objc_opt_respondsToSelector() & 1;
    v6->_observerFlags.willDeactivateWithError = objc_opt_respondsToSelector() & 1;
    v6->_observerFlags.willDeactivateWithContext = objc_opt_respondsToSelector() & 1;
    v6->_observerFlags.didInvalidate = objc_opt_respondsToSelector() & 1;
    v6->_observerFlags.didInvalidateWithContext = objc_opt_respondsToSelector() & 1;
    v6->_observerFlags.clientDidConnect = objc_opt_respondsToSelector() & 1;
    v6->_observerFlags.handleActions = objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v6->_observerFlags.wantsInactiveUpdates = [v4 sceneObserverWantsUpdatesFromInactiveScenes];
    }
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && v4->_observerAddress == self->_observerAddress && v4->_observerClass == self->_observerClass)
    {
      WeakRetained = objc_loadWeakRetained(&v4->_observer);
      v8 = objc_loadWeakRetained(&self->_observer);
      v5 = WeakRetained == v8;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)scene:(id)a3 willUpdateSettings:(id)a4 withTransitionContext:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if (self->_delegateFlags.willUpdateSettingsLEGACY)
  {
    v10 = [(FBSceneObserver *)&self->super.isa delegate];
    [v10 scene:v11 willUpdateSettings:v8 withTransitionContext:v9];
  }

  else if (self->_componentFlags.willUpdateSettingsLEGACY)
  {
    [(FBSceneComponent *)self->_component scene:v11 willUpdateSettings:v8 withTransitionContext:v9];
  }
}

- (void)scene:(id)a3 willUpdateSettings:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = v6;
  if (self->_delegateFlags.willUpdateSettings)
  {
    [(FBSceneObserver *)&self->super.isa scene:v10 willUpdateSettings:v6];
  }

  else if (self->_componentFlags.willUpdateSettings)
  {
    [(FBSceneComponent *)self->_component scene:v10 willUpdateSettings:v6];
  }

  else
  {
    v8 = [v6 mutableSettings];
    v9 = [v7 transitionContext];
    [(FBSceneObserver *)self scene:v10 willUpdateSettings:v8 withTransitionContext:v9];
  }
}

- (void)scene:(id)a3 didReceiveActions:(id)a4
{
  if (self->_delegateFlags.didReceiveActions)
  {
    [(FBSceneObserver *)a4 scene:a3 didReceiveActions:&self->super.isa];
  }
}

- (void)sceneDidDeactivate:(id)a3 withError:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"call sceneDidDeactivate:withContext:"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = NSStringFromSelector(a2);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = 138544642;
    v14 = v10;
    v15 = 2114;
    v16 = v12;
    v17 = 2048;
    v18 = self;
    v19 = 2114;
    v20 = @"FBSceneObserver.m";
    v21 = 1024;
    v22 = 229;
    v23 = 2114;
    v24 = v9;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v13, 0x3Au);
  }

  [v9 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)sceneContentStateDidChange:(id)a3
{
  if (self->_observerFlags.contentStateDidChange)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained sceneContentStateDidChange:v5];
  }
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v11 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  v8 = WeakRetained;
  if (self->_observerFlags.didUpdateSettings)
  {
    [WeakRetained scene:v11 didUpdateSettings:v6];
  }

  else if (self->_observerFlags.updateAppliedLEGACY)
  {
    v9 = [v6 transitionContext];
    v10 = [v9 updateContext];
    [v8 scene:v11 didApplyUpdateWithContext:v10];
  }
}

- (void)scene:(id)a3 didPrepareUpdateWithContext:(id)a4
{
  if (self->_observerFlags.updatePreparedLEGACY)
  {
    v7 = a4;
    v8 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained scene:v8 didPrepareUpdateWithContext:v7];
  }
}

- (void)scene:(id)a3 didApplyUpdateWithContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"call scene:didUpdateSettings: instead"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = NSStringFromSelector(a2);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = 138544642;
    v14 = v10;
    v15 = 2114;
    v16 = v12;
    v17 = 2048;
    v18 = self;
    v19 = 2114;
    v20 = @"FBSceneObserver.m";
    v21 = 1024;
    v22 = 261;
    v23 = 2114;
    v24 = v9;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v13, 0x3Au);
  }

  [v9 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)scene:(id)a3 didCompleteUpdateWithContext:(id)a4 error:(id)a5
{
  if (self->_observerFlags.updateCompletedLEGACY)
  {
    v9 = a5;
    v10 = a4;
    v11 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained scene:v11 didCompleteUpdateWithContext:v10 error:v9];
  }
}

- (void)sceneWillActivate:(id)a3
{
  if (self->_observerFlags.willActivate)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained sceneWillActivate:v5];
  }
}

- (void)sceneDidActivate:(id)a3
{
  if (self->_observerFlags.didActivate)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained sceneDidActivate:v5];
  }
}

- (void)sceneWillDeactivate:(id)a3 withError:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"call sceneWillDeactivate:withContext:"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = NSStringFromSelector(a2);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = 138544642;
    v14 = v10;
    v15 = 2114;
    v16 = v12;
    v17 = 2048;
    v18 = self;
    v19 = 2114;
    v20 = @"FBSceneObserver.m";
    v21 = 1024;
    v22 = 286;
    v23 = 2114;
    v24 = v9;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v13, 0x3Au);
  }

  [v9 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)sceneWillDeactivate:(id)a3 withContext:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (self->_observerFlags.willDeactivateWithContext)
    {
      [WeakRetained sceneWillDeactivate:v10 withContext:v6];
    }

    else if (self->_observerFlags.willDeactivateWithError)
    {
      v9 = [v6 error];
      [v8 sceneWillDeactivate:v10 withError:v9];
    }
  }
}

- (void)sceneDidInvalidate:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"call sceneDidInvalidate:withContext:"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = 138544642;
    v11 = v7;
    v12 = 2114;
    v13 = v9;
    v14 = 2048;
    v15 = self;
    v16 = 2114;
    v17 = @"FBSceneObserver.m";
    v18 = 1024;
    v19 = 303;
    v20 = 2114;
    v21 = v6;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (self->_component && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [v11 settings];
    v8 = [v7 mutableCopy];

    [(FBSceneComponent *)self->_component componentWillInvalidate:v8];
  }

  WeakRetained = objc_loadWeakRetained(&self->_observer);
  v10 = WeakRetained;
  if (WeakRetained)
  {
    if (self->_observerFlags.didInvalidateWithContext)
    {
      [WeakRetained sceneDidInvalidate:v11 withContext:v6];
    }

    else if (self->_observerFlags.didInvalidate)
    {
      [WeakRetained sceneDidInvalidate:v11];
    }
  }

  [(FBSceneComponent *)self->_component invalidate];
  [(FBSceneObserver *)self invalidate];
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  if (self->_observerFlags.didUpdateClientSettings)
  {
    v6 = a4;
    v7 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained scene:v7 didUpdateClientSettings:v6];
  }

  else
  {
    v8 = a4;
    v9 = a3;
    WeakRetained = [v8 settingsDiff];
    v7 = [v8 previousSettings];
    v6 = [v8 transitionContext];

    [(FBSceneObserver *)self scene:v9 didUpdateClientSettingsWithDiff:WeakRetained oldClientSettings:v7 transitionContext:v6];
  }
}

- (void)scene:(id)a3 didUpdateClientSettingsWithDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6
{
  if (self->_observerFlags.clientSettingsUpdatedLEGACY)
  {
    v11 = a6;
    v12 = a5;
    v13 = a4;
    v14 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained scene:v14 didUpdateClientSettingsWithDiff:v13 oldClientSettings:v12 transitionContext:v11];
  }
}

- (void)scene:(id)a3 clientDidConnect:(id)a4
{
  if (self->_observerFlags.clientDidConnect)
  {
    v7 = a4;
    v8 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained scene:v8 clientDidConnect:v7];
  }
}

- (id)scene:(id)a3 handleActions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_observerFlags.handleActions && [v7 count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    v10 = [WeakRetained scene:v6 handleActions:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)scene:(id)a3 handlePrivateActions:(id)a4
{
  v6 = a3;
  v7 = a4;
  component = self->_component;
  if (component && self->_componentFlags.handlePrivateActions)
  {
    v9 = [(FBSceneComponent *)component handlePrivateActions:v7];
  }

  else
  {
    v9 = [(FBSceneObserver *)self scene:v6 handleActions:v7];
  }

  v10 = v9;

  return v10;
}

- (FBSceneObserver)initWithScene:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"called before this object is created"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v11 = 138544642;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    v15 = 2048;
    v16 = self;
    v17 = 2114;
    v18 = @"FBSceneObserver.m";
    v19 = 1024;
    v20 = 381;
    v21 = 2114;
    v22 = v6;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v11, 0x3Au);
  }

  [v6 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)configureInitialSettings:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"called before this object is created"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = 138544642;
    v11 = v7;
    v12 = 2114;
    v13 = v9;
    v14 = 2048;
    v15 = self;
    v16 = 2114;
    v17 = @"FBSceneObserver.m";
    v18 = 1024;
    v19 = 392;
    v20 = 2114;
    v21 = v6;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)componentWillInvalidate:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"not handled by this object"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = 138544642;
    v11 = v7;
    v12 = 2114;
    v13 = v9;
    v14 = 2048;
    v15 = self;
    v16 = 2114;
    v17 = @"FBSceneObserver.m";
    v18 = 1024;
    v19 = 396;
    v20 = 2114;
    v21 = v6;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (id)succinctDescription
{
  v2 = [(FBSceneObserver *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  if (self->_isDelegate)
  {
    v3 = @"delegate";
  }

  else if (self->_component)
  {
    v3 = @"component";
  }

  else
  {
    v3 = @"observer";
  }

  v4 = v3;
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  v7 = [v5 appendObject:WeakRetained withName:v4];

  return v5;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(FBSceneObserver *)self descriptionBuilderWithMultilinePrefix:v4];
  v6 = v5;
  if (self->_isDelegate)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __50__FBSceneObserver_descriptionWithMultilinePrefix___block_invoke;
    v26[3] = &unk_1E783B240;
    v27 = v5;
    v28 = self;
    [v27 appendBodySectionWithName:@"delegate" multilinePrefix:v4 block:v26];
  }

  if (self->_component)
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __50__FBSceneObserver_descriptionWithMultilinePrefix___block_invoke_2;
    v23 = &unk_1E783B240;
    v24 = v6;
    v25 = self;
    [v24 appendBodySectionWithName:@"component" multilinePrefix:v4 block:&v20];
  }

  v7 = [v6 appendBool:self->_observerFlags.didUpdateSettings withName:@"RespondsToDidUpdateSettings" ifEqualTo:{1, v20, v21, v22, v23}];
  v8 = [v6 appendBool:self->_observerFlags.didUpdateClientSettings withName:@"RespondsToDidUpdateClientSettings" ifEqualTo:1];
  v9 = [v6 appendBool:self->_observerFlags.updatePreparedLEGACY withName:@"RespondsToPrepared" ifEqualTo:1];
  v10 = [v6 appendBool:self->_observerFlags.updateAppliedLEGACY withName:@"RespondsToApplied" ifEqualTo:1];
  v11 = [v6 appendBool:self->_observerFlags.updateCompletedLEGACY withName:@"RespondsToCompleted" ifEqualTo:1];
  v12 = [v6 appendBool:self->_observerFlags.didInvalidate withName:@"RespondsToInvalidated" ifEqualTo:1];
  v13 = [v6 appendBool:self->_observerFlags.clientSettingsUpdatedLEGACY withName:@"RespondsToClientSettingsUpdated" ifEqualTo:1];
  v14 = [v6 appendBool:self->_observerFlags.didActivate withName:@"RespondsToDidActivate" ifEqualTo:1];
  v15 = [v6 appendBool:self->_observerFlags.willDeactivateWithError withName:@"RespondsToWillDeactivate" ifEqualTo:1];
  v16 = [v6 appendBool:self->_observerFlags.clientDidConnect withName:@"RespondsToClientDidConnect" ifEqualTo:1];
  v17 = [v6 appendBool:self->_observerFlags.handleActions withName:@"RespondsToHandleActions" ifEqualTo:1];
  v18 = [v6 build];

  return v18;
}

id __50__FBSceneObserver_descriptionWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 49) withName:@"RespondsToWillUpdateSettingsWithTransitionContext" ifEqualTo:1];
  v3 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 50) withName:@"RespondsToWillUpdateSettings" ifEqualTo:1];
  v4 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 51) withName:@"RespondsToDidReceiveActions" ifEqualTo:1];
  return [*(a1 + 32) appendBool:*(*(a1 + 40) + 52) withName:@"RespondsToDidDeactivateWithError" ifEqualTo:1];
}

- (void)initWithObserver:(void *)a1
{
  if (a1)
  {
    return [a1 _initWithObserver:a2];
  }

  return a1;
}

- (_BYTE)initWithDelegate:(_BYTE *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 _initWithObserver:v3];
    a1 = v4;
    if (v4)
    {
      *(v4 + 32) = 1;
      *(v4 + 49) = objc_opt_respondsToSelector() & 1;
      a1[50] = objc_opt_respondsToSelector() & 1;
      a1[51] = objc_opt_respondsToSelector() & 1;
      a1[52] = objc_opt_respondsToSelector() & 1;
      a1[53] = objc_opt_respondsToSelector() & 1;
    }
  }

  return a1;
}

- (uint64_t)initWithComponent:(void *)a3 extension:
{
  v6 = a2;
  if (a1)
  {
    v7 = [a1 _initWithObserver:v6];
    a1 = v7;
    if (v7)
    {
      objc_storeStrong((v7 + 72), a3);
      objc_storeStrong((a1 + 64), a2);
      *(a1 + 54) = objc_opt_respondsToSelector() & 1;
      *(a1 + 55) = objc_opt_respondsToSelector() & 1;
      *(a1 + 56) = objc_opt_respondsToSelector() & 1;
    }
  }

  return a1;
}

- (void)sceneDidDeactivate:(id)a3 withContext:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(FBSceneObserver *)&self->super.isa delegate];
  v8 = v7;
  if (v7)
  {
    if (self->_delegateFlags.didDeactivateWithContext)
    {
      [v7 sceneDidDeactivate:v10 withContext:v6];
    }

    else if (self->_delegateFlags.didDeactivateWithError)
    {
      v9 = [v6 error];
      [v8 sceneDidDeactivate:v10 withError:v9];
    }
  }
}

- (void)scene:(uint64_t)a3 willUpdateSettings:.cold.1(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = [(FBSceneObserver *)a1 delegate];
  [v5 scene:a2 willUpdateSettings:a3];
}

- (void)scene:(id *)a3 didReceiveActions:.cold.1(void *a1, void *a2, id *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [(FBSceneObserver *)a3 delegate];
  [v7 scene:v6 didReceiveActions:v5];
}

@end