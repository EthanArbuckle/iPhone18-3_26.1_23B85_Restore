@interface ICPasswordChangeViewController
- (BOOL)passwordAndVerifyTextFieldsMatch;
- (BOOL)textFieldShouldReturn:(id)return;
- (BOOL)validateInput;
- (ICPasswordChangeViewController)initWithCompletionHandler:(id)handler;
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
- (void)dismissWithResult:(unint64_t)result;
- (void)doneButtonPressed:(id)pressed;
- (void)registerForTraitChanges;
- (void)resetTextFields;
- (void)setUpForAddingPasswordWithAccount:(id)account;
- (void)setUpForChangePasswordWithAccount:(id)account didAuthenticateWithBiometrics:(BOOL)biometrics;
- (void)setUpNavigationBar;
- (void)setupAccessibility;
- (void)updateFonts;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation ICPasswordChangeViewController

- (ICPasswordChangeViewController)initWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9.receiver = self;
  v9.super_class = ICPasswordChangeViewController;
  v6 = [(ICPasswordChangeViewController *)&v9 initWithNibName:0 bundle:v5];

  if (v6)
  {
    v7 = [handlerCopy copy];
    [(ICPasswordChangeViewController *)v6 setCompletionHandler:v7];

    [(ICPasswordChangeViewController *)v6 registerForTraitChanges];
  }

  return v6;
}

- (void)dealloc
{
  scrollViewResizer = [(ICPasswordChangeViewController *)self scrollViewResizer];
  [scrollViewResizer stopAutoResizing];

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

  scrollView = [(ICPasswordChangeViewController *)self scrollView];
  [scrollView setContentInsetAdjustmentBehavior:0];

  iCGroupedBackgroundColor = [MEMORY[0x1E69DC888] ICGroupedBackgroundColor];
  scrollView2 = [(ICPasswordChangeViewController *)self scrollView];
  [scrollView2 setBackgroundColor:iCGroupedBackgroundColor];

  oldPasswordTextField = [(ICPasswordChangeViewController *)self oldPasswordTextField];
  v56[0] = oldPasswordTextField;
  passwordTextField = [(ICPasswordChangeViewController *)self passwordTextField];
  v56[1] = passwordTextField;
  verifyTextField = [(ICPasswordChangeViewController *)self verifyTextField];
  v56[2] = verifyTextField;
  hintTextField = [(ICPasswordChangeViewController *)self hintTextField];
  v56[3] = hintTextField;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:4];
  [(ICPasswordChangeViewController *)self setOrderedTextFields:v11];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  orderedTextFields = [(ICPasswordChangeViewController *)self orderedTextFields];
  v13 = [orderedTextFields countByEnumeratingWithState:&v49 objects:v55 count:16];
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
          objc_enumerationMutation(orderedTextFields);
        }

        [*(*(&v49 + 1) + 8 * v16++) setDelegate:self];
      }

      while (v14 != v16);
      v14 = [orderedTextFields countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v14);
  }

  [(ICPasswordChangeViewController *)self setUsingLargerAXSizes:ICAccessibilityAccessibilityLargerTextSizesEnabled()];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  passwordLabel = [(ICPasswordChangeViewController *)self passwordLabel];
  [passwordLabel setTextColor:labelColor];

  labelColor2 = [MEMORY[0x1E69DC888] labelColor];
  oldPasswordLabel = [(ICPasswordChangeViewController *)self oldPasswordLabel];
  [oldPasswordLabel setTextColor:labelColor2];

  labelColor3 = [MEMORY[0x1E69DC888] labelColor];
  verifyLabel = [(ICPasswordChangeViewController *)self verifyLabel];
  [verifyLabel setTextColor:labelColor3];

  labelColor4 = [MEMORY[0x1E69DC888] labelColor];
  hintLabel = [(ICPasswordChangeViewController *)self hintLabel];
  [hintLabel setTextColor:labelColor4];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  headerLabel = [(ICPasswordChangeViewController *)self headerLabel];
  [headerLabel setTextColor:secondaryLabelColor];

  labelColor5 = [MEMORY[0x1E69DC888] labelColor];
  passwordTextField2 = [(ICPasswordChangeViewController *)self passwordTextField];
  [passwordTextField2 setTextColor:labelColor5];

  labelColor6 = [MEMORY[0x1E69DC888] labelColor];
  oldPasswordTextField2 = [(ICPasswordChangeViewController *)self oldPasswordTextField];
  [oldPasswordTextField2 setTextColor:labelColor6];

  labelColor7 = [MEMORY[0x1E69DC888] labelColor];
  verifyTextField2 = [(ICPasswordChangeViewController *)self verifyTextField];
  [verifyTextField2 setTextColor:labelColor7];

  labelColor8 = [MEMORY[0x1E69DC888] labelColor];
  hintTextField2 = [(ICPasswordChangeViewController *)self hintTextField];
  [hintTextField2 setTextColor:labelColor8];

  redColor = [MEMORY[0x1E69DC888] redColor];
  warningLabel = [(ICPasswordChangeViewController *)self warningLabel];
  [warningLabel setTextColor:redColor];

  warningLabel2 = [(ICPasswordChangeViewController *)self warningLabel];
  [warningLabel2 setHidden:1];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  textBackgroundViews = [(ICPasswordChangeViewController *)self textBackgroundViews];
  v39 = [textBackgroundViews countByEnumeratingWithState:&v45 objects:v54 count:16];
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
          objc_enumerationMutation(textBackgroundViews);
        }

        v43 = *(*(&v45 + 1) + 8 * v42);
        if ([MEMORY[0x1E69DC938] ic_isVision])
        {
          [v43 setBackgroundColor:0];
        }

        else
        {
          secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
          [v43 setBackgroundColor:secondarySystemGroupedBackgroundColor];
        }

        ++v42;
      }

      while (v40 != v42);
      v40 = [textBackgroundViews countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v40);
  }
}

- (void)setUpNavigationBar
{
  navigationController = [(ICPasswordChangeViewController *)self navigationController];
  [navigationController setModalPresentationStyle:2];

  navigationController2 = [(ICPasswordChangeViewController *)self navigationController];
  [navigationController2 setNavigationBarHidden:0];

  cancelButton = [(ICPasswordChangeViewController *)self cancelButton];
  navigationItem = [(ICPasswordChangeViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:cancelButton];

  doneButton = [(ICPasswordChangeViewController *)self doneButton];
  navigationItem2 = [(ICPasswordChangeViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:doneButton];
}

- (void)viewWillAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = ICPasswordChangeViewController;
  [(ICPasswordChangeViewController *)&v11 viewWillAppear:appear];
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

  oldPasswordHeightConstraint = [(ICPasswordChangeViewController *)self oldPasswordHeightConstraint];
  *&v6 = v4;
  [oldPasswordHeightConstraint setPriority:v6];

  if ([(ICPasswordChangeViewController *)self isSetupForChangePassword]&& ![(ICPasswordChangeViewController *)self didAuthenticateWithBiometrics])
  {
    oldPasswordTextField = [(ICPasswordChangeViewController *)self oldPasswordTextField];
  }

  else
  {
    oldPasswordTextField = [(ICPasswordChangeViewController *)self passwordTextField];
  }

  v8 = oldPasswordTextField;
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    [v8 becomeFirstResponder];
  }

  [(ICPasswordChangeViewController *)self updateFonts];
  scrollViewResizer = [(ICPasswordChangeViewController *)self scrollViewResizer];
  [scrollViewResizer startAutoResizing];

  view = [(ICPasswordChangeViewController *)self view];
  [view layoutIfNeeded];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = ICPasswordChangeViewController;
  [(ICPasswordChangeViewController *)&v5 viewWillDisappear:disappear];
  scrollViewResizer = [(ICPasswordChangeViewController *)self scrollViewResizer];
  [scrollViewResizer stopAutoResizing];
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = ICPasswordChangeViewController;
  [(ICPasswordChangeViewController *)&v7 viewDidAppear:appear];
  view = [(ICPasswordChangeViewController *)self view];
  window = [view window];
  passphraseManager = [(ICPasswordChangeViewController *)self passphraseManager];
  [passphraseManager setWindow:window];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  firstResponderTextField = [(ICPasswordChangeViewController *)self firstResponderTextField];
  v12.receiver = self;
  v12.super_class = ICPasswordChangeViewController;
  [(ICPasswordChangeViewController *)&v12 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__ICPasswordChangeViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v10[3] = &unk_1E846DC68;
  v11 = firstResponderTextField;
  v9 = firstResponderTextField;
  [coordinatorCopy animateAlongsideTransition:&__block_literal_global_84 completion:v10];
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
  orderedTextFields = [(ICPasswordChangeViewController *)self orderedTextFields];
  v3 = [orderedTextFields ic_objectPassingTest:&__block_literal_global_26_2];

  return v3;
}

- (BOOL)validateInput
{
  if ([(ICPasswordChangeViewController *)self isSetupForChangePassword])
  {
    if (![(ICPasswordChangeViewController *)self didAuthenticateWithBiometrics])
    {
      passphraseManager = [(ICPasswordChangeViewController *)self passphraseManager];
      account = [passphraseManager account];
      oldPasswordTextField = [(ICPasswordChangeViewController *)self oldPasswordTextField];
      text = [oldPasswordTextField text];
      v7 = [account isPassphraseCorrect:text];

      if ((v7 & 1) == 0)
      {
        v19 = [(ICPasswordChangeViewController *)self incorrectPasswordAttempts]>= 2;
        passphraseManager2 = [(ICPasswordChangeViewController *)self passphraseManager];
        account2 = [passphraseManager2 account];
        hintTextField = [ICAuthenticationAlert incorrectCustomPasswordInfoAlertWithObject:account2 showHint:v19];

        view = [(ICPasswordChangeViewController *)self view];
        window = [view window];
        [hintTextField presentInWindow:window completionHandler:0];

        [(ICPasswordChangeViewController *)self setIncorrectPasswordAttempts:[(ICPasswordChangeViewController *)self incorrectPasswordAttempts]+ 1];
        goto LABEL_11;
      }
    }
  }

  passwordTextField = [(ICPasswordChangeViewController *)self passwordTextField];
  text2 = [passwordTextField text];
  v10 = [text2 length];

  if (!v10)
  {
    v14 = +[ICAuthenticationAlert missingCustomPasswordInfoAlert];
LABEL_10:
    hintTextField = v14;
    view2 = [(ICPasswordChangeViewController *)self view];
    window2 = [view2 window];
    [hintTextField presentInWindow:window2 completionHandler:0];

LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  if (![(ICPasswordChangeViewController *)self passwordAndVerifyTextFieldsMatch])
  {
    v14 = +[ICAuthenticationAlert mismatchedCustomPasswordInfoAlert];
    goto LABEL_10;
  }

  hintTextField = [(ICPasswordChangeViewController *)self hintTextField];
  text3 = [hintTextField text];
  if ([text3 length])
  {

    v13 = 1;
LABEL_12:

    goto LABEL_13;
  }

  didAttemptToSubmitWithoutHint = [(ICPasswordChangeViewController *)self didAttemptToSubmitWithoutHint];

  if (!didAttemptToSubmitWithoutHint)
  {
    v25 = __ICLocalizedFrameworkString_impl(@"A hint is strongly recommended.", @"A hint is strongly recommended.", 0, 1);
    warningLabel = [(ICPasswordChangeViewController *)self warningLabel];
    [warningLabel setText:v25];

    warningLabel2 = [(ICPasswordChangeViewController *)self warningLabel];
    [warningLabel2 setHidden:0];

    [(ICPasswordChangeViewController *)self setDidAttemptToSubmitWithoutHint:1];
    return 0;
  }

  v13 = 1;
LABEL_13:
  warningLabel3 = [(ICPasswordChangeViewController *)self warningLabel];
  [warningLabel3 setHidden:1];

  return v13;
}

- (void)doneButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  if ([(ICPasswordChangeViewController *)self validateInput])
  {
    [(ICPasswordChangeViewController *)self dismissKeyboardIfNeeded];
    if ([(ICPasswordChangeViewController *)self didAuthenticateWithBiometrics])
    {
      text = 0;
    }

    else
    {
      oldPasswordTextField = [(ICPasswordChangeViewController *)self oldPasswordTextField];
      text = [oldPasswordTextField text];
    }

    passwordTextField = [(ICPasswordChangeViewController *)self passwordTextField];
    text2 = [passwordTextField text];
    v9 = text2;
    if (text2)
    {
      v10 = text2;
    }

    else
    {
      v10 = &stru_1F4F94F00;
    }

    v11 = v10;

    hintTextField = [(ICPasswordChangeViewController *)self hintTextField];
    text3 = [hintTextField text];
    v14 = text3;
    if (text3)
    {
      v15 = text3;
    }

    else
    {
      v15 = &stru_1F4F94F00;
    }

    v16 = v15;

    if ([(ICPasswordChangeViewController *)self isSetupForChangePassword])
    {
      objc_initWeak(&location, self);
      passphraseManager = [(ICPasswordChangeViewController *)self passphraseManager];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __52__ICPasswordChangeViewController_doneButtonPressed___block_invoke;
      v23[3] = &unk_1E846DEF8;
      objc_copyWeak(&v24, &location);
      [passphraseManager changePassphrase:text toPassphrase:v11 hint:v16 completion:v23];

      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }

    else
    {
      passphraseManager2 = [(ICPasswordChangeViewController *)self passphraseManager];
      v19 = [passphraseManager2 setPassphrase:v11 hint:v16];

      if (v19)
      {
        [(ICPasswordChangeViewController *)self dismissWithResult:2];
      }

      else
      {
        v20 = +[ICAuthenticationAlert cannotSetCustomPasswordInfoAlert];
        view = [(ICPasswordChangeViewController *)self view];
        window = [view window];
        [v20 presentInWindow:window completionHandler:0];
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

- (void)dismissWithResult:(unint64_t)result
{
  [(ICPasswordChangeViewController *)self dismissKeyboardIfNeeded];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__ICPasswordChangeViewController_dismissWithResult___block_invoke;
  v5[3] = &unk_1E84698E0;
  v5[4] = self;
  v5[5] = result;
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
  passwordTextField = [(ICPasswordChangeViewController *)self passwordTextField];
  text = [passwordTextField text];
  precomposedStringWithCanonicalMapping = [text precomposedStringWithCanonicalMapping];
  verifyTextField = [(ICPasswordChangeViewController *)self verifyTextField];
  text2 = [verifyTextField text];
  precomposedStringWithCanonicalMapping2 = [text2 precomposedStringWithCanonicalMapping];
  v9 = [precomposedStringWithCanonicalMapping isEqualToString:precomposedStringWithCanonicalMapping2];

  return v9;
}

- (void)setUpForAddingPasswordWithAccount:(id)account
{
  accountCopy = account;
  v5 = [[ICAccountPassphraseManager alloc] initWithAccount:accountCopy];
  [(ICPasswordChangeViewController *)self setPassphraseManager:v5];

  [(ICPasswordChangeViewController *)self resetTextFields];
  [(ICPasswordChangeViewController *)self setUpNavigationBar];
  v6 = __ICLocalizedFrameworkString_impl(@"Set Password", @"Set Password", 0, 1);
  [(ICPasswordChangeViewController *)self setTitle:v6];

  [(ICPasswordChangeViewController *)self setModalInPresentation:1];
  v7 = MEMORY[0x1E69B7658];
  mEMORY[0x1E69B7800] = [MEMORY[0x1E69B7800] sharedContext];
  managedObjectContext = [mEMORY[0x1E69B7800] managedObjectContext];
  v10 = [v7 allActiveAccountsInContext:managedObjectContext];
  v11 = [v10 count];

  accountName = [accountCopy accountName];

  ic_trimmedString = [accountName ic_trimmedString];

  if (v11 >= 2 && [ic_trimmedString length])
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = __ICLocalizedFrameworkString_impl(@"Create a password for all your locked notes in your “%@” account.", @"Create a password for all your locked notes in your “%@” account.", 0, 1);
    headerLabel2 = [v13 localizedStringWithFormat:v14, ic_trimmedString];
    headerLabel = [(ICPasswordChangeViewController *)self headerLabel];
    [headerLabel setText:headerLabel2];
  }

  else
  {
    v14 = __ICLocalizedFrameworkString_impl(@"Create a password for all your locked notes.", @"Create a password for all your locked notes.", 0, 1);
    headerLabel2 = [(ICPasswordChangeViewController *)self headerLabel];
    [headerLabel2 setText:v14];
  }

  v17 = __ICLocalizedFrameworkString_impl(@"Password", @"Password", 0, 1);
  passwordLabel = [(ICPasswordChangeViewController *)self passwordLabel];
  [passwordLabel setText:v17];

  v19 = __ICLocalizedFrameworkString_impl(@"Verify", @"Verify", 0, 1);
  verifyLabel = [(ICPasswordChangeViewController *)self verifyLabel];
  [verifyLabel setText:v19];

  v21 = __ICLocalizedFrameworkString_impl(@"Hint", @"Hint", 0, 1);
  hintLabel = [(ICPasswordChangeViewController *)self hintLabel];
  [hintLabel setText:v21];

  v23 = __ICLocalizedFrameworkString_impl(@"Done", @"Done", 0, 1);
  doneButton = [(ICPasswordChangeViewController *)self doneButton];
  [doneButton setTitle:v23];

  [(ICPasswordChangeViewController *)self setIsSetupForChangePassword:0];
  [(ICPasswordChangeViewController *)self setupAccessibility];
}

- (void)setUpForChangePasswordWithAccount:(id)account didAuthenticateWithBiometrics:(BOOL)biometrics
{
  biometricsCopy = biometrics;
  accountCopy = account;
  v7 = [[ICAccountPassphraseManager alloc] initWithAccount:accountCopy];

  [(ICPasswordChangeViewController *)self setPassphraseManager:v7];
  [(ICPasswordChangeViewController *)self resetTextFields];
  [(ICPasswordChangeViewController *)self setUpNavigationBar];
  v8 = __ICLocalizedFrameworkString_impl(@"Change Password", @"Change Password", 0, 1);
  [(ICPasswordChangeViewController *)self setTitle:v8];

  v9 = __ICLocalizedFrameworkString_impl(@"Old Password", @"Old Password", 0, 1);
  oldPasswordLabel = [(ICPasswordChangeViewController *)self oldPasswordLabel];
  [oldPasswordLabel setText:v9];

  v11 = __ICLocalizedFrameworkString_impl(@"New Password", @"New Password", 0, 1);
  passwordLabel = [(ICPasswordChangeViewController *)self passwordLabel];
  [passwordLabel setText:v11];

  v13 = __ICLocalizedFrameworkString_impl(@"Verify", @"Verify", 0, 1);
  verifyLabel = [(ICPasswordChangeViewController *)self verifyLabel];
  [verifyLabel setText:v13];

  v15 = __ICLocalizedFrameworkString_impl(@"Hint", @"Hint", 0, 1);
  hintLabel = [(ICPasswordChangeViewController *)self hintLabel];
  [hintLabel setText:v15];

  v17 = __ICLocalizedFrameworkString_impl(@"Done", @"Done", 0, 1);
  doneButton = [(ICPasswordChangeViewController *)self doneButton];
  [doneButton setTitle:v17];

  [(ICPasswordChangeViewController *)self setIsSetupForChangePassword:1];
  [(ICPasswordChangeViewController *)self setDidAuthenticateWithBiometrics:biometricsCopy];

  [(ICPasswordChangeViewController *)self setupAccessibility];
}

- (void)resetTextFields
{
  oldPasswordTextField = [(ICPasswordChangeViewController *)self oldPasswordTextField];
  [oldPasswordTextField setText:&stru_1F4F94F00];

  passwordTextField = [(ICPasswordChangeViewController *)self passwordTextField];
  [passwordTextField setText:&stru_1F4F94F00];

  verifyTextField = [(ICPasswordChangeViewController *)self verifyTextField];
  [verifyTextField setText:&stru_1F4F94F00];

  hintTextField = [(ICPasswordChangeViewController *)self hintTextField];
  [hintTextField setText:&stru_1F4F94F00];
}

- (id)disclaimerAttributedString
{
  v18[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DB878] systemFontOfSize:13.0];
  ic_fontWithSingleLineA = [v2 ic_fontWithSingleLineA];

  v4 = *MEMORY[0x1E69DB650];
  v17[0] = *MEMORY[0x1E69DB648];
  v17[1] = v4;
  v18[0] = ic_fontWithSingleLineA;
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v18[1] = secondaryLabelColor;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v7 = MEMORY[0x1E69B7658];
  mEMORY[0x1E69B7800] = [MEMORY[0x1E69B7800] sharedContext];
  managedObjectContext = [mEMORY[0x1E69B7800] managedObjectContext];
  v10 = [v7 allActiveAccountsInContext:managedObjectContext];
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
  firstResponderTextField = [(ICPasswordChangeViewController *)self firstResponderTextField];
  [firstResponderTextField resignFirstResponder];
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

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  orderedTextFields = [(ICPasswordChangeViewController *)self orderedTextFields];
  v6 = [orderedTextFields indexOfObject:returnCopy];

  v7 = v6 + 1;
  orderedTextFields2 = [(ICPasswordChangeViewController *)self orderedTextFields];
  v9 = [orderedTextFields2 count];

  if (v7 >= v9)
  {
    [(ICPasswordChangeViewController *)self doneButtonPressed:0];
  }

  else
  {
    objc_opt_class();
    orderedTextFields3 = [(ICPasswordChangeViewController *)self orderedTextFields];
    v11 = [orderedTextFields3 objectAtIndexedSubscript:v7];
    v12 = ICDynamicCast();

    [v12 becomeFirstResponder];
  }

  return 1;
}

- (void)contentSizeCategoryDidChange
{
  [(ICPasswordChangeViewController *)self updateFonts];
  view = [(ICPasswordChangeViewController *)self view];
  [view setNeedsUpdateConstraints];
}

- (void)updateFonts
{
  v16 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD28]];
  v3 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
  v4 = [MEMORY[0x1E69DB878] fontWithDescriptor:v3 size:0.0];
  v5 = [MEMORY[0x1E69DB878] fontWithDescriptor:v16 size:0.0];
  headerLabel = [(ICPasswordChangeViewController *)self headerLabel];
  [headerLabel setFont:v5];

  warningLabel = [(ICPasswordChangeViewController *)self warningLabel];
  [warningLabel setFont:v5];

  oldPasswordLabel = [(ICPasswordChangeViewController *)self oldPasswordLabel];
  [oldPasswordLabel setFont:v4];

  oldPasswordTextField = [(ICPasswordChangeViewController *)self oldPasswordTextField];
  [oldPasswordTextField setFont:v4];

  passwordLabel = [(ICPasswordChangeViewController *)self passwordLabel];
  [passwordLabel setFont:v4];

  passwordTextField = [(ICPasswordChangeViewController *)self passwordTextField];
  [passwordTextField setFont:v4];

  verifyLabel = [(ICPasswordChangeViewController *)self verifyLabel];
  [verifyLabel setFont:v4];

  verifyTextField = [(ICPasswordChangeViewController *)self verifyTextField];
  [verifyTextField setFont:v4];

  hintLabel = [(ICPasswordChangeViewController *)self hintLabel];
  [hintLabel setFont:v4];

  hintTextField = [(ICPasswordChangeViewController *)self hintTextField];
  [hintTextField setFont:v4];
}

- (void)setupAccessibility
{
  headerLabel = [(ICPasswordChangeViewController *)self headerLabel];
  accessibilityTraits = [headerLabel accessibilityTraits];
  [headerLabel setAccessibilityTraits:*MEMORY[0x1E69DD9C8] | accessibilityTraits];

  isSetupForChangePassword = [(ICPasswordChangeViewController *)self isSetupForChangePassword];
  oldPasswordLabel = [(ICPasswordChangeViewController *)self oldPasswordLabel];
  [oldPasswordLabel setIsAccessibilityElement:isSetupForChangePassword];

  isSetupForChangePassword2 = [(ICPasswordChangeViewController *)self isSetupForChangePassword];
  oldPasswordTextField = [(ICPasswordChangeViewController *)self oldPasswordTextField];
  [oldPasswordTextField setIsAccessibilityElement:isSetupForChangePassword2];

  v9 = __ICLocalizedFrameworkString_impl(@"Old Password", @"Old Password", 0, 1);
  oldPasswordTextField2 = [(ICPasswordChangeViewController *)self oldPasswordTextField];
  [oldPasswordTextField2 setAccessibilityLabel:v9];

  v11 = __ICLocalizedFrameworkString_impl(@"Enter your old password first in order to set a new password.", @"Enter your old password first in order to set a new password.", 0, 1);
  oldPasswordTextField3 = [(ICPasswordChangeViewController *)self oldPasswordTextField];
  [oldPasswordTextField3 setAccessibilityHint:v11];

  v13 = __ICLocalizedFrameworkString_impl(@"New Password", @"New Password", 0, 1);
  passwordTextField = [(ICPasswordChangeViewController *)self passwordTextField];
  [passwordTextField setAccessibilityLabel:v13];

  v15 = __ICLocalizedFrameworkString_impl(@"Enter a new password to use for your protected notes.", @"Enter a new password to use for your protected notes.", 0, 1);
  passwordTextField2 = [(ICPasswordChangeViewController *)self passwordTextField];
  [passwordTextField2 setAccessibilityHint:v15];

  v17 = __ICLocalizedFrameworkString_impl(@"Confirm Password", @"Confirm Password", 0, 1);
  verifyTextField = [(ICPasswordChangeViewController *)self verifyTextField];
  [verifyTextField setAccessibilityLabel:v17];

  v19 = __ICLocalizedFrameworkString_impl(@"Enter your new password again for confirmation.", @"Enter your new password again for confirmation.", 0, 1);
  verifyTextField2 = [(ICPasswordChangeViewController *)self verifyTextField];
  [verifyTextField2 setAccessibilityHint:v19];

  v21 = __ICLocalizedFrameworkString_impl(@"Password Hint", @"Password Hint", 0, 1);
  hintTextField = [(ICPasswordChangeViewController *)self hintTextField];
  [hintTextField setAccessibilityLabel:v21];

  v24 = __ICLocalizedFrameworkString_impl(@"Enter a hint for your new password.", @"Enter a hint for your new password.", 0, 1);
  hintTextField2 = [(ICPasswordChangeViewController *)self hintTextField];
  [hintTextField2 setAccessibilityHint:v24];
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