@interface _UIKeyboardArbiterHost
+ (id)launchAdvisorWithOmniscientDelegate:(id)delegate sceneDelegate:(id)sceneDelegate;
- (NSString)description;
- (_UIKeyboardArbiter)owner;
- (id)_createSceneWithIdentifier:(id)identifier initialClientSettings:(id)settings;
- (void)attach:(id)attach;
- (void)createSceneWithCompletion:(id)completion;
- (void)dealloc;
- (void)detach:(id)detach;
- (void)updateSceneSettings;
@end

@implementation _UIKeyboardArbiterHost

- (void)updateSceneSettings
{
  clientSettings = [(FBSScene *)self->_scene clientSettings];
  v4 = [clientSettings mutableCopy];

  owner = [(_UIKeyboardArbiterHost *)self owner];
  [owner updateSceneClientSettings:v4];

  v6 = v4;
  BSDispatchMain();
}

- (_UIKeyboardArbiter)owner
{
  WeakRetained = objc_loadWeakRetained(&self->owner);

  return WeakRetained;
}

- (void)dealloc
{
  v3 = self->_scene;
  v4 = v3;
  if (v3)
  {
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __33___UIKeyboardArbiterHost_dealloc__block_invoke;
    v9 = &unk_2797F4630;
    v10 = v3;
    BSDispatchMain();
  }

  v5.receiver = self;
  v5.super_class = _UIKeyboardArbiterHost;
  [(_UIKeyboardArbiterHost *)&v5 dealloc];
}

+ (id)launchAdvisorWithOmniscientDelegate:(id)delegate sceneDelegate:(id)sceneDelegate
{
  delegateCopy = delegate;
  sceneDelegateCopy = sceneDelegate;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76___UIKeyboardArbiterHost_launchAdvisorWithOmniscientDelegate_sceneDelegate___block_invoke;
  v13[3] = &unk_2797F45E0;
  v14 = delegateCopy;
  v15 = sceneDelegateCopy;
  v7 = qword_28122B780;
  v8 = sceneDelegateCopy;
  v9 = delegateCopy;
  if (v7 != -1)
  {
    dispatch_once(&qword_28122B780, v13);
  }

  v10 = _MergedGlobals_3;
  v11 = _MergedGlobals_3;

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = _UIKeyboardArbiterHost;
  v4 = [(_UIKeyboardArbiterHost *)&v7 description];
  v5 = [v3 stringWithFormat:@"<%@ scene = %@>", v4, self->_scene];;

  return v5;
}

- (void)createSceneWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_alloc_init(MEMORY[0x277D75750]);
  owner = [(_UIKeyboardArbiterHost *)self owner];
  [owner updateSceneClientSettings:v4];

  v6 = [(_UIKeyboardArbiterHost *)self _createSceneWithIdentifier:@"com.apple.UIKit.remote-keyboard" initialClientSettings:v4];
  scene = self->_scene;
  self->_scene = v6;

  v8 = self->_scene;
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v8 != 0);
  }

  if (v8)
  {
    owner2 = [(_UIKeyboardArbiterHost *)self owner];
    [owner2 activateClients];
  }
}

- (void)attach:(id)attach
{
  attachCopy = attach;
  v3 = attachCopy;
  BSDispatchMain();
}

- (void)detach:(id)detach
{
  detachCopy = detach;
  v3 = detachCopy;
  BSDispatchMain();
}

- (id)_createSceneWithIdentifier:(id)identifier initialClientSettings:(id)settings
{
  identifierCopy = identifier;
  settingsCopy = settings;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __75___UIKeyboardArbiterHost__createSceneWithIdentifier_initialClientSettings___block_invoke;
  v16[3] = &unk_2797F4DF8;
  v9 = settingsCopy;
  v17 = v9;
  v10 = identifierCopy;
  v20 = &v22;
  v21 = a2;
  v18 = v10;
  selfCopy = self;
  v11 = MEMORY[0x259C414B0](v16);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v11[2](v11);
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __75___UIKeyboardArbiterHost__createSceneWithIdentifier_initialClientSettings___block_invoke_3;
    v14[3] = &unk_2797F4CD0;
    v15 = v11;
    dispatch_sync(MEMORY[0x277D85CD0], v14);
  }

  v12 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v12;
}

@end