@interface FBSceneManagerObserver
- (BOOL)isEqual:(id)a3;
- (FBSceneManagerObserver)initWithDelegate:(id)a3 workspace:(id)a4;
- (id)_initWithObserver:(id)a3 workspace:(id)a4;
- (id)_privateDelegate;
- (id)delegate;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)observer;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)sceneManager:(id)a3 clientDidConnectWithHandshake:(id)a4;
- (void)sceneManager:(id)a3 didAddScene:(id)a4;
- (void)sceneManager:(id)a3 didCommitUpdateForScene:(id)a4 transactionID:(unint64_t)a5;
- (void)sceneManager:(id)a3 didCreateScene:(id)a4;
- (void)sceneManager:(id)a3 didDestroyScene:(id)a4;
- (void)sceneManager:(id)a3 interceptUpdateForScene:(id)a4 withNewSettings:(id)a5;
- (void)sceneManager:(id)a3 willCommitUpdateForScene:(id)a4 transactionID:(unint64_t)a5;
- (void)sceneManager:(id)a3 willRemoveScene:(id)a4;
- (void)sceneManager:(id)a3 willUpdateScene:(id)a4 withSettings:(id)a5 transitionContext:(id)a6;
- (void)workspace:(id)a3 clientDidConnectWithHandshake:(id)a4;
- (void)workspace:(id)a3 didAddScene:(id)a4;
- (void)workspace:(id)a3 didReceiveActions:(id)a4;
- (void)workspace:(id)a3 didReceiveScene:(id)a4 withContext:(id)a5 fromProcess:(id)a6;
- (void)workspace:(id)a3 didReceiveSceneRequestWithOptions:(id)a4 fromProcess:(id)a5 completion:(id)a6;
- (void)workspace:(id)a3 willRemoveScene:(id)a4;
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

- (id)_initWithObserver:(id)a3 workspace:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = FBSceneManagerObserver;
  v8 = [(FBSceneManagerObserver *)&v12 init];
  if (v8)
  {
    v9 = objc_opt_class();
    v8->_observerAddress = v6;
    v8->_observerClass = v9;
    objc_storeWeak(&v8->_observer, v6);
    v8->_didAdd = objc_opt_respondsToSelector() & 1;
    v8->_willRemove = objc_opt_respondsToSelector() & 1;
    v10 = [(FBSceneWorkspace *)v7 _legacyWorkspace];

    if (v10)
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

- (FBSceneManagerObserver)initWithDelegate:(id)a3 workspace:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FBSceneManagerObserver *)self _initWithObserver:v6 workspace:v7];
  v9 = v8;
  if (v8)
  {
    v8->_isDelegate = 1;
    v8->_clientDidConnect = objc_opt_respondsToSelector() & 1;
    v9->_didReceiveSceneRequest = objc_opt_respondsToSelector() & 1;
    v9->_didReceiveScene = objc_opt_respondsToSelector() & 1;
    v9->_didReceiveActions = objc_opt_respondsToSelector() & 1;
    v10 = [(FBSceneWorkspace *)v7 _legacyWorkspace];

    if (v10)
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

- (void)workspace:(id)a3 clientDidConnectWithHandshake:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(FBSceneManagerObserver *)self delegate];
  v9 = v8;
  if (!v8)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [v7 remnants];
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
            objc_enumerationMutation(v10);
          }

          [*(*(&v20 + 1) + 8 * i) invalidate];
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v12);
    }

    goto LABEL_21;
  }

  if (!self->_clientDidConnect)
  {
    if (self->_clientDidConnectLEGACY)
    {
      v10 = [(FBSceneWorkspace *)v6 _legacyWorkspace];
      [v9 sceneManager:v10 clientDidConnectWithHandshake:v7];
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v10 = [v7 remnants];
      v15 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
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
              objc_enumerationMutation(v10);
            }

            [*(*(&v24 + 1) + 8 * j) invalidate];
          }

          v16 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v16);
      }
    }

LABEL_21:

    goto LABEL_22;
  }

  [v8 workspace:v6 clientDidConnectWithHandshake:v7];
LABEL_22:

  v19 = *MEMORY[0x1E69E9840];
}

- (void)workspace:(id)a3 didReceiveSceneRequestWithOptions:(id)a4 fromProcess:(id)a5 completion:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(FBSceneManagerObserver *)self delegate];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_7;
  }

  if (self->_didReceiveSceneRequest)
  {
    [v13 workspace:v16 didReceiveSceneRequestWithOptions:v10 fromProcess:v11 completion:v12];
    goto LABEL_9;
  }

  if (self->_didReceiveSceneRequestLEGACY)
  {
    v15 = [(FBSceneWorkspace *)v16 _legacyWorkspace];
    [v14 sceneManager:v15 didReceiveSceneRequestWithOptions:v10 fromProcess:v11 completion:v12];
  }

  else
  {
LABEL_7:
    v15 = FBSWorkspaceErrorCreate();
    v12[2](v12, 0, v15);
  }

LABEL_9:
}

- (void)workspace:(id)a3 didReceiveScene:(id)a4 withContext:(id)a5 fromProcess:(id)a6
{
  v15 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(FBSceneManagerObserver *)self delegate];
  v14 = v13;
  if (v13 && self->_didReceiveScene)
  {
    [v13 workspace:v15 didReceiveScene:v10 withContext:v11 fromProcess:v12];
  }
}

- (void)workspace:(id)a3 didReceiveActions:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(FBSceneManagerObserver *)self delegate];
  v8 = v7;
  if (v7 && self->_didReceiveActions)
  {
    [v7 workspace:v9 didReceiveActions:v6];
  }
}

- (void)workspace:(id)a3 didAddScene:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(FBSceneManagerObserver *)self observer];
  v8 = [(FBSceneWorkspace *)v9 _legacyWorkspace];
  if (v8)
  {
    if (self->_didAddLEGACY)
    {
      [v7 sceneManager:v8 didAddScene:v6];
    }
  }

  else if (self->_didAdd)
  {
    [v7 workspace:v9 didAddScene:v6];
  }
}

- (void)workspace:(id)a3 willRemoveScene:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(FBSceneManagerObserver *)self observer];
  v8 = v7;
  if (self->_willRemoveLEGACY)
  {
    v9 = [(FBSceneWorkspace *)v10 _legacyWorkspace];
    [v8 sceneManager:v9 willRemoveScene:v6];
  }

  else if (self->_willRemove)
  {
    [v7 workspace:v10 willRemoveScene:v6];
  }
}

- (void)sceneManager:(id)a3 didCreateScene:(id)a4
{
  v7 = a3;
  v8 = a4;
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
    v18 = self;
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

- (void)sceneManager:(id)a3 didDestroyScene:(id)a4
{
  if (self->_didDestroyDEPRECATED)
  {
    v7 = a4;
    v8 = a3;
    v9 = [(FBSceneManagerObserver *)self observer];
    [v9 sceneManager:v8 didDestroyScene:v7];
  }
}

- (void)sceneManager:(id)a3 willUpdateScene:(id)a4 withSettings:(id)a5 transitionContext:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(FBSceneManagerObserver *)self observer];
  if (self->_willUpdateSceneDEPRECATED)
  {
    v14 = [v12 updateContext];
    v15 = [v14 transactionID];

    if (v15 >= 2)
    {
      [v13 sceneManager:v16 willUpdateScene:v10 withSettings:v11 transitionContext:v12];
    }
  }
}

- (void)sceneManager:(id)a3 willCommitUpdateForScene:(id)a4 transactionID:(unint64_t)a5
{
  v11 = a3;
  v8 = a4;
  v9 = [(FBSceneManagerObserver *)self observer];
  v10 = v9;
  if (self->_willCommitDEPRECATED)
  {
    [v9 sceneManager:v11 willCommitUpdateForScene:v8 transactionID:a5];
  }
}

- (void)sceneManager:(id)a3 didCommitUpdateForScene:(id)a4 transactionID:(unint64_t)a5
{
  v11 = a3;
  v8 = a4;
  v9 = [(FBSceneManagerObserver *)self observer];
  v10 = v9;
  if (self->_didCommitDEPRECATED)
  {
    [v9 sceneManager:v11 didCommitUpdateForScene:v8 transactionID:a5];
  }
}

- (void)sceneManager:(id)a3 didAddScene:(id)a4
{
  v7 = a3;
  v8 = a4;
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
    v18 = self;
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

- (void)sceneManager:(id)a3 willRemoveScene:(id)a4
{
  v7 = a3;
  v8 = a4;
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
    v18 = self;
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

- (void)sceneManager:(id)a3 clientDidConnectWithHandshake:(id)a4
{
  v7 = a3;
  v8 = a4;
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
    v18 = self;
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

- (void)sceneManager:(id)a3 interceptUpdateForScene:(id)a4 withNewSettings:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if (self->_interceptSceneUpdatesLEGACY)
  {
    v9 = a5;
    v10 = a3;
    v11 = FBLogScene();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v8 identifier];
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_1A89DD000, v11, OS_LOG_TYPE_INFO, "Client intercepting scene update for scene: %{public}@", &v15, 0xCu);
    }

    v13 = [(FBSceneManagerObserver *)self _privateDelegate];
    [v13 sceneManager:v10 interceptUpdateForScene:v8 withNewSettings:v9];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)succinctDescription
{
  v2 = [(FBSceneManagerObserver *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
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

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(FBSceneManagerObserver *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)_privateDelegate
{
  if (self->_privateDelegate)
  {
    v4 = [(FBSceneManagerObserver *)self delegate];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end