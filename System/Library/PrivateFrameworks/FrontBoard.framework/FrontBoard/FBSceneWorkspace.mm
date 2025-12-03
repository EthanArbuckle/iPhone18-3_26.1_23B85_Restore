@interface FBSceneWorkspace
+ (id)debugDescription;
+ (id)sceneIdentityTokenForIdentifier:(id)identifier workspaceIdentifier:(id)workspaceIdentifier;
+ (id)workspaceWithIdentifier:(id)identifier;
- (BOOL)scene:(id)scene willUpdateSettings:(id)settings;
- (FBSceneWorkspace)init;
- (FBSceneWorkspace)initWithIdentifier:(id)identifier;
- (FBSceneWorkspaceDelegate)delegate;
- (id)_createSceneWithDefinition:(void *)definition settings:(void *)settings initialClientSettings:(void *)clientSettings transitionContext:(void *)context fromRemnant:(void *)remnant usingClientProvider:(void *)provider completion:;
- (id)_initWithProcessManager:(void *)manager identifier:;
- (id)_legacyWorkspace;
- (id)allScenes;
- (id)createScene:(id)scene;
- (id)createSceneFromRemnant:(id)remnant withSettings:(id)settings transitionContext:(id)context;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)sceneIdentityTokenForIdentifier:(id)identifier;
- (id)sceneWithIdentifier:(id)identifier;
- (id)sceneWithIdentityToken:(id)token;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (uint64_t)_setSuppressConnectionHandshakes:(uint64_t)result;
- (uint64_t)_suppressConnectionHandshakes;
- (void)_iterateObservers:(uint64_t)observers;
- (void)_objc_initiateDealloc;
- (void)addObserver:(id)observer;
- (void)configureParameters:(id)parameters;
- (void)dealloc;
- (void)didAddScene:(id)scene;
- (void)didReceiveHandshake:(id)handshake;
- (void)didReceiveSceneRequest:(id)request fromHandle:(id)handle;
- (void)invalidate;
- (void)removeObserver:(id)observer;
- (void)scene:(id)scene didApplyUpdate:(id)update;
- (void)scene:(id)scene didCompleteUpdate:(id)update;
- (void)scene:(id)scene didPrepareUpdate:(id)update;
- (void)sceneDidInvalidate:(id)invalidate;
- (void)setClientIdentity:(id)identity;
- (void)setDelegate:(id)delegate;
- (void)setIdentifier:(id)identifier;
- (void)setIdentity:(id)identity;
- (void)setSpecification:(id)specification;
@end

@implementation FBSceneWorkspace

- (id)_legacyWorkspace
{
  selfCopy = self;
  if (self)
  {
    v2 = [self[1] legacySceneManagerCreatingIfNecessary:0];
    if ([v2 _isSameAsWorkspace:selfCopy])
    {
      selfCopy = v2;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (id)allScenes
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBSceneWorkspace allScenes]");
  }

  allScenesByID = self->_allScenesByID;

  return [(NSMutableDictionary *)allScenesByID allValues];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBSceneWorkspace *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBSceneWorkspace succinctDescriptionBuilder]");
  }

  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_identifier withName:0];
  v5 = [v3 appendUnsignedInteger:-[NSMutableDictionary count](self->_allScenesByID withName:{"count"), @"scenes"}];

  return v3;
}

- (uint64_t)_suppressConnectionHandshakes
{
  if (self)
  {
    v1 = *(self + 85);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (FBSceneWorkspace)init
{
  v3 = +[FBProcessManager sharedInstance];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v6 = [(FBSceneWorkspace *)&self->super.isa _initWithProcessManager:v3 identifier:uUIDString];

  return v6;
}

- (id)_initWithProcessManager:(void *)manager identifier:
{
  v6 = a2;
  managerCopy = manager;
  if (self)
  {
    if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
    {
      __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBSceneWorkspace _initWithProcessManager:identifier:]");
    }

    v8 = v6;
    if (!v8)
    {
      [FBSceneWorkspace _initWithProcessManager:? identifier:?];
    }

    v9 = v8;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSceneWorkspace _initWithProcessManager:v9 identifier:sel__initWithProcessManager_identifier_];
    }

    v10 = managerCopy;
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    if (!v10)
    {
      v37 = NSStringFromClass(v12);
      v38 = [v11 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"identifier", v37];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [FBSceneWorkspace _initWithProcessManager:? identifier:?];
      }

      [v38 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1A8A1CD58);
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSceneWorkspace _initWithProcessManager:v10 identifier:sel__initWithProcessManager_identifier_];
    }

    if (_initWithProcessManager_identifier__onceToken != -1)
    {
      [FBSceneWorkspace _initWithProcessManager:identifier:];
    }

    os_unfair_lock_lock(&__WorkspacesLock);
    if (!__Workspaces)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v14 = __Workspaces;
      __Workspaces = v13;
    }

    v15 = v10;
    NSClassFromString(&cfstr_Nsstring.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSceneWorkspace _initWithProcessManager:? identifier:?];
    }

    v16 = [__Workspaces objectForKey:v15];

    if (v16)
    {
      [FBSceneWorkspace _initWithProcessManager:v15 identifier:sel__initWithProcessManager_identifier_];
    }

    v17 = [self[1] legacySceneManagerCreatingIfNecessary:0];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __55__FBSceneWorkspace__initWithProcessManager_identifier___block_invoke_34;
    v42[3] = &unk_1E783CA08;
    v18 = v15;
    v43 = v18;
    v19 = [v17 scenesPassingTest:v42];

    if ([v19 count])
    {
      [FBSceneWorkspace _initWithProcessManager:v18 identifier:sel__initWithProcessManager_identifier_];
    }

    v41.receiver = self;
    v41.super_class = FBSceneWorkspace;
    v20 = objc_msgSendSuper2(&v41, sel_init);
    v21 = v20;
    if (v20)
    {
      objc_storeStrong(v20 + 1, a2);
      *(v21 + 20) = 0;
      v22 = [v18 copy];
      v23 = v21[11];
      v21[11] = v22;

      v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v25 = v21[6];
      v21[6] = v24;

      v26 = objc_alloc_init(MEMORY[0x1E695DFA0]);
      v27 = v21[5];
      v21[5] = v26;

      eventDispatcher = [v21[1] eventDispatcher];
      v29 = [(FBWorkspaceEventDispatcher *)eventDispatcher registerTarget:v21];
      v30 = v21[2];
      v21[2] = v29;

      domain = [(FBWorkspaceEventDispatcher *)eventDispatcher domain];
      [(FBWorkspaceDomain *)domain injectEndpointToFBSWorkspace];

      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FBSceneWorkspace minus scenes - %@", v21[11]];
      objc_initWeak(&location, v21);
      v33 = MEMORY[0x1E69E96A0];
      objc_copyWeak(&v39, &location);
      v34 = BSLogAddStateCaptureBlockForUserRequestsOnlyWithTitle();
      v35 = v21[3];
      v21[3] = v34;

      [__Workspaces setObject:v21 forKey:v21[11]];
      objc_destroyWeak(&v39);
      objc_destroyWeak(&location);
    }

    os_unfair_lock_unlock(&__WorkspacesLock);
    self = v21;
  }

  return self;
}

uint64_t __55__FBSceneWorkspace__initWithProcessManager_identifier___block_invoke()
{
  v0 = objc_opt_class();

  return MEMORY[0x1EEE667A8](v0);
}

uint64_t __55__FBSceneWorkspace__initWithProcessManager_identifier___block_invoke_34(uint64_t a1, void *a2)
{
  v3 = [a2 workspaceIdentifier];
  v4 = *(a1 + 32);
  v5 = BSEqualStrings();

  return v5;
}

id __55__FBSceneWorkspace__initWithProcessManager_identifier___block_invoke_45(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained succinctDescription];

  return v2;
}

- (FBSceneWorkspace)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([@"FBSceneManager" isEqualToString:identifierCopy])
  {
    [(FBSceneWorkspace *)@"FBSceneManager" initWithIdentifier:a2];
  }

  v6 = +[FBProcessManager sharedInstance];
  v7 = [(FBSceneWorkspace *)&self->super.isa _initWithProcessManager:v6 identifier:identifierCopy];

  return v7;
}

+ (id)workspaceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([@"FBSceneManager" isEqualToString:identifierCopy])
  {
    [(FBSceneWorkspace *)@"FBSceneManager" workspaceWithIdentifier:a2];
  }

  v5 = [FBSceneWorkspace alloc];
  v6 = +[FBProcessManager sharedInstance];
  v7 = [(FBSceneWorkspace *)&v5->super.isa _initWithProcessManager:v6 identifier:identifierCopy];

  return v7;
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
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"this object must be invalidated before it is released"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (FBSceneWorkspaceDelegate)delegate
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBSceneWorkspace delegate]");
  }

  delegate = self->_delegate;

  return [(FBSceneManagerObserver *)delegate delegate];
}

- (void)setDelegate:(id)delegate
{
  v4 = MEMORY[0x1E696AF00];
  delegateCopy = delegate;
  if (([v4 isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBSceneWorkspace setDelegate:]");
  }

  v6 = [[FBSceneManagerObserver alloc] initWithDelegate:delegateCopy workspace:self];

  delegate = self->_delegate;
  self->_delegate = v6;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBSceneWorkspace addObserver:]");
  }

  v4 = observerCopy;
  if (observerCopy)
  {
    v5 = [[FBSceneManagerObserver alloc] initWithObserver:observerCopy workspace:self];
    os_unfair_lock_lock(&self->_lock);
    if (([(NSMutableOrderedSet *)self->_lock_observers containsObject:v5]& 1) == 0)
    {
      [(NSMutableOrderedSet *)self->_lock_observers addObject:v5];
    }

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
  v5 = [(NSMutableOrderedSet *)self->_lock_observers copy];
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
        observer = [v10 observer];
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
          [(NSMutableOrderedSet *)self->_lock_observers removeObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_lock);
  v14 = *MEMORY[0x1E69E9840];
}

- (id)sceneWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(1, "[FBSceneWorkspace sceneWithIdentifier:]");
  }

  if (identifierCopy)
  {
    v5 = [(NSMutableDictionary *)self->_allScenesByID objectForKey:identifierCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)sceneWithIdentityToken:(id)token
{
  tokenCopy = token;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBSceneWorkspace sceneWithIdentityToken:]");
  }

  if (!tokenCopy)
  {
    [FBSceneWorkspace sceneWithIdentityToken:a2];
  }

  identifier = [tokenCopy identifier];
  v7 = [(FBSceneWorkspace *)self sceneWithIdentifier:identifier];

  if (v7 && ([v7 identityToken], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqual:", tokenCopy), v8, v9))
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)sceneIdentityTokenForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!identifierCopy)
  {
    [FBSceneWorkspace sceneIdentityTokenForIdentifier:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSceneWorkspace sceneIdentityTokenForIdentifier:a2];
  }

  v6 = MEMORY[0x1E699FC18];
  incomingWorkspaceEndpoint = [(FBProcessManager *)self->_processManager incomingWorkspaceEndpoint];
  v8 = [v6 tokenWithHostEndpoint:incomingWorkspaceEndpoint workspace:self->_identifier identifier:identifierCopy];

  return v8;
}

+ (id)sceneIdentityTokenForIdentifier:(id)identifier workspaceIdentifier:(id)workspaceIdentifier
{
  identifierCopy = identifier;
  workspaceIdentifierCopy = workspaceIdentifier;
  v8 = identifierCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v8)
  {
    [FBSceneWorkspace sceneIdentityTokenForIdentifier:a2 workspaceIdentifier:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSceneWorkspace sceneIdentityTokenForIdentifier:a2 workspaceIdentifier:?];
  }

  v9 = workspaceIdentifierCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v9)
  {
    [FBSceneWorkspace sceneIdentityTokenForIdentifier:a2 workspaceIdentifier:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSceneWorkspace sceneIdentityTokenForIdentifier:a2 workspaceIdentifier:?];
  }

  v10 = MEMORY[0x1E699FC18];
  v11 = +[FBProcessManager sharedInstance];
  incomingWorkspaceEndpoint = [v11 incomingWorkspaceEndpoint];
  v13 = [v10 tokenWithHostEndpoint:incomingWorkspaceEndpoint workspace:v9 identifier:v8];

  return v13;
}

- (id)createScene:(id)scene
{
  sceneCopy = scene;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBSceneWorkspace createScene:]");
  }

  if (self->_buildingDefinition)
  {
    [FBSceneWorkspace createScene:a2];
  }

  definition = [MEMORY[0x1E699FB50] definition];
  buildingDefinition = self->_buildingDefinition;
  self->_buildingDefinition = definition;

  v8 = sceneCopy[2];
  v9 = definition;
  v8(sceneCopy, self);
  settings = [(FBSMutableSceneParameters *)self->_buildingParameters settings];
  clientSettings = [(FBSMutableSceneParameters *)self->_buildingParameters clientSettings];
  v12 = self->_buildingDefinition;
  self->_buildingDefinition = 0;

  buildingParameters = self->_buildingParameters;
  self->_buildingParameters = 0;

  v14 = [(FBSceneWorkspace *)self _createSceneWithDefinition:v9 settings:settings initialClientSettings:clientSettings transitionContext:0 fromRemnant:0 usingClientProvider:0 completion:0];

  return v14;
}

- (id)_createSceneWithDefinition:(void *)definition settings:(void *)settings initialClientSettings:(void *)clientSettings transitionContext:(void *)context fromRemnant:(void *)remnant usingClientProvider:(void *)provider completion:
{
  v60 = a2;
  definitionCopy = definition;
  settingsCopy = settings;
  clientSettingsCopy = clientSettings;
  contextCopy = context;
  remnantCopy = remnant;
  providerCopy = provider;
  if (!self)
  {
    v49 = 0;
    goto LABEL_55;
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBSceneWorkspace _createSceneWithDefinition:settings:initialClientSettings:transitionContext:fromRemnant:usingClientProvider:completion:]");
  }

  if (*(self + 84) == 1)
  {
    [FBSceneWorkspace _createSceneWithDefinition:? settings:? initialClientSettings:? transitionContext:? fromRemnant:? usingClientProvider:? completion:?];
  }

  if (([v60 isValid] & 1) == 0)
  {
    [FBSceneWorkspace _createSceneWithDefinition:? settings:? initialClientSettings:? transitionContext:? fromRemnant:? usingClientProvider:? completion:?];
  }

  identity = [v60 identity];
  identifier = [identity identifier];

  v20 = identifier;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v20)
  {
    [FBSceneWorkspace _createSceneWithDefinition:? settings:? initialClientSettings:? transitionContext:? fromRemnant:? usingClientProvider:? completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSceneWorkspace _createSceneWithDefinition:? settings:? initialClientSettings:? transitionContext:? fromRemnant:? usingClientProvider:? completion:?];
  }

  specification = [v60 specification];
  NSClassFromString(&cfstr_Fbsscenespecif.isa);
  if (!specification)
  {
    [FBSceneWorkspace _createSceneWithDefinition:? settings:? initialClientSettings:? transitionContext:? fromRemnant:? usingClientProvider:? completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSceneWorkspace _createSceneWithDefinition:? settings:? initialClientSettings:? transitionContext:? fromRemnant:? usingClientProvider:? completion:?];
  }

  v57 = v20;
  v54 = contextCopy;
  v55 = remnantCopy;
  if (contextCopy)
  {
    v22 = contextCopy;
    NSClassFromString(&cfstr_Fbsceneremnant_1.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSceneWorkspace _createSceneWithDefinition:? settings:? initialClientSettings:? transitionContext:? fromRemnant:? usingClientProvider:? completion:?];
    }

    v23 = specification;
    v24 = clientSettingsCopy;

    definition = [v22 definition];
    identity2 = [definition identity];
    internalWorkspaceIdentifier = [identity2 internalWorkspaceIdentifier];
    v28 = *(self + 88);
    v29 = BSEqualObjects();

    if ((v29 & 1) == 0)
    {
      [FBSceneWorkspace _createSceneWithDefinition:? settings:? initialClientSettings:? transitionContext:? fromRemnant:? usingClientProvider:? completion:?];
    }

    clientSettingsCopy = v24;
    remnantCopy = v55;
    specification = v23;
    if ([v22 _hasBeenInvalidated])
    {
      [FBSceneWorkspace _createSceneWithDefinition:? settings:? initialClientSettings:? transitionContext:? fromRemnant:? usingClientProvider:? completion:?];
    }
  }

  v30 = clientSettingsCopy;
  if (v30)
  {
    NSClassFromString(&cfstr_Fbsscenetransi_0.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSceneWorkspace _createSceneWithDefinition:? settings:? initialClientSettings:? transitionContext:? fromRemnant:? usingClientProvider:? completion:?];
    }
  }

  v31 = remnantCopy;
  v32 = v31;
  if (v31 && ([v31 conformsToProtocol:&unk_1F1C19098] & 1) == 0)
  {
    [FBSceneWorkspace _createSceneWithDefinition:? settings:? initialClientSettings:? transitionContext:? fromRemnant:? usingClientProvider:? completion:?];
  }

  _legacyWorkspace = [(FBSceneWorkspace *)self _legacyWorkspace];

  if (v32)
  {
    if (!_legacyWorkspace)
    {
      [FBSceneWorkspace _createSceneWithDefinition:? settings:? initialClientSettings:? transitionContext:? fromRemnant:? usingClientProvider:? completion:?];
    }

    displayConfiguration = [definitionCopy displayConfiguration];
    NSClassFromString(&cfstr_Fbsdisplayconf.isa);
    if (!displayConfiguration)
    {
      [FBSceneWorkspace _createSceneWithDefinition:? settings:? initialClientSettings:? transitionContext:? fromRemnant:? usingClientProvider:? completion:?];
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSceneWorkspace _createSceneWithDefinition:? settings:? initialClientSettings:? transitionContext:? fromRemnant:? usingClientProvider:? completion:?];
    }
  }

  else
  {
    if (v30 && !contextCopy)
    {
      [FBSceneWorkspace _createSceneWithDefinition:? settings:? initialClientSettings:? transitionContext:? fromRemnant:? usingClientProvider:? completion:?];
    }

    if (providerCopy)
    {
      [FBSceneWorkspace _createSceneWithDefinition:? settings:? initialClientSettings:? transitionContext:? fromRemnant:? usingClientProvider:? completion:?];
    }

    if (!definitionCopy)
    {
      definitionCopy = [objc_msgSend(specification "settingsClass")];
    }

    if (!settingsCopy)
    {
      settingsCopy = [objc_msgSend(specification "clientSettingsClass")];
    }
  }

  v35 = definitionCopy;
  NSClassFromString(&cfstr_Fbsscenesettin.isa);
  definitionCopy = v35;
  if (!v35)
  {
    [FBSceneWorkspace _createSceneWithDefinition:? settings:? initialClientSettings:? transitionContext:? fromRemnant:? usingClientProvider:? completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSceneWorkspace _createSceneWithDefinition:? settings:? initialClientSettings:? transitionContext:? fromRemnant:? usingClientProvider:? completion:?];
  }

  v36 = settingsCopy;
  NSClassFromString(&cfstr_Fbssceneclient_0.isa);
  settingsCopy = v36;
  if (!v36)
  {
    [FBSceneWorkspace _createSceneWithDefinition:? settings:? initialClientSettings:? transitionContext:? fromRemnant:? usingClientProvider:? completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSceneWorkspace _createSceneWithDefinition:? settings:? initialClientSettings:? transitionContext:? fromRemnant:? usingClientProvider:? completion:?];
  }

  identity3 = [v60 identity];
  workspaceIdentifier = [identity3 workspaceIdentifier];
  v39 = workspaceIdentifier;
  if (_legacyWorkspace)
  {
    v40 = clientSettingsCopy;
    if (workspaceIdentifier)
    {
      if (([workspaceIdentifier isEqualToString:@"FBSceneManager"] & 1) == 0)
      {
        os_unfair_lock_lock(&__WorkspacesLock);
        v41 = [__Workspaces objectForKey:v39];

        os_unfair_lock_unlock(&__WorkspacesLock);
        if (v41)
        {
          [FBSceneWorkspace _createSceneWithDefinition:v39 settings:sel__createSceneWithDefinition_settings_initialClientSettings_transitionContext_fromRemnant_usingClientProvider_completion_ initialClientSettings:? transitionContext:? fromRemnant:? usingClientProvider:? completion:?];
        }
      }
    }

    v42 = [identity3 mutableCopy];
    v43 = v42;
    v44 = @"FBSceneManager";
LABEL_43:
    [v42 setInternalWorkspaceIdentifier:v44];
    v46 = [v60 mutableCopy];
    [v46 setIdentity:v43];

    clientSettingsCopy = v40;
    contextCopy = v54;
    goto LABEL_44;
  }

  v45 = *(self + 88);
  if ((BSEqualStrings() & 1) == 0)
  {
    if (v39)
    {
      v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"provided workspaceID %@ does not match actual workspaceID %@", v39, *(self + 88)];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [FBSceneWorkspace _createSceneWithDefinition:? settings:? initialClientSettings:? transitionContext:? fromRemnant:? usingClientProvider:? completion:?];
      }

      [v53 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1A8A1DEF8);
    }

    v40 = clientSettingsCopy;
    v43 = [identity3 mutableCopy];
    [v43 setWorkspaceIdentifier:*(self + 88)];
    v42 = v43;
    v44 = 0;
    goto LABEL_43;
  }

  v46 = 0;
LABEL_44:

  if (v46)
  {
    v47 = [v46 copy];

    v60 = v47;
  }

  v48 = [[FBScene alloc] initWithDefiniton:v60 remnant:contextCopy settings:v35 initialClientSettings:settingsCopy clientProvider:v32 workspace:self];
  if (!v48)
  {
    [FBSceneWorkspace _createSceneWithDefinition:? settings:? initialClientSettings:? transitionContext:? fromRemnant:? usingClientProvider:? completion:?];
  }

  v49 = v48;
  v50 = [*(self + 48) objectForKey:v57];

  if (v50)
  {
    [FBSceneWorkspace _createSceneWithDefinition:self settings:v57 initialClientSettings:sel__createSceneWithDefinition_settings_initialClientSettings_transitionContext_fromRemnant_usingClientProvider_completion_ transitionContext:? fromRemnant:? usingClientProvider:? completion:?];
  }

  [*(self + 48) setObject:v49 forKey:v57];
  if (contextCopy | v32)
  {
    [v49 activateWithTransitionContext:v30 completion:providerCopy];
    if (v32)
    {
      if (([v49 isActive] & 1) == 0)
      {
        [v49 invalidate];
        v51 = [*(self + 48) objectForKey:v57];

        if (v51)
        {
          [FBSceneWorkspace _createSceneWithDefinition:? settings:? initialClientSettings:? transitionContext:? fromRemnant:? usingClientProvider:? completion:?];
        }
      }
    }
  }

  else
  {
    [self didAddScene:v49];
  }

  remnantCopy = v55;
LABEL_55:

  return v49;
}

- (id)createSceneFromRemnant:(id)remnant withSettings:(id)settings transitionContext:(id)context
{
  contextCopy = context;
  settingsCopy = settings;
  remnantCopy = remnant;
  definition = [remnantCopy definition];
  _clientSettings = [remnantCopy _clientSettings];
  v13 = [(FBSceneWorkspace *)self _createSceneWithDefinition:definition settings:settingsCopy initialClientSettings:_clientSettings transitionContext:contextCopy fromRemnant:remnantCopy usingClientProvider:0 completion:0];

  return v13;
}

- (void)invalidate
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_allScenesByID count] == 0", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBSceneWorkspace setIdentifier:]");
  }

  if (!self->_buildingDefinition)
  {
    [FBSceneWorkspace setIdentifier:a2];
  }

  v8 = identifierCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v8)
  {
    [FBSceneWorkspace setIdentifier:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSceneWorkspace setIdentifier:a2];
  }

  buildingDefinition = self->_buildingDefinition;
  v7 = [MEMORY[0x1E699FC10] identityForIdentifier:v8 workspaceIdentifier:self->_identifier];
  [(FBSMutableSceneDefinition *)buildingDefinition setIdentity:v7];
}

- (void)setIdentity:(id)identity
{
  identityCopy = identity;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBSceneWorkspace setIdentity:]");
  }

  if (!self->_buildingDefinition)
  {
    [FBSceneWorkspace setIdentity:a2];
  }

  v7 = identityCopy;
  NSClassFromString(&cfstr_Fbssceneidenti.isa);
  if (!v7)
  {
    [FBSceneWorkspace setIdentity:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSceneWorkspace setIdentity:a2];
  }

  _legacyWorkspace = [(FBSceneWorkspace *)&self->super.isa _legacyWorkspace];

  if (!_legacyWorkspace)
  {
    [FBSceneWorkspace setIdentity:a2];
  }

  [(FBSMutableSceneDefinition *)self->_buildingDefinition setIdentity:v7];
}

- (void)setSpecification:(id)specification
{
  specificationCopy = specification;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBSceneWorkspace setSpecification:]");
  }

  if (!self->_buildingDefinition)
  {
    [FBSceneWorkspace setSpecification:a2];
  }

  v6 = specificationCopy;
  NSClassFromString(&cfstr_Fbsscenespecif.isa);
  if (!v6)
  {
    [FBSceneWorkspace setSpecification:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSceneWorkspace setSpecification:a2];
  }

  [(FBSMutableSceneDefinition *)self->_buildingDefinition setSpecification:v6];
}

- (void)setClientIdentity:(id)identity
{
  identityCopy = identity;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBSceneWorkspace setClientIdentity:]");
  }

  if (!self->_buildingDefinition)
  {
    [FBSceneWorkspace setClientIdentity:a2];
  }

  if (!identityCopy)
  {
    [FBSceneWorkspace setClientIdentity:a2];
  }

  fbs_sceneClientIdentity = [identityCopy fbs_sceneClientIdentity];
  if (!fbs_sceneClientIdentity)
  {
    [FBSceneWorkspace setClientIdentity:a2];
  }

  v6 = fbs_sceneClientIdentity;
  [(FBSMutableSceneDefinition *)self->_buildingDefinition setClientIdentity:fbs_sceneClientIdentity];
}

- (void)configureParameters:(id)parameters
{
  parametersCopy = parameters;
  buildingDefinition = self->_buildingDefinition;
  if (!buildingDefinition)
  {
    [FBSceneWorkspace configureParameters:a2];
  }

  v12 = parametersCopy;
  specification = [(FBSMutableSceneDefinition *)buildingDefinition specification];
  if (!specification)
  {
    [FBSceneWorkspace configureParameters:a2];
  }

  v8 = specification;
  buildingParameters = self->_buildingParameters;
  if (!buildingParameters)
  {
    v10 = [MEMORY[0x1E699FB58] parametersForSpecification:specification];
    v11 = self->_buildingParameters;
    self->_buildingParameters = v10;

    buildingParameters = self->_buildingParameters;
  }

  v12[2](v12, buildingParameters);
}

void __43__FBSceneWorkspace_scene_didPrepareUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = a2;
  v8 = [v5 settings];
  v7 = [*(a1 + 48) transitionContext];
  [v6 sceneManager:v3 willUpdateScene:v4 withSettings:v8 transitionContext:v7];
}

void __41__FBSceneWorkspace_scene_didApplyUpdate___block_invoke(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a2;
  [v5 sceneManager:v2 willCommitUpdateForScene:v3 transactionID:{objc_msgSend(v4, "transactionID")}];
}

void __44__FBSceneWorkspace_scene_didCompleteUpdate___block_invoke(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a2;
  [v5 sceneManager:v2 didCommitUpdateForScene:v3 transactionID:{objc_msgSend(v4, "transactionID")}];
}

- (void)didReceiveHandshake:(id)handshake
{
  v17 = *MEMORY[0x1E69E9840];
  handshakeCopy = handshake;
  if (self->_suppressConnectionHandshakes || (v5 = self->_delegate) == 0)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    remnants = [handshakeCopy remnants];
    v7 = [remnants countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(remnants);
          }

          [*(*(&v12 + 1) + 8 * v10++) invalidate];
        }

        while (v8 != v10);
        v8 = [remnants countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  else
  {
    remnants = v5;
    [(FBSceneManagerObserver *)v5 workspace:self clientDidConnectWithHandshake:handshakeCopy];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)didReceiveSceneRequest:(id)request fromHandle:(id)handle
{
  requestCopy = request;
  handleCopy = handle;
  v9 = self->_delegate;
  options = [requestCopy options];
  v11 = [[_FBSceneClientProcess alloc] _initWithHandle:handleCopy];
  if ([options isClientFuture])
  {
    v36 = a2;
    v37 = v11;
    eventDispatcher = [(FBProcessManager *)self->_processManager eventDispatcher];
    domain = [(FBWorkspaceEventDispatcher *)eventDispatcher domain];
    preregisteredWorkspaces = [(FBWorkspaceDomain *)domain preregisteredWorkspaces];
    identifier = [(FBSceneWorkspace *)self identifier];
    v16 = [preregisteredWorkspaces objectForKey:identifier];

    if (([(FBWorkspaceRegistration *)v16 acceptsClientScenes]& 1) == 0 && ![(FBSceneManagerObserver *)v9 delegateHandlesClientScenes])
    {
      [FBSceneWorkspace didReceiveSceneRequest:requestCopy fromHandle:?];
      goto LABEL_19;
    }

    identifier2 = [options identifier];
    v18 = [(FBSceneWorkspace *)self sceneWithIdentifier:identifier2];
    if (!v18)
    {
      clientIdentity = [requestCopy clientIdentity];
      if (!clientIdentity)
      {
        [FBSceneWorkspace didReceiveSceneRequest:requestCopy fromHandle:v36];
      }

      v20 = clientIdentity;
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __54__FBSceneWorkspace_didReceiveSceneRequest_fromHandle___block_invoke;
      v43[3] = &unk_1E783CAF8;
      v44 = options;
      v21 = v20;
      v45 = v21;
      v46 = v37;
      v18 = [(FBSceneWorkspace *)self createScene:v43];
      if ([v18 isActive])
      {
        [FBSceneWorkspace didReceiveSceneRequest:v36 fromHandle:?];
      }
    }

    if (([v18 isActive] & 1) != 0 || (objc_msgSend(v18, "settings"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isClientFuture"), v22, !v23))
    {
      identifier = self->_identifier;
      transitionContext = FBSWorkspaceErrorCreate();
      [requestCopy invalidateWithError:{transitionContext, identifier, identifier2}];
    }

    else
    {
      [requestCopy observeScene:v18];
      if (![v18 isValid])
      {
LABEL_18:

LABEL_19:
        v11 = v37;
        goto LABEL_26;
      }

      if (![(FBSceneManagerObserver *)v9 delegateHandlesClientScenes])
      {
        [v18 activate:0];
        goto LABEL_18;
      }

      transitionContext = [options transitionContext];
      [(FBSceneManagerObserver *)v9 workspace:self didReceiveScene:v18 withContext:transitionContext fromProcess:v37];
    }

    goto LABEL_18;
  }

  actions = [requestCopy actions];

  if (actions)
  {
    if ([(FBSceneManagerObserver *)v9 delegateReceivesActions])
    {
      actions2 = [requestCopy actions];
      [(FBSceneManagerObserver *)v9 workspace:self didReceiveActions:actions2];

      [requestCopy respondWithScene:0];
      goto LABEL_26;
    }

    v35 = self->_identifier;
LABEL_25:
    v33 = FBSWorkspaceErrorCreate();
    [requestCopy invalidateWithError:{v33, v35}];

    goto LABEL_26;
  }

  if (!v9)
  {
    v35 = self->_identifier;
    goto LABEL_25;
  }

  v27 = MEMORY[0x1E698E630];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __54__FBSceneWorkspace_didReceiveSceneRequest_fromHandle___block_invoke_245;
  v40[3] = &unk_1E783CB20;
  v28 = requestCopy;
  v41 = v28;
  selfCopy = self;
  v29 = [v27 sentinelWithCompletion:v40];
  clientIdentity2 = [v28 clientIdentity];
  if (!clientIdentity2)
  {
    [FBSceneWorkspace didReceiveSceneRequest:v28 fromHandle:a2];
  }

  v31 = clientIdentity2;
  [options setClientIdentity:clientIdentity2];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __54__FBSceneWorkspace_didReceiveSceneRequest_fromHandle___block_invoke_254;
  v38[3] = &unk_1E783C178;
  v39 = v29;
  v32 = v29;
  [(FBSceneManagerObserver *)v9 workspace:self didReceiveSceneRequestWithOptions:options fromProcess:v11 completion:v38];

LABEL_26:
}

void __54__FBSceneWorkspace_didReceiveSceneRequest_fromHandle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) identifier];
  if (v4)
  {
    [v3 setIdentifier:v4];
  }

  else
  {
    v5 = [MEMORY[0x1E696AFB0] UUID];
    v6 = [v5 UUIDString];
    [v3 setIdentifier:v6];
  }

  [v3 setClientIdentity:*(a1 + 40)];
  v7 = [*(a1 + 32) specification];
  if (v7)
  {
    [v3 setSpecification:v7];
  }

  else
  {
    v8 = [MEMORY[0x1E699FC50] specification];
    [v3 setSpecification:v8];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__FBSceneWorkspace_didReceiveSceneRequest_fromHandle___block_invoke_2;
  v9[3] = &unk_1E783CAD0;
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  [v3 configureParameters:v9];
}

void __54__FBSceneWorkspace_didReceiveSceneRequest_fromHandle___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 initialSettings];
  [v4 setSettings:v5];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__FBSceneWorkspace_didReceiveSceneRequest_fromHandle___block_invoke_3;
  v7[3] = &unk_1E783CAA8;
  v8 = *(a1 + 40);
  [v4 updateSettingsWithBlock:v7];
  v6 = [*(a1 + 32) initialClientSettings];
  [v4 setClientSettings:v6];
}

void __54__FBSceneWorkspace_didReceiveSceneRequest_fromHandle___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setClientFuture:1];
  [v3 setClientProcess:*(a1 + 32)];
}

void __54__FBSceneWorkspace_didReceiveSceneRequest_fromHandle___block_invoke_245(uint64_t a1, void *a2)
{
  v3 = [a2 context];
  v4 = objc_opt_class();
  v14 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    [*(a1 + 32) respondWithScene:v6];
  }

  else
  {
    v7 = objc_opt_class();
    v8 = v14;
    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = *(a1 + 32);
    v13 = *(*(a1 + 40) + 88);
    v12 = FBSWorkspaceErrorCreate();
    [v11 invalidateWithError:{v12, v13}];
  }
}

uint64_t __54__FBSceneWorkspace_didReceiveSceneRequest_fromHandle___block_invoke_254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    a3 = a2;
  }

  return [v3 signalWithContext:a3];
}

+ (id)debugDescription
{
  v2 = [MEMORY[0x1E698E680] builderWithObject:0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__FBSceneWorkspace_debugDescription__block_invoke;
  v7[3] = &unk_1E783B580;
  v8 = v2;
  v3 = v2;
  v4 = [v3 modifyProem:v7];
  os_unfair_lock_lock(&__WorkspacesLock);
  [v3 appendDictionarySection:__Workspaces withName:0 skipIfEmpty:0];
  os_unfair_lock_unlock(&__WorkspacesLock);
  build = [v3 build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBSceneWorkspace *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(FBSceneWorkspace *)self succinctDescriptionBuilder];
  if ([(NSMutableDictionary *)self->_allScenesByID count])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__FBSceneWorkspace_descriptionBuilderWithMultilinePrefix___block_invoke;
    v7[3] = &unk_1E783B240;
    v8 = succinctDescriptionBuilder;
    selfCopy = self;
    [v8 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v7];
  }

  return succinctDescriptionBuilder;
}

void __58__FBSceneWorkspace_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(a1 + 40) + 48) allValues];
  [v1 appendArraySection:v2 withName:@"scenes" skipIfEmpty:1];
}

- (void)_iterateObservers:(uint64_t)observers
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (observers)
  {
    v4 = *(observers + 32);
    if (v4)
    {
      v3[2](v3, v4);
    }

    os_unfair_lock_lock((observers + 80));
    array = [*(observers + 40) array];
    v6 = [array copy];

    os_unfair_lock_unlock((observers + 80));
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if (*(*(&v13 + 1) + 8 * v11) != v4)
          {
            (v3[2])(v3);
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)didAddScene:(id)scene
{
  sceneCopy = scene;
  OUTLINED_FUNCTION_5_2();
  v7[1] = 3221225472;
  v7[2] = __32__FBSceneWorkspace_didAddScene___block_invoke;
  v7[3] = &unk_1E783CA58;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(FBSceneWorkspace *)self _iterateObservers:v7];
}

- (BOOL)scene:(id)scene willUpdateSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  _legacyWorkspace = [(FBSceneWorkspace *)&self->super.isa _legacyWorkspace];
  if (_legacyWorkspace && [(FBSceneManagerObserver *)self->_delegate delegateHandlesLegacyInterception])
  {
    delegate = self->_delegate;
    mutableSettings = [settingsCopy mutableSettings];
    [(FBSceneManagerObserver *)delegate sceneManager:_legacyWorkspace interceptUpdateForScene:sceneCopy withNewSettings:mutableSettings];

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)scene:(id)scene didPrepareUpdate:(id)update
{
  v54 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  updateCopy = update;
  _legacyWorkspace = [(FBSceneWorkspace *)&self->super.isa _legacyWorkspace];
  if (_legacyWorkspace)
  {
    transitionContext = [updateCopy transitionContext];
    updateContext = [transitionContext updateContext];

    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __43__FBSceneWorkspace_scene_didPrepareUpdate___block_invoke;
    v49[3] = &unk_1E783CA80;
    v50 = _legacyWorkspace;
    v51 = sceneCopy;
    v52 = updateContext;
    v27 = updateContext;
    [(FBSceneWorkspace *)self _iterateObservers:v49];
  }

  settingsDiff = [updateCopy settingsDiff];
  v11 = [settingsDiff containsProperty:sel_interruptionPolicy];

  if (v11)
  {
    settings = [updateCopy settings];
    interruptionPolicy = [settings interruptionPolicy];

    if (interruptionPolicy == 2)
    {
      definition = [sceneCopy definition];
      clientIdentity = [definition clientIdentity];
      targetsClientEndpoint = [clientIdentity targetsClientEndpoint];

      if (targetsClientEndpoint)
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"reconnect not supported for direct connections"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v29 = NSStringFromSelector(a2);
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          OUTLINED_FUNCTION_1_1();
          OUTLINED_FUNCTION_10_0();
          OUTLINED_FUNCTION_9_1();
          OUTLINED_FUNCTION_3_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v32, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v53);
        }

        [v28 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x1A8A54284);
      }

      eventDispatcher = [(FBProcessManager *)self->_processManager eventDispatcher];
      domain = [(FBWorkspaceEventDispatcher *)eventDispatcher domain];
      reconnectableWorkspaces = [(FBWorkspaceDomain *)domain reconnectableWorkspaces];
      v20 = [reconnectableWorkspaces containsObject:self->_identifier];

      if ((v20 & 1) == 0)
      {
        v33 = MEMORY[0x1E696AEC0];
        identifier = self->_identifier;
        loggingIdentifier = [sceneCopy loggingIdentifier];
        v36 = [v33 stringWithFormat:@"workspace (%@) of scene (%@) does not support reconnect", identifier, loggingIdentifier];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v37 = NSStringFromSelector(a2);
          v38 = objc_opt_class();
          v39 = NSStringFromClass(v38);
          OUTLINED_FUNCTION_1_1();
          OUTLINED_FUNCTION_10_0();
          OUTLINED_FUNCTION_9_1();
          OUTLINED_FUNCTION_3_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v40, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v53);
        }

        [v36 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x1A8A54358);
      }

      workspaceIdentifier = [sceneCopy workspaceIdentifier];

      if (workspaceIdentifier)
      {
        v22 = self->_identifier;
        workspaceIdentifier2 = [sceneCopy workspaceIdentifier];
        LOBYTE(v22) = [(NSString *)v22 isEqualToString:workspaceIdentifier2];

        if ((v22 & 1) == 0)
        {
          v41 = MEMORY[0x1E696AEC0];
          v42 = self->_identifier;
          loggingIdentifier2 = [sceneCopy loggingIdentifier];
          v44 = [v41 stringWithFormat:@"reconnect not supported for (legacy) scenes with conflicting workspace identifiers : workspace (%@) != scene (%@)", v42, loggingIdentifier2];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v45 = NSStringFromSelector(a2);
            v46 = objc_opt_class();
            v47 = NSStringFromClass(v46);
            OUTLINED_FUNCTION_1_1();
            OUTLINED_FUNCTION_10_0();
            OUTLINED_FUNCTION_9_1();
            OUTLINED_FUNCTION_3_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v48, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v53);
          }

          [v44 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x1A8A5442CLL);
        }
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)scene:(id)scene didApplyUpdate:(id)update
{
  sceneCopy = scene;
  updateCopy = update;
  _legacyWorkspace = [(FBSceneWorkspace *)&self->super.isa _legacyWorkspace];
  if (_legacyWorkspace)
  {
    transitionContext = [updateCopy transitionContext];
    updateContext = [transitionContext updateContext];

    OUTLINED_FUNCTION_2_3();
    v13 = 3221225472;
    v14 = __41__FBSceneWorkspace_scene_didApplyUpdate___block_invoke;
    v15 = &unk_1E783CA80;
    v16 = _legacyWorkspace;
    v17 = sceneCopy;
    v18 = updateContext;
    v11 = updateContext;
    [(FBSceneWorkspace *)self _iterateObservers:v12];
  }
}

- (void)scene:(id)scene didCompleteUpdate:(id)update
{
  sceneCopy = scene;
  updateCopy = update;
  _legacyWorkspace = [(FBSceneWorkspace *)&self->super.isa _legacyWorkspace];
  if (_legacyWorkspace)
  {
    OUTLINED_FUNCTION_2_3();
    v10 = 3221225472;
    v11 = __44__FBSceneWorkspace_scene_didCompleteUpdate___block_invoke;
    v12 = &unk_1E783CA80;
    v13 = _legacyWorkspace;
    v14 = sceneCopy;
    v15 = updateCopy;
    [(FBSceneWorkspace *)self _iterateObservers:v9];
  }
}

- (void)sceneDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __39__FBSceneWorkspace_sceneDidInvalidate___block_invoke;
  v12[3] = &unk_1E783CA58;
  v12[4] = self;
  v5 = invalidateCopy;
  v13 = v5;
  [(FBSceneWorkspace *)self _iterateObservers:v12];
  allScenesByID = self->_allScenesByID;
  identifier = [v5 identifier];
  [(NSMutableDictionary *)allScenesByID removeObjectForKey:identifier];

  _legacyWorkspace = [(FBSceneWorkspace *)&self->super.isa _legacyWorkspace];
  if (_legacyWorkspace)
  {
    OUTLINED_FUNCTION_5_2();
    v9[1] = 3221225472;
    v9[2] = __39__FBSceneWorkspace_sceneDidInvalidate___block_invoke_2;
    v9[3] = &unk_1E783CA58;
    v10 = _legacyWorkspace;
    v11 = v5;
    [(FBSceneWorkspace *)self _iterateObservers:v9];
  }
}

- (uint64_t)_setSuppressConnectionHandshakes:(uint64_t)result
{
  if (result)
  {
    *(result + 85) = a2;
  }

  return result;
}

- (void)_initWithProcessManager:(void *)a1 identifier:(const char *)a2 .cold.1(void *a1, const char *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"processManager", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(a2);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    OUTLINED_FUNCTION_1_0();
    v16 = @"FBSceneWorkspace.m";
    v17 = 1024;
    v18 = 74;
    v19 = v12;
    v20 = v8;
    OUTLINED_FUNCTION_3_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v13, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v15);
  }

  v14 = v8;
  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithProcessManager:(void *)a1 identifier:(const char *)a2 .cold.2(void *a1, const char *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"identifier", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(a2);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    OUTLINED_FUNCTION_1_0();
    v16 = @"FBSceneWorkspace.m";
    v17 = 1024;
    v18 = 75;
    v19 = v12;
    v20 = v8;
    OUTLINED_FUNCTION_3_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v13, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v15);
  }

  v14 = v8;
  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithProcessManager:(char *)a1 identifier:.cold.4(char *a1)
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
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithProcessManager:(uint64_t)a1 identifier:(char *)a2 .cold.5(uint64_t a1, char *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"workspace already exists with identifier %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v13, v14);
  }

  v11 = v3;
  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithProcessManager:(uint64_t)a1 identifier:(char *)a2 .cold.6(uint64_t a1, char *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"legacy scene manager contains scene with workspaceID %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v13, v14);
  }

  v11 = v3;
  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithProcessManager:(const char *)a1 identifier:.cold.7(const char *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v9 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v3, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_initWithProcessManager:(const char *)a1 identifier:.cold.8(const char *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v14 = NSStringFromClass(v3);
  v4 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, @"processManager", v14, v15);
  }

  v13 = v4;
  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is reserved"];
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

+ (void)workspaceWithIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is reserved"];
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

- (void)sceneWithIdentityToken:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"token", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)sceneIdentityTokenForIdentifier:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)sceneIdentityTokenForIdentifier:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)sceneIdentityTokenForIdentifier:(char *)a1 workspaceIdentifier:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)sceneIdentityTokenForIdentifier:(char *)a1 workspaceIdentifier:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)sceneIdentityTokenForIdentifier:(char *)a1 workspaceIdentifier:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)sceneIdentityTokenForIdentifier:(char *)a1 workspaceIdentifier:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)createScene:(const char *)a1 .cold.1(const char *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v12 = NSStringFromSelector(a1);
  v3 = [v2 stringWithFormat:@"%@ was called reentrantly"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13, v14);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_createSceneWithDefinition:(char *)a1 settings:initialClientSettings:transitionContext:fromRemnant:usingClientProvider:completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[definition isValid]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_createSceneWithDefinition:(char *)a1 settings:initialClientSettings:transitionContext:fromRemnant:usingClientProvider:completion:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_createSceneWithDefinition:(char *)a1 settings:initialClientSettings:transitionContext:fromRemnant:usingClientProvider:completion:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneSpecificationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_createSceneWithDefinition:(char *)a1 settings:initialClientSettings:transitionContext:fromRemnant:usingClientProvider:completion:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSceneRemnantClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_createSceneWithDefinition:(char *)a1 settings:initialClientSettings:transitionContext:fromRemnant:usingClientProvider:completion:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"BSEqualObjects([[[remnant definition] identity] internalWorkspaceIdentifier], _identifier)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_createSceneWithDefinition:(char *)a1 settings:initialClientSettings:transitionContext:fromRemnant:usingClientProvider:completion:.cold.6(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneTransitionContextClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_createSceneWithDefinition:(char *)a1 settings:initialClientSettings:transitionContext:fromRemnant:usingClientProvider:completion:.cold.7(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object conformsToProtocol:@protocol(FBSceneClientProvider)]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_createSceneWithDefinition:(char *)a1 settings:initialClientSettings:transitionContext:fromRemnant:usingClientProvider:completion:.cold.8(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"remnant != nil || transitionContext == nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_createSceneWithDefinition:(char *)a1 settings:initialClientSettings:transitionContext:fromRemnant:usingClientProvider:completion:.cold.9(char *a1)
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

- (void)_createSceneWithDefinition:(char *)a1 settings:initialClientSettings:transitionContext:fromRemnant:usingClientProvider:completion:.cold.10(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSDisplayConfigurationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_createSceneWithDefinition:(char *)a1 settings:initialClientSettings:transitionContext:fromRemnant:usingClientProvider:completion:.cold.11(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneSettingsClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_createSceneWithDefinition:(char *)a1 settings:initialClientSettings:transitionContext:fromRemnant:usingClientProvider:completion:.cold.12(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneClientSettingsClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_createSceneWithDefinition:(uint64_t)a1 settings:(char *)a2 initialClientSettings:transitionContext:fromRemnant:usingClientProvider:completion:.cold.13(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"modern workspace %@ already exists"];
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

- (void)_createSceneWithDefinition:(const char *)a1 settings:initialClientSettings:transitionContext:fromRemnant:usingClientProvider:completion:.cold.14(const char *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_createSceneWithDefinition:(char *)a3 settings:initialClientSettings:transitionContext:fromRemnant:usingClientProvider:completion:.cold.15(uint64_t a1, uint64_t a2, char *a3)
{
  v13 = *(a1 + 88);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"scene %@ already exists in workspace %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a3);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_12();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, a2, v13, v14);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_createSceneWithDefinition:(char *)a1 settings:initialClientSettings:transitionContext:fromRemnant:usingClientProvider:completion:.cold.16(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_allScenesByID objectForKey:identifier] == nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_createSceneWithDefinition:(char *)a1 settings:initialClientSettings:transitionContext:fromRemnant:usingClientProvider:completion:.cold.17(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"scene != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_createSceneWithDefinition:(char *)a1 settings:initialClientSettings:transitionContext:fromRemnant:usingClientProvider:completion:.cold.18(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_createSceneWithDefinition:(char *)a1 settings:initialClientSettings:transitionContext:fromRemnant:usingClientProvider:completion:.cold.19(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_createSceneWithDefinition:(char *)a1 settings:initialClientSettings:transitionContext:fromRemnant:usingClientProvider:completion:.cold.20(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_createSceneWithDefinition:(char *)a1 settings:initialClientSettings:transitionContext:fromRemnant:usingClientProvider:completion:.cold.21(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"legacy scenes can only be created on a legacy workspace"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_createSceneWithDefinition:(char *)a1 settings:initialClientSettings:transitionContext:fromRemnant:usingClientProvider:completion:.cold.22(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot create a scene from an invalidated remnant"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_createSceneWithDefinition:(char *)a1 settings:initialClientSettings:transitionContext:fromRemnant:usingClientProvider:completion:.cold.23(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_createSceneWithDefinition:(char *)a1 settings:initialClientSettings:transitionContext:fromRemnant:usingClientProvider:completion:.cold.24(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_createSceneWithDefinition:(char *)a1 settings:initialClientSettings:transitionContext:fromRemnant:usingClientProvider:completion:.cold.25(char *a1)
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

- (void)setIdentifier:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setIdentifier:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setIdentifier:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_buildingDefinition != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setIdentity:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneIdentityClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setIdentity:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[self _legacyWorkspace]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setIdentity:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setIdentity:(char *)a1 .cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_buildingDefinition != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setSpecification:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneSpecificationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setSpecification:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setSpecification:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_buildingDefinition != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setClientIdentity:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"realID != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setClientIdentity:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"clientID != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setClientIdentity:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_buildingDefinition != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)configureParameters:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"specification != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)configureParameters:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_buildingDefinition != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)didReceiveSceneRequest:(uint64_t)a1 fromHandle:(char *)a2 .cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"we should never get a scene request without a clientIdentity specified by the time it gets through the dispatcher : %@"];
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

- (void)didReceiveSceneRequest:(uint64_t)a1 fromHandle:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  v4 = [(FBSceneWorkspace *)a1 _legacyWorkspace];

  if (!v4)
  {
    v5 = *(a1 + 88);
  }

  v6 = FBSWorkspaceErrorCreate();
  [a2 invalidateWithError:v6];
}

- (void)didReceiveSceneRequest:(char *)a1 fromHandle:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"it's not valid to activate this kind of scene from workspace:didAddScene:"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)didReceiveSceneRequest:(uint64_t)a1 fromHandle:(char *)a2 .cold.4(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"we should never get a scene request without a clientIdentity specified by the time it gets through the dispatcher : %@"];
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

@end