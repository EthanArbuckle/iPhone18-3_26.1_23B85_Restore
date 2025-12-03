@interface ICPasswordEntryViewController
- (ICPasswordEntryViewController)initWithNibName:(id)name bundle:(id)bundle note:(id)note intent:(unint64_t)intent;
- (ICTextBackgroundView)backgroundView;
- (UIButton)largeUnlockButton;
- (UIButton)unlockButton;
- (UIImageView)lockImage;
- (UILabel)titleLabel;
- (void)applyEntryViewMode;
- (void)beginAuthentication;
- (void)dealloc;
- (void)setMode:(unint64_t)mode;
- (void)unlockPasswordButtonPressed:(id)pressed;
- (void)viewDidLoad;
@end

@implementation ICPasswordEntryViewController

- (ICPasswordEntryViewController)initWithNibName:(id)name bundle:(id)bundle note:(id)note intent:(unint64_t)intent
{
  noteCopy = note;
  v11 = MEMORY[0x1E696AAE8];
  nameCopy = name;
  v13 = [v11 bundleForClass:objc_opt_class()];
  v16.receiver = self;
  v16.super_class = ICPasswordEntryViewController;
  v14 = [(ICPasswordEntryViewController *)&v16 initWithNibName:nameCopy bundle:v13];

  if (v14)
  {
    objc_storeStrong(&v14->_note, note);
    v14->_intent = intent;
  }

  return v14;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICPasswordEntryViewController;
  [(ICPasswordEntryViewController *)&v4 dealloc];
}

- (void)setMode:(unint64_t)mode
{
  if (self->_mode != mode)
  {
    self->_mode = mode;
    [(ICPasswordEntryViewController *)self applyEntryViewMode];
  }
}

- (void)applyEntryViewMode
{
  mode = self->_mode;
  if (mode == 1)
  {
    titleLabel = [(ICPasswordEntryViewController *)self titleLabel];
    v6 = 1;
    [titleLabel setHidden:1];

    v5 = 1;
  }

  else
  {
    if (mode)
    {
      return;
    }

    titleLabel2 = [(ICPasswordEntryViewController *)self titleLabel];
    [titleLabel2 setHidden:0];

    v5 = 0;
    v6 = [(ICPasswordEntryViewController *)self intent]!= 0;
  }

  unlockButton = [(ICPasswordEntryViewController *)self unlockButton];
  [unlockButton setHidden:v6];

  largeUnlockButton = [(ICPasswordEntryViewController *)self largeUnlockButton];
  [largeUnlockButton setHidden:v5];
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = ICPasswordEntryViewController;
  [(ICPasswordEntryViewController *)&v21 viewDidLoad];
  iCBackgroundColor = [MEMORY[0x1E69DC888] ICBackgroundColor];
  view = [(ICPasswordEntryViewController *)self view];
  [view setBackgroundColor:iCBackgroundColor];

  ic_isVision = [MEMORY[0x1E69DC938] ic_isVision];
  v7 = ic_isVision;
  if (ic_isVision)
  {
    [MEMORY[0x1E69DC888] ic_dynamicWhiteBlackColor];
  }

  else
  {
    backgroundView = [(ICPasswordEntryViewController *)self backgroundView];
    [backgroundView backgroundColor];
  }
  v8 = ;
  backgroundView2 = [(ICPasswordEntryViewController *)self backgroundView];
  [backgroundView2 setBackgroundColor:v8];

  if ((v7 & 1) == 0)
  {

    v8 = backgroundView;
  }

  ic_isVision2 = [MEMORY[0x1E69DC938] ic_isVision];
  v11 = ic_isVision2;
  if (ic_isVision2)
  {
    [MEMORY[0x1E69DC888] systemGrayColor];
  }

  else
  {
    backgroundView = [(ICPasswordEntryViewController *)self lockImage];
    [backgroundView tintColor];
  }
  v12 = ;
  lockImage = [(ICPasswordEntryViewController *)self lockImage];
  [lockImage setTintColor:v12];

  if ((v11 & 1) == 0)
  {

    v12 = backgroundView;
  }

  ic_noteEditorLabelColor = [MEMORY[0x1E69DC888] ic_noteEditorLabelColor];
  titleLabel = [(ICPasswordEntryViewController *)self titleLabel];
  [titleLabel setTextColor:ic_noteEditorLabelColor];

  unlockButton = [(ICPasswordEntryViewController *)self unlockButton];
  [unlockButton _accessibilitySetIsSpeakThisElement:1];

  if ([MEMORY[0x1E69DC938] ic_isVision])
  {
    unlockButton2 = [(ICPasswordEntryViewController *)self unlockButton];
    [unlockButton2 setTitleColor:0 forState:0];

    ic_filledTintedButtonConfiguration = [MEMORY[0x1E69DC740] ic_filledTintedButtonConfiguration];
    unlockButton3 = [(ICPasswordEntryViewController *)self unlockButton];
    [unlockButton3 setConfiguration:ic_filledTintedButtonConfiguration];
  }

  largeUnlockButton = [(ICPasswordEntryViewController *)self largeUnlockButton];
  [largeUnlockButton setIsAccessibilityElement:0];

  [(ICPasswordEntryViewController *)self applyEntryViewMode];
}

- (void)beginAuthentication
{
  unlockButton = [(ICPasswordEntryViewController *)self unlockButton];
  [(ICPasswordEntryViewController *)self unlockPasswordButtonPressed:unlockButton];
}

- (void)unlockPasswordButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  objc_initWeak(&location, self);
  intent = [(ICPasswordEntryViewController *)self intent];
  note = [(ICPasswordEntryViewController *)self note];
  v7 = [ICAuthenticationPrompt promptForIntent:intent object:note];

  v8 = +[ICAuthentication shared];
  view = [(ICPasswordEntryViewController *)self view];
  window = [view window];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__ICPasswordEntryViewController_unlockPasswordButtonPressed___block_invoke;
  v11[3] = &unk_1E8469280;
  objc_copyWeak(&v12, &location);
  v11[4] = self;
  [v8 authenticateWithPrompt:v7 displayWindow:window completionHandler:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __61__ICPasswordEntryViewController_unlockPasswordButtonPressed___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (a2 == 2 && WeakRetained)
  {
    v5 = MEMORY[0x1E69B7728];
    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = [v6 note];
    if ([v5 shouldAuthenticateWithDevicePasswordForObject:v7])
    {
      v8 = objc_loadWeakRetained((a1 + 40));
      v9 = [v8 note];
      v10 = [v9 account];
      v11 = [v10 resolvedLockedNotesMode];

      if (v11 == 1)
      {
        v12 = 1;
        goto LABEL_10;
      }
    }

    else
    {
    }

    v13 = MEMORY[0x1E69B7728];
    v14 = objc_loadWeakRetained((a1 + 40));
    v15 = [v14 note];
    if (![v13 shouldAuthenticateWithCustomPasswordForObject:v15])
    {
LABEL_11:

      goto LABEL_12;
    }

    v16 = objc_loadWeakRetained((a1 + 40));
    v17 = [v16 note];
    v18 = [v17 account];
    v19 = [v18 resolvedLockedNotesMode];

    if (v19 != 2)
    {
      goto LABEL_12;
    }

    v12 = 2;
LABEL_10:
    v14 = +[ICLockedNotesModeMigrator sharedMigrator];
    v15 = objc_loadWeakRetained((a1 + 40));
    v20 = [v15 note];
    v21 = objc_loadWeakRetained((a1 + 40));
    v22 = [v21 view];
    v23 = [v22 window];
    [v14 presentDivergedModeAlertForNote:v20 mode:v12 window:v23 completionHandler:0];

    goto LABEL_11;
  }

LABEL_12:
  v24 = [*(a1 + 32) passwordEntryCompletionHandler];

  if (v24)
  {
    v25 = [*(a1 + 32) passwordEntryCompletionHandler];
    v25[2](v25, a2);
  }
}

- (ICTextBackgroundView)backgroundView
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundView);

  return WeakRetained;
}

- (UIImageView)lockImage
{
  WeakRetained = objc_loadWeakRetained(&self->_lockImage);

  return WeakRetained;
}

- (UILabel)titleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_titleLabel);

  return WeakRetained;
}

- (UIButton)unlockButton
{
  WeakRetained = objc_loadWeakRetained(&self->_unlockButton);

  return WeakRetained;
}

- (UIButton)largeUnlockButton
{
  WeakRetained = objc_loadWeakRetained(&self->_largeUnlockButton);

  return WeakRetained;
}

@end