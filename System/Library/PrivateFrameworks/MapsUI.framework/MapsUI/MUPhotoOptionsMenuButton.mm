@interface MUPhotoOptionsMenuButton
+ (BOOL)_supportsCamera;
+ (id)buttonWithDelegate:(id)delegate;
+ (id)menuForPhotoOptionsMenuButtonWithTitle:(id)title symbol:(id)symbol cameraCompletion:(id)completion libraryCompletion:(id)libraryCompletion;
+ (int64_t)preferredEntryPoint;
+ (unint64_t)_numberOfSupportedSourceTypes;
- (MUPhotoOptionsMenuButton)initWithFrame:(CGRect)frame;
- (MUPhotoOptionsMenuButtonDelegate)delegate;
- (void)_didSelectAddFromLibrary;
- (void)_didSelectTakePhoto;
- (void)_didTapOnMenuButton;
- (void)_setActionMenu;
@end

@implementation MUPhotoOptionsMenuButton

- (MUPhotoOptionsMenuButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_didSelectAddFromLibrary
{
  [(MUPhotoOptionsMenuButton *)self _captureUserAction:2145];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained photoOptionsMenuButtonDidSelectAddFromLibrary];
}

- (void)_didSelectTakePhoto
{
  [(MUPhotoOptionsMenuButton *)self _captureUserAction:2146];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained photoOptionsMenuButtonDidSelectTakePhoto];
}

- (void)_didTapOnMenuButton
{
  v3 = +[MUPhotoOptionsMenuButton _supportsCamera];
  v4 = +[MUPhotoOptionsMenuButton _supportsPhotoLibrary];
  if (v3)
  {

    [(MUPhotoOptionsMenuButton *)self _didSelectTakePhoto];
  }

  else if (v4)
  {

    [(MUPhotoOptionsMenuButton *)self _didSelectAddFromLibrary];
  }
}

- (MUPhotoOptionsMenuButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MUPhotoOptionsMenuButton;
  v3 = [(MUPhotoOptionsMenuButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUPhotoOptionsMenuButton *)v3 setPreferredMenuElementOrder:2];
  }

  return v4;
}

- (void)_setActionMenu
{
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__MUPhotoOptionsMenuButton__setActionMenu__block_invoke;
  v6[3] = &unk_1E821BAC8;
  objc_copyWeak(&v7, &location);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__MUPhotoOptionsMenuButton__setActionMenu__block_invoke_2;
  v4[3] = &unk_1E821BAC8;
  objc_copyWeak(&v5, &location);
  v3 = [MUPhotoOptionsMenuButton menuForPhotoOptionsMenuButtonWithCameraCompletion:v6 libraryCompletion:v4];
  [(MUPhotoOptionsMenuButton *)self setMenu:v3];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __42__MUPhotoOptionsMenuButton__setActionMenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _didSelectTakePhoto];
    WeakRetained = v2;
  }
}

void __42__MUPhotoOptionsMenuButton__setActionMenu__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _didSelectAddFromLibrary];
    WeakRetained = v2;
  }
}

+ (int64_t)preferredEntryPoint
{
  v2 = +[MUPhotoOptionsMenuButton _supportsCamera];
  v3 = +[MUPhotoOptionsMenuButton _supportsPhotoLibrary];
  v4 = 2;
  if (!v3)
  {
    v4 = 0;
  }

  if (v2)
  {
    return !v3;
  }

  else
  {
    return v4;
  }
}

+ (unint64_t)_numberOfSupportedSourceTypes
{
  v2 = +[MUPhotoOptionsMenuButton _supportsCamera];
  v3 = +[MUPhotoOptionsMenuButton _supportsPhotoLibrary];
  v4 = 1;
  if (v2)
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

+ (BOOL)_supportsCamera
{
  if (![MEMORY[0x1E69DCAD0] isSourceTypeAvailable:1])
  {
    return 0;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] != 5;

  return v3;
}

+ (id)menuForPhotoOptionsMenuButtonWithTitle:(id)title symbol:(id)symbol cameraCompletion:(id)completion libraryCompletion:(id)libraryCompletion
{
  titleCopy = title;
  symbolCopy = symbol;
  completionCopy = completion;
  libraryCompletionCopy = libraryCompletion;
  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v14 = +[MUPhotoOptionsMenuButton _supportsCamera];
  if (+[MUPhotoOptionsMenuButton _supportsPhotoLibrary])
  {
    v15 = MEMORY[0x1E69DC628];
    v16 = _MULocalizedStringFromThisBundle(@"Choose Existing [Placecard]");
    v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"photo.on.rectangle"];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __109__MUPhotoOptionsMenuButton_menuForPhotoOptionsMenuButtonWithTitle_symbol_cameraCompletion_libraryCompletion___block_invoke;
    v30[3] = &unk_1E8219138;
    v31 = libraryCompletionCopy;
    v18 = [v15 actionWithTitle:v16 image:v17 identifier:0 handler:v30];

    [v18 setAccessibilityIdentifier:@"ChooseExistingPhotoMenuAction"];
    [v13 addObject:v18];
  }

  if (v14)
  {
    v19 = MEMORY[0x1E69DC628];
    v20 = _MULocalizedStringFromThisBundle(@"Take New Photo [Placecard]");
    v21 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"camera"];
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __109__MUPhotoOptionsMenuButton_menuForPhotoOptionsMenuButtonWithTitle_symbol_cameraCompletion_libraryCompletion___block_invoke_2;
    v28 = &unk_1E8219138;
    v29 = completionCopy;
    v22 = [v19 actionWithTitle:v20 image:v21 identifier:0 handler:&v25];

    [v22 setAccessibilityIdentifier:{@"TakeNewPhotoMenuAction", v25, v26, v27, v28}];
    [v13 addObject:v22];
  }

  if ([v13 count] < 2)
  {
    v23 = 0;
  }

  else
  {
    v23 = [MEMORY[0x1E69DCC60] menuWithTitle:titleCopy image:symbolCopy identifier:0 options:0 children:v13];
    [v23 setAccessibilityIdentifier:@"AddPhotosMenuAction"];
  }

  return v23;
}

+ (id)buttonWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = [MUPhotoOptionsMenuButton buttonWithType:0];
  [v4 setDelegate:delegateCopy];

  if (+[MUPhotoOptionsMenuButton _numberOfSupportedSourceTypes]< 2)
  {
    [v4 _setTouchEvent];
  }

  else
  {
    [v4 setShowsMenuAsPrimaryAction:1];
    [v4 _setActionMenu];
  }

  return v4;
}

@end