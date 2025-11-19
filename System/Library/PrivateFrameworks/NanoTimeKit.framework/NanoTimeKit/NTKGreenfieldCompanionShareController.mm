@interface NTKGreenfieldCompanionShareController
+ (id)sharedController;
- (void)_handleError:(id)a3;
- (void)_prepareForShareSheet;
- (void)_presentInternalWarningIfNeededWithContinueBlock:(id)a3;
- (void)_presentShareSheetWithDraftRecipe:(id)a3 previewImage:(id)a4;
- (void)_showPhotosPickerView;
- (void)_startFaceSharing;
- (void)companionSharePhotosPickerViewController:(id)a3 didFinishWithFace:(id)a4;
- (void)shareWatchFace:(id)a3 fromViewController:(id)a4 completion:(id)a5;
@end

@implementation NTKGreenfieldCompanionShareController

+ (id)sharedController
{
  if (sharedController_onceToken != -1)
  {
    +[NTKGreenfieldCompanionShareController sharedController];
  }

  v3 = sharedController_controller;

  return v3;
}

void __57__NTKGreenfieldCompanionShareController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(NTKGreenfieldCompanionShareController);
  v1 = sharedController_controller;
  sharedController_controller = v0;
}

- (void)shareWatchFace:(id)a3 fromViewController:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_storeWeak(&self->_face, v8);
  updatedFace = self->_updatedFace;
  self->_updatedFace = 0;

  objc_storeWeak(&self->_originatedViewController, v9);
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__NTKGreenfieldCompanionShareController_shareWatchFace_fromViewController_completion___block_invoke;
  aBlock[3] = &unk_278783DB8;
  objc_copyWeak(&v16, &location);
  v12 = v10;
  v15 = v12;
  v13 = _Block_copy(aBlock);
  if ([NTKGreenfieldUtilities shouldPresentUnreleasedFeaturesInternalWarningForFace:v8])
  {
    [(NTKGreenfieldCompanionShareController *)self _presentInternalWarningIfNeededWithContinueBlock:v13];
  }

  else
  {
    v13[2](v13, 1);
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __86__NTKGreenfieldCompanionShareController_shareWatchFace_fromViewController_completion___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  v7 = WeakRetained;
  if (a2)
  {
    [WeakRetained _startFaceSharing];
    v5 = v7;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
    v5 = v7;
  }
}

- (void)_presentInternalWarningIfNeededWithContinueBlock:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D75110] alertControllerWithTitle:@"Warning" message:@"This face is not released or contains complications that are not released. Please make sure it will not be shared with undisclosed individuals." preferredStyle:1];
  v6 = MEMORY[0x277D750F8];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __90__NTKGreenfieldCompanionShareController__presentInternalWarningIfNeededWithContinueBlock___block_invoke;
  v18[3] = &unk_278783DE0;
  v7 = v4;
  v19 = v7;
  v8 = [v6 actionWithTitle:@"I Agree" style:2 handler:v18];
  v9 = MEMORY[0x277D750F8];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __90__NTKGreenfieldCompanionShareController__presentInternalWarningIfNeededWithContinueBlock___block_invoke_2;
  v16 = &unk_278783DE0;
  v17 = v7;
  v10 = v7;
  v11 = [v9 actionWithTitle:@"Cancel" style:1 handler:&v13];
  [v5 addAction:{v8, v13, v14, v15, v16}];
  [v5 addAction:v11];
  WeakRetained = objc_loadWeakRetained(&self->_originatedViewController);
  [WeakRetained presentViewController:v5 animated:1 completion:0];
}

- (void)_startFaceSharing
{
  WeakRetained = objc_loadWeakRetained(&self->_face);
  v4 = [WeakRetained faceStyle];

  if (v4 == 22)
  {

    [(NTKGreenfieldCompanionShareController *)self _showPhotosPickerView];
  }

  else
  {

    [(NTKGreenfieldCompanionShareController *)self _prepareForShareSheet];
  }
}

- (void)_showPhotosPickerView
{
  WeakRetained = objc_loadWeakRetained(&self->_face);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = objc_loadWeakRetained(&self->_face);
    v5 = [[NTKGreenfieldCompanionSharePhotosPickerViewController alloc] initWithPhotosFace:v8];
    [(NTKGreenfieldCompanionSharePhotosPickerViewController *)v5 setDelegate:self];
    v6 = [[NTKCNavigationController alloc] initWithRootViewController:v5];
    [(NTKCNavigationController *)v6 setModalInPresentation:1];
    v7 = objc_loadWeakRetained(&self->_originatedViewController);
    [v7 presentViewController:v6 animated:1 completion:0];
  }
}

- (void)_prepareForShareSheet
{
  updatedFace = self->_updatedFace;
  if (updatedFace)
  {
    WeakRetained = updatedFace;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_face);
  }

  v5 = WeakRetained;
  v6 = [[NTKGreenfieldDraftRecipe alloc] initWithFace:WeakRetained];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__NTKGreenfieldCompanionShareController__prepareForShareSheet__block_invoke;
  v8[3] = &unk_278783E08;
  objc_copyWeak(&v10, &location);
  v7 = v6;
  v9 = v7;
  [NTKGreenfieldUtilities generateFacePreviewImageFromDraftRecipe:v7 completionBlock:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __62__NTKGreenfieldCompanionShareController__prepareForShareSheet__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      [WeakRetained _presentShareSheetWithDraftRecipe:*(a1 + 32) previewImage:v6];
    }

    else
    {
      v5 = [MEMORY[0x277CCA9B8] greenfield_encodeWatchFaceErrorWithCode:2 message:@"Preview Image is nil"];
      [v4 _handleError:v5];
    }
  }
}

- (void)_presentShareSheetWithDraftRecipe:(id)a3 previewImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[NTKGreenfieldCompanionActivityViewController alloc] initWithDraftRecipe:v6 previewImage:v7];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__NTKGreenfieldCompanionShareController__presentShareSheetWithDraftRecipe_previewImage___block_invoke;
  aBlock[3] = &unk_278783E30;
  objc_copyWeak(&v14, &location);
  v9 = v6;
  v13 = v9;
  v10 = _Block_copy(aBlock);
  [(NTKGreenfieldCompanionActivityViewController *)v8 setCompletionWithItemsHandler:v10];
  WeakRetained = objc_loadWeakRetained(&self->_originatedViewController);
  [WeakRetained presentViewController:v8 animated:1 completion:0];

  objc_storeWeak(&self->_activityViewController, v8);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __88__NTKGreenfieldCompanionShareController__presentShareSheetWithDraftRecipe_previewImage___block_invoke(uint64_t a1, void *a2, int a3, void *a4, void *a5)
{
  v12 = a2;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _handleError:v10];
  }

  else if (a3)
  {
    NTKSubmitAnalyticsForSharedFace(v12, *(a1 + 32));
  }
}

- (void)_handleError:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__NTKGreenfieldCompanionShareController__handleError___block_invoke;
  aBlock[3] = &unk_27877E438;
  v12 = v4;
  v13 = self;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  WeakRetained = objc_loadWeakRetained(&self->_originatedViewController);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__NTKGreenfieldCompanionShareController__handleError___block_invoke_2;
  v9[3] = &unk_27877E960;
  v10 = v6;
  v8 = v6;
  [WeakRetained dismissViewControllerAnimated:1 completion:v9];
}

void __54__NTKGreenfieldCompanionShareController__handleError___block_invoke(uint64_t a1)
{
  v10 = NTKClockFaceLocalizedString(@"GREENFIELD_GENERATE_RECIPE_ERROR_ALERT_TITLE", @"Unable to Share at This Time");
  v2 = NTKClockFaceLocalizedString(@"GREENFIELD_GENERATE_RECIPE_ERROR_ALERT_DESCRIPTION", @"Try again later.");
  v3 = NTKClockFaceLocalizedString(@"GREENFIELD_GENERATE_RECIPE_ERROR_ALERT_OK_BUTON_TITLE", @"OK");
  if (NTKInternalBuild(v3, v4))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n\n[Internal Only]\nPlease file a radar and include a sysdiagnose. Error: reason: %@", *(a1 + 32)];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v2, v5];

    v2 = v6;
  }

  v7 = [MEMORY[0x277D75110] alertControllerWithTitle:v10 message:v2 preferredStyle:1];
  v8 = [MEMORY[0x277D750F8] actionWithTitle:v3 style:1 handler:0];
  [v7 addAction:v8];

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));
  [WeakRetained presentViewController:v7 animated:1 completion:0];
}

- (void)companionSharePhotosPickerViewController:(id)a3 didFinishWithFace:(id)a4
{
  v7 = a4;
  if (v7)
  {
    objc_storeStrong(&self->_updatedFace, a4);
    [(NTKGreenfieldCompanionShareController *)self _prepareForShareSheet];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] greenfield_encodeWatchFaceErrorWithCode:3 message:@"Failed to generate the new photos face."];
    [(NTKGreenfieldCompanionShareController *)self _handleError:v6];
  }
}

@end