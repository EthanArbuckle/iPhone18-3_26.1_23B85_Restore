@interface FBSceneManagerObserver
- (BOOL)isEqual:(id)equal;
- (FBSceneManagerObserver)initWithDelegate:(id)delegate workspace:(id)workspace;
- (id)_initWithObserver:(id)observer workspace:(id)workspace;
- (id)_privateDelegate;
- (id)delegate;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)observer;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)sceneManager:(id)manager clientDidConnectWithHandshake:(id)handshake;
- (void)sceneManager:(id)manager didAddScene:(id)scene;
- (void)sceneManager:(id)manager didCommitUpdateForScene:(id)scene transactionID:(unint64_t)d;
- (void)sceneManager:(id)manager didCreateScene:(id)scene;
- (void)sceneManager:(id)manager didDestroyScene:(id)scene;
- (void)sceneManager:(id)manager interceptUpdateForScene:(id)scene withNewSettings:(id)settings;
- (void)sceneManager:(id)manager willCommitUpdateForScene:(id)scene transactionID:(unint64_t)d;
- (void)sceneManager:(id)manager willRemoveScene:(id)scene;
- (void)sceneManager:(id)manager willUpdateScene:(id)scene withSettings:(id)settings transitionContext:(id)context;
- (void)workspace:(id)workspace clientDidConnectWithHandshake:(id)handshake;
- (void)workspace:(id)workspace didAddScene:(id)scene;
- (void)workspace:(id)workspace didReceiveActions:(id)actions;
- (void)workspace:(id)workspace didReceiveScene:(id)scene withContext:(id)context fromProcess:(id)process;
- (void)workspace:(id)workspace didReceiveSceneRequestWithOptions:(id)options fromProcess:(id)process completion:(id)completion;
- (void)workspace:(id)workspace willRemoveScene:(id)scene;
@end

@implementation FBSceneManagerObserver

- (id)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (id)delegate
{
  if (self->_isDelegate)
  {
    WeakRetained = objc_loadWeakRetained(&self->_observer);
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

- (id)_initWithObserver:(id)observer workspace:(id)workspace
{
  observerCopy = observer;
  workspaceCopy = workspace;
  v12.receiver = self;
  v12.super_class = FBSceneManagerObserver;
  v8 = [(FBSceneManagerObserver *)&v12 init];
  if (v8)
  {
    v9 = objc_opt_class();
    v8->_observerAddress = observerCopy;
    v8->_observerClass = v9;
    objc_storeWeak(&v8->_observer, observerCopy);
    v8->_didAdd = objc_opt_respondsToSelector() & 1;
    v8->_willRemove = objc_opt_respondsToSelector() & 1;
    _legacyWorkspace = [(FBSceneWorkspace *)workspaceCopy _legacyWorkspace];

    if (_legacyWorkspace)
    {
      v8->_didAddLEGACY = objc_opt_respondsToSelector() & 1;
      v8->_willRemoveLEGACY = objc_opt_respondsToSelector() & 1;
      v8->_didDestroyDEPRECATED = objc_opt_respondsToSelector() & 1;
      v8->_willUpdateSceneDEPRECATED = objc_opt_respondsToSelector() & 1;
      v8->_willCommitDEPRECATED = objc_opt_respondsToSelector() & 1;
      v8->_didCommitDEPRECATED = objc_opt_respondsToSelector() & 1;
    }
  }

  return v8;
}

- (FBSceneManagerObserver)initWithDelegate:(id)delegate workspace:(id)workspace
{
  delegateCopy = delegate;
  workspaceCopy = workspace;
  v8 = [(FBSceneManagerObserver *)self _initWithObserver:delegateCopy workspace:workspaceCopy];
  v9 = v8;
  if (v8)
  {
    v8->_isDelegate = 1;
    v8->_clientDidConnect = objc_opt_respondsToSelector() & 1;
    v9->_didReceiveSceneRequest = objc_opt_respondsToSelector() & 1;
    v9->_didReceiveScene = objc_opt_respondsToSelector() & 1;
    v9->_didReceiveActions = objc_opt_respondsToSelector() & 1;
    _legacyWorkspace = [(FBSceneWorkspace *)workspaceCopy _legacyWorkspace];

    if (_legacyWorkspace)
    {
      v9->_clientDidConnectLEGACY = objc_opt_respondsToSelector() & 1;
      v9->_didReceiveSceneRequestLEGACY = objc_opt_respondsToSelector() & 1;
      v11 = objc_opt_respondsToSelector();
      v9->_interceptSceneUpdatesLEGACY = v11 & 1;
      v9->_privateDelegate = v11 & 1;
    }
  }

  return v9;
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

- (void)workspace:(id)workspace clientDidConnectWithHandshake:(id)handshake
{
  v30 = *MEMORY[0x1E69E9840];
  workspaceCopy = workspace;
  handshakeCopy = handshake;
  delegate = [(FBSceneManagerObserver *)self delegate];
  v9 = delegate;
  if (!delegate)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    remnants = [handshakeCopy remnants];
    v11 = [remnants countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(remnants);
          }

          [*(*(&v20 + 1) + 8 * i) invalidate];
        }

        v12 = [remnants countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v12);
    }

    goto LABEL_21;
  }

  if (!self->_clientDidConnect)
  {
    if (self->_clientDidConnectLEGACY)
    {
      remnants = [(FBSceneWorkspace *)workspaceCopy _legacyWorkspace];
      [v9 sceneManager:remnants clientDidConnectWithHandshake:handshakeCopy];
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      remnants = [handshakeCopy remnants];
      v15 = [remnants countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v25;
        do
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v25 != v17)
            {
              objc_enumerationMutation(remnants);
            }

            [*(*(&v24 + 1) + 8 * j) invalidate];
          }

          v16 = [remnants countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v16);
      }
    }

LABEL_21:

    goto LABEL_22;
  }

  [delegate workspace:workspaceCopy clientDidConnectWithHandshake:handshakeCopy];
LABEL_22:

  v19 = *MEMORY[0x1E69E9840];
}

- (void)workspace:(id)workspace didReceiveSceneRequestWithOptions:(id)options fromProcess:(id)process completion:(id)completion
{
  workspaceCopy = workspace;
  optionsCopy = options;
  processCopy = process;
  completionCopy = completion;
  delegate = [(FBSceneManagerObserver *)self delegate];
  v14 = delegate;
  if (!delegate)
  {
    goto LABEL_7;
  }

  if (self->_didReceiveSceneRequest)
  {
    [delegate workspace:workspaceCopy didReceiveSceneRequestWithOptions:optionsCopy fromProcess:processCopy completion:completionCopy];
    goto LABEL_9;
  }

  if (self->_didReceiveSceneRequestLEGACY)
  {
    _legacyWorkspace = [(FBSceneWorkspace *)workspaceCopy _legacyWorkspace];
    [v14 sceneManager:_legacyWorkspace didReceiveSceneRequestWithOptions:optionsCopy fromProcess:processCopy completion:completionCopy];
  }

  else
  {
LABEL_7:
    _legacyWorkspace = FBSWorkspaceErrorCreate();
    completionCopy[2](completionCopy, 0, _legacyWorkspace);
  }

LABEL_9:
}

- (void)workspace:(id)workspace didReceiveScene:(id)scene withContext:(id)context fromProcess:(id)process
{
  workspaceCopy = workspace;
  sceneCopy = scene;
  contextCopy = context;
  processCopy = process;
  delegate = [(FBSceneManagerObserver *)self delegate];
  v14 = delegate;
  if (delegate && self->_didReceiveScene)
  {
    [delegate workspace:workspaceCopy didReceiveScene:sceneCopy withContext:contextCopy fromProcess:processCopy];
  }
}

- (void)workspace:(id)workspace didReceiveActions:(id)actions
{
  workspaceCopy = workspace;
  actionsCopy = actions;
  delegate = [(FBSceneManagerObserver *)self delegate];
  v8 = delegate;
  if (delegate && self->_didReceiveActions)
  {
    [delegate workspace:workspaceCopy didReceiveActions:actionsCopy];
  }
}

- (void)workspace:(id)workspace didAddScene:(id)scene
{
  workspaceCopy = workspace;
  sceneCopy = scene;
  observer = [(FBSceneManagerObserver *)self observer];
  _legacyWorkspace = [(FBSceneWorkspace *)workspaceCopy _legacyWorkspace];
  if (_legacyWorkspace)
  {
    if (self->_didAddLEGACY)
    {
      [observer sceneManager:_legacyWorkspace didAddScene:sceneCopy];
    }
  }

  else if (self->_didAdd)
  {
    [observer workspace:workspaceCopy didAddScene:sceneCopy];
  }
}

- (void)workspace:(id)workspace willRemoveScene:(id)scene
{
  workspaceCopy = workspace;
  sceneCopy = scene;
  observer = [(FBSceneManagerObserver *)self observer];
  v8 = observer;
  if (self->_willRemoveLEGACY)
  {
    _legacyWorkspace = [(FBSceneWorkspace *)workspaceCopy _legacyWorkspace];
    [v8 sceneManager:_legacyWorkspace willRemoveScene:sceneCopy];
  }

  else if (self->_willRemove)
  {
    [observer workspace:workspaceCopy willRemoveScene:sceneCopy];
  }
}

- (void)sceneManager:(id)manager didCreateScene:(id)scene
{
  managerCopy = manager;
  sceneCopy = scene;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no longer used"];
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
    v20 = @"FBSceneManagerObserver.m";
    v21 = 1024;
    v22 = 232;
    v23 = 2114;
    v24 = v9;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v13, 0x3Au);
  }

  [v9 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)sceneManager:(id)manager didDestroyScene:(id)scene
{
  if (self->_didDestroyDEPRECATED)
  {
    sceneCopy = scene;
    managerCopy = manager;
    observer = [(FBSceneManagerObserver *)self observer];
    [observer sceneManager:managerCopy didDestroyScene:sceneCopy];
  }
}

- (void)sceneManager:(id)manager willUpdateScene:(id)scene withSettings:(id)settings transitionContext:(id)context
{
  managerCopy = manager;
  sceneCopy = scene;
  settingsCopy = settings;
  contextCopy = context;
  observer = [(FBSceneManagerObserver *)self observer];
  if (self->_willUpdateSceneDEPRECATED)
  {
    updateContext = [contextCopy updateContext];
    transactionID = [updateContext transactionID];

    if (transactionID >= 2)
    {
      [observer sceneManager:managerCopy willUpdateScene:sceneCopy withSettings:settingsCopy transitionContext:contextCopy];
    }
  }
}

- (void)sceneManager:(id)manager willCommitUpdateForScene:(id)scene transactionID:(unint64_t)d
{
  managerCopy = manager;
  sceneCopy = scene;
  observer = [(FBSceneManagerObserver *)self observer];
  v10 = observer;
  if (self->_willCommitDEPRECATED)
  {
    [observer sceneManager:managerCopy willCommitUpdateForScene:sceneCopy transactionID:d];
  }
}

- (void)sceneManager:(id)manager didCommitUpdateForScene:(id)scene transactionID:(unint64_t)d
{
  managerCopy = manager;
  sceneCopy = scene;
  observer = [(FBSceneManagerObserver *)self observer];
  v10 = observer;
  if (self->_didCommitDEPRECATED)
  {
    [observer sceneManager:managerCopy didCommitUpdateForScene:sceneCopy transactionID:d];
  }
}

- (void)sceneManager:(id)manager didAddScene:(id)scene
{
  managerCopy = manager;
  sceneCopy = scene;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no longer used"];
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
    v20 = @"FBSceneManagerObserver.m";
    v21 = 1024;
    v22 = 266;
    v23 = 2114;
    v24 = v9;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v13, 0x3Au);
  }

  [v9 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)sceneManager:(id)manager willRemoveScene:(id)scene
{
  managerCopy = manager;
  sceneCopy = scene;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no longer used"];
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
    v20 = @"FBSceneManagerObserver.m";
    v21 = 1024;
    v22 = 270;
    v23 = 2114;
    v24 = v9;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v13, 0x3Au);
  }

  [v9 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)sceneManager:(id)manager clientDidConnectWithHandshake:(id)handshake
{
  managerCopy = manager;
  handshakeCopy = handshake;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no longer used"];
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
    v20 = @"FBSceneManagerObserver.m";
    v21 = 1024;
    v22 = 274;
    v23 = 2114;
    v24 = v9;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v13, 0x3Au);
  }

  [v9 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)sceneManager:(id)manager interceptUpdateForScene:(id)scene withNewSettings:(id)settings
{
  v17 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  if (self->_interceptSceneUpdatesLEGACY)
  {
    settingsCopy = settings;
    managerCopy = manager;
    v11 = FBLogScene();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      identifier = [sceneCopy identifier];
      v15 = 138543362;
      v16 = identifier;
      _os_log_impl(&dword_1A89DD000, v11, OS_LOG_TYPE_INFO, "Client intercepting scene update for scene: %{public}@", &v15, 0xCu);
    }

    _privateDelegate = [(FBSceneManagerObserver *)self _privateDelegate];
    [_privateDelegate sceneManager:managerCopy interceptUpdateForScene:sceneCopy withNewSettings:settingsCopy];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBSceneManagerObserver *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  v5 = [v3 appendPointer:WeakRetained withName:@"observer"];

  if (self->_isDelegate)
  {
    v6 = [v3 appendBool:1 withName:@"isDelegate"];
  }

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBSceneManagerObserver *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)_privateDelegate
{
  if (self->_privateDelegate)
  {
    delegate = [(FBSceneManagerObserver *)self delegate];
  }

  else
  {
    delegate = 0;
  }

  return delegate;
}

@end