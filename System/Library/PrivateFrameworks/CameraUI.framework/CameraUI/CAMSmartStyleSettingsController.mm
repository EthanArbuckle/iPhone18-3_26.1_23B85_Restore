@interface CAMSmartStyleSettingsController
- (CAMSmartStyleSettingsController)init;
- (CAMSmartStyleSettingsControllerDelegate)controllerDelegate;
- (void)speedUpFadeInAnimations;
@end

@implementation CAMSmartStyleSettingsController

- (CAMSmartStyleSettingsController)init
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = CAMSmartStyleSettingsController;
  v2 = [(CAMSmartStyleSettingsController *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(CAMSmartStyleSettingsRootController);
    rootController = v2->__rootController;
    v2->__rootController = v3;

    objc_initWeak(&location, v2);
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __39__CAMSmartStyleSettingsController_init__block_invoke;
    v10 = &unk_1E76F8580;
    objc_copyWeak(&v11, &location);
    [(CAMSmartStyleSettingsRootController *)v2->__rootController setCompletionBlock:&v7];
    v14[0] = v2->__rootController;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:{1, v7, v8, v9, v10}];
    [(CAMSmartStyleSettingsController *)v2 setViewControllers:v5];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __39__CAMSmartStyleSettingsController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained controllerDelegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 smartStyleSettingsControllerDidDismiss:v3];
}

- (void)speedUpFadeInAnimations
{
  v2 = [(CAMSmartStyleSettingsController *)self _rootController];
  [v2 speedUpFadeInAnimations];
}

- (CAMSmartStyleSettingsControllerDelegate)controllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_controllerDelegate);

  return WeakRetained;
}

@end