@interface CAMSemanticStyleSettingsController
- (CAMSemanticStyleSettingsController)init;
- (CAMSemanticStyleSettingsControllerDelegate)controllerDelegate;
@end

@implementation CAMSemanticStyleSettingsController

- (CAMSemanticStyleSettingsController)init
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = CAMSemanticStyleSettingsController;
  v2 = [(CAMSemanticStyleSettingsController *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(CAMSemanticStyleSettingsRootController);
    rootController = v2->__rootController;
    v2->__rootController = v3;

    objc_initWeak(&location, v2);
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __42__CAMSemanticStyleSettingsController_init__block_invoke;
    v10 = &unk_1E76F8580;
    objc_copyWeak(&v11, &location);
    [(CAMSemanticStyleSettingsRootController *)v2->__rootController setCompletionBlock:&v7];
    v14[0] = v2->__rootController;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:{1, v7, v8, v9, v10}];
    [(CAMSemanticStyleSettingsController *)v2 setViewControllers:v5];

    [(CAMSemanticStyleSettingsController *)v2 setNavigationBarHidden:0];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __42__CAMSemanticStyleSettingsController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained controllerDelegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 semanticStyleSettingsControllerDidDismiss:v3];
}

- (CAMSemanticStyleSettingsControllerDelegate)controllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_controllerDelegate);

  return WeakRetained;
}

@end