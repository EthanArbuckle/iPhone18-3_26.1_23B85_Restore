@interface ICPasswordChangeViewController
- (BOOL)passwordAndVerifyTextFieldsMatch;
- (BOOL)textFieldShouldReturn:(id)a3;
- (BOOL)validateInput;
- (ICPasswordChangeViewController)initWithCompletionHandler:(id)a3;
- (NSLayoutConstraint)oldPasswordHeightConstraint;
- (UIBarButtonItem)cancelButton;
- (UIBarButtonItem)doneButton;
- (UILabel)headerLabel;
- (UILabel)hintLabel;
- (UILabel)oldPasswordLabel;
- (UILabel)passwordLabel;
- (UILabel)verifyLabel;
- (UILabel)warningLabel;
- (UIScrollView)scrollView;
- (UITextField)firstResponderTextField;
- (UITextField)hintTextField;
- (UITextField)oldPasswordTextField;
- (UITextField)passwordTextField;
- (UITextField)verifyTextField;
- (UIView)headerBackground;
- (id)disclaimerAttributedString;
- (void)contentSizeCategoryDidChange;
- (void)dealloc;
- (void)dismissKeyboardIfNeeded;
- (void)dismissWithResult:(unint64_t)a3;
- (void)doneButtonPressed:(id)a3;
- (void)registerForTraitChanges;
- (void)resetTextFields;
- (void)setUpForAddingPasswordWithAccount:(id)a3;
- (void)setUpForChangePasswordWithAccount:(id)a3 didAuthenticateWithBiometrics:(BOOL)a4;
- (void)setUpNavigationBar;
- (void)setupAccessibility;
- (void)updateFonts;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation ICPasswordChangeViewController

- (ICPasswordChangeViewController)initWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9.receiver = self;
  v9.super_class = ICPasswordChangeViewController;
  v6 = [(ICPasswordChangeViewController *)&v9 initWithNibName:0 bundle:v5];

  if (v6)
  {
    v7 = [v4 copy];
    [(ICPasswordChangeViewController *)v6 setCompletionHandler:v7];

    [(ICPasswordChangeViewController *)v6 registerForTraitChanges];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [(ICPasswordChangeViewController *)self scrollViewResizer];
  [v3 stopAutoResizing];

  v4.receiver = self;
  v4.super_class = ICPasswordChangeViewController;
  [(ICPasswordChangeViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v56[4] = *MEMORY[0x1E69E9840];
  v53.receiver = self;
  v53.super_class = ICPasswordChangeViewController;
  [(ICPasswordChangeViewController *)&v53 viewDidLoad];
  [(ICPasswordChangeViewController *)self resetTextFields];
  [(ICPasswordChangeViewController *)self setUpNavigationBar];
  v3 = [[ICScrollViewKeyboardResizer alloc] initWithDelegate:self];
  [(ICPasswordChangeViewController *)self setScrollViewResizer:v3];

  v4 = [(ICPasswordChangeViewController *)self scrollView];
  [v4 setContentInsetAdjustmentBehavior:0];

  v5 = [MEMORY[0x1E69DC888] ICGroupedBackgroundColor];
  v6 = [(ICPasswordChangeViewController *)self scrollView];
  [v6 setBackgroundColor:v5];

  v7 = [(ICPasswordChangeViewController *)self oldPasswordTextField];
  v56[0] = v7;
  v8 = [(ICPasswordChangeViewController *)self passwordTextField];
  v56[1] = v8;
  v9 = [(ICPasswordChangeViewController *)self verifyTextField];
  v56[2] = v9;
  v10 = [(ICPasswordChangeViewController *)self hintTextField];
  v56[3] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:4];
  [(ICPasswordChangeViewController *)self setOrderedTextFields:v11];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v12 = [(ICPasswordChangeViewController *)self orderedTextFields];
  v13 = [v12 countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v50;
    do
    {
      v16 = 0;
      do
      {
        if (*v50 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v49 + 1) + 8 * v16++) setDelegate:self];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v14);
  }

  [(ICPasswordChangeViewController *)self setUsingLargerAXSizes:ICAccessibilityAccessibilityLargerTextSizesEnabled()];
  v17 = [MEMORY[0x1E69DC888] labelColor];
  v18 = [(ICPasswordChangeViewController *)self passwordLabel];
  [v18 setTextColor:v17];

  v19 = [MEMORY[0x1E69DC888] labelColor];
  v20 = [(ICPasswordChangeViewController *)self oldPasswordLabel];
  [v20 setTextColor:v19];

  v21 = [MEMORY[0x1E69DC888] labelColor];
  v22 = [(ICPasswordChangeViewController *)self verifyLabel];
  [v22 setTextColor:v21];

  v23 = [MEMORY[0x1E69DC888] labelColor];
  v24 = [(ICPasswordChangeViewController *)self hintLabel];
  [v24 setTextColor:v23];

  v25 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v26 = [(ICPasswordChangeViewController *)self headerLabel];
  [v26 setTextColor:v25];

  v27 = [MEMORY[0x1E69DC888] labelColor];
  v28 = [(ICPasswordChangeViewController *)self passwordTextField];
  [v28 setTextColor:v27];

  v29 = [MEMORY[0x1E69DC888] labelColor];
  v30 = [(ICPasswordChangeViewController *)self oldPasswordTextField];
  [v30 setTextColor:v29];

  v31 = [MEMORY[0x1E69DC888] labelColor];
  v32 = [(ICPasswordChangeViewController *)self verifyTextField];
  [v32 setTextColor:v31];

  v33 = [MEMORY[0x1E69DC888] labelColor];
  v34 = [(ICPasswordChangeViewController *)self hintTextField];
  [v34 setTextColor:v33];

  v35 = [MEMORY[0x1E69DC888] redColor];
  v36 = [(ICPasswordChangeViewController *)self warningLabel];
  [v36 setTextColor:v35];

  v37 = [(ICPasswordChangeViewController *)self warningLabel];
  [v37 setHidden:1];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v38 = [(ICPasswordChangeViewController *)self textBackgroundViews];
  v39 = [v38 countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v46;
    do
    {
      v42 = 0;
      do
      {
        if (*v46 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v45 + 1) + 8 * v42);
        if ([MEMORY[0x1E69DC938] ic_isVision])
        {
          [v43 setBackgroundColor:0];
        }

        else
        {
          v44 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
          [v43 setBackgroundColor:v44];
        }

        ++v42;
      }

      while (v40 != v42);
      v40 = [v38 countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v40);
  }
}

- (void)setUpNavigationBar
{
  v3 = [(ICPasswordChangeViewController *)self navigationController];
  [v3 setModalPresentationStyle:2];

  v4 = [(ICPasswordChangeViewController *)self navigationController];
  [v4 setNavigationBarHidden:0];

  v5 = [(ICPasswordChangeViewController *)self cancelButton];
  v6 = [(ICPasswordChangeViewController *)self navigationItem];
  [v6 setLeftBarButtonItem:v5];

  v8 = [(ICPasswordChangeViewController *)self doneButton];
  v7 = [(ICPasswordChangeViewController *)self navigationItem];
  [v7 setRightBarButtonItem:v8];
}

- (void)viewWillAppear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = ICPasswordChangeViewController;
  [(ICPasswordChangeViewController *)&v11 viewWillAppear:a3];
  if ([(ICPasswordChangeViewController *)self isSetupForChangePassword])
  {
    if ([(ICPasswordChangeViewController *)self didAuthenticateWithBiometrics])
    {
      v4 = 999.0;
    }

    else
    {
      v4 = 1.0;
    }
  }

  else
  {
    v4 = 999.0;
  }

  v5 = [(ICPasswordChangeViewController *)self oldPasswordHeightConstraint];
  *&v6 = v4;
  [v5 setPriority:v6];

  if ([(ICPasswordChangeViewController *)self isSetupForChangePassword]&& ![(ICPasswordChangeViewController *)self didAuthenticateWithBiometrics])
  {
    v7 = [(ICPasswordChangeViewController *)self oldPasswordTextField];
  }

  else
  {
    v7 = [(ICPasswordChangeViewController *)self passwordTextField];
  }

  v8 = v7;
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    [v8 becomeFirstResponder];
  }

  [(ICPasswordChangeViewController *)self updateFonts];
  v9 = [(ICPasswordChangeViewController *)self scrollViewResizer];
  [v9 startAutoResizing];

  v10 = [(ICPasswordChangeViewController *)self view];
  [v10 layoutIfNeeded];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ICPasswordChangeViewController;
  [(ICPasswordChangeViewController *)&v5 viewWillDisappear:a3];
  v4 = [(ICPasswordChangeViewController *)self scrollViewResizer];
  [v4 stopAutoResizing];
}

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = ICPasswordChangeViewController;
  [(ICPasswordChangeViewController *)&v7 viewDidAppear:a3];
  v4 = [(ICPasswordChangeViewController *)self view];
  v5 = [v4 window];
  v6 = [(ICPasswordChangeViewController *)self passphraseManager];
  [v6 setWindow:v5];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(ICPasswordChangeViewController *)self firstResponderTextField];
  v12.receiver = self;
  v12.super_class = ICPasswordChangeViewController;
  [(ICPasswordChangeViewController *)&v12 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__ICPasswordChangeViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v10[3] = &unk_1E846DC68;
  v11 = v8;
  v9 = v8;
  [v7 animateAlongsideTransition:&__block_literal_global_84 completion:v10];
}

void *__85__ICPasswordChangeViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return [result becomeFirstResponder];
  }

  return result;
}

- (UITextField)firstResponderTextField
{
  v2 = [(ICPasswordChangeViewController *)self orderedTextFields];
  v3 = [v2 ic_objectPassingTest:&__block_literal_global_26_2];

  return v3;
}

- (BOOL)validateInput
{
  if ([(ICPasswordChangeViewController *)self isSetupForChangePassword])
  {
    if (![(ICPasswordChangeViewController *)self didAuthenticateWithBiometrics])
    {
      v3 = [(ICPasswordChangeViewController *)self passphraseManager];
      v4 = [v3 account];
      v5 = [(ICPasswordChangeViewController *)self oldPasswordTextField];
      v6 = [v5 text];
      v7 = [v4 isPassphraseCorrect:v6];

      if ((v7 & 1) == 0)
      {
        v19 = [(ICPasswordChangeViewController *)self incorrectPasswordAttempts]>= 2;
        v20 = [(ICPasswordChangeViewController *)self passphraseManager];
        v21 = [v20 account];
        v11 = [ICAuthenticationAlert incorrectCustomPasswordInfoAlertWithObject:v21 showHint:v19];

        v22 = [(ICPasswordChangeViewController *)self view];
        v23 = [v22 window];
        [v11 presentInWindow:v23 completionHandler:0];

        [(ICPasswordChangeViewController *)self setIncorrectPasswordAttempts:[(ICPasswordChangeViewController *)self incorrectPasswordAttempts]+ 1];
        goto LABEL_11;
      }
    }
  }

  v8 = [(ICPasswordChangeViewController *)self passwordTextField];
  v9 = [v8 text];
  v10 = [v9 length];

  if (!v10)
  {
    v14 = +[ICAuthenticationAlert missingCustomPasswordInfoAlert];
LABEL_10:
    v11 = v14;
    v15 = [(ICPasswordChangeViewController *)self view];
    v16 = [v15 window];
    [v11 presentInWindow:v16 completionHandler:0];

LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  if (![(ICPasswordChangeViewController *)self passwordAndVerifyTextFieldsMatch])
  {
    v14 = +[ICAuthenticationAlert mismatchedCustomPasswordInfoAlert];
    goto LABEL_10;
  }

  v11 = [(ICPasswordChangeViewController *)self hintTextField];
  v12 = [v11 text];
  if ([v12 length])
  {

    v13 = 1;
LABEL_12:

    goto LABEL_13;
  }

  v24 = [(ICPasswordChangeViewController *)self didAttemptToSubmitWithoutHint];

  if (!v24)
  {
    v25 = __ICLocalizedFrameworkString_impl(@"A hint is strongly recommended.", @"A hint is strongly recommended.", 0, 1);
    v26 = [(ICPasswordChangeViewController *)self warningLabel];
    [v26 setText:v25];

    v27 = [(ICPasswordChangeViewController *)self warningLabel];
    [v27 setHidden:0];

    [(ICPasswordChangeViewController *)self setDidAttemptToSubmitWithoutHint:1];
    return 0;
  }

  v13 = 1;
LABEL_13:
  v17 = [(ICPasswordChangeViewController *)self warningLabel];
  [v17 setHidden:1];

  return v13;
}

- (void)doneButtonPressed:(id)a3
{
  v4 = a3;
  if ([(ICPasswordChangeViewController *)self validateInput])
  {
    [(ICPasswordChangeViewController *)self dismissKeyboardIfNeeded];
    if ([(ICPasswordChangeViewController *)self didAuthenticateWithBiometrics])
    {
      v5 = 0;
    }

    else
    {
      v6 = [(ICPasswordChangeViewController *)self oldPasswordTextField];
      v5 = [v6 text];
    }

    v7 = [(ICPasswordChangeViewController *)self passwordTextField];
    v8 = [v7 text];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = &stru_1F4F94F00;
    }

    v11 = v10;

    v12 = [(ICPasswordChangeViewController *)self hintTextField];
    v13 = [v12 text];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &stru_1F4F94F00;
    }

    v16 = v15;

    if ([(ICPasswordChangeViewController *)self isSetupForChangePassword])
    {
      objc_initWeak(&location, self);
      v17 = [(ICPasswordChangeViewController *)self passphraseManager];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __52__ICPasswordChangeViewController_doneButtonPressed___block_invoke;
      v23[3] = &unk_1E846DEF8;
      objc_copyWeak(&v24, &location);
      [v17 changePassphrase:v5 toPassphrase:v11 hint:v16 completion:v23];

      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }

    else
    {
      v18 = [(ICPasswordChangeViewController *)self passphraseManager];
      v19 = [v18 setPassphrase:v11 hint:v16];

      if (v19)
      {
        [(ICPasswordChangeViewController *)self dismissWithResult:2];
      }

      else
      {
        v20 = +[ICAuthenticationAlert cannotSetCustomPasswordInfoAlert];
        v21 = [(ICPasswordChangeViewController *)self view];
        v22 = [v21 window];
        [v20 presentInWindow:v22 completionHandler:0];
      }
    }
  }
}

void __52__ICPasswordChangeViewController_doneButtonPressed___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (a2)
  {
    [WeakRetained dismissWithResult:2];
  }

  else
  {

    if (!v8)
    {
      return;
    }

    v8 = +[ICAuthenticationAlert cannotSetCustomPasswordInfoAlert];
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = [v5 view];
    v7 = [v6 window];
    [v8 presentInWindow:v7 completionHandler:0];
  }
}

- (void)dismissWithResult:(unint64_t)a3
{
  [(ICPasswordChangeViewController *)self dismissKeyboardIfNeeded];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__ICPasswordChangeViewController_dismissWithResult___block_invoke;
  v5[3] = &unk_1E84698E0;
  v5[4] = self;
  v5[5] = a3;
  [(ICPasswordChangeViewController *)self dismissViewControllerAnimated:1 completion:v5];
}

void __52__ICPasswordChangeViewController_dismissWithResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) completionHandler];
    v3[2](v3, *(a1 + 40));
  }
}

- (BOOL)passwordAndVerifyTextFieldsMatch
{
  v3 = [(ICPasswordChangeViewController *)self passwordTextField];
  v4 = [v3 text];
  v5 = [v4 precomposedStringWithCanonicalMapping];
  v6 = [(ICPasswordChangeViewController *)self verifyTextField];
  v7 = [v6 text];
  v8 = [v7 precomposedStringWithCanonicalMapping];
  v9 = [v5 isEqualToString:v8];

  return v9;
}

- (void)setUpForAddingPasswordWithAccount:(id)a3
{
  v4 = a3;
  v5 = [[ICAccountPassphraseManager alloc] initWithAccount:v4];
  [(ICPasswordChangeViewController *)self setPassphraseManager:v5];

  [(ICPasswordChangeViewController *)self resetTextFields];
  [(ICPasswordChangeViewController *)self setUpNavigationBar];
  v6 = __ICLocalizedFrameworkString_impl(@"Set Password", @"Set Password", 0, 1);
  [(ICPasswordChangeViewController *)self setTitle:v6];

  [(ICPasswordChangeViewController *)self setModalInPresentation:1];
  v7 = MEMORY[0x1E69B7658];
  v8 = [MEMORY[0x1E69B7800] sharedContext];
  v9 = [v8 managedObjectContext];
  v10 = [v7 allActiveAccountsInContext:v9];
  v11 = [v10 count];

  v12 = [v4 accountName];

  v25 = [v12 ic_trimmedString];

  if (v11 >= 2 && [v25 length])
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = __ICLocalizedFrameworkString_impl(@"Create a password for all your locked notes in your “%@” account.", @"Create a password for all your locked notes in your “%@” account.", 0, 1);
    v15 = [v13 localizedStringWithFormat:v14, v25];
    v16 = [(ICPasswordChangeViewController *)self headerLabel];
    [v16 setText:v15];
  }

  else
  {
    v14 = __ICLocalizedFrameworkString_impl(@"Create a password for all your locked notes.", @"Create a password for all your locked notes.", 0, 1);
    v15 = [(ICPasswordChangeViewController *)self headerLabel];
    [v15 setText:v14];
  }

  v17 = __ICLocalizedFrameworkString_impl(@"Password", @"Password", 0, 1);
  v18 = [(ICPasswordChangeViewController *)self passwordLabel];
  [v18 setText:v17];

  v19 = __ICLocalizedFrameworkString_impl(@"Verify", @"Verify", 0, 1);
  v20 = [(ICPasswordChangeViewController *)self verifyLabel];
  [v20 setText:v19];

  v21 = __ICLocalizedFrameworkString_impl(@"Hint", @"Hint", 0, 1);
  v22 = [(ICPasswordChangeViewController *)self hintLabel];
  [v22 setText:v21];

  v23 = __ICLocalizedFrameworkString_impl(@"Done", @"Done", 0, 1);
  v24 = [(ICPasswordChangeViewController *)self doneButton];
  [v24 setTitle:v23];

  [(ICPasswordChangeViewController *)self setIsSetupForChangePassword:0];
  [(ICPasswordChangeViewController *)self setupAccessibility];
}

- (void)setUpForChangePasswordWithAccount:(id)a3 didAuthenticateWithBiometrics:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [[ICAccountPassphraseManager alloc] initWithAccount:v6];

  [(ICPasswordChangeViewController *)self setPassphraseManager:v7];
  [(ICPasswordChangeViewController *)self resetTextFields];
  [(ICPasswordChangeViewController *)self setUpNavigationBar];
  v8 = __ICLocalizedFrameworkString_impl(@"Change Password", @"Change Password", 0, 1);
  [(ICPasswordChangeViewController *)self setTitle:v8];

  v9 = __ICLocalizedFrameworkString_impl(@"Old Password", @"Old Password", 0, 1);
  v10 = [(ICPasswordChangeViewController *)self oldPasswordLabel];
  [v10 setText:v9];

  v11 = __ICLocalizedFrameworkString_impl(@"New Password", @"New Password", 0, 1);
  v12 = [(ICPasswordChangeViewController *)self passwordLabel];
  [v12 setText:v11];

  v13 = __ICLocalizedFrameworkString_impl(@"Verify", @"Verify", 0, 1);
  v14 = [(ICPasswordChangeViewController *)self verifyLabel];
  [v14 setText:v13];

  v15 = __ICLocalizedFrameworkString_impl(@"Hint", @"Hint", 0, 1);
  v16 = [(ICPasswordChangeViewController *)self hintLabel];
  [v16 setText:v15];

  v17 = __ICLocalizedFrameworkString_impl(@"Done", @"Done", 0, 1);
  v18 = [(ICPasswordChangeViewController *)self doneButton];
  [v18 setTitle:v17];

  [(ICPasswordChangeViewController *)self setIsSetupForChangePassword:1];
  [(ICPasswordChangeViewController *)self setDidAuthenticateWithBiometrics:v4];

  [(ICPasswordChangeViewController *)self setupAccessibility];
}

- (void)resetTextFields
{
  v3 = [(ICPasswordChangeViewController *)self oldPasswordTextField];
  [v3 setText:&stru_1F4F94F00];

  v4 = [(ICPasswordChangeViewController *)self passwordTextField];
  [v4 setText:&stru_1F4F94F00];

  v5 = [(ICPasswordChangeViewController *)self verifyTextField];
  [v5 setText:&stru_1F4F94F00];

  v6 = [(ICPasswordChangeViewController *)self hintTextField];
  [v6 setText:&stru_1F4F94F00];
}

- (id)disclaimerAttributedString
{
  v18[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DB878] systemFontOfSize:13.0];
  v3 = [v2 ic_fontWithSingleLineA];

  v4 = *MEMORY[0x1E69DB650];
  v17[0] = *MEMORY[0x1E69DB648];
  v17[1] = v4;
  v18[0] = v3;
  v5 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v18[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v7 = MEMORY[0x1E69B7658];
  v8 = [MEMORY[0x1E69B7800] sharedContext];
  v9 = [v8 managedObjectContext];
  v10 = [v7 allActiveAccountsInContext:v9];
  v11 = [v10 count];

  if (v11 < 2)
  {
    v12 = @"IMPORTANT: If you forget this password, you won’t be able to view your locked notes.";
  }

  else
  {
    v12 = @"IMPORTANT: If you forget this password, you won’t be able to view the locked notes that use it.";
  }

  v13 = __ICLocalizedFrameworkString_impl(v12, v12, 0, 1);
  v14 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v13 attributes:v6];
  v15 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v15 setAlignment:4];
  [v14 addAttribute:*MEMORY[0x1E69DB688] value:v15 range:{0, objc_msgSend(v14, "length")}];

  return v14;
}

- (void)dismissKeyboardIfNeeded
{
  v2 = [(ICPasswordChangeViewController *)self firstResponderTextField];
  [v2 resignFirstResponder];
}

- (void)registerForTraitChanges
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__ICPasswordChangeViewController_registerForTraitChanges__block_invoke;
  v5[3] = &unk_1E846B558;
  v5[4] = self;
  v4 = [(ICPasswordChangeViewController *)self registerForTraitChanges:v3 withHandler:v5];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = [(ICPasswordChangeViewController *)self orderedTextFields];
  v6 = [v5 indexOfObject:v4];

  v7 = v6 + 1;
  v8 = [(ICPasswordChangeViewController *)self orderedTextFields];
  v9 = [v8 count];

  if (v7 >= v9)
  {
    [(ICPasswordChangeViewController *)self doneButtonPressed:0];
  }

  else
  {
    objc_opt_class();
    v10 = [(ICPasswordChangeViewController *)self orderedTextFields];
    v11 = [v10 objectAtIndexedSubscript:v7];
    v12 = ICDynamicCast();

    [v12 becomeFirstResponder];
  }

  return 1;
}

- (void)contentSizeCategoryDidChange
{
  [(ICPasswordChangeViewController *)self updateFonts];
  v3 = [(ICPasswordChangeViewController *)self view];
  [v3 setNeedsUpdateConstraints];
}

- (void)updateFonts
{
  v16 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD28]];
  v3 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
  v4 = [MEMORY[0x1E69DB878] fontWithDescriptor:v3 size:0.0];
  v5 = [MEMORY[0x1E69DB878] fontWithDescriptor:v16 size:0.0];
  v6 = [(ICPasswordChangeViewController *)self headerLabel];
  [v6 setFont:v5];

  v7 = [(ICPasswordChangeViewController *)self warningLabel];
  [v7 setFont:v5];

  v8 = [(ICPasswordChangeViewController *)self oldPasswordLabel];
  [v8 setFont:v4];

  v9 = [(ICPasswordChangeViewController *)self oldPasswordTextField];
  [v9 setFont:v4];

  v10 = [(ICPasswordChangeViewController *)self passwordLabel];
  [v10 setFont:v4];

  v11 = [(ICPasswordChangeViewController *)self passwordTextField];
  [v11 setFont:v4];

  v12 = [(ICPasswordChangeViewController *)self verifyLabel];
  [v12 setFont:v4];

  v13 = [(ICPasswordChangeViewController *)self verifyTextField];
  [v13 setFont:v4];

  v14 = [(ICPasswordChangeViewController *)self hintLabel];
  [v14 setFont:v4];

  v15 = [(ICPasswordChangeViewController *)self hintTextField];
  [v15 setFont:v4];
}

- (void)setupAccessibility
{
  v3 = [(ICPasswordChangeViewController *)self headerLabel];
  v4 = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x1E69DD9C8] | v4];

  v5 = [(ICPasswordChangeViewController *)self isSetupForChangePassword];
  v6 = [(ICPasswordChangeViewController *)self oldPasswordLabel];
  [v6 setIsAccessibilityElement:v5];

  v7 = [(ICPasswordChangeViewController *)self isSetupForChangePassword];
  v8 = [(ICPasswordChangeViewController *)self oldPasswordTextField];
  [v8 setIsAccessibilityElement:v7];

  v9 = __ICLocalizedFrameworkString_impl(@"Old Password", @"Old Password", 0, 1);
  v10 = [(ICPasswordChangeViewController *)self oldPasswordTextField];
  [v10 setAccessibilityLabel:v9];

  v11 = __ICLocalizedFrameworkString_impl(@"Enter your old password first in order to set a new password.", @"Enter your old password first in order to set a new password.", 0, 1);
  v12 = [(ICPasswordChangeViewController *)self oldPasswordTextField];
  [v12 setAccessibilityHint:v11];

  v13 = __ICLocalizedFrameworkString_impl(@"New Password", @"New Password", 0, 1);
  v14 = [(ICPasswordChangeViewController *)self passwordTextField];
  [v14 setAccessibilityLabel:v13];

  v15 = __ICLocalizedFrameworkString_impl(@"Enter a new password to use for your protected notes.", @"Enter a new password to use for your protected notes.", 0, 1);
  v16 = [(ICPasswordChangeViewController *)self passwordTextField];
  [v16 setAccessibilityHint:v15];

  v17 = __ICLocalizedFrameworkString_impl(@"Confirm Password", @"Confirm Password", 0, 1);
  v18 = [(ICPasswordChangeViewController *)self verifyTextField];
  [v18 setAccessibilityLabel:v17];

  v19 = __ICLocalizedFrameworkString_impl(@"Enter your new password again for confirmation.", @"Enter your new password again for confirmation.", 0, 1);
  v20 = [(ICPasswordChangeViewController *)self verifyTextField];
  [v20 setAccessibilityHint:v19];

  v21 = __ICLocalizedFrameworkString_impl(@"Password Hint", @"Password Hint", 0, 1);
  v22 = [(ICPasswordChangeViewController *)self hintTextField];
  [v22 setAccessibilityLabel:v21];

  v24 = __ICLocalizedFrameworkString_impl(@"Enter a hint for your new password.", @"Enter a hint for your new password.", 0, 1);
  v23 = [(ICPasswordChangeViewController *)self hintTextField];
  [v23 setAccessibilityHint:v24];
}

- (UIView)headerBackground
{
  WeakRetained = objc_loadWeakRetained(&self->_headerBackground);

  return WeakRetained;
}

- (UIScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

- (UILabel)headerLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_headerLabel);

  return WeakRetained;
}

- (UILabel)oldPasswordLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_oldPasswordLabel);

  return WeakRetained;
}

- (UILabel)passwordLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_passwordLabel);

  return WeakRetained;
}

- (UILabel)verifyLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_verifyLabel);

  return WeakRetained;
}

- (UILabel)hintLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_hintLabel);

  return WeakRetained;
}

- (UILabel)warningLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_warningLabel);

  return WeakRetained;
}

- (UITextField)oldPasswordTextField
{
  WeakRetained = objc_loadWeakRetained(&self->_oldPasswordTextField);

  return WeakRetained;
}

- (UITextField)passwordTextField
{
  WeakRetained = objc_loadWeakRetained(&self->_passwordTextField);

  return WeakRetained;
}

- (UITextField)verifyTextField
{
  WeakRetained = objc_loadWeakRetained(&self->_verifyTextField);

  return WeakRetained;
}

- (UITextField)hintTextField
{
  WeakRetained = objc_loadWeakRetained(&self->_hintTextField);

  return WeakRetained;
}

- (UIBarButtonItem)doneButton
{
  WeakRetained = objc_loadWeakRetained(&self->_doneButton);

  return WeakRetained;
}

- (UIBarButtonItem)cancelButton
{
  WeakRetained = objc_loadWeakRetained(&self->_cancelButton);

  return WeakRetained;
}

- (NSLayoutConstraint)oldPasswordHeightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_oldPasswordHeightConstraint);

  return WeakRetained;
}

@end