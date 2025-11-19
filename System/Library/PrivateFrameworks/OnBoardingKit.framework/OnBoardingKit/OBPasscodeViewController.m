@interface OBPasscodeViewController
- (OBPasscodeViewControllerDelegate)delegate;
- (double)_verticalPaddingForInputView;
- (void)_completionTapped:(id)a3;
- (void)_updateCompletionButtonEnabledStateForPasscode:(id)a3;
- (void)clearPasscodeEntry;
- (void)configureForPasscodeEntry:(unint64_t)a3 length:(int64_t)a4;
- (void)loadView;
- (void)passcodeInput:(id)a3 enteredPasscode:(id)a4;
- (void)setPasscodeInputView:(id)a3;
- (void)shakePasscodeEntry;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation OBPasscodeViewController

- (void)setPasscodeInputView:(id)a3
{
  v41[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(OBPasscodeViewController *)self passcodeInputView];
  objc_storeStrong(&self->_passcodeInputView, a3);
  [v6 setDelegate:0];
  [v5 setDelegate:self];
  v7 = [(OBWelcomeController *)self contentView];
  [v7 addSubview:v5];

  v8 = [(OBPasscodeViewController *)self presentingViewController];

  if (v8)
  {
    if ([v6 isFirstResponder])
    {
      v9 = MEMORY[0x1E69DD250];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __49__OBPasscodeViewController_setPasscodeInputView___block_invoke;
      v39[3] = &unk_1E7C15590;
      v40 = v5;
      [v9 performWithoutAnimation:v39];
    }

    else
    {
      [v5 becomeFirstResponder];
    }
  }

  [v6 removeFromSuperview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v5 leadingAnchor];
    v11 = [(OBWelcomeController *)self contentView];
    v12 = [v11 leadingAnchor];
    v13 = [v10 constraintEqualToAnchor:v12];
    [v13 setActive:1];

    v14 = [v5 trailingAnchor];
    v15 = [(OBWelcomeController *)self contentView];
    v16 = [v15 trailingAnchor];
    v17 = [v14 constraintEqualToAnchor:v16];
    [v17 setActive:1];
  }

  [(OBPasscodeViewController *)self _verticalPaddingForInputView];
  v19 = v18;
  v20 = [v5 topAnchor];
  v21 = [(OBWelcomeController *)self contentView];
  v22 = [v21 topAnchor];
  v23 = [v20 constraintEqualToAnchor:v22 constant:v19];

  v24 = [(OBWelcomeController *)self contentView];
  v25 = [v24 bottomAnchor];
  v26 = [v5 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:v19];

  v28 = [(OBPasscodeViewController *)self contentViewTopConstraint];

  if (v28)
  {
    v29 = [(OBPasscodeViewController *)self contentViewTopConstraint];
    [v29 constant];
    [v23 setConstant:?];
  }

  [(OBPasscodeViewController *)self setContentViewTopConstraint:v23];
  [(OBPasscodeViewController *)self setContentViewBottomConstraint:v27];
  if (+[OBFeatureFlags isNaturalUIEnabled])
  {
    v30 = [v5 leadingAnchor];
    v31 = [(OBWelcomeController *)self contentView];
    [v31 leadingAnchor];
  }

  else
  {
    v30 = [v5 centerXAnchor];
    v31 = [(OBWelcomeController *)self contentView];
    [v31 centerXAnchor];
  }
  v32 = ;
  v33 = [v30 constraintEqualToAnchor:v32];

  v34 = MEMORY[0x1E696ACD8];
  v41[0] = v33;
  v35 = [(OBPasscodeViewController *)self contentViewTopConstraint];
  v41[1] = v35;
  v36 = [(OBPasscodeViewController *)self contentViewBottomConstraint];
  v41[2] = v36;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:3];
  [v34 activateConstraints:v37];

  v38 = *MEMORY[0x1E69E9840];
}

- (void)configureForPasscodeEntry:(unint64_t)a3 length:(int64_t)a4
{
  if (a3 == 1)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    if (a4 >= 1)
    {
      v7 = [OBSimplePasscodeInputView alloc];
      v16 = [(OBSimplePasscodeInputView *)v7 initWithFrame:a4 numberOfEntryFields:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(OBSimplePasscodeInputView *)v16 setLimitCharactersToNumbers:0];
LABEL_6:
      v9 = v16;
      goto LABEL_8;
    }

LABEL_5:
    v8 = [OBComplexPasscodeInputView alloc];
    v16 = [(OBComplexPasscodeInputView *)v8 initWithFrame:a3 == 0 numericOnly:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(OBPasscodeViewController *)self setRequiresCompletion:1];
    goto LABEL_6;
  }

  v9 = 0;
LABEL_8:
  v17 = v9;
  [(OBSimplePasscodeInputView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBPasscodeViewController *)self setPasscodeInputView:v17];
  if ([(OBPasscodeViewController *)self requiresCompletion])
  {
    v10 = [(OBPasscodeViewController *)self delegate];
    v11 = [v10 completionButtonTitleForPasscodeViewController:self];

    v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v11 style:2 target:self action:sel__completionTapped_];
    v13 = [(OBBaseWelcomeController *)self navigationItem];
    [v13 setRightBarButtonItem:v12];

    v14 = [(OBPasscodeViewController *)self passcodeInputView];
    v15 = [v14 passcode];
    [(OBPasscodeViewController *)self _updateCompletionButtonEnabledStateForPasscode:v15];
  }

  else
  {
    v11 = [(OBBaseWelcomeController *)self navigationItem];
    [v11 setRightBarButtonItem:0];
  }
}

- (void)clearPasscodeEntry
{
  v2 = [(OBPasscodeViewController *)self passcodeInputView];
  [v2 setPasscode:&stru_1F2CE9518];
}

- (void)shakePasscodeEntry
{
  v2 = [(OBPasscodeViewController *)self passcodeInputView];
  [v2 shake];
}

- (void)loadView
{
  [(OBWelcomeController *)self setIncludePaddingAboveContentView:0];
  v3.receiver = self;
  v3.super_class = OBPasscodeViewController;
  [(OBWelcomeController *)&v3 loadView];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = OBPasscodeViewController;
  [(OBWelcomeController *)&v3 viewDidLoad];
  [(OBWelcomeController *)self setShouldAdjustScrollViewInsetForKeyboard:1];
  [(OBWelcomeController *)self setShouldAdjustButtonTrayForKeyboard:1];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = OBPasscodeViewController;
  v7 = a4;
  [(OBWelcomeController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__OBPasscodeViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E7C158F0;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

void __79__OBPasscodeViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _verticalPaddingForInputView];
  v3 = v2;
  v4 = [*(a1 + 32) contentViewTopConstraint];
  [v4 setConstant:v3];

  v5 = [*(a1 + 32) contentViewBottomConstraint];
  [v5 setConstant:v3];
}

- (void)_completionTapped:(id)a3
{
  v6 = [(OBPasscodeViewController *)self delegate];
  v4 = [(OBPasscodeViewController *)self passcodeInputView];
  v5 = [v4 passcode];
  [v6 passcodeViewController:self didEnterPasscode:v5];
}

- (void)_updateCompletionButtonEnabledStateForPasscode:(id)a3
{
  v9 = a3;
  if ([(OBPasscodeViewController *)self requiresCompletion])
  {
    v4 = [(OBPasscodeViewController *)self delegate];
    v5 = [v4 passcodeViewController:self shouldEnableCompletionButtonForPasscode:v9];

    v6 = [(OBBaseWelcomeController *)self navigationItem];
    v7 = [v6 rightBarButtonItem];
    [v7 setEnabled:v5];

    v8 = [MEMORY[0x1E69DCBB8] activeKeyboard];
    [v8 setReturnKeyEnabled:v5];
  }
}

- (double)_verticalPaddingForInputView
{
  v2 = +[OBDevice currentDevice];
  v3 = [v2 type];

  result = 20.0;
  if (v3 != 2)
  {
    v5 = +[OBDevice currentDevice];
    v6 = [v5 templateType];

    if ((v6 - 5) > 5)
    {
      return 37.0;
    }

    else
    {
      return dbl_1B4FFC3D8[v6 - 5];
    }
  }

  return result;
}

- (void)passcodeInput:(id)a3 enteredPasscode:(id)a4
{
  v5 = a4;
  v6 = [(OBPasscodeViewController *)self delegate];
  [v6 passcodeViewController:self didEnterPasscode:v5];
}

- (OBPasscodeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end