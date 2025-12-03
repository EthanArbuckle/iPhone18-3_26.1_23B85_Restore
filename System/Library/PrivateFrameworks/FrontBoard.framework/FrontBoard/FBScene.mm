@interface FBScene
- (BOOL)conformsToExtension:(Class)extension;
- (BOOL)executeWhenMutable:(id)mutable;
- (BOOL)isEqual:(id)equal;
- (BOOL)updateWhenMutable:(id)mutable;
- (FBProcess)clientProcess;
- (FBSProcess)hostProcess;
- (FBSScene)parentScene;
- (FBSSceneParameters)parameters;
- (FBSSceneSettings)settings;
- (id)_allComponentProxies;
- (id)_beginUpdate;
- (id)_componentProxiesForExtension:(uint64_t)extension;
- (id)_createTransitionContext;
- (id)_verifyIntegrityOfExtensionsInSettings:(void *)settings;
- (id)componentForExtension:(Class)extension ofClass:(Class)class;
- (id)createSnapshot;
- (id)createSnapshotWithContext:(id)context;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)display;
- (id)initWithDefiniton:(void *)definiton remnant:(void *)remnant settings:(void *)settings initialClientSettings:(void *)clientSettings clientProvider:(void *)provider workspace:;
- (id)observerProxies;
- (id)prepareSnapshot;
- (id)prepareSnapshotWithConfigurator:(id)configurator;
- (id)snapshotContext;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)targetForInvocation:(id)invocation;
- (id)uiClientSettings;
- (id)uiSettings;
- (int64_t)currentInterfaceOrientation;
- (uint64_t)_activateWithTransitionContext:(void *)context error:;
- (uint64_t)_beginTransaction;
- (uint64_t)_endTransaction:(uint64_t)result;
- (uint64_t)_isLegacy;
- (void)_addExtensions:(void *)extensions removeExtensions:(void *)removeExtensions settings:;
- (void)_applySettingsUpdateWithCompletion:(uint64_t)completion;
- (void)_beginTransaction;
- (void)_beginUpdate;
- (void)_deactivateAndInvalidate:(void *)invalidate transitionContext:;
- (void)_deactivateClient:(void *)client withContext:;
- (void)_dispatchClientMessageWithBlock:(uint64_t)block;
- (void)_finalizeSettingsUpdate;
- (void)_iterateObservers:(uint64_t)observers;
- (void)_joinUpdate:(void *)update block:(void *)block completion:;
- (void)_objc_initiateDealloc;
- (void)_propagateSettings:(void *)settings fromSettings:(void *)fromSettings toSettings:;
- (void)_resetUpdateState;
- (void)_setContentState:(int)state notifyObservers:;
- (void)activate:(id)activate;
- (void)activateWithTransitionContext:(id)context completion:(id)completion;
- (void)addExtension:(Class)extension;
- (void)addExtensions:(id)extensions;
- (void)addObserver:(id)observer;
- (void)clientToken:(id)token deactivateWithContext:(id)context;
- (void)clientToken:(id)token didInvalidateWithError:(id)error;
- (void)clientToken:(id)token didReceiveActions:(id)actions forExtension:(Class)extension;
- (void)clientToken:(id)token didUpdateClientSettings:(id)settings withDiff:(id)diff transitionContext:(id)context;
- (void)clientToken:(id)token handleInvocation:(id)invocation withReply:(id)reply;
- (void)configureParameters:(id)parameters;
- (void)deactivate:(id)deactivate;
- (void)dealloc;
- (void)invalidate:(id)invalidate;
- (void)removeExtension:(Class)extension;
- (void)removeExtensions:(id)extensions;
- (void)removeObserver:(id)observer;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
- (void)sceneWillInvalidate:(id)invalidate;
- (void)sendActions:(id)actions toExtension:(Class)extension;
- (void)sendInvocation:(id)invocation;
- (void)setDelegate:(id)delegate;
- (void)setParentScene:(id)scene;
- (void)updateSettings:(id)settings withTransitionContext:(id)context completion:(id)completion;
- (void)updateSettingsWithTransitionBlock:(id)block;
- (void)updateUISettingsWithBlock:(id)block;
- (void)updateUISettingsWithTransitionBlock:(id)block;
@end

@implementation FBScene

- (void)_beginUpdate
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot re-entrantly begin a new scene update"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (FBSSceneSettings)settings
{
  settings = [(FBSSceneUpdate *)self->_settingsUpdate settings];
  settings = settings;
  if (!settings)
  {
    settings = self->_settings;
  }

  v5 = settings;

  return settings;
}

- (id)_beginUpdate
{
  if (self)
  {
    selfCopy = self;
    if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
    {
      __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene _beginUpdate]");
    }

    if (*(selfCopy + 223) == 1)
    {
      [(FBScene *)sel__beginUpdate _beginUpdate];
    }

    if (*(selfCopy + 220) == 1)
    {
      [(FBScene *)sel__beginUpdate _beginUpdate];
    }

    if (*(selfCopy + 168))
    {
      [(FBScene *)sel__beginUpdate _beginUpdate];
    }

    [(FBScene *)(selfCopy + 223) _beginUpdate:selfCopy];
    self = v3;
  }

  return self;
}

- (void)_finalizeSettingsUpdate
{
  if (self)
  {
    if (*(self + 226) != 1 || (*(self + 219) & 1) != 0 || (*(self + 218) & 1) != 0 || *(self + 221) == 1)
    {
      v2 = *(self + 176);

      [(FBScene *)self _applySettingsUpdateWithCompletion:v2];
    }

    else
    {
      v3 = MEMORY[0x1E699FD18];
      v4 = *(self + 176);
      v5 = *(*(self + 168) + *MEMORY[0x1E699FD18]);
      v9 = MEMORY[0x1AC572E40](v4);
      v6 = *(self + 168);
      v7 = *v3;
      v8 = *(v6 + v7);
      *(v6 + v7) = 0;

      [(FBScene *)self _applySettingsUpdateWithCompletion:?];
      [self activateWithTransitionContext:v5 completion:v9];
    }
  }
}

- (id)_allComponentProxies
{
  selfCopy = self;
  if (self)
  {
    if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
    {
      __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene _allComponentProxies]");
    }

    v2 = [selfCopy[19] copy];
    v3 = v2;
    v4 = MEMORY[0x1E695E0F0];
    if (v2)
    {
      v4 = v2;
    }

    selfCopy = v4;
  }

  return selfCopy;
}

- (uint64_t)_beginTransaction
{
  if (!self)
  {
    return 0;
  }

  if ((*(self + 219) & 1) == 0)
  {
    [(FBScene *)self _beginTransaction];
  }

  if (*(self + 230))
  {
    [(FBScene *)self _beginTransaction];
  }

  *(self + 230) = 1;
  v1 = *(self + 200) + 1;
  *(self + 200) = v1;
  return v1;
}

- (id)_createTransitionContext
{
  specification = [(FBSSceneDefinition *)self->_definition specification];
  v3 = [objc_msgSend(specification "transitionContextClass")];

  return v3;
}

- (id)observerProxies
{
  if (self)
  {
    if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
    {
      __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene observerProxies]");
    }

    os_unfair_lock_lock((self + 8));
    array = [*(self + 32) array];
    v3 = [array copy];

    os_unfair_lock_unlock((self + 8));
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_resetUpdateState
{
  if (self)
  {
    *(self + 223) = 0;
    v2 = *(self + 176);
    *(self + 176) = 0;

    *(self + 229) = 0;
    *(self + 226) = 0;
    v3 = *(self + 168);
    *(self + 168) = 0;

    [*(self + 184) invalidate];
    v4 = *(self + 184);
    *(self + 184) = 0;
  }
}

- (FBProcess)clientProcess
{
  if (self->_legacy || self->_clientHandle)
  {
    return self->_clientProcess;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)_isLegacy
{
  if (self)
  {
    v1 = *(self + 218);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (id)uiSettings
{
  settings = [(FBScene *)self settings];
  if (([settings _uikitShimming_isUISubclass] & 1) == 0)
  {
    [(FBScene(UIApp) *)settings uiSettings];
  }

  return settings;
}

- (id)uiClientSettings
{
  clientSettings = [(FBScene *)self clientSettings];
  if (([clientSettings _uikitShimming_isUISubclass] & 1) == 0)
  {
    [(FBScene(UIApp) *)clientSettings uiClientSettings];
  }

  return clientSettings;
}

- (int64_t)currentInterfaceOrientation
{
  settings = [(FBScene *)self settings];
  _uiApplicationSceneSettingsShim = [settings _uiApplicationSceneSettingsShim];

  clientSettings = [(FBScene *)self clientSettings];
  _uiApplicationSceneClientSettingsShim = [clientSettings _uiApplicationSceneClientSettingsShim];

  if (!_uiApplicationSceneSettingsShim || !_uiApplicationSceneClientSettingsShim)
  {
    if (!_uiApplicationSceneSettingsShim)
    {
      interfaceOrientation = 0;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (![_uiApplicationSceneSettingsShim deviceOrientationEventsEnabled] || (interfaceOrientation = objc_msgSend(_uiApplicationSceneClientSettingsShim, "interfaceOrientation")) == 0)
  {
LABEL_7:
    interfaceOrientation = [_uiApplicationSceneSettingsShim interfaceOrientation];
  }

LABEL_9:

  return interfaceOrientation;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBScene *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  workspaceIdentifier = self->_workspaceIdentifier;
  if (workspaceIdentifier && ([(FBSceneWorkspace *)self->_workspace identifier], v5 = objc_claimAutoreleasedReturnValue(), v6 = [(NSString *)workspaceIdentifier isEqualToString:v5], v5, !v6))
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = self->_workspaceIdentifier;
    identifier = [(FBSceneWorkspace *)self->_workspace identifier];
    [v9 stringWithFormat:@"%@(%@):%@", v10, identifier, self->_identifier];
  }

  else
  {
    v7 = MEMORY[0x1E696AEC0];
    identifier = [(FBSceneWorkspace *)self->_workspace identifier];
    [v7 stringWithFormat:@"%@:%@", identifier, self->_identifier, v14];
  }
  v11 = ;
  v12 = [v3 appendObject:v11 withName:0];

  return v3;
}

- (void)_beginTransaction
{
  v3 = MEMORY[0x1E696AEC0];
  loggingIdentifier = [self loggingIdentifier];
  v4 = [v3 stringWithFormat:@"scene is not actually active: %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_9();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, loggingIdentifier, v13, v14);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (FBSScene)parentScene
{
  WeakRetained = objc_loadWeakRetained(&self->_parentScene);

  return WeakRetained;
}

- (void)_objc_initiateDealloc
{
  if (pthread_main_np())
  {

    MEMORY[0x1EEE667E0](self);
  }

  else
  {
    v3 = MEMORY[0x1E69E96A0];
    v4 = MEMORY[0x1E69E58D8];

    dispatch_async_f(v3, self, v4);
  }
}

- (void)dealloc
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Scene must be invalidated before it can deallocate."];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updateUISettingsWithBlock:(id)block
{
  blockCopy = block;
  v6 = blockCopy;
  if (blockCopy)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __44__FBScene_UIApp__updateUISettingsWithBlock___block_invoke;
    v7[3] = &unk_1E783B108;
    v9 = a2;
    v7[4] = self;
    v8 = blockCopy;
    [(FBScene *)self updateSettingsWithBlock:v7];
  }
}

void __44__FBScene_UIApp__updateUISettingsWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 _uikitShimming_isUISubclass] & 1) == 0)
  {
    __44__FBScene_UIApp__updateUISettingsWithBlock___block_invoke_cold_1(v3, a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)updateUISettingsWithTransitionBlock:(id)block
{
  blockCopy = block;
  v6 = blockCopy;
  if (blockCopy)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __54__FBScene_UIApp__updateUISettingsWithTransitionBlock___block_invoke;
    v7[3] = &unk_1E783B130;
    v9 = a2;
    v7[4] = self;
    v8 = blockCopy;
    [(FBScene *)self updateSettingsWithTransitionBlock:v7];
  }
}

id __54__FBScene_UIApp__updateUISettingsWithTransitionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 _uikitShimming_isUISubclass] & 1) == 0)
  {
    __54__FBScene_UIApp__updateUISettingsWithTransitionBlock___block_invoke_cold_1(v3, a1);
  }

  v4 = (*(*(a1 + 40) + 16))();

  return v4;
}

- (id)initWithDefiniton:(void *)definiton remnant:(void *)remnant settings:(void *)settings initialClientSettings:(void *)clientSettings clientProvider:(void *)provider workspace:
{
  v13 = a2;
  obj = definiton;
  definitonCopy = definiton;
  remnantCopy = remnant;
  settingsCopy = settings;
  clientSettingsCopy = clientSettings;
  providerCopy = provider;
  v76 = providerCopy;
  if (!self)
  {
    v22 = 0;
LABEL_33:
    v50 = clientSettingsCopy;
    goto LABEL_34;
  }

  if (!providerCopy)
  {
    [FBScene initWithDefiniton:? remnant:? settings:? initialClientSettings:? clientProvider:? workspace:?];
  }

  if (([v13 isValid] & 1) == 0)
  {
    [FBScene initWithDefiniton:? remnant:? settings:? initialClientSettings:? clientProvider:? workspace:?];
  }

  v18 = definitonCopy;
  if (v18)
  {
    NSClassFromString(&cfstr_Fbsceneremnant_1.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBScene initWithDefiniton:? remnant:? settings:? initialClientSettings:? clientProvider:? workspace:?];
    }
  }

  v19 = remnantCopy;
  if (v19)
  {
    NSClassFromString(&cfstr_Fbsscenesettin.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBScene initWithDefiniton:? remnant:? settings:? initialClientSettings:? clientProvider:? workspace:?];
    }
  }

  v20 = settingsCopy;
  if (v20)
  {
    NSClassFromString(&cfstr_Fbssceneclient_0.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBScene initWithDefiniton:? remnant:? settings:? initialClientSettings:? clientProvider:? workspace:?];
    }
  }

  if (initWithDefiniton_remnant_settings_initialClientSettings_clientProvider_workspace__onceToken != -1)
  {
    [FBScene initWithDefiniton:remnant:settings:initialClientSettings:clientProvider:workspace:];
  }

  v79.receiver = self;
  v79.super_class = FBScene;
  v21 = objc_msgSendSuper2(&v79, sel_init);
  v22 = v21;
  if (!v21)
  {
    goto LABEL_33;
  }

  v72 = definitonCopy;
  clientSettingsCopy2 = clientSettings;
  v70 = settingsCopy;
  v71 = remnantCopy;
  v21[2] = 0;
  v23 = [v13 copy];
  v24 = *(v22 + 15);
  *(v22 + 15) = v23;

  *(v22 + 25) = 0;
  objc_storeStrong(v22 + 31, provider);
  identity = [v13 identity];
  clientIdentity = [v13 clientIdentity];
  specification = [v13 specification];
  identifier = [identity identifier];
  v29 = [identifier copy];
  v30 = *(v22 + 10);
  *(v22 + 10) = v29;

  workspaceIdentifier = [identity workspaceIdentifier];
  v32 = [workspaceIdentifier copy];
  v33 = *(v22 + 11);
  *(v22 + 11) = v32;

  v34 = [FBSceneEventQueue alloc];
  v35 = [identity description];
  v36 = v34;
  v37 = clientIdentity;
  v38 = [(BSEventQueue *)v36 initWithName:v35 onQueue:MEMORY[0x1E69E96A0]];
  v39 = *(v22 + 6);
  *(v22 + 6) = v38;

  targetsClientEndpoint = [clientIdentity targetsClientEndpoint];
  v41 = MEMORY[0x1E699FC18];
  v69 = v37;
  if (targetsClientEndpoint)
  {
    v42 = getpid();
    processIdentity = [v37 processIdentity];
    internalWorkspaceIdentifier = [identity internalWorkspaceIdentifier];
    v45 = [v41 tokenWithHostPID:v42 directEndpointTarget:processIdentity workspace:internalWorkspaceIdentifier identifier:*(v22 + 10)];
    internalWorkspaceIdentifier2 = *(v22 + 12);
    *(v22 + 12) = v45;
  }

  else
  {
    processIdentity = [(FBWorkspaceEventDispatcher *)v76 domain];
    internalWorkspaceIdentifier = [processIdentity incomingWorkspaceEndpoint];
    internalWorkspaceIdentifier2 = [identity internalWorkspaceIdentifier];
    v47 = [v41 tokenWithHostEndpoint:internalWorkspaceIdentifier workspace:internalWorkspaceIdentifier2 identifier:*(v22 + 10)];
    v48 = *(v22 + 12);
    *(v22 + 12) = v47;
  }

  if (v19)
  {
    v49 = [v19 _copyClearingProgenitor:0];
  }

  else
  {
    v49 = [objc_msgSend(specification "settingsClass")];
  }

  v50 = clientSettingsCopy;
  v51 = *(v22 + 13);
  *(v22 + 13) = v49;

  if (v20)
  {
    v52 = [v20 copy];
  }

  else
  {
    v52 = [objc_msgSend(specification "clientSettingsClass")];
  }

  v53 = *(v22 + 14);
  *(v22 + 14) = v52;

  v54 = [[FBSceneLayerManager alloc] _initWithScene:v22];
  v55 = *(v22 + 2);
  *(v22 + 2) = v54;

  v56 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v57 = *(v22 + 4);
  *(v22 + 4) = v56;

  *(v22 + 218) = clientSettingsCopy != 0;
  objc_storeStrong(v22 + 8, clientSettingsCopy2);
  objc_storeStrong(v22 + 16, obj);
  if ([*(v22 + 13) _hasAnySceneExtension])
  {
    v58 = [*(v22 + 13) _copyClearingProgenitor:&__block_literal_global_53];
    v59 = *(v22 + 13);
    *(v22 + 13) = v58;
  }

  if ([*(v22 + 14) _hasAnySceneExtension])
  {
    v60 = [*(v22 + 14) copy:&__block_literal_global_55];
    v61 = *(v22 + 14);
    *(v22 + 14) = v60;
  }

  v62 = FBSGetDefaultExtensions();
  [v22 addExtensions:v62];

  objc_initWeak(&location, v22);
  v63 = MEMORY[0x1E696AEC0];
  loggingIdentifier = [v22 loggingIdentifier];
  v65 = [v63 stringWithFormat:@"FBScene - %@", loggingIdentifier];
  objc_copyWeak(&v77, &location);
  v66 = BSLogAddStateCaptureBlockForUserRequestsOnlyWithTitle();
  v67 = *(v22 + 5);
  *(v22 + 5) = v66;

  *(v22 + 224) = 1;
  objc_destroyWeak(&v77);
  objc_destroyWeak(&location);

  remnantCopy = v71;
  definitonCopy = v72;
  settingsCopy = v70;
LABEL_34:

  return v22;
}

uint64_t __93__FBScene_initWithDefiniton_remnant_settings_initialClientSettings_clientProvider_workspace___block_invoke()
{
  v0 = objc_opt_class();

  return MEMORY[0x1EEE667A8](v0);
}

id __93__FBScene_initWithDefiniton_remnant_settings_initialClientSettings_clientProvider_workspace___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained debugDescription];

  return v2;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene setDelegate:]");
  }

  delegateProxy = self->_delegateProxy;
  if (delegateProxy)
  {
    self->_delegateProxy = 0;
  }

  v5 = delegateCopy;
  if (delegateCopy)
  {
    v6 = [[FBSceneObserver alloc] initWithDelegate:delegateCopy];
    v7 = self->_delegateProxy;
    self->_delegateProxy = v6;

    v5 = delegateCopy;
  }
}

- (FBSSceneParameters)parameters
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene parameters]");
  }

  v3 = MEMORY[0x1E699FC20];
  specification = [(FBSSceneDefinition *)self->_definition specification];
  v5 = [v3 parametersForSpecification:specification];

  settings = [(FBScene *)self settings];
  [v5 setSettings:settings];

  [v5 setClientSettings:self->_clientSettings];

  return v5;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene addObserver:]");
  }

  v4 = observerCopy;
  if (observerCopy)
  {
    v5 = [[FBSceneObserver alloc] initWithObserver:observerCopy];
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableOrderedSet *)self->_lock_observerProxies addObject:v5];
    os_unfair_lock_unlock(&self->_lock);

    v4 = observerCopy;
  }
}

- (void)removeObserver:(id)observer
{
  v20 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NSMutableOrderedSet *)self->_lock_observerProxies copy];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        observer = [(FBSceneObserver *)v10 observer];
        v12 = observer;
        if (observer)
        {
          v13 = observer == observer;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          [(NSMutableOrderedSet *)self->_lock_observerProxies removeObject:v10];
          [v10 invalidate];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_lock);
  v14 = *MEMORY[0x1E69E9840];
}

- (void)activate:(id)activate
{
  if (activate)
  {
    activateCopy = activate;
    _createTransitionContext = [(FBScene *)self _createTransitionContext];
    activateCopy[2](activateCopy);
  }

  else
  {
    _createTransitionContext = 0;
  }

  [(FBScene *)self activateWithTransitionContext:_createTransitionContext];
}

- (void)activateWithTransitionContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  if (!self->_finishedInit)
  {
    [FBScene activateWithTransitionContext:a2 completion:?];
  }

  if (self->_midUpdate)
  {
    [FBScene activateWithTransitionContext:a2 completion:?];
  }

  if (self->_deactivating)
  {
    [FBScene activateWithTransitionContext:a2 completion:?];
  }

  v9 = completionCopy;
  if (self->_legacy)
  {
    if (self->_legacyActivated)
    {
      [FBScene activateWithTransitionContext:a2 completion:?];
    }

    self->_legacyActivated = 1;
  }

  v10 = [FBSceneEventQueue suspendIdleWorkForReason:@"activation"];
  active = self->_active;
  remnant = self->_remnant;
  v45[0] = 0;
  v12 = [(FBScene *)self _activateWithTransitionContext:contextCopy error:v45];
  v13 = v45[0];
  executionContext = [contextCopy executionContext];
  completion = [executionContext completion];

  if (completion)
  {
    v26 = a2;
    if (active)
    {
      v16 = @"Provided execution context was not used because the scene was already active.";
    }

    else if (self->_invalidated)
    {
      v16 = @"Scene was not activated because it had already been invalidated.";
    }

    else
    {
      v16 = @"Provided execution context was not used to create a process.";
    }

    v25 = v12;
    clientProcess = self->_clientProcess;
    if (clientProcess)
    {
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __52__FBScene_activateWithTransitionContext_completion___block_invoke;
      v41[3] = &unk_1E783D1D8;
      v18 = &v44;
      v19 = &v42;
      v44 = completion;
      v42 = v16;
      v20 = &v43;
      v43 = v13;
      [(FBProcess *)clientProcess _executeBlockAfterBootstrap:v41];
    }

    else
    {
      v21 = +[FBProcess calloutQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __52__FBScene_activateWithTransitionContext_completion___block_invoke_2;
      block[3] = &unk_1E783D200;
      v18 = &v40;
      v19 = &v38;
      v40 = completion;
      v38 = v16;
      v20 = &v39;
      v39 = v13;
      dispatch_async(v21, block);
    }

    a2 = v26;
    v12 = v25;
  }

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __52__FBScene_activateWithTransitionContext_completion___block_invoke_3;
  v33[3] = &unk_1E783D250;
  v34 = contextCopy;
  selfCopy = self;
  v36 = remnant != 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __52__FBScene_activateWithTransitionContext_completion___block_invoke_5;
  v28[3] = &unk_1E783D278;
  v32 = v12;
  v28[4] = self;
  v29 = v13;
  v30 = v9;
  v31 = a2;
  v22 = v9;
  v23 = v13;
  v24 = contextCopy;
  [(FBScene *)self performUpdate:v33 withCompletion:v28];
  [v10 invalidate];
}

- (uint64_t)_activateWithTransitionContext:(void *)context error:
{
  v78 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (!self)
  {
    goto LABEL_74;
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene _activateWithTransitionContext:error:]");
  }

  if (*(self + 219) == 1)
  {
    if (context)
    {
      *context = 0;
    }

    self = 1;
    goto LABEL_74;
  }

  if (*(self + 221) == 1)
  {
    if (context)
    {
      FBSceneErrorCreate(2uLL, @"Cannot activate an invalidated scene.", 0);
      *context = self = 0;
    }

    else
    {
      self = 0;
    }

    goto LABEL_74;
  }

  if (!*(self + 248))
  {
    [FBScene _activateWithTransitionContext:? error:?];
  }

  if (*(self + 232))
  {
    [FBScene _activateWithTransitionContext:? error:?];
  }

  v6 = *(self + 64);
  if (*(self + 218) != 1)
  {
    if (v6)
    {
      [FBScene _activateWithTransitionContext:? error:?];
    }

    clientIdentity = [*(self + 120) clientIdentity];
    if ([clientIdentity isLocal])
    {
      [(FBScene *)(self + 248) _activateWithTransitionContext:self error:(self + 232), (self + 64)];
      v14 = 0;
LABEL_52:

      goto LABEL_53;
    }

    v8 = *(self + 128);
    if (v8)
    {
      _workspace = [v8 _workspace];
      process = [_workspace process];
      v11 = process;
      if (_workspace && process && ([*(self + 128) _assertion], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isValid"), v12, (v13 & 1) != 0))
      {
        v14 = 0;
      }

      else
      {

        v14 = FBSceneErrorCreate(1uLL, @"failed to activate scene from remnant", 0);
        _workspace = 0;
        v11 = 0;
      }

      goto LABEL_51;
    }

    processIdentity = [clientIdentity processIdentity];
    clientProcessHandle = [v5 clientProcessHandle];
    if ([*(self + 104) isClientFuture])
    {
      clientProcess = [*(self + 104) clientProcess];
      handle = [clientProcess handle];

      if (handle)
      {
        if (clientProcessHandle && ([clientProcessHandle isEqual:handle] & 1) == 0)
        {
          [FBScene _activateWithTransitionContext:? error:?];
        }

        v19 = handle;

        clientProcessHandle = v19;
      }
    }

    if (clientProcessHandle)
    {
      identity = [clientProcessHandle identity];
      v21 = [identity isEqual:processIdentity];

      if ((v21 & 1) == 0)
      {
        [FBScene _activateWithTransitionContext:? error:?];
      }

      domain = [(FBWorkspaceEventDispatcher *)*(self + 248) domain];
      v71 = 0;
      v11 = [domain _createProcessFutureForProcessHandle:clientProcessHandle error:&v71];
      v14 = v71;

      if (!v11)
      {
        goto LABEL_49;
      }

LABEL_47:
      _workspace = [v11 workspace];

      v14 = 0;
LABEL_50:

LABEL_51:
      v33 = *(self + 72);
      *(self + 72) = v11;
      v34 = v11;

      v35 = *(self + 64);
      *(self + 64) = _workspace;

      goto LABEL_52;
    }

    if ([*(self + 104) isClientFuture])
    {
      v14 = FBSceneErrorCreate(3uLL, @"client futures must be activated with a specific client process", 0);
      v11 = 0;
    }

    else
    {
      identityOfCurrentProcess = [MEMORY[0x1E69C75F0] identityOfCurrentProcess];
      v24 = [identityOfCurrentProcess isEqual:processIdentity];

      if (!v24)
      {
        executionContext = [v5 executionContext];
        v26 = [executionContext mutableCopy];

        if (v26)
        {
          identity2 = [(FBProcessExecutionContext *)v26 identity];

          if (identity2)
          {
            identity3 = [(FBProcessExecutionContext *)v26 identity];
            v29 = [identity3 isEqual:processIdentity];

            if ((v29 & 1) == 0)
            {
              [FBScene _activateWithTransitionContext:? error:?];
            }
          }

          else
          {
            [(FBProcessExecutionContext *)v26 setIdentity:processIdentity];
          }
        }

        else
        {
          v26 = [(FBProcessExecutionContext *)[FBMutableProcessExecutionContext alloc] initWithIdentity:processIdentity];
        }

        v31 = [(FBProcessExecutionContext *)v26 copyOrUpdateForSceneActivationWithSettings:*(self + 104), processIdentity];

        domain2 = [(FBWorkspaceEventDispatcher *)*(self + 248) domain];
        v70 = 0;
        v11 = [domain2 _createProcessFutureWithExecutionContext:v31 error:&v70];
        v14 = v70;

        [v5 setExecutionContext:0];
        processIdentity = v64;
        if (!v11)
        {
          goto LABEL_49;
        }

        goto LABEL_47;
      }

      [(FBScene *)(self + 248) _activateWithTransitionContext:self error:(self + 232), buf];
      v14 = 0;
      v11 = *buf;
      if (*buf)
      {
        goto LABEL_47;
      }
    }

LABEL_49:
    _workspace = 0;
    goto LABEL_50;
  }

  if (!v6)
  {
    [FBScene _activateWithTransitionContext:? error:?];
  }

  clientProcessHandle2 = [v5 clientProcessHandle];

  if (clientProcessHandle2)
  {
    [FBScene _activateWithTransitionContext:? error:?];
  }

  [(FBScene *)(self + 64) _activateWithTransitionContext:self error:(self + 232), (self + 248)];
  v14 = 0;
LABEL_53:
  executionContext2 = [v5 executionContext];

  if (executionContext2)
  {
    v37 = FBLogScene();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [FBScene _activateWithTransitionContext:self error:?];
    }
  }

  v38 = [*(self + 112) copy:&__block_literal_global_238];
  v39 = *(self + 112);
  *(self + 112) = v38;

  v40 = *(self + 16);
  layers = [*(self + 112) layers];
  [v40 _setLayers:layers];

  v42 = *(self + 64);
  if (!v42)
  {
    v50 = FBLogScene();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      [FBScene _activateWithTransitionContext:self error:v14];
    }

    v47 = v14;
    goto LABEL_65;
  }

  v43 = *(self + 104);
  v44 = *(self + 112);
  v45 = *(self + 128);
  v69 = 0;
  v46 = [v42 registerHost:self settings:v43 initialClientSettings:v44 fromRemnant:v45 error:&v69];
  v47 = v69;

  v48 = *(self + 56);
  *(self + 56) = v46;

  if (!*(self + 56))
  {
    v50 = FBLogScene();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      loggingIdentifier = [self loggingIdentifier];
      v62 = *(self + 64);
      v63 = [v47 descriptionWithMultilinePrefix:0];
      *buf = 138543874;
      *&buf[4] = loggingIdentifier;
      v74 = 2114;
      v75 = v62;
      v76 = 2114;
      v77 = v63;
      _os_log_error_impl(&dword_1A89DD000, v50, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to connect with %{public}@: %{public}@.", buf, 0x20u);
    }

LABEL_65:

    v49 = 0;
    goto LABEL_66;
  }

  v49 = 1;
LABEL_66:
  *(self + 219) = 1;
  v51 = *(self + 128);
  *(self + 128) = 0;

  ++*(self + 192);
  v52 = FBLogScene();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    loggingIdentifier2 = [self loggingIdentifier];
    v54 = *(self + 192);
    *buf = 138543618;
    *&buf[4] = loggingIdentifier2;
    v74 = 2048;
    v75 = v54;
    _os_log_impl(&dword_1A89DD000, v52, OS_LOG_TYPE_DEFAULT, "[%{public}@][%lu] Scene activated.", buf, 0x16u);
  }

  if (v49 && !*(self + 232))
  {
    v55 = *(self + 192);
    v56 = *(self + 72);
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __48__FBScene__activateWithTransitionContext_error___block_invoke_239;
    v65[3] = &unk_1E783D3D8;
    v67 = v55;
    v68 = sel__activateWithTransitionContext_error_;
    v65[4] = self;
    v66 = v56;
    v57 = v56;
    [v57 _executeBlockAfterLaunchCompletes:v65];
  }

  if (context)
  {
    v58 = v47;
    *context = v47;
  }

  v72 = v49;

  self = v72;
LABEL_74:

  v59 = *MEMORY[0x1E69E9840];
  return self;
}

void __52__FBScene_activateWithTransitionContext_completion___block_invoke(void *a1, void *a2)
{
  v3 = a1[5];
  v2 = a1[6];
  v4 = a1[4];
  v5 = a2;
  v6 = FBSceneErrorCreate(3uLL, v4, v3);
  (*(v2 + 16))(v2, v5, v6);
}

void __52__FBScene_activateWithTransitionContext_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = FBSceneErrorCreate(3uLL, *(a1 + 32), *(a1 + 40));
  (*(v1 + 16))(v1, 0, v2);
}

void __52__FBScene_activateWithTransitionContext_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 168) + *MEMORY[0x1E699FD18]), v7);
  }

  v8 = *(a1 + 40);
  if (!*(v8 + 200))
  {
    if ((*(v8 + 218) & 1) == 0 && *(a1 + 48) != 1 || ([*(v8 + 248) didAddScene:?], v8 = *(a1 + 40), (*(v8 + 218) & 1) == 0))
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __52__FBScene_activateWithTransitionContext_completion___block_invoke_4;
      v9[3] = &unk_1E783D228;
      v9[4] = v8;
      [(FBScene *)v8 _iterateObservers:v9];
    }

    if ([v5 isClientFuture])
    {
      [v5 setClientFuture:0];
      [v5 setClientProcess:0];
    }
  }
}

void __52__FBScene_activateWithTransitionContext_completion___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ((*(a1 + 64) & 1) == 0 && a2)
  {
    __52__FBScene_activateWithTransitionContext_completion___block_invoke_5_cold_1(a1);
  }

  v10 = v5;
  if (a2)
  {
    v6 = 0;
  }

  else
  {
    if (*(a1 + 40))
    {
      v7 = *(a1 + 40);
    }

    else
    {
      v7 = v5;
    }

    v6 = FBSceneErrorCreate(1uLL, @"Scene activation failed.", v7);
    v8 = [*(a1 + 32) _createTransitionContext];
    [v8 setError:v6];
    [(FBScene *)*(a1 + 32) _deactivateAndInvalidate:v8 transitionContext:?];
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v6);
  }
}

- (void)_deactivateAndInvalidate:(void *)invalidate transitionContext:
{
  v75 = *MEMORY[0x1E69E9840];
  invalidateCopy = invalidate;
  if (self)
  {
    if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
    {
      __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene _deactivateAndInvalidate:transitionContext:]");
    }

    if (*(self + 221) == 1)
    {
      captureCompletions = [invalidateCopy captureCompletions];
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __54__FBScene__deactivateAndInvalidate_transitionContext___block_invoke;
      v69[3] = &unk_1E783B240;
      v70 = captureCompletions;
      selfCopy = self;
      v7 = captureCompletions;
      [(FBScene *)self _dispatchClientMessageWithBlock:v69];
      v8 = v70;
LABEL_59:

      goto LABEL_60;
    }

    if (([self isMutable] & 1) == 0)
    {
      [FBScene _deactivateAndInvalidate:? transitionContext:?];
    }

    if (*(self + 220) == 1)
    {
      [FBScene _deactivateAndInvalidate:? transitionContext:?];
    }

    if (*(self + 223) == 1)
    {
      [FBScene _deactivateAndInvalidate:? transitionContext:?];
    }

    if (*(self + 230) == 1)
    {
      [FBScene _deactivateAndInvalidate:? transitionContext:?];
    }

    if (*(self + 217) == 1)
    {
      [FBScene _deactivateAndInvalidate:? transitionContext:?];
    }

    if (a2)
    {
      v9 = 1;
    }

    else
    {
      v9 = *(self + 218);
      if ((*(self + 219) & 1) == 0 && (v9 & 1) == 0)
      {
        captureCompletions2 = [invalidateCopy captureCompletions];
        v66[0] = MEMORY[0x1E69E9820];
        v66[1] = 3221225472;
        v66[2] = __54__FBScene__deactivateAndInvalidate_transitionContext___block_invoke_338;
        v66[3] = &unk_1E783B240;
        v67 = captureCompletions2;
        selfCopy2 = self;
        v7 = captureCompletions2;
        [(FBScene *)self _dispatchClientMessageWithBlock:v66];
        v8 = v67;
        goto LABEL_59;
      }
    }

    error = [invalidateCopy error];
    domain = [error domain];
    v12 = [domain isEqualToString:@"FBSceneErrorDomain"];

    v13 = error;
    v14 = v13;
    v8 = v13;
    if (v9)
    {
      v8 = v13;
      if (!v13)
      {
        v8 = FBSceneErrorCreate(2uLL, @"Scene was invalidated.", 0);
      }
    }

    if (v8)
    {
      if (!invalidateCopy)
      {
        invalidateCopy = [self _createTransitionContext];
      }

      [invalidateCopy setError:v8];
    }

    else if ([invalidateCopy _indirect_isEmpty])
    {

      invalidateCopy = 0;
    }

    v16 = FBLogScene();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v17)
      {
        loggingIdentifier = [self loggingIdentifier];
        *buf = 138543362;
        v74 = loggingIdentifier;
        v19 = "Invalidating scene: %{public}@";
LABEL_30:
        _os_log_impl(&dword_1A89DD000, v16, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
      }
    }

    else if (v17)
    {
      loggingIdentifier = [self loggingIdentifier];
      *buf = 138543362;
      v74 = loggingIdentifier;
      v19 = "Deactivating scene: %{public}@";
      goto LABEL_30;
    }

    *(self + 220) = 1;
    v20 = [FBSceneEventQueue suspendIdleWorkForReason:@"deactivation"];
    if (!*(self + 248))
    {
      [FBScene _deactivateAndInvalidate:? transitionContext:?];
    }

    v54 = v20;
    v53 = [*(self + 16) _suspendUpdatesWithReason:@"deactivation"];
    v21 = [*(self + 112) copy:&__block_literal_global_347];
    v22 = *(self + 112);
    *(self + 112) = v21;

    v23 = *(self + 16);
    layers = [*(self + 112) layers];
    [v23 _setLayers:layers];

    isActive = [self isActive];
    v26 = isActive;
    if (isActive)
    {
      [FBScene _deactivateAndInvalidate:v65 transitionContext:?];
    }

    if (v9)
    {
      WeakRetained = objc_loadWeakRetained((self + 160));
      [WeakRetained removeObserver:self];
    }

    v28 = *(self + 248);
    v29 = *(self + 64);
    if (*(self + 219) == 1)
    {
      v30 = *(self + 56);
      if ((v30 == 0) | v12 & 1)
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;
    v32 = *(self + 192);
    *(self + 219) = 0;
    *(self + 200) = 0;
    *(self + 208) = 0;
    [(FBScene *)self _setContentState:(*(self + 218) & 1) == 0 notifyObservers:?];
    v33 = *(self + 56);
    *(self + 56) = 0;

    v34 = *(self + 232);
    *(self + 232) = 0;

    v35 = *(self + 64);
    *(self + 64) = 0;

    if ((*(self + 218) & 1) == 0)
    {
      v36 = *(self + 72);
      *(self + 72) = 0;
    }

    if (v9)
    {
      *(self + 221) = 1;
      v37 = *(self + 248);
      *(self + 248) = 0;

      [*(self + 40) invalidate];
      v38 = *(self + 40);
      *(self + 40) = 0;

      [*(self + 128) invalidate];
      v39 = *(self + 128);
      *(self + 128) = 0;
    }

    else
    {
      v40 = *(self + 104);
      v39 = *(self + 136);
      *(self + 136) = v40;
    }

    v52 = v14;

    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __54__FBScene__deactivateAndInvalidate_transitionContext___block_invoke_3;
    v63[3] = &unk_1E783D518;
    v64 = v9;
    v63[4] = self;
    v63[5] = v32;
    v41 = MEMORY[0x1AC572E40](v63);
    v42 = v41;
    v50 = v31;
    v43 = v28;
    if (v31)
    {
      [v29 host:self didInvalidateWithTransitionContext:invalidateCopy completion:v41];
    }

    else
    {
      (*(v41 + 16))(v41, 1, 0);
    }

    v51 = v29;
    [v29 unregisterHost:self];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __54__FBScene__deactivateAndInvalidate_transitionContext___block_invoke_348;
    v59[3] = &unk_1E783D540;
    v61 = v26;
    v59[4] = self;
    invalidateCopy = invalidateCopy;
    v60 = invalidateCopy;
    v62 = v9;
    [(FBScene *)self _iterateObservers:v59];
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    captureCompletions3 = [invalidateCopy captureCompletions];
    v45 = [captureCompletions3 countByEnumeratingWithState:&v55 objects:v72 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v56;
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v56 != v47)
          {
            objc_enumerationMutation(captureCompletions3);
          }

          (*(*(*(&v55 + 1) + 8 * i) + 16))();
        }

        v46 = [captureCompletions3 countByEnumeratingWithState:&v55 objects:v72 count:16];
      }

      while (v46);
    }

    if (v9)
    {
      [v43 sceneDidInvalidate:self];
    }

    [v53 invalidate];
    [v54 invalidate];

    v7 = v52;
    goto LABEL_59;
  }

LABEL_60:

  v49 = *MEMORY[0x1E69E9840];
}

- (void)deactivate:(id)deactivate
{
  if (deactivate)
  {
    deactivateCopy = deactivate;
    _createTransitionContext = [(FBScene *)self _createTransitionContext];
    deactivateCopy[2](deactivateCopy);
  }

  else
  {
    _createTransitionContext = 0;
  }

  [(FBScene *)self deactivateWithTransitionContext:_createTransitionContext];
}

- (void)invalidate:(id)invalidate
{
  if (invalidate)
  {
    invalidateCopy = invalidate;
    _createTransitionContext = [(FBScene *)self _createTransitionContext];
    invalidateCopy[2](invalidateCopy);
  }

  else
  {
    _createTransitionContext = 0;
  }

  [(FBScene *)self _deactivateAndInvalidate:_createTransitionContext transitionContext:?];
}

- (void)addExtension:(Class)extension
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (!extension)
  {
    [FBScene addExtension:a2];
  }

  v6[0] = extension;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [(FBScene *)self addExtensions:v4];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)addExtensions:(id)extensions
{
  extensionsCopy = extensions;
  if ([extensionsCopy count])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __25__FBScene_addExtensions___block_invoke;
    v5[3] = &unk_1E783CAA8;
    v6 = extensionsCopy;
    [(FBScene *)self updateSettings:v5];
  }
}

void __25__FBScene_addExtensions___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 _addSceneExtension:{*(*(&v10 + 1) + 8 * v8++), v10}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeExtension:(Class)extension
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (!extension)
  {
    [FBScene removeExtension:a2];
  }

  v6[0] = extension;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [(FBScene *)self removeExtensions:v4];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)removeExtensions:(id)extensions
{
  extensionsCopy = extensions;
  if ([extensionsCopy count])
  {
    specification = [(FBSSceneDefinition *)self->_definition specification];
    v6 = FBSGetDefaultExtensions();

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __28__FBScene_removeExtensions___block_invoke;
    v8[3] = &unk_1E783D2A0;
    v9 = extensionsCopy;
    v10 = v6;
    selfCopy = self;
    v7 = v6;
    [(FBScene *)self updateSettings:v8];
  }
}

void __28__FBScene_removeExtensions___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v17;
    *&v6 = 138543618;
    v15 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([*(a1 + 40) containsObject:{v10, v15, v16}])
        {
          v11 = FBLogScene();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v12 = [*(*(a1 + 48) + 120) identity];
            v13 = NSStringFromClass(v10);
            *buf = v15;
            v21 = v12;
            v22 = 2114;
            v23 = v13;
            _os_log_error_impl(&dword_1A89DD000, v11, OS_LOG_TYPE_ERROR, "[%{public}@] Cannot remove extension %{public}@ because it is part of this scene's specification", buf, 0x16u);
          }
        }

        else
        {
          [v3 _removeSceneExtension:v10];
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)setParentScene:(id)scene
{
  v27 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene setParentScene:]");
  }

  WeakRetained = objc_loadWeakRetained(&self->_parentScene);
  v7 = WeakRetained;
  if (WeakRetained != sceneCopy)
  {
    [WeakRetained removeObserver:self];
    objc_storeWeak(&self->_parentScene, sceneCopy);
    [sceneCopy addObserver:self];
    v8 = FBLogScene();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (sceneCopy)
    {
      if (v9)
      {
        loggingIdentifier = [(FBScene *)self loggingIdentifier];
        loggingIdentifier2 = [sceneCopy loggingIdentifier];
        v23 = 138543618;
        v24 = loggingIdentifier;
        v25 = 2114;
        v26 = loggingIdentifier2;
        _os_log_impl(&dword_1A89DD000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting parent scene: %{public}@", &v23, 0x16u);
      }

      self->_newlyReparented = 1;
      v8 = objc_opt_new();
      settings = [sceneCopy settings];
      v13 = MEMORY[0x1E699FD40];
      v14 = *MEMORY[0x1E699FD40];
      v15 = *(&v8->isa + v14);
      *(&v8->isa + v14) = settings;

      v16 = *MEMORY[0x1E699FD38];
      v17 = *(&v8->isa + v16);
      *(&v8->isa + v16) = 0;

      v18 = [MEMORY[0x1E699FC80] diffFromSettings:0 toSettings:*(&v8->isa + *v13)];
      v19 = *MEMORY[0x1E699FD20];
      v20 = *(&v8->isa + v19);
      *(&v8->isa + v19) = v18;

      [(FBScene *)self scene:sceneCopy didUpdateSettings:v8];
      if (self->_newlyReparented)
      {
        [FBScene setParentScene:a2];
      }
    }

    else if (v9)
    {
      loggingIdentifier3 = [(FBScene *)self loggingIdentifier];
      v23 = 138543362;
      v24 = loggingIdentifier3;
      _os_log_impl(&dword_1A89DD000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing parent scene.", &v23, 0xCu);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)updateSettingsWithTransitionBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    [FBScene updateSettingsWithTransitionBlock:a2];
  }

  v9 = blockCopy;
  settings = [(FBScene *)self settings];
  v7 = [settings mutableCopy];

  v8 = v9[2](v9, v7);
  [(FBScene *)self updateSettings:v7 withTransitionContext:v8 completion:0];
}

- (void)updateSettings:(id)settings withTransitionContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v12 = [(FBScene *)self _verifyIntegrityOfExtensionsInSettings:settings];
  if (completionCopy)
  {
    v13 = v21;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __59__FBScene_updateSettings_withTransitionContext_completion___block_invoke;
    v21[3] = &unk_1E783C210;
    v5 = &v22;
    v22 = completionCopy;
  }

  else
  {
    v13 = 0;
  }

  v14 = MEMORY[0x1AC572E40](v13);
  if (contextCopy && ![contextCopy _indirect_isEmpty])
  {
    _beginUpdate = [(FBScene *)self _beginUpdate];
    objc_storeStrong(&_beginUpdate[*MEMORY[0x1E699FD40]], v12);
    objc_storeStrong(&_beginUpdate[*MEMORY[0x1E699FD18]], context);
    [(FBScene *)self _joinUpdate:0 block:v14 completion:?];
  }

  else
  {
    v15 = MEMORY[0x1E699FC80];
    settings = [(FBScene *)self settings];
    v17 = [v15 diffFromSettings:settings toSettings:v12];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __59__FBScene_updateSettings_withTransitionContext_completion___block_invoke_2;
    v19[3] = &unk_1E783D2C8;
    v20 = v17;
    _beginUpdate = v17;
    [(FBScene *)self _joinUpdate:v19 block:v14 completion:?];
  }

  if (completionCopy)
  {
  }
}

- (void)_joinUpdate:(void *)update block:(void *)block completion:
{
  v72 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  blockCopy = block;
  if (self)
  {
    if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
    {
      __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene _joinUpdate:block:completion:]");
    }

    if (*(self + 219))
    {
      v9 = 1;
    }

    else
    {
      v9 = *(self + 226);
    }

    if (*(self + 216) >= 0x10u)
    {
      [FBScene _joinUpdate:? block:? completion:?];
    }

    if (!(v9 & 1 | ((a2 & 1) == 0)))
    {
      if ((*(self + 224) & 1) == 0)
      {
        [FBScene _joinUpdate:? block:? completion:?];
      }

      if (*(self + 227) == 1)
      {
        [FBScene _joinUpdate:? block:? completion:?];
      }
    }

    if (*(self + 228) == 1)
    {
      [FBScene _joinUpdate:? block:? completion:?];
    }

    _beginUpdate = *(self + 168);
    if (!_beginUpdate)
    {
      _beginUpdate = [(FBScene *)self _beginUpdate];
    }

    v11 = v9 | a2;
    v12 = MEMORY[0x1E699FD18];
    if ((v11 & 1) != 0 && !*(*(self + 168) + *MEMORY[0x1E699FD18]))
    {
      _createTransitionContext = [self _createTransitionContext];
      v14 = *v12;
      v15 = *&_beginUpdate[v14];
      *&_beginUpdate[v14] = _createTransitionContext;
    }

    if (blockCopy)
    {
      if (*(self + 176))
      {
        v16 = MEMORY[0x1AC572E40]();
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __40__FBScene__joinUpdate_block_completion___block_invoke;
        v65[3] = &unk_1E783D368;
        v66 = blockCopy;
        v67 = v16;
        v17 = v16;
        v18 = MEMORY[0x1AC572E40](v65);
        v19 = *(self + 176);
        *(self + 176) = v18;
      }

      else
      {
        v20 = [blockCopy copy];
        v21 = *(self + 176);
        *(self + 176) = v20;
      }
    }

    v22 = *(self + 216);
    *(self + 216) = v22 + 1;
    if (updateCopy)
    {
      v23 = MEMORY[0x1E699FD30];
      v24 = *&_beginUpdate[*MEMORY[0x1E699FD30]];
      v25 = MEMORY[0x1E699FD40];
      if (!v24)
      {
        v24 = [*&_beginUpdate[*MEMORY[0x1E699FD40]] mutableCopy];
        objc_storeStrong(&_beginUpdate[*v23], v24);
      }

      updateCopy[2](updateCopy, v24, *&_beginUpdate[*v12]);
      v26 = *&_beginUpdate[*v25];
      if (([v26 isEqual:v24] & 1) == 0)
      {
        v27 = [v24 copy];
        v28 = *v25;
        v29 = *&_beginUpdate[v28];
        *&_beginUpdate[v28] = v27;

        _allSceneExtensions = [v26 _allSceneExtensions];
        _allSceneExtensions2 = [v24 _allSceneExtensions];
        if (([_allSceneExtensions2 isEqualToOrderedSet:_allSceneExtensions] & 1) == 0)
        {
          v31 = [_allSceneExtensions2 mutableCopy];
          [v31 minusOrderedSet:_allSceneExtensions];
          v32 = [_allSceneExtensions mutableCopy];
          [v32 minusOrderedSet:_allSceneExtensions2];
          [(FBScene *)self _addExtensions:v31 removeExtensions:v32 settings:v24];
          if (([*&_beginUpdate[*MEMORY[0x1E699FD40]] isEqual:v24] & 1) == 0)
          {
            v33 = [v24 copy];
            v34 = *MEMORY[0x1E699FD40];
            v35 = *&_beginUpdate[v34];
            *&_beginUpdate[v34] = v33;
          }
        }

        v62 = blockCopy;
        WeakRetained = objc_loadWeakRetained((self + 160));
        if (WeakRetained)
        {
          propagatedSettings = [v26 propagatedSettings];
          [v24 propagatedSettings];
          v38 = v61 = _allSceneExtensions;
          v39 = [propagatedSettings isEqualToSet:v38];

          _allSceneExtensions = v61;
          if ((v39 & 1) == 0)
          {
            v60 = WeakRetained;
            settings = [WeakRetained settings];
            settings2 = [_beginUpdate settings];
            _propagatedSettings = [settings2 _propagatedSettings];
            v43 = [_propagatedSettings mutableCopy];

            previousSettings = [_beginUpdate previousSettings];
            _propagatedSettings2 = [previousSettings _propagatedSettings];
            [v43 minusSet:_propagatedSettings2];

            v46 = [MEMORY[0x1E699FC80] diffFromSettings:0 toSettings:settings];
            _changedSettings = [v46 _changedSettings];
            [v43 intersectSet:_changedSettings];

            v48 = v43;
            if ([v43 count])
            {
              [(FBScene *)self _propagateSettings:v43 fromSettings:settings toSettings:v24];
              if (([*&_beginUpdate[*MEMORY[0x1E699FD40]] isEqual:v24] & 1) == 0)
              {
                v49 = FBLogScene();
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                {
                  [self loggingIdentifier];
                  v59 = settings;
                  v57 = v56 = v48;
                  v58 = [MEMORY[0x1E699FC80] diffFromSettings:*&_beginUpdate[*MEMORY[0x1E699FD40]] toSettings:v24];
                  *buf = 138412546;
                  v69 = v57;
                  v70 = 2112;
                  v71 = v58;
                  _os_log_debug_impl(&dword_1A89DD000, v49, OS_LOG_TYPE_DEBUG, "[%@] propagation mutated settings: %@", buf, 0x16u);

                  v48 = v56;
                  settings = v59;
                }

                v50 = [v24 copy];
                v51 = *MEMORY[0x1E699FD40];
                v52 = *&_beginUpdate[v51];
                *&_beginUpdate[v51] = v50;
              }
            }

            WeakRetained = v60;
            _allSceneExtensions = v61;
          }
        }

        blockCopy = v62;
      }

      v22 = *(self + 216) - 1;
    }

    *(self + 216) = v22;
    if (v11)
    {
      v53 = 1;
    }

    else
    {
      v53 = *(self + 226);
    }

    *(self + 226) = v53 & 1;
    if (!v22 && (*(self + 229) & 1) == 0)
    {
      *(self + 229) = 1;
      if (*(self + 230) == 1)
      {
        v54 = *(self + 48);
        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v64[2] = __40__FBScene__joinUpdate_block_completion___block_invoke_195;
        v64[3] = &unk_1E783B580;
        v64[4] = self;
        [v54 executeOrAppend:v64];
      }

      else
      {
        [(FBScene *)self _finalizeSettingsUpdate];
      }
    }
  }

  v55 = *MEMORY[0x1E69E9840];
}

- (void)configureParameters:(id)parameters
{
  parametersCopy = parameters;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene configureParameters:]");
  }

  if (!parametersCopy)
  {
    [FBScene configureParameters:a2];
  }

  if (self->_active)
  {
    [FBScene configureParameters:a2];
  }

  if (self->_configuringParameters)
  {
    [FBScene configureParameters:a2];
  }

  v5 = objc_alloc(MEMORY[0x1E699FB58]);
  specification = [(FBSSceneDefinition *)self->_definition specification];
  v7 = [v5 initWithSpecification:specification];

  settings = [(FBScene *)self settings];
  [v7 setSettings:settings];

  [v7 setClientSettings:self->_clientSettings];
  v9 = [FBSceneEventQueue suspendIdleWorkForReason:@"configureParameters"];
  self->_configuringParameters = 1;
  parametersCopy[2](parametersCopy, v7);
  self->_configuringParameters = 0;
  clientSettings = [v7 clientSettings];
  v11 = [clientSettings copy];
  clientSettings = self->_clientSettings;
  self->_clientSettings = v11;

  settings2 = [v7 settings];
  [(FBScene *)self updateSettings:settings2 withTransitionContext:0];

  [v9 invalidate];
}

- (BOOL)updateWhenMutable:(id)mutable
{
  mutableCopy = mutable;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__FBScene_updateWhenMutable___block_invoke;
  v7[3] = &unk_1E783B328;
  v7[4] = self;
  v8 = mutableCopy;
  v5 = mutableCopy;
  LOBYTE(self) = [(FBScene *)self executeWhenMutable:v7];

  return self;
}

void __29__FBScene_updateWhenMutable___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isActive];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);

    [v5 performUpdate:v4];
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __29__FBScene_updateWhenMutable___block_invoke_2;
    v6[3] = &unk_1E783D2F0;
    v7 = *(a1 + 40);
    [v3 updateSettings:v6];
  }
}

- (BOOL)executeWhenMutable:(id)mutable
{
  mutableCopy = mutable;
  if (self->_invalidated)
  {
    goto LABEL_5;
  }

  if (![(FBScene *)self isMutable])
  {
    [FBSceneEventQueue executeWhenIdle:mutableCopy];
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  mutableCopy[2](mutableCopy);
  v5 = 1;
LABEL_6:

  return v5;
}

- (id)prepareSnapshot
{
  v3 = [FBSceneSnapshot alloc];
  v4 = [[FBSceneSnapshotContext alloc] initWithScene:self configurator:0];
  v5 = [(FBSceneSnapshot *)v3 initWithScene:self context:v4];

  return v5;
}

- (id)prepareSnapshotWithConfigurator:(id)configurator
{
  configuratorCopy = configurator;
  v5 = [FBSceneSnapshot alloc];
  v6 = [[FBSceneSnapshotContext alloc] initWithScene:self configurator:configuratorCopy];

  v7 = [(FBSceneSnapshot *)v5 initWithScene:self context:v6];

  return v7;
}

- (id)createSnapshot
{
  snapshotContext = [(FBScene *)self snapshotContext];
  v4 = [(FBScene *)self createSnapshotWithContext:snapshotContext];

  return v4;
}

- (id)createSnapshotWithContext:(id)context
{
  contextCopy = context;
  if ([(FBScene *)self isValid]&& self->_active)
  {
    if (contextCopy)
    {
      v5 = [[FBSceneSnapshot alloc] initWithScene:self context:contextCopy];
      goto LABEL_9;
    }
  }

  else
  {
    v6 = FBLogScene();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [FBScene createSnapshotWithContext:?];
    }
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (id)snapshotContext
{
  v2 = [[FBSceneSnapshotContext alloc] initWithScene:self configurator:0];

  return v2;
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  v34 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  settingsCopy = settings;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene scene:didUpdateSettings:]");
  }

  settings = [settingsCopy settings];
  v8 = [MEMORY[0x1E695DFA8] set];
  _propagatedSettings = [(FBSSceneSettings *)self->_settings _propagatedSettings];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  settingsDiff = [settingsCopy settingsDiff];
  changedSettings = [settingsDiff changedSettings];

  v12 = [changedSettings countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(changedSettings);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        if (([v16 indirect_isPropagating] & 1) != 0 || objc_msgSend(_propagatedSettings, "containsObject:", v16))
        {
          [v8 addObject:v16];
        }
      }

      v13 = [changedSettings countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v13);
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __35__FBScene_scene_didUpdateSettings___block_invoke;
  v24[3] = &unk_1E783D318;
  v24[4] = self;
  v25 = v23;
  v26 = v8;
  v27 = settings;
  v28 = settingsCopy;
  v17 = settingsCopy;
  v18 = settings;
  v19 = v8;
  v20 = v23;
  [(FBScene *)self _joinUpdate:v24 block:0 completion:?];
  self->_newlyReparented = 0;

  v21 = *MEMORY[0x1E69E9840];
}

void __35__FBScene_scene_didUpdateSettings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (*(*(a1 + 32) + 225) == 1)
  {
    v7 = [v5 _allSceneExtensions];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = [*(a1 + 40) settings];
    v9 = [v8 _allSceneExtensions];

    v10 = [v9 countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v28 + 1) + 8 * i);
          if (([v7 containsObject:v14] & 1) == 0 && objc_msgSend(v14, "propagateToSceneWithDefinition:", *(*(a1 + 32) + 120)))
          {
            [v5 _addSceneExtension:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v28 objects:v38 count:16];
      }

      while (v11);
    }
  }

  if ([*(a1 + 48) count])
  {
    v15 = *(*(a1 + 32) + 219);
    v16 = FBLogScene();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v15 == 1)
    {
      if (!v17)
      {
        goto LABEL_20;
      }

      v18 = [*(a1 + 32) loggingIdentifier];
      v19 = [*(a1 + 48) count];
      v20 = [*(a1 + 40) loggingIdentifier];
      *buf = 138543874;
      v33 = v18;
      v34 = 2048;
      v35 = v19;
      v36 = 2114;
      v37 = v20;
      v21 = "[%{public}@] propagating %lu settings from %{public}@";
    }

    else
    {
      if (!v17)
      {
        goto LABEL_20;
      }

      v18 = [*(a1 + 32) loggingIdentifier];
      v22 = [*(a1 + 48) count];
      v20 = [*(a1 + 40) loggingIdentifier];
      *buf = 138543874;
      v33 = v18;
      v34 = 2048;
      v35 = v22;
      v36 = 2114;
      v37 = v20;
      v21 = "[%{public}@ (inactive)] propagating %lu settings from %{public}@";
    }

    _os_log_impl(&dword_1A89DD000, v16, OS_LOG_TYPE_DEFAULT, v21, buf, 0x20u);

LABEL_20:
    [(FBScene *)*(a1 + 32) _propagateSettings:*(a1 + 56) fromSettings:v5 toSettings:?];
    if (*(*(a1 + 32) + 219) == 1)
    {
      v23 = MEMORY[0x1E699FD18];
      v24 = [*(*(a1 + 64) + *MEMORY[0x1E699FD18]) animationSettings];
      [v6 setAnimationSettings:v24];

      v25 = [*(*(a1 + 64) + *v23) animationFence];
      v26 = [v25 copy];
      [v6 setAnimationFence:v26];
    }
  }

  [v6 setParentUpdate:*(a1 + 64)];

  v27 = *MEMORY[0x1E69E9840];
}

- (void)_propagateSettings:(void *)settings fromSettings:(void *)fromSettings toSettings:
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a2;
  settingsCopy = settings;
  fromSettingsCopy = fromSettings;
  selfCopy = self;
  if (self)
  {
    if (!v7)
    {
      [FBScene _propagateSettings:? fromSettings:? toSettings:?];
    }

    if (!settingsCopy)
    {
      [FBScene _propagateSettings:? fromSettings:? toSettings:?];
    }

    if (!fromSettingsCopy)
    {
      [FBScene _propagateSettings:? fromSettings:? toSettings:?];
    }

    otherSettings = [settingsCopy otherSettings];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v24 = v7;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          v16 = FBLogScene();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            loggingIdentifier = [selfCopy loggingIdentifier];
            indirect_name = [v15 indirect_name];
            *buf = 138543618;
            v32 = loggingIdentifier;
            v33 = 2112;
            v34 = indirect_name;
            _os_log_debug_impl(&dword_1A89DD000, v16, OS_LOG_TYPE_DEBUG, "[%{public}@] Propagating %@", buf, 0x16u);
          }

          if ([v15 indirect_isLegacy])
          {
            indirect_legacySetting = [v15 indirect_legacySetting];
            v18 = [otherSettings objectForSetting:indirect_legacySetting];
            v19 = [otherSettings flagForSetting:indirect_legacySetting];
            otherSettings2 = [fromSettingsCopy otherSettings];
            [otherSettings2 setObject:v18 forSetting:indirect_legacySetting];
            [otherSettings2 setFlag:v19 forSetting:indirect_legacySetting];
          }

          else
          {
            v18 = MEMORY[0x1AC572720](settingsCopy, v15);
            FBSSettingsSetValueForSetting();
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v12);
    }

    v7 = v24;
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)sceneWillInvalidate:(id)invalidate
{
  v9 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene sceneWillInvalidate:]");
  }

  v4 = FBLogScene();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    loggingIdentifier = [(FBScene *)self loggingIdentifier];
    v7 = 138543362;
    v8 = loggingIdentifier;
    _os_log_impl(&dword_1A89DD000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Parent scene invalidated", &v7, 0xCu);
  }

  [(FBScene *)self setParentScene:0];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)sendActions:(id)actions toExtension:(Class)extension
{
  v33 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene sendActions:toExtension:]");
  }

  fbs_singleLineDescriptionOfBSActions = [actionsCopy fbs_singleLineDescriptionOfBSActions];
  v9 = FBLogScene();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (extension)
  {
    if (!v10)
    {
      goto LABEL_9;
    }

    loggingIdentifier = [(FBScene *)self loggingIdentifier];
    v12 = NSStringFromClass(extension);
    *buf = 138543874;
    v28 = loggingIdentifier;
    v29 = 2114;
    v30 = v12;
    v31 = 2114;
    v32 = fbs_singleLineDescriptionOfBSActions;
    _os_log_impl(&dword_1A89DD000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending action(s) to %{public}@: %{public}@", buf, 0x20u);
  }

  else
  {
    if (!v10)
    {
      goto LABEL_9;
    }

    loggingIdentifier = [(FBScene *)self loggingIdentifier];
    *buf = 138543618;
    v28 = loggingIdentifier;
    v29 = 2114;
    v30 = fbs_singleLineDescriptionOfBSActions;
    _os_log_impl(&dword_1A89DD000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending action(s): %{public}@", buf, 0x16u);
  }

LABEL_9:
  if (self->_legacy)
  {
    if (self->_invalidated)
    {
      v13 = FBLogScene();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [FBScene sendActions:? toExtension:?];
      }

LABEL_29:

      goto LABEL_30;
    }
  }

  else
  {
    if (!self->_active)
    {
      [FBScene sendActions:a2 toExtension:?];
    }

    if (self->_invalidated)
    {
      [FBScene sendActions:a2 toExtension:?];
    }
  }

  if (extension && ![(FBScene *)self conformsToExtension:extension])
  {
    [FBScene sendActions:extension toExtension:a2];
  }

  v21 = a2;
  objc_opt_class();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = actionsCopy;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v22 + 1) + 8 * v18);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [FBScene sendActions:v19 toExtension:v21];
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  if (!self->_clientToken)
  {
    v13 = FBLogScene();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [FBScene sendActions:? toExtension:?];
    }

    goto LABEL_29;
  }

  [(FBSceneClient *)self->_client host:self didReceiveActions:v14 forExtension:extension];
LABEL_30:

  v20 = *MEMORY[0x1E69E9840];
}

- (void)sendInvocation:(id)invocation
{
  invocationCopy = invocation;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene sendInvocation:]");
  }

  if ([(FBScene *)self isActive])
  {
    resolve = [invocationCopy resolve];
    v6 = resolve;
    client = self->_client;
    if (resolve)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __26__FBScene_sendInvocation___block_invoke;
      v9[3] = &unk_1E783D340;
      v9[4] = self;
      v10 = resolve;
      [(FBSceneClient *)client host:self sendInvocation:invocationCopy withReply:v9];
    }

    else
    {
      [(FBSceneClient *)self->_client host:self sendInvocation:invocationCopy withReply:0];
    }
  }

  else
  {
    v8 = FBLogScene();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [FBScene sendInvocation:?];
    }

    [invocationCopy cannotResolveForReason:@"scene is not active"];
  }
}

void __26__FBScene_sendInvocation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __26__FBScene_sendInvocation___block_invoke_2;
  v11[3] = &unk_1E783D200;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  [(FBScene *)v7 _dispatchClientMessageWithBlock:v11];
}

- (BOOL)conformsToExtension:(Class)extension
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene conformsToExtension:]");
  }

  settings = [(FBScene *)self settings];
  if ([(objc_class *)extension isSubclassOfClass:objc_opt_class()])
  {
    specification = [(FBSSceneDefinition *)self->_definition specification];
    v7 = FBSGetDefaultExtensions();
    v8 = [v7 containsObject:extension];

    if (v8)
    {
      v9 = 1;
    }

    else
    {
      _allSceneExtensions = [settings _allSceneExtensions];
      v9 = [_allSceneExtensions containsObject:extension];
    }
  }

  else
  {
    v9 = [settings conformsToExtension:extension];
  }

  return v9;
}

- (id)componentForExtension:(Class)extension ofClass:(Class)class
{
  v22 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene componentForExtension:ofClass:]");
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(NSMapTable *)self->_components objectForKey:extension, 0];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
LABEL_5:
    v11 = 0;
    while (1)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(v7);
      }

      component = [(FBSceneObserver *)*(*(&v17 + 1) + 8 * v11) component];
      if (class)
      {
        v13 = (objc_opt_isKindOfClass() & 1) != 0 ? component : 0;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      if (v14)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          goto LABEL_5;
        }

        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isProxy])
  {
    v6 = [equalCopy forwardingTargetForSelector:a2];

    equalCopy = v6;
  }

  v9.receiver = self;
  v9.super_class = FBScene;
  v7 = [(FBScene *)&v9 isEqual:equalCopy];

  return v7;
}

- (uint64_t)_endTransaction:(uint64_t)result
{
  if (result)
  {
    v2 = *(result + 200);
    if (*(result + 230) == 1 && v2 == a2)
    {
      *(result + 230) = 0;
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ending transactionID %llu does not match active transactionID %llu", a2, v2];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [FBScene _endTransaction:?];
      }

      [v4 UTF8String];
      result = _bs_set_crash_log_message();
      __break(0);
    }
  }

  return result;
}

- (void)_setContentState:(int)state notifyObservers:
{
  v20 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v5 = *(self + 240);
    if (v5 != a2)
    {
      if (!*(self + 248))
      {
        [FBScene _setContentState:? notifyObservers:?];
      }

      if (*(self + 217) == 1)
      {
        v11 = MEMORY[0x1E696AEC0];
        v12 = NSStringFromFBSceneContentState(v5);
        v13 = NSStringFromFBSceneContentState(a2);
        v14 = [v11 stringWithFormat:@"cannot re-entrantly mutate contentState (%@ --> %@)", v12, v13];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [FBScene _setContentState:? notifyObservers:?];
        }

        [v14 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x1A8A36790);
      }

      v7 = FBLogScene();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        loggingIdentifier = [self loggingIdentifier];
        v9 = NSStringFromFBSceneContentState(a2);
        *buf = 138543618;
        v17 = loggingIdentifier;
        v18 = 2114;
        v19 = v9;
        _os_log_impl(&dword_1A89DD000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] scene content state changed: %{public}@", buf, 0x16u);
      }

      *(self + 240) = a2;
      *(self + 217) = 1;
      if (state)
      {
        [FBScene _setContentState:v15 notifyObservers:?];
      }

      *(self + 217) = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __40__FBScene__joinUpdate_block_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = a3;
  v6(v5, a2, v7);
  (*(*(a1 + 40) + 16))();
}

- (void)_addExtensions:(void *)extensions removeExtensions:(void *)removeExtensions settings:
{
  v100 = *MEMORY[0x1E69E9840];
  v57 = a2;
  extensionsCopy = extensions;
  removeExtensionsCopy = removeExtensions;
  if (self)
  {
    if (*(self + 227) == 1)
    {
      [FBScene _addExtensions:? removeExtensions:? settings:?];
    }

    selfCopy = self;
    *(self + 227) = 1;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    obj = v57;
    v61 = [obj countByEnumeratingWithState:&v87 objects:v99 count:16];
    if (v61)
    {
      v59 = *v88;
      do
      {
        v7 = 0;
        do
        {
          if (*v88 != v59)
          {
            objc_enumerationMutation(obj);
          }

          v63 = v7;
          v8 = *(*(&v87 + 1) + 8 * v7);
          v9 = FBLogScene();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            identity = [*(selfCopy + 120) identity];
            *buf = 138412546;
            v96 = identity;
            v97 = 2112;
            v98 = v8;
            _os_log_debug_impl(&dword_1A89DD000, v9, OS_LOG_TYPE_DEBUG, "[%@] Adding extension: %@", buf, 0x16u);
          }

          v10 = [objc_alloc(MEMORY[0x1E699FAB0]) initWithScene:selfCopy extension:v8];
          array = [MEMORY[0x1E695DF70] array];
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          hostComponents = [v8 hostComponents];
          v12 = [hostComponents countByEnumeratingWithState:&v83 objects:v94 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v84;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v84 != v14)
                {
                  objc_enumerationMutation(hostComponents);
                }

                v16 = objc_alloc(*(*(&v83 + 1) + 8 * i));
                if (objc_opt_respondsToSelector())
                {
                  v17 = [v16 initWithScene:v10];
                }

                else
                {
                  v17 = [v16 init];
                }

                v18 = v17;
                if (v17)
                {
                  v19 = v8;
                  v20 = FBLogScene();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
                  {
                    identity2 = [*(selfCopy + 120) identity];
                    v22 = [MEMORY[0x1E698E680] succinctDescriptionForObject:v18];
                    *buf = 138412546;
                    v96 = identity2;
                    v97 = 2112;
                    v98 = v22;
                    v23 = v22;
                    _os_log_debug_impl(&dword_1A89DD000, v20, OS_LOG_TYPE_DEBUG, "[%@] Instantiated component: %@", buf, 0x16u);
                  }

                  v8 = v19;
                  v21 = [[FBSceneObserver alloc] initWithComponent:v18 extension:v19];
                  [array addObject:v21];
                }
              }

              v13 = [hostComponents countByEnumeratingWithState:&v83 objects:v94 count:16];
            }

            while (v13);
          }

          v24 = *(selfCopy + 144);
          if (!v24)
          {
            strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
            v26 = *(selfCopy + 144);
            *(selfCopy + 144) = strongToStrongObjectsMapTable;

            array2 = [MEMORY[0x1E695DF70] array];
            v28 = *(selfCopy + 152);
            *(selfCopy + 152) = array2;

            v24 = *(selfCopy + 144);
          }

          v29 = [v24 objectForKey:v8];

          if (v29)
          {
            [FBScene _addExtensions:v8 removeExtensions:sel__addExtensions_removeExtensions_settings_ settings:?];
          }

          [*(selfCopy + 144) setObject:array forKey:v8];
          [*(selfCopy + 152) addObjectsFromArray:array];
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v30 = array;
          v31 = [v30 countByEnumeratingWithState:&v79 objects:v93 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v80;
            do
            {
              for (j = 0; j != v32; ++j)
              {
                if (*v80 != v33)
                {
                  objc_enumerationMutation(v30);
                }

                component = [(FBSceneObserver *)*(*(&v79 + 1) + 8 * j) component];
                if (objc_opt_respondsToSelector())
                {
                  [component setScene:v10];
                }

                if (objc_opt_respondsToSelector())
                {
                  [component configureInitialSettings:removeExtensionsCopy];
                }
              }

              v32 = [v30 countByEnumeratingWithState:&v79 objects:v93 count:16];
            }

            while (v32);
          }

          v7 = v63 + 1;
        }

        while (v63 + 1 != v61);
        v61 = [obj countByEnumeratingWithState:&v87 objects:v99 count:16];
      }

      while (v61);
    }

    v37 = selfCopy;
    *(selfCopy + 227) = 0;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v60 = extensionsCopy;
    v64 = [v60 countByEnumeratingWithState:&v75 objects:v92 count:16];
    if (v64)
    {
      v62 = *v76;
      do
      {
        v38 = 0;
        do
        {
          if (*v76 != v62)
          {
            objc_enumerationMutation(v60);
          }

          v67 = v38;
          v39 = *(*(&v75 + 1) + 8 * v38);
          v40 = FBLogScene();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            loggingIdentifier = [v37 loggingIdentifier];
            v54 = NSStringFromClass(v39);
            *buf = 138412546;
            v96 = loggingIdentifier;
            v97 = 2112;
            v98 = v54;
            _os_log_debug_impl(&dword_1A89DD000, v40, OS_LOG_TYPE_DEBUG, "[%@] Removing extension: %@", buf, 0x16u);

            v37 = selfCopy;
          }

          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v65 = v39;
          v41 = [v37[18] objectForKey:v39];
          v42 = [v41 countByEnumeratingWithState:&v71 objects:v91 count:16];
          if (v42)
          {
            v43 = v42;
            v44 = *v72;
            do
            {
              for (k = 0; k != v43; ++k)
              {
                if (*v72 != v44)
                {
                  objc_enumerationMutation(v41);
                }

                v46 = *(*(&v71 + 1) + 8 * k);
                component2 = [(FBSceneObserver *)v46 component];
                if (objc_opt_respondsToSelector())
                {
                  [component2 componentWillInvalidate:removeExtensionsCopy];
                }

                if (objc_opt_respondsToSelector())
                {
                  [component2 invalidate];
                }

                [v37[19] removeObjectIdenticalTo:v46];
                [v46 invalidate];
                v48 = FBLogScene();
                if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
                {
                  loggingIdentifier2 = [v37 loggingIdentifier];
                  v50 = [MEMORY[0x1E698E680] succinctDescriptionForObject:component2];
                  *buf = 138412546;
                  v96 = loggingIdentifier2;
                  v97 = 2112;
                  v98 = v50;
                  _os_log_debug_impl(&dword_1A89DD000, v48, OS_LOG_TYPE_DEBUG, "[%@] Invalidated component: %@", buf, 0x16u);

                  v37 = selfCopy;
                }
              }

              v43 = [v41 countByEnumeratingWithState:&v71 objects:v91 count:16];
            }

            while (v43);
          }

          [v37[18] removeObjectForKey:v65];
          if (![v37[18] count])
          {
            v51 = v37[18];
            v37[18] = 0;

            v52 = v37[19];
            v37[19] = 0;
          }

          v38 = v67 + 1;
        }

        while (v67 + 1 != v64);
        v64 = [v60 countByEnumeratingWithState:&v75 objects:v92 count:16];
      }

      while (v64);
    }
  }

  v55 = *MEMORY[0x1E69E9840];
}

void __48__FBScene__activateWithTransitionContext_error___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64) == 1)
  {
    v3 = (a1 + 32);
    v2 = *(a1 + 32);
    if ((*(v2 + 221) & 1) == 0 && *(v2 + 219) == 1 && *(a1 + 48) == *(v2 + 192))
    {
      if (*(v2 + 232))
      {
        __48__FBScene__activateWithTransitionContext_error___block_invoke_2_cold_1(a1, (a1 + 32));
      }

      v4 = *(a1 + 40);
      v5 = [FBSceneClientHandle handleForScene:"handleForScene:clientProcess:" clientProcess:?];
      v6 = *(a1 + 32);
      v7 = *(v6 + 232);
      *(v6 + 232) = v5;

      v8 = FBLogScene();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [*v3 loggingIdentifier];
        v10 = *(*v3 + 29);
        *buf = 138543618;
        v14 = v9;
        v15 = 2114;
        v16 = v10;
        _os_log_impl(&dword_1A89DD000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Client process connected: %{public}@", buf, 0x16u);
      }

      if (([(FBSceneWorkspace *)*(*v3 + 31) _suppressConnectionHandshakes]& 1) == 0)
      {
        __48__FBScene__activateWithTransitionContext_error___block_invoke_2_cold_2(v3, v12);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_applySettingsUpdateWithCompletion:(uint64_t)completion
{
  v150 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (completion)
  {
    if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
    {
      __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene _applySettingsUpdateWithCompletion:]");
    }

    if (*(completion + 230) == 1)
    {
      [(FBScene *)completion _applySettingsUpdateWithCompletion:?];
    }

    if ((*(completion + 223) & 1) == 0)
    {
      [FBScene _applySettingsUpdateWithCompletion:?];
    }

    v4 = *(completion + 168);
    if (!v4)
    {
      [FBScene _applySettingsUpdateWithCompletion:?];
    }

    if (*(completion + 228) == 1)
    {
      [FBScene _applySettingsUpdateWithCompletion:?];
    }

    if ((*(completion + 229) & 1) == 0)
    {
      [FBScene _applySettingsUpdateWithCompletion:?];
    }

    if (*(completion + 221) == 1)
    {
      v5 = FBLogScene();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [FBScene _applySettingsUpdateWithCompletion:completion];
      }

      transitionContext = [*(completion + 168) transitionContext];
      captureCompletions = [transitionContext captureCompletions];

      [(FBScene *)completion _resetUpdateState];
      v8 = FBSceneErrorCreate(2uLL, @"Cannot update an invalidated scene.", 0);
      v139[0] = MEMORY[0x1E69E9820];
      v139[1] = 3221225472;
      v139[2] = __46__FBScene__applySettingsUpdateWithCompletion___block_invoke;
      v139[3] = &unk_1E783D400;
      v140 = v8;
      v141 = captureCompletions;
      completionCopy = completion;
      v143 = v3;
      loggingIdentifier2 = captureCompletions;
      v10 = v8;
      [(FBScene *)completion _dispatchClientMessageWithBlock:v139];

      v11 = v143;
    }

    else
    {
      v10 = v4;
      v12 = MEMORY[0x1E699FD18];
      parentUpdate = [*&v10[*MEMORY[0x1E699FD18]] parentUpdate];
      v14 = *MEMORY[0x1E699FD28];
      v15 = *&v10[v14];
      *&v10[v14] = parentUpdate;

      completionCopy2 = completion;
      if (*(completion + 219) == 1)
      {
        if (!*(completion + 248))
        {
          [FBScene _applySettingsUpdateWithCompletion:?];
        }

        v16 = MEMORY[0x1E699FD30];
        v17 = *&v10[*MEMORY[0x1E699FD30]];
        v18 = MEMORY[0x1E699FD40];
        v19 = *&v10[*MEMORY[0x1E699FD40]];
        v113 = v3;
        if (v17)
        {
          if (([v17 isEqual:v19] & 1) == 0)
          {
            [FBScene _applySettingsUpdateWithCompletion:?];
          }
        }

        else
        {
          [(FBScene *)v19 _applySettingsUpdateWithCompletion:v10];
        }

        v33 = [MEMORY[0x1E699FC80] diffFromSettings:*&v10[*MEMORY[0x1E699FD38]] toSettings:*&v10[*v18]];
        v34 = *MEMORY[0x1E699FD20];
        v35 = *&v10[v34];
        *&v10[v34] = v33;

        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        _allComponentProxies = [(FBScene *)completion _allComponentProxies];
        v37 = [_allComponentProxies countByEnumeratingWithState:&v135 objects:v149 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v136;
          do
          {
            for (i = 0; i != v38; ++i)
            {
              if (*v136 != v39)
              {
                objc_enumerationMutation(_allComponentProxies);
              }

              v41 = *(*(&v135 + 1) + 8 * i);
              if ([(FBSceneObserver *)v41 receiverImplementsWillUpdate])
              {
                settings = [v10 settings];
                [v41 scene:completion willUpdateSettings:v10];
                if (([settings isEqual:*&v10[*v16]] & 1) == 0)
                {
                  v43 = FBLogScene();
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
                  {
                    loggingIdentifier = [completion loggingIdentifier];
                    v50 = MEMORY[0x1E698E680];
                    component = [(FBSceneObserver *)v41 component];
                    v51 = [v50 succinctDescriptionForObject:component];
                    v52 = [MEMORY[0x1E699FC80] diffFromSettings:settings toSettings:*&v10[*MEMORY[0x1E699FD30]]];
                    *buf = 138412802;
                    v145 = loggingIdentifier;
                    v146 = 2112;
                    *v147 = v51;
                    *&v147[8] = 2112;
                    v148 = v52;
                    _os_log_debug_impl(&dword_1A89DD000, v43, OS_LOG_TYPE_DEBUG, "[%@] component %@ mutated settings: %@", buf, 0x20u);

                    v18 = MEMORY[0x1E699FD40];
                    completion = completionCopy2;
                  }

                  v16 = MEMORY[0x1E699FD30];
                  v44 = [*&v10[*MEMORY[0x1E699FD30]] copy];
                  v45 = *v18;
                  v46 = *&v10[v45];
                  *&v10[v45] = v44;

                  v47 = [MEMORY[0x1E699FC80] diffFromSettings:*&v10[*MEMORY[0x1E699FD38]] toSettings:*&v10[*v18]];
                  v48 = *MEMORY[0x1E699FD20];
                  v49 = *&v10[v48];
                  *&v10[v48] = v47;
                }
              }
            }

            v38 = [_allComponentProxies countByEnumeratingWithState:&v135 objects:v149 count:16];
          }

          while (v38);
        }

        v53 = *(completion + 168);
        *(completion + 168) = 0;

        loggingIdentifier2 = [completion loggingIdentifier];
        v120 = *(completion + 218);
        _beginTransaction = [(FBScene *)completion _beginTransaction];
        v118 = _beginTransaction == 1;
        v55 = MEMORY[0x1E699FD18];
        v56 = [*&v10[*MEMORY[0x1E699FD18]] copy];
        _createTransitionContext = v56;
        if (!v56)
        {
          _createTransitionContext = [completion _createTransitionContext];
        }

        objc_storeStrong(&v10[*v55], _createTransitionContext);
        if (!v56)
        {
        }

        v11 = *&v10[*v55];
        settings2 = [v10 settings];
        mutableSettings = [v10 mutableSettings];
        if ([*(completion + 248) scene:completion willUpdateSettings:v10] && (objc_msgSend(*&v10[*MEMORY[0x1E699FD40]], "isEqual:", mutableSettings) & 1) == 0)
        {
          delegate = [*(completion + 248) delegate];
          v61 = FBLogScene();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
          {
            v62 = [MEMORY[0x1E698E680] succinctDescriptionForObject:delegate];
            [MEMORY[0x1E699FC80] diffFromSettings:*&v10[*MEMORY[0x1E699FD40]] toSettings:mutableSettings];
            v64 = v63 = _beginTransaction;
            *buf = 138412802;
            v145 = loggingIdentifier2;
            v146 = 2112;
            *v147 = v62;
            *&v147[8] = 2112;
            v148 = v64;
            _os_log_debug_impl(&dword_1A89DD000, v61, OS_LOG_TYPE_DEBUG, "[%@] workspace delegate %@ mutated settings: %@", buf, 0x20u);

            _beginTransaction = v63;
          }

          v65 = [mutableSettings _copyClearingProgenitor:0];
          v66 = MEMORY[0x1E699FD40];
          v67 = *MEMORY[0x1E699FD40];
          v68 = *&v10[v67];
          *&v10[v67] = v65;

          v69 = [MEMORY[0x1E699FC80] diffFromSettings:*&v10[*MEMORY[0x1E699FD38]] toSettings:*&v10[*v66]];
          v70 = *MEMORY[0x1E699FD20];
          v71 = *&v10[v70];
          *&v10[v70] = v69;

          completion = completionCopy2;
        }

        _synchronizer = [(FBWorkspace *)completion _synchronizer];
        if ([(FBSceneObserver *)_synchronizer receiverImplementsWillUpdate])
        {
          [_synchronizer scene:completion willUpdateSettings:v10];
          if (([*&v10[*MEMORY[0x1E699FD40]] isEqual:mutableSettings] & 1) == 0)
          {
            v73 = _beginTransaction;
            delegate2 = [(FBSceneObserver *)_synchronizer delegate];
            v74 = FBLogScene();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
            {
              v75 = [MEMORY[0x1E698E680] succinctDescriptionForObject:delegate2];
              v76 = [MEMORY[0x1E699FC80] diffFromSettings:*&v10[*MEMORY[0x1E699FD40]] toSettings:mutableSettings];
              *buf = 138412802;
              v145 = loggingIdentifier2;
              v146 = 2112;
              *v147 = v75;
              *&v147[8] = 2112;
              v148 = v76;
              _os_log_debug_impl(&dword_1A89DD000, v74, OS_LOG_TYPE_DEBUG, "[%@] delegate %@ mutated settings: %@", buf, 0x20u);

              completion = completionCopy2;
            }

            v77 = [mutableSettings _copyClearingProgenitor:0];
            v78 = MEMORY[0x1E699FD40];
            v79 = *MEMORY[0x1E699FD40];
            v80 = *&v10[v79];
            *&v10[v79] = v77;

            v81 = [MEMORY[0x1E699FC80] diffFromSettings:*&v10[*MEMORY[0x1E699FD38]] toSettings:*&v10[*v78]];
            v82 = *MEMORY[0x1E699FD20];
            v83 = *&v10[v82];
            *&v10[v82] = v81;

            _beginTransaction = v73;
          }
        }

        isForeground = [settings2 isForeground];
        if (isForeground != [mutableSettings isForeground])
        {
          v85 = FBLogScene();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
          {
            isForeground2 = [settings2 isForeground];
            isForeground3 = [mutableSettings isForeground];
            *buf = 138543874;
            v145 = loggingIdentifier2;
            v146 = 1024;
            *v147 = isForeground2;
            completion = completionCopy2;
            *&v147[4] = 1024;
            *&v147[6] = isForeground3;
            _os_log_impl(&dword_1A89DD000, v85, OS_LOG_TYPE_DEFAULT, "[%{public}@] isForeground changed from %{BOOL}u to %{BOOL}u after interception", buf, 0x18u);
          }
        }

        if (v120 && _beginTransaction == 1)
        {
          settings3 = [v10 settings];
          v89 = [settings3 _copyClearingProgenitor:0];
          v90 = *(completion + 104);
          *(completion + 104) = v89;
        }

        v91 = *MEMORY[0x1E699FD30];
        v92 = *&v10[v91];
        *&v10[v91] = 0;

        settingsDiff = [v10 settingsDiff];
        v94 = settingsDiff;
        if (_beginTransaction == 1 || settingsDiff || ![v11 _indirect_isEmpty])
        {
          settings4 = [v10 settings];
          completionCopy3 = completion;
          v98 = [settings4 _copyClearingProgenitor:0];

          objc_storeStrong(&v10[*MEMORY[0x1E699FD40]], v98);
          v121 = [FBSceneEventQueue suspendIdleWorkForReason:@"finishUpdate"];
          v99 = [FBSceneUpdateContext contextWithSceneID:*(completionCopy3 + 80) transactionID:_beginTransaction settings:v98 settingsDiff:v94 transitionContext:v11];
          [v11 setUpdateContext:v99];
          v132[0] = MEMORY[0x1E69E9820];
          v132[1] = 3221225472;
          v132[2] = __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_2;
          v132[3] = &unk_1E783D428;
          v132[4] = completionCopy3;
          v100 = v99;
          v133 = v100;
          [(FBScene *)completionCopy3 _iterateObservers:v132];
          [*(completionCopy3 + 248) scene:completionCopy3 didPrepareUpdate:v10];
          actions = [v11 actions];
          fbs_singleLineDescriptionOfBSActions = [actions fbs_singleLineDescriptionOfBSActions];

          if ([fbs_singleLineDescriptionOfBSActions length])
          {
            v103 = FBLogScene();
            if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v145 = loggingIdentifier2;
              v146 = 2114;
              *v147 = fbs_singleLineDescriptionOfBSActions;
              _os_log_impl(&dword_1A89DD000, v103, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending action(s) in update: %{public}@", buf, 0x16u);
            }
          }

          v115 = fbs_singleLineDescriptionOfBSActions;
          animationFence = [v11 animationFence];
          if (animationFence)
          {
            v105 = FBGetFencingProvider();
            [v105 synchronizeDrawingWithFence:animationFence];
          }

          v106 = *(completionCopy2 + 104);
          *(completionCopy2 + 104) = v98;
          v107 = v98;

          v108 = *(completionCopy2 + 136);
          *(completionCopy2 + 136) = 0;

          [(FBScene *)completionCopy2 _resetUpdateState];
          v109 = *(completionCopy2 + 48);
          v123[0] = MEMORY[0x1E69E9820];
          v123[1] = 3221225472;
          v123[2] = __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_292;
          v123[3] = &unk_1E783D4F0;
          v123[4] = completionCopy2;
          v130 = _beginTransaction;
          v124 = v10;
          v125 = v11;
          v126 = loggingIdentifier2;
          v3 = v113;
          v128 = v94;
          v129 = v113;
          v127 = v100;
          v131 = v118;
          v110 = v94;
          v111 = v100;
          loggingIdentifier2 = loggingIdentifier2;
          [v109 executeOrAppend:v123];
          [v121 invalidate];
        }

        else
        {
          v95 = FBLogScene();
          if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v145 = loggingIdentifier2;
            _os_log_impl(&dword_1A89DD000, v95, OS_LOG_TYPE_INFO, "[%{public}@] Update was a no-op.", buf, 0xCu);
          }

          [(FBScene *)completion _endTransaction:_beginTransaction];
          [(FBScene *)completion _resetUpdateState];
          v3 = v113;
          if (v113)
          {
            [FBScene _applySettingsUpdateWithCompletion:v134];
          }
        }
      }

      else
      {
        if (*(completion + 224) == 1 && *(completion + 218) == 1)
        {
          [FBScene _applySettingsUpdateWithCompletion:?];
        }

        specification = [*(completion + 120) specification];
        transitionContext2 = [v10 transitionContext];
        v22 = [specification _isSignificantTransitionContext:transitionContext2];

        if (v22)
        {
          [FBScene _applySettingsUpdateWithCompletion:?];
        }

        if (v3)
        {
          [FBScene _applySettingsUpdateWithCompletion:?];
        }

        v23 = *(completionCopy2 + 104);
        loggingIdentifier2 = v23;
        settings5 = [v10 settings];
        v11 = [settings5 _copyClearingProgenitor:0];

        v25 = *MEMORY[0x1E699FD30];
        v26 = *&v10[v25];
        *&v10[v25] = 0;

        objc_storeStrong(&v10[*MEMORY[0x1E699FD38]], v23);
        v27 = [MEMORY[0x1E699FC80] diffFromSettings:loggingIdentifier2 toSettings:v11];
        v28 = MEMORY[0x1E699FD20];
        v29 = *MEMORY[0x1E699FD20];
        v30 = *&v10[v29];
        *&v10[v29] = v27;

        objc_storeStrong((completionCopy2 + 104), v11);
        objc_storeStrong(&v10[*MEMORY[0x1E699FD40]], v11);
        v31 = *v12;
        v32 = *&v10[v31];
        *&v10[v31] = 0;

        [(FBScene *)completionCopy2 _resetUpdateState];
        if (*&v10[*v28])
        {
          [FBScene _applySettingsUpdateWithCompletion:v122];
        }
      }
    }
  }

  v112 = *MEMORY[0x1E69E9840];
}

void __46__FBScene__applySettingsUpdateWithCompletion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))(v2, 0, *(a1 + 32));
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(a1 + 48);
        v9 = *(a1 + 32);
        (*(*(*(&v11 + 1) + 8 * v7) + 16))(*(*(&v11 + 1) + 8 * v7));
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = FBLogScene();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_3_cold_1(a1, v5);
    }
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = (a1 + 40);
  if ([*(a1 + 40) isActive])
  {
    __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_3_cold_2((a1 + 40), v20, a1, v5);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = *(a1 + 56);
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *v8;
        (*(*(*(&v16 + 1) + 8 * v13) + 16))(*(*(&v16 + 1) + 8 * v13));
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = FBSceneErrorCreate(1uLL, @"No scene client exists", 0);
  (*(v1 + 16))(v1, 0, v2);
}

void __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_312(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([(FBSceneObserver *)v3 receiverWantsInactiveUpdates])
  {
    [v3 scene:*(a1 + 32) didUpdateSettings:*(a1 + 40)];
  }
}

- (void)_deactivateClient:(void *)client withContext:
{
  v5 = a2;
  clientCopy = client;
  v7 = clientCopy;
  if (self)
  {
    error = [clientCopy error];
    if (!error)
    {
      [FBScene _deactivateClient:? withContext:?];
    }

    v9 = error;
    domain = [error domain];
    v11 = [domain isEqualToString:@"FBSceneErrorDomain"];

    if ((v11 & 1) == 0)
    {
      [FBScene _deactivateClient:? withContext:?];
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __41__FBScene__deactivateClient_withContext___block_invoke;
    v12[3] = &unk_1E783B300;
    v13 = v5;
    selfCopy = self;
    v15 = v7;
    [(FBScene *)self _dispatchClientMessageWithBlock:v12];
  }
}

void __41__FBScene__deactivateClient_withContext___block_invoke(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v2 = a1[5];
  if (v3 == *(v2 + 56))
  {
    v9 = a1[6];
    v10 = *MEMORY[0x1E69E9840];

    [(FBScene *)v2 _deactivateAndInvalidate:v9 transitionContext:?];
  }

  else
  {
    v4 = FBLogScene();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [a1[5] loggingIdentifier];
      v6 = a1[4];
      v7 = *(a1[5] + 56);
      v11 = 138543874;
      v12 = v5;
      v13 = 2048;
      v14 = v7;
      v15 = 2048;
      v16 = v6;
      _os_log_impl(&dword_1A89DD000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring client invalidation due to token mismatch (probably due to prior deactivation). expected=%p received=%p", &v11, 0x20u);
    }

    v8 = *MEMORY[0x1E69E9840];
  }
}

void __54__FBScene__deactivateAndInvalidate_transitionContext___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        (*(*(*(&v9 + 1) + 8 * v6) + 16))(*(*(&v9 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __54__FBScene__deactivateAndInvalidate_transitionContext___block_invoke_338(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        (*(*(*(&v9 + 1) + 8 * v6) + 16))(*(*(&v9 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __54__FBScene__deactivateAndInvalidate_transitionContext___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(a1 + 48);
  v6 = FBLogScene();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 == 1)
  {
    if (v4)
    {
      if (v7)
      {
        v8 = [*(a1 + 32) loggingIdentifier];
        v9 = *(a1 + 40);
        v10 = [v4 succinctDescription];
        v17 = 138543874;
        v18 = v8;
        v19 = 2048;
        v20 = v9;
        v21 = 2114;
        v22 = v10;
        v11 = "[%{public}@][%lu] Scene invalidated with error: %{public}@.";
LABEL_8:
        _os_log_impl(&dword_1A89DD000, v6, OS_LOG_TYPE_DEFAULT, v11, &v17, 0x20u);

LABEL_14:
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = [*(a1 + 32) loggingIdentifier];
    v13 = *(a1 + 40);
    v17 = 138543618;
    v18 = v8;
    v19 = 2048;
    v20 = v13;
    v14 = "[%{public}@][%lu] Scene invalidated.";
LABEL_13:
    _os_log_impl(&dword_1A89DD000, v6, OS_LOG_TYPE_DEFAULT, v14, &v17, 0x16u);
    goto LABEL_14;
  }

  if (!v4)
  {
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = [*(a1 + 32) loggingIdentifier];
    v15 = *(a1 + 40);
    v17 = 138543618;
    v18 = v8;
    v19 = 2048;
    v20 = v15;
    v14 = "[%{public}@][%lu] Scene deactivated.";
    goto LABEL_13;
  }

  if (v7)
  {
    v8 = [*(a1 + 32) loggingIdentifier];
    v12 = *(a1 + 40);
    v10 = [v4 succinctDescription];
    v17 = 138543874;
    v18 = v8;
    v19 = 2048;
    v20 = v12;
    v21 = 2114;
    v22 = v10;
    v11 = "[%{public}@][%lu] Scene deactivated with error: %{public}@.";
    goto LABEL_8;
  }

LABEL_15:

  v16 = *MEMORY[0x1E69E9840];
}

void __54__FBScene__deactivateAndInvalidate_transitionContext___block_invoke_348(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 48) == 1)
  {
    [v3 sceneDidDeactivate:*(a1 + 32) withContext:*(a1 + 40)];
    v3 = v4;
  }

  if (*(a1 + 49) == 1)
  {
    [v4 sceneDidInvalidate:*(a1 + 32) withContext:*(a1 + 40)];
    v3 = v4;
  }
}

void __50__FBScene__verifyIntegrityOfExtensionsInSettings___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 _removeAllSceneExtensions];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 _addSceneExtension:*(*(&v10 + 1) + 8 * v8++) applyingSettings:{*(a1 + 40), v10}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (FBSProcess)hostProcess
{
  domain = [(FBWorkspaceEventDispatcher *)self->_workspace domain];
  currentProcess = [domain currentProcess];

  return currentProcess;
}

void __74__FBScene_clientToken_didUpdateClientSettings_withDiff_transitionContext___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v2 = (a1 + 40);
  if (*(v2 - 1) == *(v3 + 56))
  {
    __74__FBScene_clientToken_didUpdateClientSettings_withDiff_transitionContext___block_invoke_cold_1(v2, a1, &v9, buf);
    v4 = *buf;
  }

  else
  {
    v4 = FBLogScene();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 40) loggingIdentifier];
      v6 = *(a1 + 32);
      v7 = *(*(a1 + 40) + 56);
      *buf = 138543874;
      *&buf[4] = v5;
      v11 = 2048;
      v12 = v7;
      v13 = 2048;
      v14 = v6;
      _os_log_impl(&dword_1A89DD000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring scene client update due to token mismatch (probably due to prior deactivation). expected=%p received=%p", buf, 0x20u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __54__FBScene_clientToken_didReceiveActions_forExtension___block_invoke(uint64_t a1)
{
  v85 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3 != v2[7])
  {
    v4 = FBLogScene();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 40) loggingIdentifier];
      v6 = *(a1 + 32);
      v7 = *(*(a1 + 40) + 56);
      *buf = 138543874;
      v80 = v5;
      v81 = 2048;
      v82 = v7;
      v83 = 2048;
      v84 = v6;
      _os_log_impl(&dword_1A89DD000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring actions due to token mismatch (probably due to prior deactivation). expected=%p received=%p", buf, 0x20u);
    }

    goto LABEL_4;
  }

  v4 = [v2 loggingIdentifier];
  v9 = *(a1 + 56);
  v10 = FBLogScene();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v12 = NSStringFromClass(*(a1 + 56));
      v13 = [*(a1 + 48) fbs_singleLineDescriptionOfBSActions];
      *buf = 138543874;
      v80 = v4;
      v81 = 2114;
      v82 = v12;
      v83 = 2114;
      v84 = v13;
      _os_log_impl(&dword_1A89DD000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received action(s) for %{public}@: %{public}@", buf, 0x20u);

      goto LABEL_10;
    }
  }

  else if (v11)
  {
    v12 = [*(a1 + 48) fbs_singleLineDescriptionOfBSActions];
    *buf = 138543618;
    v80 = v4;
    v81 = 2114;
    v82 = v12;
    _os_log_impl(&dword_1A89DD000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received action(s): %{public}@", buf, 0x16u);
LABEL_10:
  }

  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = *(a1 + 40);
  if (v15)
  {
    [(FBScene *)v16 _componentProxiesForExtension:v15];
  }

  else
  {
    [(FBScene *)v16 _allComponentProxies];
  }
  v17 = ;
  if ([v17 count])
  {
    v63 = v4;
    v58 = v14;
    v18 = [v14 mutableCopy];
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v60 = v17;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v73 objects:v78 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v74;
LABEL_17:
      v23 = 0;
      while (1)
      {
        if (*v74 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v73 + 1) + 8 * v23);
        v25 = *(a1 + 40);
        if (*(a1 + 56))
        {
          [v24 scene:v25 handlePrivateActions:v18];
        }

        else
        {
          [v24 scene:v25 handleActions:v18];
        }
        v26 = ;
        if ([v26 count])
        {
          v27 = FBLogScene();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = [MEMORY[0x1E698E680] succinctDescriptionForObject:v24];
            [v26 fbs_singleLineDescriptionOfBSActions];
            v30 = v29 = v19;
            *buf = 138543874;
            v80 = v63;
            v81 = 2114;
            v82 = v28;
            v83 = 2112;
            v84 = v30;
            _os_log_impl(&dword_1A89DD000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] Component %{public}@ handled action(s): %@", buf, 0x20u);

            v19 = v29;
          }

          [v18 minusSet:v26];
        }

        v31 = [v18 count];

        if (!v31)
        {
          break;
        }

        if (v21 == ++v23)
        {
          v21 = [v19 countByEnumeratingWithState:&v73 objects:v78 count:16];
          if (v21)
          {
            goto LABEL_17;
          }

          break;
        }
      }
    }

    v14 = [v18 copy];
    v17 = v60;
    v4 = v63;
  }

  if (*(a1 + 56) && [v14 count])
  {
    v32 = FBLogScene();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      NSStringFromClass(*(a1 + 56));
      v39 = v38 = v17;
      v40 = [v14 fbs_singleLineDescriptionOfBSActions];
      *buf = 138543874;
      v80 = v4;
      v81 = 2114;
      v82 = v39;
      v83 = 2114;
      v84 = v40;
      _os_log_error_impl(&dword_1A89DD000, v32, OS_LOG_TYPE_ERROR, "[%{public}@] Extension %{public}@ did not handle actions: %{public}@", buf, 0x20u);

      v17 = v38;
    }

    v14 = 0;
  }

  if ([v14 count])
  {
    v61 = v17;
    v33 = [(FBWorkspace *)*(a1 + 40) _synchronizer];
    if ([(FBSceneObserver *)v33 delegateReceivesActions])
    {
      v34 = FBLogScene();
      v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG);

      if (v35)
      {
        v36 = [(FBSceneObserver *)v33 delegate];
        v37 = FBLogScene();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          __54__FBScene_clientToken_didReceiveActions_forExtension___block_invoke_cold_1(v4, v36, v37);
        }
      }

      [v33 scene:*(a1 + 40) didReceiveActions:v14];
    }

    else
    {
      v41 = [v14 mutableCopy];
      v42 = *(a1 + 40);
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __54__FBScene_clientToken_didReceiveActions_forExtension___block_invoke_362;
      v68[3] = &unk_1E783D590;
      v69 = v41;
      v43 = v33;
      v44 = *(a1 + 40);
      v45 = v69;
      v70 = v43;
      v71 = v44;
      v46 = v4;
      v72 = v46;
      [(FBScene *)v42 _iterateObservers:v68];
      if ([v45 count])
      {
        v62 = v33;
        v59 = v14;
        v47 = FBLogScene();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = [v45 fbs_singleLineDescriptionOfBSActions];
          *buf = 138543618;
          v80 = v46;
          v81 = 2114;
          v82 = v48;
          _os_log_impl(&dword_1A89DD000, v47, OS_LOG_TYPE_DEFAULT, "[%{public}@] Dropping unhandled action(s): %{public}@", buf, 0x16u);
        }

        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v49 = v45;
        v50 = [v49 countByEnumeratingWithState:&v64 objects:v77 count:16];
        if (v50)
        {
          v51 = v50;
          v52 = *v65;
          do
          {
            for (i = 0; i != v51; ++i)
            {
              if (*v65 != v52)
              {
                objc_enumerationMutation(v49);
              }

              v54 = *(*(&v64 + 1) + 8 * i);
              if ([v54 canSendResponse])
              {
                v55 = MEMORY[0x1E698E600];
                v56 = FBSceneErrorCreate(3uLL, @"No handler for action.", 0);
                v57 = [v55 responseForError:v56];
                [v54 sendResponse:v57];
              }

              [v54 invalidate];
            }

            v51 = [v49 countByEnumeratingWithState:&v64 objects:v77 count:16];
          }

          while (v51);
        }

        v14 = v59;
        v33 = v62;
      }
    }

    v17 = v61;
  }

LABEL_4:
  v8 = *MEMORY[0x1E69E9840];
}

void __54__FBScene_clientToken_didReceiveActions_forExtension___block_invoke_362(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    v4 = [(FBSceneObserver *)v3 component];
    if (v4)
    {
    }

    else if ([(FBSceneObserver *)v3 observerHandlesActions])
    {
      v5 = *(a1 + 40);
      v6 = [(FBSceneObserver *)v3 observer];
      v7 = [v3 scene:*(a1 + 48) handleActions:*(a1 + 32)];
      v8 = [v7 count];
      v9 = FBLogScene();
      v10 = v9;
      if (v8)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 56);
          if (v5 == v3)
          {
            v12 = "Delegate";
          }

          else
          {
            v12 = "Observer";
          }

          v13 = [MEMORY[0x1E698E680] succinctDescriptionForObject:v6];
          v14 = [v7 fbs_singleLineDescriptionOfBSActions];
          v19 = 138544130;
          v20 = v11;
          v21 = 2082;
          v22 = v12;
          v23 = 2114;
          v24 = v13;
          v25 = 2112;
          v26 = v14;
          _os_log_impl(&dword_1A89DD000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}s %{public}@ handled action(s): %@", &v19, 0x2Au);
        }

        [*(a1 + 32) minusSet:v7];
      }

      else
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v16 = *(a1 + 56);
          if (v5 == v3)
          {
            v17 = "Delegate";
          }

          else
          {
            v17 = "Observer";
          }

          v18 = [MEMORY[0x1E698E680] succinctDescriptionForObject:v6];
          v19 = 138543874;
          v20 = v16;
          v21 = 2082;
          v22 = v17;
          v23 = 2114;
          v24 = v18;
          _os_log_debug_impl(&dword_1A89DD000, v10, OS_LOG_TYPE_DEBUG, "[%{public}@] %{public}s %{public}@ handled no actions.", &v19, 0x20u);
        }
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __50__FBScene_clientToken_handleInvocation_withReply___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) == *(*(a1 + 40) + 56))
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *MEMORY[0x1E69E9840];

    [v7 invokeWithReceiver:? replyHandler:?];
  }

  else
  {
    v2 = FBLogScene();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 40) loggingIdentifier];
      v4 = *(a1 + 32);
      v5 = *(*(a1 + 40) + 56);
      v10 = 138543874;
      v11 = v3;
      v12 = 2048;
      v13 = v5;
      v14 = 2048;
      v15 = v4;
      _os_log_impl(&dword_1A89DD000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring invocations due to token mismatch (probably due to prior deactivation). expected=%p received=%p", &v10, 0x20u);
    }

    v6 = *MEMORY[0x1E69E9840];
  }
}

- (void)clientToken:(id)token deactivateWithContext:(id)context
{
  v17 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  tokenCopy = token;
  v8 = FBLogScene();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    loggingIdentifier = [(FBScene *)self loggingIdentifier];
    v15 = 138543362;
    v16 = loggingIdentifier;
    _os_log_impl(&dword_1A89DD000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Explicit client invalidation.", &v15, 0xCu);
  }

  v10 = contextCopy;
  _createTransitionContext = v10;
  if (!v10)
  {
    _createTransitionContext = [(FBScene *)self _createTransitionContext];
  }

  error = [_createTransitionContext error];
  v13 = FBSceneErrorCreate(5uLL, @"Scene was invalidated by the client.", error);
  [_createTransitionContext setError:v13];

  [(FBScene *)self _deactivateClient:tokenCopy withContext:_createTransitionContext];
  v14 = *MEMORY[0x1E69E9840];
}

- (void)clientToken:(id)token didInvalidateWithError:(id)error
{
  errorCopy = error;
  tokenCopy = token;
  _createTransitionContext = [(FBScene *)self _createTransitionContext];
  [_createTransitionContext setError:errorCopy];

  [(FBScene *)self _deactivateClient:tokenCopy withContext:_createTransitionContext];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBScene *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x1E696AF00];
  prefixCopy = prefix;
  if (([v4 isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene descriptionBuilderWithMultilinePrefix:]");
  }

  succinctDescriptionBuilder = [(FBScene *)self succinctDescriptionBuilder];
  v7 = [succinctDescriptionBuilder appendBool:self->_legacy withName:@"legacy" ifEqualTo:1];
  v8 = [succinctDescriptionBuilder appendBool:self->_invalidated withName:@"invalidated" ifEqualTo:1];
  if (!self->_invalidated)
  {
    v9 = [succinctDescriptionBuilder appendBool:self->_active withName:@"active"];
  }

  v10 = [succinctDescriptionBuilder appendBool:-[FBSSceneSettings isForeground](self->_settings withName:{"isForeground"), @"FG"}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __49__FBScene_descriptionBuilderWithMultilinePrefix___block_invoke;
  v14[3] = &unk_1E783B240;
  v11 = succinctDescriptionBuilder;
  v15 = v11;
  selfCopy = self;
  [v11 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v14];

  v12 = v11;
  return v11;
}

id __49__FBScene_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 120) specification];
  v4 = [v2 appendClass:objc_opt_class() withName:@"specification"];

  v5 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 160));
  v7 = [WeakRetained succinctDescription];
  v8 = [v5 appendObject:v7 withName:@"parentScene" skipIfNil:1];

  v9 = *(a1 + 32);
  v10 = NSStringFromFBSceneContentState(*(*(a1 + 40) + 240));
  [v9 appendString:v10 withName:@"contentState"];

  v11 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 104) withName:@"settings" skipIfNil:1];
  v12 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 112) withName:@"clientSettings" skipIfNil:1];
  v13 = *(a1 + 32);
  v14 = [MEMORY[0x1E698E680] succinctDescriptionForObject:*(*(a1 + 40) + 64)];
  v15 = [v13 appendObject:v14 withName:@"clientProvider"];

  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 232) withName:@"clientProcess"];
}

- (id)display
{
  settings = [(FBScene *)self settings];
  displayConfiguration = [settings displayConfiguration];

  return displayConfiguration;
}

void __44__FBScene_UIApp__updateUISettingsWithBlock___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"settings is of an unexpected class : %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(*(a2 + 48));
    v5 = *(a2 + 32);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = *(a2 + 32);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v9, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v10, v11, v12, v13, a1, v15, v16);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __54__FBScene_UIApp__updateUISettingsWithTransitionBlock___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"settings is of an unexpected class : %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(*(a2 + 48));
    v5 = *(a2 + 32);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = *(a2 + 32);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v9, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v10, v11, v12, v13, a1, v15, v16);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_iterateObservers:(uint64_t)observers
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (observers)
  {
    if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
    {
      __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene _iterateObservers:]");
    }

    v4 = *(observers + 24);
    if (v4)
    {
      v5 = v3[2];
      v6 = OUTLINED_FUNCTION_16_0();
      v7(v6);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = [*(observers + 152) copy];
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        v12 = 0;
        do
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          (v3[2])(v3, *(*(&v23 + 1) + 8 * v12++));
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v10);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    observerProxies = [(FBScene *)observers observerProxies];
    v14 = [observerProxies countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(observerProxies);
          }

          if (*(*(&v19 + 1) + 8 * v17) != v4)
          {
            (v3[2])(v3);
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [observerProxies countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v15);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)_verifyIntegrityOfExtensionsInSettings:(void *)settings
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (settings)
  {
    _progenitor = [v3 _progenitor];
    v6 = settings[13];

    if (_progenitor != v6)
    {
      v7 = FBLogScene();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        loggingIdentifier = [settings loggingIdentifier];
        *buf = 138543362;
        v22 = loggingIdentifier;
        _os_log_error_impl(&dword_1A89DD000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] updated settings were not derived from the scene's previous settings", buf, 0xCu);
      }
    }

    v8 = v4;
    settings = [settings settings];
    _allSceneExtensions = [settings _allSceneExtensions];
    _allSceneExtensions2 = [v8 _allSceneExtensions];
    if ((BSEqualObjects() & 1) == 0)
    {
      v12 = FBLogScene();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        loggingIdentifier2 = [settings loggingIdentifier];
        *buf = 138543362;
        v22 = loggingIdentifier2;
        _os_log_error_impl(&dword_1A89DD000, v12, OS_LOG_TYPE_ERROR, "[%{public}@] Extension mismatch in new scene settings", buf, 0xCu);
      }

      OUTLINED_FUNCTION_5_2();
      v18[1] = 3221225472;
      v18[2] = __50__FBScene__verifyIntegrityOfExtensionsInSettings___block_invoke;
      v18[3] = &unk_1E783D568;
      v19 = _allSceneExtensions;
      v20 = settings;
      v13 = [v8 copy:v18];

      v8 = v13;
    }
  }

  else
  {
    v8 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)_dispatchClientMessageWithBlock:(uint64_t)block
{
  v3 = a2;
  if (block)
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v4 = objc_autoreleasePoolPush();
      [FBSceneEventQueue executeWhenIdle:v3];
      objc_autoreleasePoolPop(v4);
    }

    else
    {
      v5 = +[FBWorkspaceEventDispatcher callOutQueue];
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_15_1();
      v7 = __43__FBScene__dispatchClientMessageWithBlock___block_invoke;
      v8 = &unk_1E783B9B8;
      v9 = v3;
      [v5 performAsync:v6];
    }
  }
}

- (id)_componentProxiesForExtension:(uint64_t)extension
{
  if (extension)
  {
    v2 = [*(extension + 144) objectForKey:a2];
    v3 = [v2 copy];
    v4 = v3;
    v5 = MEMORY[0x1E695E0F0];
    if (v3)
    {
      v5 = v3;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __48__FBScene__activateWithTransitionContext_error___block_invoke_239()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_1();
  v6 = __48__FBScene__activateWithTransitionContext_error___block_invoke_2;
  v7 = &unk_1E783D3B0;
  v12 = v0;
  v3 = v1[6];
  v2 = v1[7];
  v4 = v1[5];
  v8 = v1[4];
  v10 = v3;
  v11 = v2;
  v9 = v4;
  [(FBScene *)v8 _dispatchClientMessageWithBlock:v5];
}

void __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_292(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 240);
  if ([*(v2 + 104) isForeground])
  {
    if (v3)
    {
      goto LABEL_6;
    }

    v4 = *(a1 + 88);
    v3 = 1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *(*(a1 + 32) + 208) = v4;
LABEL_6:
  v5 = *(a1 + 32);
  if (v5)
  {
    [(FBScene *)v5 _setContentState:v3 notifyObservers:1];
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = 0;
  }

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_2_293;
  v42[3] = &unk_1E783D428;
  v42[4] = v6;
  v43 = *(a1 + 40);
  [(FBScene *)v6 _iterateObservers:v42];
  [*(*(a1 + 32) + 248) scene:*(a1 + 32) didApplyUpdate:*(a1 + 40)];
  v7 = [*(a1 + 48) captureCompletions];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_3;
  v36[3] = &unk_1E783D478;
  v37 = *(a1 + 56);
  v8 = *(a1 + 80);
  v9 = *(a1 + 32);
  v41 = v8;
  v38 = v9;
  v39 = *(a1 + 64);
  v10 = v7;
  v40 = v10;
  v11 = MEMORY[0x1AC572E40](v36);
  v12 = v11;
  v13 = *(a1 + 32);
  if (v13[7])
  {
    v14 = v13[8];
    v15 = v13[13];
    v16 = *(a1 + 72);
    v17 = *(a1 + 48);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_2_295;
    v33[3] = &unk_1E783D4C8;
    v18 = *(a1 + 88);
    v34 = v11;
    v35 = v18;
    v33[4] = v13;
    v19 = v11;
    [v14 host:v13 didUpdateSettings:v15 withDiff:v16 transitionContext:v17 completion:v33];
    v20 = v34;
  }

  else
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_4;
    v31[3] = &unk_1E783B9B8;
    v32 = v11;
    v27 = v11;
    [(FBScene *)v13 _dispatchClientMessageWithBlock:v31];
    v20 = v32;
  }

  [(FBScene *)*(a1 + 32) _endTransaction:?];
  if (*(a1 + 96) == 1)
  {
    v28 = *(a1 + 32);
    OUTLINED_FUNCTION_5_2();
    v30[1] = 3221225472;
    v30[2] = __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_5;
    v30[3] = &unk_1E783D228;
    v30[4] = v29;
    [(FBScene *)v29 _iterateObservers:v30];
  }

  v21 = *(a1 + 40);
  v22 = *MEMORY[0x1E699FD18];
  v23 = *(v21 + v22);
  *(v21 + v22) = 0;

  v24 = *(a1 + 40);
  v25 = *MEMORY[0x1E699FD28];
  v26 = *(v24 + v25);
  *(v24 + v25) = 0;
}

void __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_2_295(void *a1, char a2, void *a3)
{
  v5 = a3;
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_1();
  v11 = __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_3_296;
  v12 = &unk_1E783D4A0;
  v17 = a2;
  v7 = a1[4];
  v6 = a1[5];
  v16 = a1[6];
  v13 = v7;
  v14 = v8;
  v15 = v6;
  v9 = v5;
  [(FBScene *)v7 _dispatchClientMessageWithBlock:v10];
}

void __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_3_296(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 32);
    if (*(v2 + 219) == 1 && *(v2 + 208) == *(a1 + 56))
    {
      if ([*(v2 + 104) isForeground])
      {
        v3 = *(a1 + 32);
        if (v3)
        {
          [(FBScene *)v3 _setContentState:1 notifyObservers:?];
        }
      }
    }

    v4 = 0;
  }

  else
  {
    v4 = FBSceneErrorCreate(1uLL, @"Scene update failed.", *(a1 + 40));
  }

  v5 = *(a1 + 64);
  v6 = v4;
  (*(*(a1 + 48) + 16))();
}

- (void)clientToken:(id)token didUpdateClientSettings:(id)settings withDiff:(id)diff transitionContext:(id)context
{
  tokenCopy = token;
  settingsCopy = settings;
  diffCopy = diff;
  contextCopy = context;
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_1();
  v20 = __74__FBScene_clientToken_didUpdateClientSettings_withDiff_transitionContext___block_invoke;
  v21 = &unk_1E783BFE8;
  v22 = tokenCopy;
  selfCopy = self;
  v24 = settingsCopy;
  v25 = diffCopy;
  v26 = v14;
  v15 = v14;
  v16 = diffCopy;
  v17 = settingsCopy;
  v18 = tokenCopy;
  [(FBScene *)self _dispatchClientMessageWithBlock:v19];
}

- (void)clientToken:(id)token didReceiveActions:(id)actions forExtension:(Class)extension
{
  tokenCopy = token;
  actionsCopy = actions;
  OUTLINED_FUNCTION_5_2();
  v13[1] = 3221225472;
  v13[2] = __54__FBScene_clientToken_didReceiveActions_forExtension___block_invoke;
  v13[3] = &unk_1E783D5B8;
  v14 = tokenCopy;
  selfCopy = self;
  v16 = v10;
  extensionCopy = extension;
  v11 = v10;
  v12 = tokenCopy;
  [(FBScene *)self _dispatchClientMessageWithBlock:v13];
}

- (void)clientToken:(id)token handleInvocation:(id)invocation withReply:(id)reply
{
  tokenCopy = token;
  invocationCopy = invocation;
  replyCopy = reply;
  OUTLINED_FUNCTION_5_2();
  v15[1] = 3221225472;
  v15[2] = __50__FBScene_clientToken_handleInvocation_withReply___block_invoke;
  v15[3] = &unk_1E783BB18;
  v16 = tokenCopy;
  selfCopy = self;
  v18 = invocationCopy;
  v19 = v11;
  v12 = v11;
  v13 = invocationCopy;
  v14 = tokenCopy;
  [(FBScene *)self _dispatchClientMessageWithBlock:v15];
}

- (id)targetForInvocation:(id)invocation
{
  v18 = *MEMORY[0x1E69E9840];
  invocationCopy = invocation;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBScene targetForInvocation:]");
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = -[FBScene _componentProxiesForExtension:](self, [invocationCopy extension]);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_5:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      component = [(FBSceneObserver *)*(*(&v13 + 1) + 8 * v9) component];
      if ([invocationCopy compatibleWithTarget:component])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    component = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return component;
}

- (void)initWithDefiniton:(char *)a1 remnant:settings:initialClientSettings:clientProvider:workspace:.cold.1(char *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[definition isValid]", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithDefiniton:(char *)a1 remnant:settings:initialClientSettings:clientProvider:workspace:.cold.2(char *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSceneRemnantClass]", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithDefiniton:(char *)a1 remnant:settings:initialClientSettings:clientProvider:workspace:.cold.3(char *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneSettingsClass]", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithDefiniton:(char *)a1 remnant:settings:initialClientSettings:clientProvider:workspace:.cold.4(char *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneClientSettingsClass]", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithDefiniton:(char *)a1 remnant:settings:initialClientSettings:clientProvider:workspace:.cold.6(char *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"workspace != nil", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)activateWithTransitionContext:(char *)a1 completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot activate a scene during init"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)activateWithTransitionContext:(char *)a1 completion:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"legacy scenes can only ever be activated once"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)activateWithTransitionContext:(char *)a1 completion:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot activate a scene mid deactivation"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)activateWithTransitionContext:(char *)a1 completion:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot activate a scene mid update"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_activateWithTransitionContext:(char *)a1 error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_clientHandle == nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_activateWithTransitionContext:(char *)a1 error:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_client == nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_activateWithTransitionContext:(char *)a1 error:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"a client future can only activate for the process that requested it"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_activateWithTransitionContext:(char *)a1 error:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Client process identity does not match provided handle's identity"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_activateWithTransitionContext:(char *)a1 error:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Client process identity does not match execution context identity"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_activateWithTransitionContext:(char *)a1 error:.cold.6(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"legacy scenes do not support targeting clients by PID"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_activateWithTransitionContext:(void *)a1 error:.cold.7(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 loggingIdentifier];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_activateWithTransitionContext:(void *)a1 error:(void *)a2 .cold.8(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [a1 loggingIdentifier];
  v4 = [a2 descriptionWithMultilinePrefix:0];
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_activateWithTransitionContext:(char *)a1 error:.cold.9(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_client != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_activateWithTransitionContext:(char *)a1 error:.cold.10(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_workspace", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_activateWithTransitionContext:(void *)a3 error:(uint64_t *)a4 .cold.11(uint64_t *a1, uint64_t a2, void **a3, uint64_t *a4)
{
  v7 = [(FBWorkspaceEventDispatcher *)*a1 domain];
  v8 = [v7 currentProcess];
  *a4 = v8;

  v9 = [FBSceneClientHandle handleForScene:a2 clientProcess:v8];
  v10 = *a3;
  *a3 = v9;
}

- (void)_activateWithTransitionContext:(void *)a3 error:(uint64_t *)a4 .cold.12(id *a1, uint64_t a2, void **a3, uint64_t *a4)
{
  v8 = *a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [*a1 process];
    v10 = *(a2 + 72);
    *(a2 + 72) = v9;
  }

  else
  {
    v10 = [(FBWorkspaceEventDispatcher *)*a4 domain];
    v11 = [v10 currentProcess];
    v12 = *(a2 + 72);
    *(a2 + 72) = v11;
  }

  v13 = [FBSceneClientHandle handleForScene:a2 clientProcess:*(a2 + 72)];
  v14 = *a3;
  *a3 = v13;
}

- (void)_activateWithTransitionContext:(void *)a3 error:(void *)a4 .cold.13(uint64_t *a1, uint64_t a2, void **a3, void **a4)
{
  v8 = [(FBWorkspaceEventDispatcher *)*a1 domain];
  v9 = [v8 currentProcess];
  v10 = *(a2 + 72);
  *(a2 + 72) = v9;

  v11 = [FBSceneClientHandle handleForScene:a2 clientProcess:*(a2 + 72)];
  v12 = *a3;
  *a3 = v11;

  v15 = [(FBWorkspaceEventDispatcher *)*a1 domain];
  v13 = [v15 syncLocalSceneClientProvider];
  v14 = *a4;
  *a4 = v13;
}

void __52__FBScene_activateWithTransitionContext_completion___block_invoke_5_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(*(a1 + 56));
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    v12 = NSStringFromClass(v5);
    v13 = *(a1 + 32);
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"activated || !success", v11, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_deactivateAndInvalidate:(char *)a1 transitionContext:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"scene is not currently mutable"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_deactivateAndInvalidate:(uint64_t)a1 transitionContext:.cold.2(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_2_5(a1);
  v2[1] = 3221225472;
  v2[2] = __54__FBScene__deactivateAndInvalidate_transitionContext___block_invoke_2;
  v2[3] = &unk_1E783D428;
  v2[4] = v3;
  *(a1 + 40) = v4;
  v5 = OUTLINED_FUNCTION_16_0();
  [(FBScene *)v5 _iterateObservers:v6];
}

- (void)_deactivateAndInvalidate:(char *)a1 transitionContext:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_workspace != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_deactivateAndInvalidate:(char *)a1 transitionContext:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot deactivate a scene while content state is changing"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_deactivateAndInvalidate:(char *)a1 transitionContext:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot deactivate while updating"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_deactivateAndInvalidate:(char *)a1 transitionContext:.cold.6(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot deactivate a scene while it is updating"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_deactivateAndInvalidate:(char *)a1 transitionContext:.cold.7(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot re-entrantly deactivate a scene"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)addExtension:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"extension != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)removeExtension:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"extension != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setParentScene:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"reparenting was not completed"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updateSettingsWithTransitionBlock:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"settingsUpdateBlock", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_joinUpdate:(char *)a1 block:completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot activate a scene during init"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_joinUpdate:(char *)a1 block:completion:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot activate a scene during component init"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_joinUpdate:(char *)a1 block:completion:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"re-entrant mutation during configureParameters is not supported"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_joinUpdate:(char *)a1 block:completion:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_updateDepth < 16", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)configureParameters:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"re-entrant mutation during configureParameters is not supported"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)configureParameters:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot call configureParameters on an active scene"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)configureParameters:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"block != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)createSnapshotWithContext:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 loggingIdentifier];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_propagateSettings:(char *)a1 fromSettings:toSettings:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"mutableSettings", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_propagateSettings:(char *)a1 fromSettings:toSettings:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"parentSettings", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_propagateSettings:(char *)a1 fromSettings:toSettings:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"settingsToPropagate", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)sendActions:(char *)a1 toExtension:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_active", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)sendActions:(char *)a1 toExtension:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"!_invalidated", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)sendActions:(objc_class *)a1 toExtension:(char *)a2 .cold.3(objc_class *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v12 = NSStringFromClass(a1);
  v4 = [v3 stringWithFormat:@"scene does not conform to extension %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_9();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13, v14);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)sendActions:(uint64_t)a1 toExtension:(char *)a2 .cold.4(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"only actions of type BSAction can be sent : tried to send %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)sendActions:(void *)a1 toExtension:.cold.5(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 loggingIdentifier];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)sendActions:(void *)a1 toExtension:.cold.6(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 loggingIdentifier];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)sendInvocation:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 loggingIdentifier];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_endTransaction:(const char *)a1 .cold.1(const char *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_setContentState:(void *)a1 notifyObservers:.cold.1(void *a1)
{
  v1 = OUTLINED_FUNCTION_2_5(a1);
  v1[1] = 3221225472;
  v1[2] = __44__FBScene__setContentState_notifyObservers___block_invoke;
  v1[3] = &unk_1E783D228;
  v1[4] = v2;
  [(FBScene *)v2 _iterateObservers:v3];
}

- (void)_setContentState:(const char *)a1 notifyObservers:.cold.2(const char *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_setContentState:(char *)a1 notifyObservers:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_workspace != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_addExtensions:(objc_class *)a1 removeExtensions:(char *)a2 settings:.cold.1(objc_class *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v12 = NSStringFromClass(a1);
  v4 = [v3 stringWithFormat:@"shouldn't have existing components for new extension %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_9();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13, v14);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_addExtensions:(char *)a1 removeExtensions:settings:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"components cannot mutate extensions during init"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __48__FBScene__activateWithTransitionContext_error___block_invoke_2_cold_1(uint64_t a1, uint64_t *a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"client handle must be nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(*(a1 + 56));
    v6 = *a2;
    v7 = objc_opt_class();
    v13 = NSStringFromClass(v7);
    v14 = *a2;
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, 2u);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __48__FBScene__activateWithTransitionContext_error___block_invoke_2_cold_2(uint64_t *a1, void *a2)
{
  OUTLINED_FUNCTION_10_1(*a1, a2);
  v2[1] = 3221225472;
  v2[2] = __48__FBScene__activateWithTransitionContext_error___block_invoke_243;
  v2[3] = &unk_1E783D228;
  v2[4] = v3;
  [(FBScene *)v3 _iterateObservers:v2];
}

- (void)_applySettingsUpdateWithCompletion:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot finish an update when we are not in an update"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_applySettingsUpdateWithCompletion:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot apply another update while the previous one is pending"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_applySettingsUpdateWithCompletion:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"completion == nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_applySettingsUpdateWithCompletion:(uint64_t)a1 .cold.4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_2_5(a1);
  v2[1] = 3221225472;
  v2[2] = __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_312;
  v2[3] = &unk_1E783D428;
  v2[4] = v3;
  *(a1 + 40) = v4;
  v5 = OUTLINED_FUNCTION_16_0();
  [(FBScene *)v5 _iterateObservers:v6];
}

- (void)_applySettingsUpdateWithCompletion:(char *)a1 .cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"![[_definition specification] _isSignificantTransitionContext:[update transitionContext]]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_applySettingsUpdateWithCompletion:(char *)a1 .cold.6(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"!_legacy", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_applySettingsUpdateWithCompletion:(char *)a1 .cold.7(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mutable and non-mutable settings must be equal"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_applySettingsUpdateWithCompletion:(void *)a1 .cold.8(void *a1, uint64_t a2)
{
  v3 = [a1 mutableCopy];
  v4 = *MEMORY[0x1E699FD30];
  v5 = *(a2 + v4);
  *(a2 + v4) = v3;
}

- (void)_applySettingsUpdateWithCompletion:(uint64_t)a1 .cold.9(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_2_5(a1);
  v2[1] = 3221225472;
  v2[2] = __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_287;
  v2[3] = &unk_1E783B9B8;
  *(a1 + 32) = v3;
  v4 = OUTLINED_FUNCTION_16_0();
  [(FBScene *)v4 _dispatchClientMessageWithBlock:v5];
}

- (void)_applySettingsUpdateWithCompletion:(char *)a1 .cold.10(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_workspace != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_applySettingsUpdateWithCompletion:(void *)a1 .cold.11(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 loggingIdentifier];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_applySettingsUpdateWithCompletion:(char *)a1 .cold.12(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"re-entrant mutation during configureParameters is not supported"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_applySettingsUpdateWithCompletion:(char *)a1 .cold.13(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no active settings update"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_applySettingsUpdateWithCompletion:(void *)a1 .cold.14(void *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v12 = [a1 loggingIdentifier];
  v4 = [v3 stringWithFormat:@"re-entrant scene mutation is not supported (%@)"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_9();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13, v14);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_3_cold_1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [a2 descriptionWithMultilinePrefix:0];
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_3_cold_2(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *a1;
  OUTLINED_FUNCTION_10_1(a1, a2);
  v9[1] = 3221225472;
  v9[2] = __46__FBScene__applySettingsUpdateWithCompletion___block_invoke_294;
  v9[3] = &unk_1E783D450;
  v9[4] = v8;
  *(a2 + 40) = *(v10 + 48);
  *(a2 + 48) = a4;
  [(FBScene *)v8 _iterateObservers:a2];
  [*(*a1 + 248) scene:*a1 didCompleteUpdate:*(a3 + 48)];
}

- (void)_deactivateClient:(char *)a1 withContext:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[[error domain] isEqualToString:FBSceneErrorDomain]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_deactivateClient:(char *)a1 withContext:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"error != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __74__FBScene_clientToken_didUpdateClientSettings_withDiff_transitionContext___block_invoke_cold_1(uint64_t *a1, id *a2, id *a3, void *a4)
{
  v8 = objc_opt_new();
  *a4 = v8;
  objc_storeStrong(&v8[*MEMORY[0x1E699FD38]], *(*a1 + 112));
  v9 = [a2[6] copy];
  v10 = *(*a1 + 112);
  *(*a1 + 112) = v9;

  objc_storeStrong(&v8[*MEMORY[0x1E699FD40]], v9);
  objc_storeStrong(&v8[*MEMORY[0x1E699FD20]], a2[7]);
  objc_storeStrong(&v8[*MEMORY[0x1E699FD18]], a2[8]);
  if ([a2[7] containsProperty:sel_layers])
  {
    v11 = *(*a1 + 16);
    v12 = [*(*a1 + 112) layers];
    [v11 _setLayers:v12];
  }

  v13 = *a1;
  *a3 = MEMORY[0x1E69E9820];
  a3[1] = 3221225472;
  a3[2] = __74__FBScene_clientToken_didUpdateClientSettings_withDiff_transitionContext___block_invoke_2;
  a3[3] = &unk_1E783D428;
  a3[4] = v13;
  a3[5] = v8;
  v14 = v8;
  [(FBScene *)v13 _iterateObservers:a3];
}

void __54__FBScene_clientToken_didReceiveActions_forExtension___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E698E680] succinctDescriptionForObject:a2];
  v7 = 138543618;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_debug_impl(&dword_1A89DD000, a3, OS_LOG_TYPE_DEBUG, "[%{public}@] Handing all actions to delegate: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end