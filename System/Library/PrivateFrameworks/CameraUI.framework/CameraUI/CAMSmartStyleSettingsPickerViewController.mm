@interface CAMSmartStyleSettingsPickerViewController
- (BOOL)isWaitingOnLoading;
- (CAMSmartStyleSettingsPickerViewController)initWithPickerConfiguration:(id)configuration selectedAssetIdentifiers:(id)identifiers;
- (CAMSmartStyleSettingsPickerViewControllerDelegate)delegate;
- (UIButton)_continueButton;
- (UIButton)_deselectAllButton;
- (void)_handleContinueButton:(id)button;
- (void)_handleDeselectAllButton:(id)button;
- (void)_pickerDidPerformCancelAction:(id)action;
- (void)_updateButtonsEnablementState;
- (void)loadView;
- (void)picker:(id)picker didFinishPicking:(id)picking;
- (void)setWaitingOnLoading:(BOOL)loading;
@end

@implementation CAMSmartStyleSettingsPickerViewController

- (CAMSmartStyleSettingsPickerViewController)initWithPickerConfiguration:(id)configuration selectedAssetIdentifiers:(id)identifiers
{
  configurationCopy = configuration;
  identifiersCopy = identifiers;
  v19.receiver = self;
  v19.super_class = CAMSmartStyleSettingsPickerViewController;
  v8 = [(CAMSmartStyleSettingsPickerViewController *)&v19 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = [identifiersCopy copy];
    initialSelectedAssetIdentifiers = v8->_initialSelectedAssetIdentifiers;
    v8->_initialSelectedAssetIdentifiers = v9;

    v11 = [identifiersCopy copy];
    selectedAssetIdentifiers = v8->_selectedAssetIdentifiers;
    v8->_selectedAssetIdentifiers = v11;

    v13 = [configurationCopy copy];
    [v13 setPreselectedAssetIdentifiers:identifiersCopy];
    [v13 setEdgesWithoutContentMargins:10];
    styleabilitySuggestionGroup = [MEMORY[0x1E6979178] styleabilitySuggestionGroup];
    [v13 set_suggestionGroup:styleabilitySuggestionGroup];

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
  _phPicker = [(CAMSmartStyleSettingsPickerViewController *)self _phPicker];
  [(CAMSmartStyleSettingsPickerViewController *)self addChildViewController:_phPicker];
  v3 = [CAMSmartStyleSettingsPickerView alloc];
  view = [_phPicker view];
  v5 = [(CAMSmartStyleSettingsPickerView *)v3 initWithPHPickerView:view];

  [(CAMSmartStyleSettingsPickerViewController *)self setView:v5];
  continueButton = [(CAMSmartStyleSettingsPickerView *)v5 continueButton];
  [continueButton addTarget:self action:sel__handleContinueButton_ forControlEvents:64];
  deselectAllButton = [(CAMSmartStyleSettingsPickerView *)v5 deselectAllButton];
  [deselectAllButton addTarget:self action:sel__handleDeselectAllButton_ forControlEvents:64];
  [(CAMSmartStyleSettingsPickerViewController *)self _updateButtonsEnablementState];
  [_phPicker didMoveToParentViewController:self];
}

- (UIButton)_continueButton
{
  _pickerView = [(CAMSmartStyleSettingsPickerViewController *)self _pickerView];
  continueButton = [_pickerView continueButton];

  return continueButton;
}

- (UIButton)_deselectAllButton
{
  _pickerView = [(CAMSmartStyleSettingsPickerViewController *)self _pickerView];
  deselectAllButton = [_pickerView deselectAllButton];

  return deselectAllButton;
}

- (BOOL)isWaitingOnLoading
{
  _pickerView = [(CAMSmartStyleSettingsPickerViewController *)self _pickerView];
  isWaitingOnLoading = [_pickerView isWaitingOnLoading];

  return isWaitingOnLoading;
}

- (void)setWaitingOnLoading:(BOOL)loading
{
  loadingCopy = loading;
  _pickerView = [(CAMSmartStyleSettingsPickerViewController *)self _pickerView];
  [_pickerView setWaitingOnLoading:loadingCopy];
}

- (void)_handleContinueButton:(id)button
{
  delegate = [(CAMSmartStyleSettingsPickerViewController *)self delegate];
  [delegate smartStyleSettingsPickerDidConfirmSelection:self];
}

- (void)_handleDeselectAllButton:(id)button
{
  selectedAssetIdentifiers = [(CAMSmartStyleSettingsPickerViewController *)self selectedAssetIdentifiers];
  v5 = [selectedAssetIdentifiers count];

  if (v5)
  {
    _phPicker = [(CAMSmartStyleSettingsPickerViewController *)self _phPicker];
    selectedAssetIdentifiers2 = [(CAMSmartStyleSettingsPickerViewController *)self selectedAssetIdentifiers];
    [_phPicker deselectAssetsWithIdentifiers:selectedAssetIdentifiers2];

    [(CAMSmartStyleSettingsPickerViewController *)self _updateButtonsEnablementState];
    delegate = [(CAMSmartStyleSettingsPickerViewController *)self delegate];
    [delegate smartStyleSettingsPickerDidUpdateSelectedAssetIdentifiers:self];
  }
}

- (void)picker:(id)picker didFinishPicking:(id)picking
{
  v23 = *MEMORY[0x1E69E9840];
  pickingCopy = picking;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(pickingCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = pickingCopy;
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

        assetIdentifier = [*(*(&v18 + 1) + 8 * v11) assetIdentifier];
        [v6 addObject:assetIdentifier];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  [(CAMSmartStyleSettingsPickerViewController *)self setSelectedAssetIdentifiers:v6];
  [(CAMSmartStyleSettingsPickerViewController *)self _updateButtonsEnablementState];
  delegate = [(CAMSmartStyleSettingsPickerViewController *)self delegate];
  [delegate smartStyleSettingsPickerDidUpdateSelectedAssetIdentifiers:self];

  v14 = +[CAMCaptureCapabilities capabilities];
  hostProcess = [v14 hostProcess];

  v16 = CAMSmartStylesOnboardingCameraAppDidSelectAssets;
  if (hostProcess)
  {
    v16 = CAMSmartStylesOnboardingSettingsDidSelectAssets;
  }

  v17 = *v16;
  [CAMPreferencesUtilities setBool:1 inCameraDomainForKey:v17];
}

- (void)_pickerDidPerformCancelAction:(id)action
{
  delegate = [(CAMSmartStyleSettingsPickerViewController *)self delegate];
  [delegate smartStyleSettingsPickerDidCancelSelection:self];
}

- (void)_updateButtonsEnablementState
{
  selectedAssetIdentifiers = [(CAMSmartStyleSettingsPickerViewController *)self selectedAssetIdentifiers];
  v3 = [selectedAssetIdentifiers count] != 0;
  _deselectAllButton = [(CAMSmartStyleSettingsPickerViewController *)self _deselectAllButton];
  [_deselectAllButton setEnabled:v3];
}

- (CAMSmartStyleSettingsPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end