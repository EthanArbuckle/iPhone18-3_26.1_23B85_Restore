@interface OBPasscodeViewController
- (OBPasscodeViewControllerDelegate)delegate;
- (double)_verticalPaddingForInputView;
- (void)_completionTapped:(id)tapped;
- (void)_updateCompletionButtonEnabledStateForPasscode:(id)passcode;
- (void)clearPasscodeEntry;
- (void)configureForPasscodeEntry:(unint64_t)entry length:(int64_t)length;
- (void)loadView;
- (void)passcodeInput:(id)input enteredPasscode:(id)passcode;
- (void)setPasscodeInputView:(id)view;
- (void)shakePasscodeEntry;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation OBPasscodeViewController

- (void)setPasscodeInputView:(id)view
{
  v41[3] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  passcodeInputView = [(OBPasscodeViewController *)self passcodeInputView];
  objc_storeStrong(&self->_passcodeInputView, view);
  [passcodeInputView setDelegate:0];
  [viewCopy setDelegate:self];
  contentView = [(OBWelcomeController *)self contentView];
  [contentView addSubview:viewCopy];

  presentingViewController = [(OBPasscodeViewController *)self presentingViewController];

  if (presentingViewController)
  {
    if ([passcodeInputView isFirstResponder])
    {
      v9 = MEMORY[0x1E69DD250];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __49__OBPasscodeViewController_setPasscodeInputView___block_invoke;
      v39[3] = &unk_1E7C15590;
      v40 = viewCopy;
      [v9 performWithoutAnimation:v39];
    }

    else
    {
      [viewCopy becomeFirstResponder];
    }
  }

  [passcodeInputView removeFromSuperview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    leadingAnchor = [viewCopy leadingAnchor];
    contentView2 = [(OBWelcomeController *)self contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v13 setActive:1];

    trailingAnchor = [viewCopy trailingAnchor];
    contentView3 = [(OBWelcomeController *)self contentView];
    trailingAnchor2 = [contentView3 trailingAnchor];
    v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v17 setActive:1];
  }

  [(OBPasscodeViewController *)self _verticalPaddingForInputView];
  v19 = v18;
  topAnchor = [viewCopy topAnchor];
  contentView4 = [(OBWelcomeController *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v19];

  contentView5 = [(OBWelcomeController *)self contentView];
  bottomAnchor = [contentView5 bottomAnchor];
  bottomAnchor2 = [viewCopy bottomAnchor];
  v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v19];

  contentViewTopConstraint = [(OBPasscodeViewController *)self contentViewTopConstraint];

  if (contentViewTopConstraint)
  {
    contentViewTopConstraint2 = [(OBPasscodeViewController *)self contentViewTopConstraint];
    [contentViewTopConstraint2 constant];
    [v23 setConstant:?];
  }

  [(OBPasscodeViewController *)self setContentViewTopConstraint:v23];
  [(OBPasscodeViewController *)self setContentViewBottomConstraint:v27];
  if (+[OBFeatureFlags isNaturalUIEnabled])
  {
    leadingAnchor3 = [viewCopy leadingAnchor];
    contentView6 = [(OBWelcomeController *)self contentView];
    [contentView6 leadingAnchor];
  }

  else
  {
    leadingAnchor3 = [viewCopy centerXAnchor];
    contentView6 = [(OBWelcomeController *)self contentView];
    [contentView6 centerXAnchor];
  }
  v32 = ;
  v33 = [leadingAnchor3 constraintEqualToAnchor:v32];

  v34 = MEMORY[0x1E696ACD8];
  v41[0] = v33;
  contentViewTopConstraint3 = [(OBPasscodeViewController *)self contentViewTopConstraint];
  v41[1] = contentViewTopConstraint3;
  contentViewBottomConstraint = [(OBPasscodeViewController *)self contentViewBottomConstraint];
  v41[2] = contentViewBottomConstraint;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:3];
  [v34 activateConstraints:v37];

  v38 = *MEMORY[0x1E69E9840];
}

- (void)configureForPasscodeEntry:(unint64_t)entry length:(int64_t)length
{
  if (entry == 1)
  {
    goto LABEL_5;
  }

  if (!entry)
  {
    if (length >= 1)
    {
      v7 = [OBSimplePasscodeInputView alloc];
      v16 = [(OBSimplePasscodeInputView *)v7 initWithFrame:length numberOfEntryFields:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(OBSimplePasscodeInputView *)v16 setLimitCharactersToNumbers:0];
LABEL_6:
      v9 = v16;
      goto LABEL_8;
    }

LABEL_5:
    v8 = [OBComplexPasscodeInputView alloc];
    v16 = [(OBComplexPasscodeInputView *)v8 initWithFrame:entry == 0 numericOnly:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
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
    delegate = [(OBPasscodeViewController *)self delegate];
    navigationItem2 = [delegate completionButtonTitleForPasscodeViewController:self];

    v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:navigationItem2 style:2 target:self action:sel__completionTapped_];
    navigationItem = [(OBBaseWelcomeController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v12];

    passcodeInputView = [(OBPasscodeViewController *)self passcodeInputView];
    passcode = [passcodeInputView passcode];
    [(OBPasscodeViewController *)self _updateCompletionButtonEnabledStateForPasscode:passcode];
  }

  else
  {
    navigationItem2 = [(OBBaseWelcomeController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:0];
  }
}

- (void)clearPasscodeEntry
{
  passcodeInputView = [(OBPasscodeViewController *)self passcodeInputView];
  [passcodeInputView setPasscode:&stru_1F2CE9518];
}

- (void)shakePasscodeEntry
{
  passcodeInputView = [(OBPasscodeViewController *)self passcodeInputView];
  [passcodeInputView shake];
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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = OBPasscodeViewController;
  coordinatorCopy = coordinator;
  [(OBWelcomeController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__OBPasscodeViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E7C158F0;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
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

- (void)_completionTapped:(id)tapped
{
  delegate = [(OBPasscodeViewController *)self delegate];
  passcodeInputView = [(OBPasscodeViewController *)self passcodeInputView];
  passcode = [passcodeInputView passcode];
  [delegate passcodeViewController:self didEnterPasscode:passcode];
}

- (void)_updateCompletionButtonEnabledStateForPasscode:(id)passcode
{
  passcodeCopy = passcode;
  if ([(OBPasscodeViewController *)self requiresCompletion])
  {
    delegate = [(OBPasscodeViewController *)self delegate];
    v5 = [delegate passcodeViewController:self shouldEnableCompletionButtonForPasscode:passcodeCopy];

    navigationItem = [(OBBaseWelcomeController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:v5];

    activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
    [activeKeyboard setReturnKeyEnabled:v5];
  }
}

- (double)_verticalPaddingForInputView
{
  v2 = +[OBDevice currentDevice];
  type = [v2 type];

  result = 20.0;
  if (type != 2)
  {
    v5 = +[OBDevice currentDevice];
    templateType = [v5 templateType];

    if ((templateType - 5) > 5)
    {
      return 37.0;
    }

    else
    {
      return dbl_1B4FFC3D8[templateType - 5];
    }
  }

  return result;
}

- (void)passcodeInput:(id)input enteredPasscode:(id)passcode
{
  passcodeCopy = passcode;
  delegate = [(OBPasscodeViewController *)self delegate];
  [delegate passcodeViewController:self didEnterPasscode:passcodeCopy];
}

- (OBPasscodeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end