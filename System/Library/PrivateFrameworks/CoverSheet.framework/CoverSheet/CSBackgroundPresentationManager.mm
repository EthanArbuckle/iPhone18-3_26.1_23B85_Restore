@interface CSBackgroundPresentationManager
- (CSBackgroundPresentationManager)init;
- (id)createBackgroundViewControllerForDefinition:(id)definition frame:(CGRect)frame;
- (void)dealloc;
@end

@implementation CSBackgroundPresentationManager

- (CSBackgroundPresentationManager)init
{
  v12.receiver = self;
  v12.super_class = CSBackgroundPresentationManager;
  v2 = [(CSBackgroundPresentationManager *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D0AAE8]);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 initWithIdentifier:v5];
    sceneWorkspace = v2->_sceneWorkspace;
    v2->_sceneWorkspace = v6;

    v8 = objc_alloc_init(MEMORY[0x277CF0A30]);
    sceneDelegate = v2->_sceneDelegate;
    v2->_sceneDelegate = v8;

    mEMORY[0x277CF0A40] = [MEMORY[0x277CF0A40] sharedService];
    [mEMORY[0x277CF0A40] registerSceneWorkspace:v2->_sceneWorkspace];
  }

  return v2;
}

- (void)dealloc
{
  mEMORY[0x277CF0A40] = [MEMORY[0x277CF0A40] sharedService];
  [mEMORY[0x277CF0A40] deregisterSceneWorkspace:self->_sceneWorkspace];

  [(FBSceneWorkspace *)self->_sceneWorkspace invalidate];
  v4.receiver = self;
  v4.super_class = CSBackgroundPresentationManager;
  [(CSBackgroundPresentationManager *)&v4 dealloc];
}

- (id)createBackgroundViewControllerForDefinition:(id)definition frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  definitionCopy = definition;
  clientBundleIdentifier = [definitionCopy clientBundleIdentifier];
  specification = [MEMORY[0x277D67C68] specification];
  v12 = [MEMORY[0x277D46F60] identityForAngelJobLabel:clientBundleIdentifier];
  v13 = [MEMORY[0x277D0ADA8] identityForProcessIdentity:v12];
  sceneWorkspace = [(CSBackgroundPresentationManager *)self sceneWorkspace];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __85__CSBackgroundPresentationManager_createBackgroundViewControllerForDefinition_frame___block_invoke;
  v22[3] = &unk_27838D670;
  v23 = definitionCopy;
  v24 = specification;
  v25 = v13;
  v15 = v13;
  v16 = specification;
  v17 = definitionCopy;
  v18 = [sceneWorkspace createScene:v22];
  currentScene = self->_currentScene;
  self->_currentScene = v18;

  [(FBScene *)self->_currentScene setDelegate:self->_sceneDelegate];
  height = [[CSBackgroundContentViewController alloc] initWithScene:self->_currentScene frame:x, y, width, height];

  return height;
}

void __85__CSBackgroundPresentationManager_createBackgroundViewControllerForDefinition_frame___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v5 = a2;
  v4 = [v3 sceneIdentifier];
  [v5 setIdentifier:v4];

  [v5 setSpecification:a1[5]];
  [v5 setClientIdentity:a1[6]];
}

@end