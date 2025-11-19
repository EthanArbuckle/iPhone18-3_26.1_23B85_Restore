@interface _UIKeyboardArbiterHost
+ (id)launchAdvisorWithOmniscientDelegate:(id)a3 sceneDelegate:(id)a4;
- (NSString)description;
- (_UIKeyboardArbiter)owner;
- (id)_createSceneWithIdentifier:(id)a3 initialClientSettings:(id)a4;
- (void)attach:(id)a3;
- (void)createSceneWithCompletion:(id)a3;
- (void)dealloc;
- (void)detach:(id)a3;
- (void)updateSceneSettings;
@end

@implementation _UIKeyboardArbiterHost

- (void)updateSceneSettings
{
  v3 = [(FBSScene *)self->_scene clientSettings];
  v4 = [v3 mutableCopy];

  v5 = [(_UIKeyboardArbiterHost *)self owner];
  [v5 updateSceneClientSettings:v4];

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

+ (id)launchAdvisorWithOmniscientDelegate:(id)a3 sceneDelegate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76___UIKeyboardArbiterHost_launchAdvisorWithOmniscientDelegate_sceneDelegate___block_invoke;
  v13[3] = &unk_2797F45E0;
  v14 = v5;
  v15 = v6;
  v7 = qword_28122B780;
  v8 = v6;
  v9 = v5;
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

- (void)createSceneWithCompletion:(id)a3
{
  v10 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D75750]);
  v5 = [(_UIKeyboardArbiterHost *)self owner];
  [v5 updateSceneClientSettings:v4];

  v6 = [(_UIKeyboardArbiterHost *)self _createSceneWithIdentifier:@"com.apple.UIKit.remote-keyboard" initialClientSettings:v4];
  scene = self->_scene;
  self->_scene = v6;

  v8 = self->_scene;
  if (v10)
  {
    v10[2](v10, v8 != 0);
  }

  if (v8)
  {
    v9 = [(_UIKeyboardArbiterHost *)self owner];
    [v9 activateClients];
  }
}

- (void)attach:(id)a3
{
  v4 = a3;
  v3 = v4;
  BSDispatchMain();
}

- (void)detach:(id)a3
{
  v4 = a3;
  v3 = v4;
  BSDispatchMain();
}

- (id)_createSceneWithIdentifier:(id)a3 initialClientSettings:(id)a4
{
  v7 = a3;
  v8 = a4;
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
  v9 = v8;
  v17 = v9;
  v10 = v7;
  v20 = &v22;
  v21 = a2;
  v18 = v10;
  v19 = self;
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