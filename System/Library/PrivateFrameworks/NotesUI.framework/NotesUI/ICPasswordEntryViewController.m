@interface ICPasswordEntryViewController
- (ICPasswordEntryViewController)initWithNibName:(id)a3 bundle:(id)a4 note:(id)a5 intent:(unint64_t)a6;
- (ICTextBackgroundView)backgroundView;
- (UIButton)largeUnlockButton;
- (UIButton)unlockButton;
- (UIImageView)lockImage;
- (UILabel)titleLabel;
- (void)applyEntryViewMode;
- (void)beginAuthentication;
- (void)dealloc;
- (void)setMode:(unint64_t)a3;
- (void)unlockPasswordButtonPressed:(id)a3;
- (void)viewDidLoad;
@end

@implementation ICPasswordEntryViewController

- (ICPasswordEntryViewController)initWithNibName:(id)a3 bundle:(id)a4 note:(id)a5 intent:(unint64_t)a6
{
  v10 = a5;
  v11 = MEMORY[0x1E696AAE8];
  v12 = a3;
  v13 = [v11 bundleForClass:objc_opt_class()];
  v16.receiver = self;
  v16.super_class = ICPasswordEntryViewController;
  v14 = [(ICPasswordEntryViewController *)&v16 initWithNibName:v12 bundle:v13];

  if (v14)
  {
    objc_storeStrong(&v14->_note, a5);
    v14->_intent = a6;
  }

  return v14;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICPasswordEntryViewController;
  [(ICPasswordEntryViewController *)&v4 dealloc];
}

- (void)setMode:(unint64_t)a3
{
  if (self->_mode != a3)
  {
    self->_mode = a3;
    [(ICPasswordEntryViewController *)self applyEntryViewMode];
  }
}

- (void)applyEntryViewMode
{
  mode = self->_mode;
  if (mode == 1)
  {
    v7 = [(ICPasswordEntryViewController *)self titleLabel];
    v6 = 1;
    [v7 setHidden:1];

    v5 = 1;
  }

  else
  {
    if (mode)
    {
      return;
    }

    v4 = [(ICPasswordEntryViewController *)self titleLabel];
    [v4 setHidden:0];

    v5 = 0;
    v6 = [(ICPasswordEntryViewController *)self intent]!= 0;
  }

  v8 = [(ICPasswordEntryViewController *)self unlockButton];
  [v8 setHidden:v6];

  v9 = [(ICPasswordEntryViewController *)self largeUnlockButton];
  [v9 setHidden:v5];
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = ICPasswordEntryViewController;
  [(ICPasswordEntryViewController *)&v21 viewDidLoad];
  v4 = [MEMORY[0x1E69DC888] ICBackgroundColor];
  v5 = [(ICPasswordEntryViewController *)self view];
  [v5 setBackgroundColor:v4];

  v6 = [MEMORY[0x1E69DC938] ic_isVision];
  v7 = v6;
  if (v6)
  {
    [MEMORY[0x1E69DC888] ic_dynamicWhiteBlackColor];
  }

  else
  {
    v2 = [(ICPasswordEntryViewController *)self backgroundView];
    [v2 backgroundColor];
  }
  v8 = ;
  v9 = [(ICPasswordEntryViewController *)self backgroundView];
  [v9 setBackgroundColor:v8];

  if ((v7 & 1) == 0)
  {

    v8 = v2;
  }

  v10 = [MEMORY[0x1E69DC938] ic_isVision];
  v11 = v10;
  if (v10)
  {
    [MEMORY[0x1E69DC888] systemGrayColor];
  }

  else
  {
    v2 = [(ICPasswordEntryViewController *)self lockImage];
    [v2 tintColor];
  }
  v12 = ;
  v13 = [(ICPasswordEntryViewController *)self lockImage];
  [v13 setTintColor:v12];

  if ((v11 & 1) == 0)
  {

    v12 = v2;
  }

  v14 = [MEMORY[0x1E69DC888] ic_noteEditorLabelColor];
  v15 = [(ICPasswordEntryViewController *)self titleLabel];
  [v15 setTextColor:v14];

  v16 = [(ICPasswordEntryViewController *)self unlockButton];
  [v16 _accessibilitySetIsSpeakThisElement:1];

  if ([MEMORY[0x1E69DC938] ic_isVision])
  {
    v17 = [(ICPasswordEntryViewController *)self unlockButton];
    [v17 setTitleColor:0 forState:0];

    v18 = [MEMORY[0x1E69DC740] ic_filledTintedButtonConfiguration];
    v19 = [(ICPasswordEntryViewController *)self unlockButton];
    [v19 setConfiguration:v18];
  }

  v20 = [(ICPasswordEntryViewController *)self largeUnlockButton];
  [v20 setIsAccessibilityElement:0];

  [(ICPasswordEntryViewController *)self applyEntryViewMode];
}

- (void)beginAuthentication
{
  v3 = [(ICPasswordEntryViewController *)self unlockButton];
  [(ICPasswordEntryViewController *)self unlockPasswordButtonPressed:v3];
}

- (void)unlockPasswordButtonPressed:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(ICPasswordEntryViewController *)self intent];
  v6 = [(ICPasswordEntryViewController *)self note];
  v7 = [ICAuthenticationPrompt promptForIntent:v5 object:v6];

  v8 = +[ICAuthentication shared];
  v9 = [(ICPasswordEntryViewController *)self view];
  v10 = [v9 window];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__ICPasswordEntryViewController_unlockPasswordButtonPressed___block_invoke;
  v11[3] = &unk_1E8469280;
  objc_copyWeak(&v12, &location);
  v11[4] = self;
  [v8 authenticateWithPrompt:v7 displayWindow:v10 completionHandler:v11];

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