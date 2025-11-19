@interface CAMSmartStyleSettingsPickerViewController
- (BOOL)isWaitingOnLoading;
- (CAMSmartStyleSettingsPickerViewController)initWithPickerConfiguration:(id)a3 selectedAssetIdentifiers:(id)a4;
- (CAMSmartStyleSettingsPickerViewControllerDelegate)delegate;
- (UIButton)_continueButton;
- (UIButton)_deselectAllButton;
- (void)_handleContinueButton:(id)a3;
- (void)_handleDeselectAllButton:(id)a3;
- (void)_pickerDidPerformCancelAction:(id)a3;
- (void)_updateButtonsEnablementState;
- (void)loadView;
- (void)picker:(id)a3 didFinishPicking:(id)a4;
- (void)setWaitingOnLoading:(BOOL)a3;
@end

@implementation CAMSmartStyleSettingsPickerViewController

- (CAMSmartStyleSettingsPickerViewController)initWithPickerConfiguration:(id)a3 selectedAssetIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = CAMSmartStyleSettingsPickerViewController;
  v8 = [(CAMSmartStyleSettingsPickerViewController *)&v19 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = [v7 copy];
    initialSelectedAssetIdentifiers = v8->_initialSelectedAssetIdentifiers;
    v8->_initialSelectedAssetIdentifiers = v9;

    v11 = [v7 copy];
    selectedAssetIdentifiers = v8->_selectedAssetIdentifiers;
    v8->_selectedAssetIdentifiers = v11;

    v13 = [v6 copy];
    [v13 setPreselectedAssetIdentifiers:v7];
    [v13 setEdgesWithoutContentMargins:10];
    v14 = [MEMORY[0x1E6979178] styleabilitySuggestionGroup];
    [v13 set_suggestionGroup:v14];

    [v13 setDisabledCapabilities:3];
    [v13 setSelection:3];
    [v13 _setDisabledPrivateCapabilities:3972];
    [v13 setEdgesWithoutContentMargins:4];
    v15 = [objc_alloc(MEMORY[0x1E69790F8]) initWithConfiguration:v13];
    phPicker = v8->__phPicker;
    v8->__phPicker = v15;

    [(PHPickerViewController *)v8->__phPicker setDelegate:v8];
    v17 = v8;
  }

  return v8;
}

- (void)loadView
{
  v8 = [(CAMSmartStyleSettingsPickerViewController *)self _phPicker];
  [(CAMSmartStyleSettingsPickerViewController *)self addChildViewController:v8];
  v3 = [CAMSmartStyleSettingsPickerView alloc];
  v4 = [v8 view];
  v5 = [(CAMSmartStyleSettingsPickerView *)v3 initWithPHPickerView:v4];

  [(CAMSmartStyleSettingsPickerViewController *)self setView:v5];
  v6 = [(CAMSmartStyleSettingsPickerView *)v5 continueButton];
  [v6 addTarget:self action:sel__handleContinueButton_ forControlEvents:64];
  v7 = [(CAMSmartStyleSettingsPickerView *)v5 deselectAllButton];
  [v7 addTarget:self action:sel__handleDeselectAllButton_ forControlEvents:64];
  [(CAMSmartStyleSettingsPickerViewController *)self _updateButtonsEnablementState];
  [v8 didMoveToParentViewController:self];
}

- (UIButton)_continueButton
{
  v2 = [(CAMSmartStyleSettingsPickerViewController *)self _pickerView];
  v3 = [v2 continueButton];

  return v3;
}

- (UIButton)_deselectAllButton
{
  v2 = [(CAMSmartStyleSettingsPickerViewController *)self _pickerView];
  v3 = [v2 deselectAllButton];

  return v3;
}

- (BOOL)isWaitingOnLoading
{
  v2 = [(CAMSmartStyleSettingsPickerViewController *)self _pickerView];
  v3 = [v2 isWaitingOnLoading];

  return v3;
}

- (void)setWaitingOnLoading:(BOOL)a3
{
  v3 = a3;
  v4 = [(CAMSmartStyleSettingsPickerViewController *)self _pickerView];
  [v4 setWaitingOnLoading:v3];
}

- (void)_handleContinueButton:(id)a3
{
  v4 = [(CAMSmartStyleSettingsPickerViewController *)self delegate];
  [v4 smartStyleSettingsPickerDidConfirmSelection:self];
}

- (void)_handleDeselectAllButton:(id)a3
{
  v4 = [(CAMSmartStyleSettingsPickerViewController *)self selectedAssetIdentifiers];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(CAMSmartStyleSettingsPickerViewController *)self _phPicker];
    v7 = [(CAMSmartStyleSettingsPickerViewController *)self selectedAssetIdentifiers];
    [v6 deselectAssetsWithIdentifiers:v7];

    [(CAMSmartStyleSettingsPickerViewController *)self _updateButtonsEnablementState];
    v8 = [(CAMSmartStyleSettingsPickerViewController *)self delegate];
    [v8 smartStyleSettingsPickerDidUpdateSelectedAssetIdentifiers:self];
  }
}

- (void)picker:(id)a3 didFinishPicking:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v18 + 1) + 8 * v11) assetIdentifier];
        [v6 addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  [(CAMSmartStyleSettingsPickerViewController *)self setSelectedAssetIdentifiers:v6];
  [(CAMSmartStyleSettingsPickerViewController *)self _updateButtonsEnablementState];
  v13 = [(CAMSmartStyleSettingsPickerViewController *)self delegate];
  [v13 smartStyleSettingsPickerDidUpdateSelectedAssetIdentifiers:self];

  v14 = +[CAMCaptureCapabilities capabilities];
  v15 = [v14 hostProcess];

  v16 = CAMSmartStylesOnboardingCameraAppDidSelectAssets;
  if (v15)
  {
    v16 = CAMSmartStylesOnboardingSettingsDidSelectAssets;
  }

  v17 = *v16;
  [CAMPreferencesUtilities setBool:1 inCameraDomainForKey:v17];
}

- (void)_pickerDidPerformCancelAction:(id)a3
{
  v4 = [(CAMSmartStyleSettingsPickerViewController *)self delegate];
  [v4 smartStyleSettingsPickerDidCancelSelection:self];
}

- (void)_updateButtonsEnablementState
{
  v5 = [(CAMSmartStyleSettingsPickerViewController *)self selectedAssetIdentifiers];
  v3 = [v5 count] != 0;
  v4 = [(CAMSmartStyleSettingsPickerViewController *)self _deselectAllButton];
  [v4 setEnabled:v3];
}

- (CAMSmartStyleSettingsPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end