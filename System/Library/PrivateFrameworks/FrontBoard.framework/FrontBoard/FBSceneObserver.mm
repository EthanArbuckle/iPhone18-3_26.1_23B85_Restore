@interface FBSceneObserver
- (BOOL)isEqual:(id)equal;
- (FBSceneObserver)initWithScene:(id)scene;
- (_BYTE)initWithDelegate:(_BYTE *)delegate;
- (id)_initWithObserver:(id)observer;
- (id)delegate;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)observer;
- (id)scene:(id)scene handleActions:(id)actions;
- (id)scene:(id)scene handlePrivateActions:(id)actions;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (uint64_t)component;
- (uint64_t)delegateReceivesActions;
- (uint64_t)initWithComponent:(void *)component extension:;
- (uint64_t)observerHandlesActions;
- (uint64_t)receiverImplementsWillUpdate;
- (uint64_t)receiverWantsInactiveUpdates;
- (void)componentWillInvalidate:(id)invalidate;
- (void)configureInitialSettings:(id)settings;
- (void)initWithObserver:(void *)observer;
- (void)invalidate;
- (void)scene:(id)scene clientDidConnect:(id)connect;
- (void)scene:(id)scene didApplyUpdateWithContext:(id)context;
- (void)scene:(id)scene didCompleteUpdateWithContext:(id)context error:(id)error;
- (void)scene:(id)scene didPrepareUpdateWithContext:(id)context;
- (void)scene:(id)scene didReceiveActions:(id)actions;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
- (void)scene:(id)scene willUpdateSettings:(id)settings;
- (void)scene:(id)scene willUpdateSettings:(id)settings withTransitionContext:(id)context;
- (void)sceneContentStateDidChange:(id)change;
- (void)sceneDidActivate:(id)activate;
- (void)sceneDidDeactivate:(id)deactivate withContext:(id)context;
- (void)sceneDidDeactivate:(id)deactivate withError:(id)error;
- (void)sceneDidInvalidate:(id)invalidate;
- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context;
- (void)sceneWillActivate:(id)activate;
- (void)sceneWillDeactivate:(id)deactivate withContext:(id)context;
- (void)sceneWillDeactivate:(id)deactivate withError:(id)error;
@end

@implementation FBSceneObserver

- (uint64_t)receiverImplementsWillUpdate
{
  if (self)
  {
    if (self[50] & 1) != 0 || (self[55] & 1) != 0 || (self[49])
    {
      v1 = 1;
    }

    else
    {
      v1 = self[54];
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
  selfCopy = self;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 8));
    if (WeakRetained)
    {
      LOBYTE(selfCopy) = *(selfCopy + 48);
    }

    else
    {
      LOBYTE(selfCopy) = 0;
    }
  }

  return selfCopy & 1;
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
  selfCopy = self;
  if (self)
  {
    if (*(self + 32) == 1)
    {
      WeakRetained = objc_loadWeakRetained((self + 8));
      if (WeakRetained)
      {
        LOBYTE(selfCopy) = *(selfCopy + 51);
      }

      else
      {
        LOBYTE(selfCopy) = 0;
      }
    }

    else
    {
      LOBYTE(selfCopy) = 0;
    }
  }

  return selfCopy & 1;
}

- (uint64_t)observerHandlesActions
{
  selfCopy = self;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 8));
    if (WeakRetained)
    {
      LOBYTE(selfCopy) = *(selfCopy + 47);
    }

    else
    {
      LOBYTE(selfCopy) = 0;
    }
  }

  return selfCopy & 1;
}

- (id)_initWithObserver:(id)observer
{
  observerCopy = observer;
  v8.receiver = self;
  v8.super_class = FBSceneObserver;
  v5 = [(FBSceneObserver *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_observerAddress = observerCopy;
    v5->_observerClass = objc_opt_class();
    objc_storeWeak(&v6->_observer, observerCopy);
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
      v6->_observerFlags.wantsInactiveUpdates = [observerCopy sceneObserverWantsUpdatesFromInactiveScenes];
    }
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && equalCopy->_observerAddress == self->_observerAddress && equalCopy->_observerClass == self->_observerClass)
    {
      WeakRetained = objc_loadWeakRetained(&equalCopy->_observer);
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

- (void)scene:(id)scene willUpdateSettings:(id)settings withTransitionContext:(id)context
{
  sceneCopy = scene;
  settingsCopy = settings;
  contextCopy = context;
  if (self->_delegateFlags.willUpdateSettingsLEGACY)
  {
    delegate = [(FBSceneObserver *)&self->super.isa delegate];
    [delegate scene:sceneCopy willUpdateSettings:settingsCopy withTransitionContext:contextCopy];
  }

  else if (self->_componentFlags.willUpdateSettingsLEGACY)
  {
    [(FBSceneComponent *)self->_component scene:sceneCopy willUpdateSettings:settingsCopy withTransitionContext:contextCopy];
  }
}

- (void)scene:(id)scene willUpdateSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  v7 = settingsCopy;
  if (self->_delegateFlags.willUpdateSettings)
  {
    [(FBSceneObserver *)&self->super.isa scene:sceneCopy willUpdateSettings:settingsCopy];
  }

  else if (self->_componentFlags.willUpdateSettings)
  {
    [(FBSceneComponent *)self->_component scene:sceneCopy willUpdateSettings:settingsCopy];
  }

  else
  {
    mutableSettings = [settingsCopy mutableSettings];
    transitionContext = [v7 transitionContext];
    [(FBSceneObserver *)self scene:sceneCopy willUpdateSettings:mutableSettings withTransitionContext:transitionContext];
  }
}

- (void)scene:(id)scene didReceiveActions:(id)actions
{
  if (self->_delegateFlags.didReceiveActions)
  {
    [(FBSceneObserver *)actions scene:scene didReceiveActions:&self->super.isa];
  }
}

- (void)sceneDidDeactivate:(id)deactivate withError:(id)error
{
  deactivateCopy = deactivate;
  errorCopy = error;
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
    selfCopy = self;
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

- (void)sceneContentStateDidChange:(id)change
{
  if (self->_observerFlags.contentStateDidChange)
  {
    changeCopy = change;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained sceneContentStateDidChange:changeCopy];
  }
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  v8 = WeakRetained;
  if (self->_observerFlags.didUpdateSettings)
  {
    [WeakRetained scene:sceneCopy didUpdateSettings:settingsCopy];
  }

  else if (self->_observerFlags.updateAppliedLEGACY)
  {
    transitionContext = [settingsCopy transitionContext];
    updateContext = [transitionContext updateContext];
    [v8 scene:sceneCopy didApplyUpdateWithContext:updateContext];
  }
}

- (void)scene:(id)scene didPrepareUpdateWithContext:(id)context
{
  if (self->_observerFlags.updatePreparedLEGACY)
  {
    contextCopy = context;
    sceneCopy = scene;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained scene:sceneCopy didPrepareUpdateWithContext:contextCopy];
  }
}

- (void)scene:(id)scene didApplyUpdateWithContext:(id)context
{
  sceneCopy = scene;
  contextCopy = context;
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
    selfCopy = self;
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

- (void)scene:(id)scene didCompleteUpdateWithContext:(id)context error:(id)error
{
  if (self->_observerFlags.updateCompletedLEGACY)
  {
    errorCopy = error;
    contextCopy = context;
    sceneCopy = scene;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained scene:sceneCopy didCompleteUpdateWithContext:contextCopy error:errorCopy];
  }
}

- (void)sceneWillActivate:(id)activate
{
  if (self->_observerFlags.willActivate)
  {
    activateCopy = activate;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained sceneWillActivate:activateCopy];
  }
}

- (void)sceneDidActivate:(id)activate
{
  if (self->_observerFlags.didActivate)
  {
    activateCopy = activate;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained sceneDidActivate:activateCopy];
  }
}

- (void)sceneWillDeactivate:(id)deactivate withError:(id)error
{
  deactivateCopy = deactivate;
  errorCopy = error;
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
    selfCopy = self;
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

- (void)sceneWillDeactivate:(id)deactivate withContext:(id)context
{
  deactivateCopy = deactivate;
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (self->_observerFlags.willDeactivateWithContext)
    {
      [WeakRetained sceneWillDeactivate:deactivateCopy withContext:contextCopy];
    }

    else if (self->_observerFlags.willDeactivateWithError)
    {
      error = [contextCopy error];
      [v8 sceneWillDeactivate:deactivateCopy withError:error];
    }
  }
}

- (void)sceneDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
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
    selfCopy = self;
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

- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context
{
  invalidateCopy = invalidate;
  contextCopy = context;
  if (self->_component && (objc_opt_respondsToSelector() & 1) != 0)
  {
    settings = [invalidateCopy settings];
    v8 = [settings mutableCopy];

    [(FBSceneComponent *)self->_component componentWillInvalidate:v8];
  }

  WeakRetained = objc_loadWeakRetained(&self->_observer);
  v10 = WeakRetained;
  if (WeakRetained)
  {
    if (self->_observerFlags.didInvalidateWithContext)
    {
      [WeakRetained sceneDidInvalidate:invalidateCopy withContext:contextCopy];
    }

    else if (self->_observerFlags.didInvalidate)
    {
      [WeakRetained sceneDidInvalidate:invalidateCopy];
    }
  }

  [(FBSceneComponent *)self->_component invalidate];
  [(FBSceneObserver *)self invalidate];
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  if (self->_observerFlags.didUpdateClientSettings)
  {
    settingsCopy = settings;
    sceneCopy = scene;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained scene:sceneCopy didUpdateClientSettings:settingsCopy];
  }

  else
  {
    settingsCopy2 = settings;
    sceneCopy2 = scene;
    WeakRetained = [settingsCopy2 settingsDiff];
    sceneCopy = [settingsCopy2 previousSettings];
    settingsCopy = [settingsCopy2 transitionContext];

    [(FBSceneObserver *)self scene:sceneCopy2 didUpdateClientSettingsWithDiff:WeakRetained oldClientSettings:sceneCopy transitionContext:settingsCopy];
  }
}

- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context
{
  if (self->_observerFlags.clientSettingsUpdatedLEGACY)
  {
    contextCopy = context;
    settingsCopy = settings;
    diffCopy = diff;
    sceneCopy = scene;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained scene:sceneCopy didUpdateClientSettingsWithDiff:diffCopy oldClientSettings:settingsCopy transitionContext:contextCopy];
  }
}

- (void)scene:(id)scene clientDidConnect:(id)connect
{
  if (self->_observerFlags.clientDidConnect)
  {
    connectCopy = connect;
    sceneCopy = scene;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained scene:sceneCopy clientDidConnect:connectCopy];
  }
}

- (id)scene:(id)scene handleActions:(id)actions
{
  sceneCopy = scene;
  actionsCopy = actions;
  v8 = actionsCopy;
  if (self->_observerFlags.handleActions && [actionsCopy count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    v10 = [WeakRetained scene:sceneCopy handleActions:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)scene:(id)scene handlePrivateActions:(id)actions
{
  sceneCopy = scene;
  actionsCopy = actions;
  component = self->_component;
  if (component && self->_componentFlags.handlePrivateActions)
  {
    v9 = [(FBSceneComponent *)component handlePrivateActions:actionsCopy];
  }

  else
  {
    v9 = [(FBSceneObserver *)self scene:sceneCopy handleActions:actionsCopy];
  }

  v10 = v9;

  return v10;
}

- (FBSceneObserver)initWithScene:(id)scene
{
  sceneCopy = scene;
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
    selfCopy = self;
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

- (void)configureInitialSettings:(id)settings
{
  settingsCopy = settings;
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
    selfCopy = self;
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

- (void)componentWillInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
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
    selfCopy = self;
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
  succinctDescriptionBuilder = [(FBSceneObserver *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
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

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  v5 = [(FBSceneObserver *)self descriptionBuilderWithMultilinePrefix:prefixCopy];
  v6 = v5;
  if (self->_isDelegate)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __50__FBSceneObserver_descriptionWithMultilinePrefix___block_invoke;
    v26[3] = &unk_1E783B240;
    v27 = v5;
    selfCopy = self;
    [v27 appendBodySectionWithName:@"delegate" multilinePrefix:prefixCopy block:v26];
  }

  if (self->_component)
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __50__FBSceneObserver_descriptionWithMultilinePrefix___block_invoke_2;
    v23 = &unk_1E783B240;
    v24 = v6;
    selfCopy2 = self;
    [v24 appendBodySectionWithName:@"component" multilinePrefix:prefixCopy block:&v20];
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
  build = [v6 build];

  return build;
}

id __50__FBSceneObserver_descriptionWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 49) withName:@"RespondsToWillUpdateSettingsWithTransitionContext" ifEqualTo:1];
  v3 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 50) withName:@"RespondsToWillUpdateSettings" ifEqualTo:1];
  v4 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 51) withName:@"RespondsToDidReceiveActions" ifEqualTo:1];
  return [*(a1 + 32) appendBool:*(*(a1 + 40) + 52) withName:@"RespondsToDidDeactivateWithError" ifEqualTo:1];
}

- (void)initWithObserver:(void *)observer
{
  if (observer)
  {
    return [observer _initWithObserver:a2];
  }

  return observer;
}

- (_BYTE)initWithDelegate:(_BYTE *)delegate
{
  v3 = a2;
  if (delegate)
  {
    v4 = [delegate _initWithObserver:v3];
    delegate = v4;
    if (v4)
    {
      *(v4 + 32) = 1;
      *(v4 + 49) = objc_opt_respondsToSelector() & 1;
      delegate[50] = objc_opt_respondsToSelector() & 1;
      delegate[51] = objc_opt_respondsToSelector() & 1;
      delegate[52] = objc_opt_respondsToSelector() & 1;
      delegate[53] = objc_opt_respondsToSelector() & 1;
    }
  }

  return delegate;
}

- (uint64_t)initWithComponent:(void *)component extension:
{
  v6 = a2;
  if (self)
  {
    v7 = [self _initWithObserver:v6];
    self = v7;
    if (v7)
    {
      objc_storeStrong((v7 + 72), component);
      objc_storeStrong((self + 64), a2);
      *(self + 54) = objc_opt_respondsToSelector() & 1;
      *(self + 55) = objc_opt_respondsToSelector() & 1;
      *(self + 56) = objc_opt_respondsToSelector() & 1;
    }
  }

  return self;
}

- (void)sceneDidDeactivate:(id)deactivate withContext:(id)context
{
  deactivateCopy = deactivate;
  contextCopy = context;
  delegate = [(FBSceneObserver *)&self->super.isa delegate];
  v8 = delegate;
  if (delegate)
  {
    if (self->_delegateFlags.didDeactivateWithContext)
    {
      [delegate sceneDidDeactivate:deactivateCopy withContext:contextCopy];
    }

    else if (self->_delegateFlags.didDeactivateWithError)
    {
      error = [contextCopy error];
      [v8 sceneDidDeactivate:deactivateCopy withError:error];
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