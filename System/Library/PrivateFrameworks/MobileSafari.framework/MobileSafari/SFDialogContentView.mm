@interface SFDialogContentView
- (BOOL)_usesLoginFormAppearance;
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)textFieldShouldReturn:(id)return;
- (CGRect)rectOfAcceptButtonContainingPoint:(CGPoint)point withBuffer:(double)buffer;
- (SFDialogContentView)initWithCoder:(id)coder;
- (SFDialogContentView)initWithFrame:(CGRect)frame;
- (SFDialogView)dialogView;
- (double)_desiredButtonsWidth;
- (id)_stackedActionButtons;
- (id)keyCommands;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_actionTriggered:(id)triggered;
- (void)_addStackedActionButtonsIfNeeded;
- (void)_invokeDelegateWithSelectedIndex:(unint64_t)index;
- (void)_populateOptionalConstraints;
- (void)_setText:(id)text placeholder:(id)placeholder forTextField:(id)field;
- (void)_updateActionButtons;
- (void)endEditing;
- (void)layoutSubviews;
- (void)setActions:(id)actions;
- (void)setMessageText:(id)text;
- (void)setPasswordText:(id)text placeholder:(id)placeholder;
- (void)setTableViewRows:(id)rows didSelectRowAction:(id)action;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateConstraints;
@end

@implementation SFDialogContentView

- (SFDialogContentView)initWithFrame:(CGRect)frame
{
  v59[2] = *MEMORY[0x1E69E9840];
  v56.receiver = self;
  v56.super_class = SFDialogContentView;
  v3 = [(SFDialogContentView *)&v56 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    actionButtons = v3->_actionButtons;
    v3->_actionButtons = MEMORY[0x1E695E0F0];

    v4->_actionIndexTriggeredByEscapeKey = 0x7FFFFFFFFFFFFFFFLL;
    v4->_actionIndexTriggeredByReturnKey = 0x7FFFFFFFFFFFFFFFLL;
    v4->_actionIndexTriggeredByOptionReturnKey = 0x7FFFFFFFFFFFFFFFLL;
    [(SFDialogContentView *)v4 _setContinuousCornerRadius:18.0];
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(SFDialogContentView *)v4 setBackgroundColor:secondarySystemBackgroundColor];

    layer = [(SFDialogContentView *)v4 layer];
    v7 = borderColorForTraitCollection(0);
    [layer setBorderColor:{objc_msgSend(v7, "CGColor")}];

    [layer setBorderWidth:_SFOnePixel()];
    v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.3];
    [layer setShadowColor:{objc_msgSend(v8, "CGColor")}];

    LODWORD(v9) = 1.0;
    [layer setShadowOpacity:v9];
    [layer setShadowOffset:{0.0, 4.0}];
    [layer setShadowRadius:14.0];
    v10 = objc_alloc_init(SFDialogTextView);
    messageTextView = v4->_messageTextView;
    v4->_messageTextView = v10;

    [(SFDialogTextView *)v4->_messageTextView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFDialogContentView *)v4 addSubview:v4->_messageTextView];
    v12 = newTextField();
    inputTextField = v4->_inputTextField;
    v4->_inputTextField = v12;

    [(SFDialogTextField *)v4->_inputTextField setDelegate:v4];
    [(SFDialogContentView *)v4 addSubview:v4->_inputTextField];
    v14 = newTextField();
    passwordTextField = v4->_passwordTextField;
    v4->_passwordTextField = v14;

    [(SFDialogTextField *)v4->_passwordTextField setDelegate:v4];
    [(SFDialogTextField *)v4->_passwordTextField setReturnKeyType:1];
    [(SFDialogTextField *)v4->_passwordTextField setSecureTextEntry:1];
    [(SFDialogTextField *)v4->_passwordTextField setStackPosition:2];
    [(SFDialogContentView *)v4 addSubview:v4->_passwordTextField];
    v16 = objc_alloc(MEMORY[0x1E69DD020]);
    [(SFDialogContentView *)v4 bounds];
    v17 = [v16 initWithFrame:0 style:?];
    tableView = v4->_tableView;
    v4->_tableView = v17;

    [(UITableView *)v4->_tableView setDataSource:v4];
    [(UITableView *)v4->_tableView setDelegate:v4];
    [(UITableView *)v4->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITableView *)v4->_tableView _setContinuousCornerRadius:18.0];
    v4->_selectedRow = 0;
    [(SFDialogContentView *)v4 addSubview:v4->_tableView];
    v19 = [MEMORY[0x1E69DC738] buttonWithType:1];
    closeButton = v4->_closeButton;
    v4->_closeButton = v19;

    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(UIButton *)v4->_closeButton setTintColor:tertiaryLabelColor];

    LODWORD(v22) = 1148846080;
    [(UIButton *)v4->_closeButton setContentCompressionResistancePriority:0 forAxis:v22];
    LODWORD(v23) = 1148846080;
    [(UIButton *)v4->_closeButton setContentCompressionResistancePriority:1 forAxis:v23];
    [(UIButton *)v4->_closeButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v4->_closeButton _setTouchInsets:-20.0, -10.0, 0.0, -10.0];
    v54 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD40] scale:2];
    v53 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark" withConfiguration:v54];
    [(UIButton *)v4->_closeButton setImage:v53 forState:0];
    [(UIButton *)v4->_closeButton addTarget:v4 action:sel__actionTriggered_ forEvents:0x2000];
    [(SFDialogContentView *)v4 addSubview:v4->_closeButton];
    v24 = MEMORY[0x1E696ACD8];
    topAnchor = [(UIButton *)v4->_closeButton topAnchor];
    topAnchor2 = [(SFDialogContentView *)v4 topAnchor];
    v27 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:17.0];
    v59[0] = v27;
    trailingAnchor = [(UIButton *)v4->_closeButton trailingAnchor];
    trailingAnchor2 = [(SFDialogContentView *)v4 trailingAnchor];
    v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
    v59[1] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:2];
    [v24 activateConstraints:v31];

    v51 = MEMORY[0x1E696ACD8];
    topAnchor3 = [(SFDialogTextView *)v4->_messageTextView topAnchor];
    topAnchor4 = [(SFDialogContentView *)v4 topAnchor];
    v33 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v58[0] = v33;
    leadingAnchor = [(SFDialogTextView *)v4->_messageTextView leadingAnchor];
    leadingAnchor2 = [(SFDialogContentView *)v4 leadingAnchor];
    v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v58[1] = v36;
    trailingAnchor3 = [(SFDialogTextView *)v4->_messageTextView trailingAnchor];
    trailingAnchor4 = [(SFDialogContentView *)v4 trailingAnchor];
    v39 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v58[2] = v39;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:3];
    [v51 activateConstraints:v40];

    bottomAnchor = [(SFDialogTextField *)v4->_inputTextField bottomAnchor];
    topAnchor5 = [(SFDialogTextField *)v4->_passwordTextField topAnchor];
    v43 = [bottomAnchor constraintEqualToAnchor:topAnchor5 constant:_SFOnePixel()];
    v57 = v43;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
    layoutConstraintsWhenInputAndPasswordAreVisible = v4->_layoutConstraintsWhenInputAndPasswordAreVisible;
    v4->_layoutConstraintsWhenInputAndPasswordAreVisible = v44;

    heightAnchor = [(UITableView *)v4->_tableView heightAnchor];
    [SFPopoverSizingTableViewController caculateHeightForTableView:v4->_tableView targetGlobalRow:3 outGlobalRow:0];
    v47 = [heightAnchor constraintEqualToConstant:?];
    tableViewHeightConstraint = v4->_tableViewHeightConstraint;
    v4->_tableViewHeightConstraint = v47;

    [(SFDialogContentView *)v4 _populateOptionalConstraints];
    [(SFDialogContentView *)v4 setInputText:0 placeholder:0];
    [(SFDialogContentView *)v4 setPasswordText:0 placeholder:0];
    [(SFDialogContentView *)v4 setTableViewRows:0 didSelectRowAction:0];
    v49 = v4;
  }

  return v4;
}

- (SFDialogContentView)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFDialogContentView;
  return [(SFDialogContentView *)&v4 initWithCoder:coder];
}

- (BOOL)becomeFirstResponder
{
  if (!self->_hasAttemptedHardwareKeyboardFocus && _SFDeviceIsPad())
  {
    mEMORY[0x1E69DCBE0] = [MEMORY[0x1E69DCBE0] sharedInstance];
    if ([mEMORY[0x1E69DCBE0] isInHardwareKeyboardMode])
    {
      isHidden = [(SFDialogTextField *)self->_inputTextField isHidden];

      self->_hasAttemptedHardwareKeyboardFocus = 1;
      if ((isHidden & 1) == 0 && ([(SFDialogTextField *)self->_inputTextField becomeFirstResponder]& 1) != 0)
      {
        return 1;
      }

      goto LABEL_9;
    }
  }

  self->_hasAttemptedHardwareKeyboardFocus = 1;
LABEL_9:
  if (![(SFDialogTextField *)self->_inputTextField isHidden]|| ([(SFDialogTextField *)self->_passwordTextField isHidden]& 1) != 0)
  {
    v6.receiver = self;
    v6.super_class = SFDialogContentView;
    return [(SFDialogContentView *)&v6 becomeFirstResponder];
  }

  [(SFDialogTextField *)self->_passwordTextField becomeFirstResponder];
  return 1;
}

- (id)keyCommands
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel__returnAction_];
  v8[0] = v2;
  v3 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0x80000 action:sel__optionReturnAction_];
  v8[1] = v3;
  v4 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel__escapeAction_];
  v8[2] = v4;
  v5 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\t" modifierFlags:0 action:sel__focusInputTextField_];
  [v5 setWantsPriorityOverSystemBehavior:1];
  v8[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];

  return v6;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sel__returnAction_ == action)
  {
    if ([(SFDialogContentView *)self isFirstResponder])
    {
      v8 = 448;
      goto LABEL_11;
    }

LABEL_13:
    v9 = 0;
    goto LABEL_16;
  }

  if (sel__optionReturnAction_ == action)
  {
    if ([(SFDialogContentView *)self isFirstResponder])
    {
      v8 = 432;
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  if (sel__escapeAction_ != action)
  {
    if (sel__focusInputTextField_ != action)
    {
      v11.receiver = self;
      v11.super_class = SFDialogContentView;
      isFirstResponder = [(SFDialogContentView *)&v11 canPerformAction:action withSender:senderCopy];
LABEL_15:
      v9 = isFirstResponder;
      goto LABEL_16;
    }

    if (([(SFDialogTextField *)self->_inputTextField isHidden]& 1) == 0)
    {
      isFirstResponder = [(SFDialogContentView *)self isFirstResponder];
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v8 = 440;
LABEL_11:
  v9 = *(&self->super.super.super.isa + v8) != 0x7FFFFFFFFFFFFFFFLL;
LABEL_16:

  return v9;
}

- (void)updateConstraints
{
  v6.receiver = self;
  v6.super_class = SFDialogContentView;
  [(SFDialogContentView *)&v6 updateConstraints];
  [MEMORY[0x1E696ACD8] sf_setConstraints:self->_layoutConstraintsWhenInputIsVisible active:{-[SFDialogTextField isHidden](self->_inputTextField, "isHidden") ^ 1}];
  [MEMORY[0x1E696ACD8] sf_setConstraints:self->_layoutConstraintsWhenPasswordIsVisible active:{-[SFDialogTextField isHidden](self->_passwordTextField, "isHidden") ^ 1}];
  v3 = MEMORY[0x1E696ACD8];
  layoutConstraintsWhenInputAndPasswordAreVisible = self->_layoutConstraintsWhenInputAndPasswordAreVisible;
  if (([(SFDialogTextField *)self->_inputTextField isHidden]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(SFDialogTextField *)self->_passwordTextField isHidden]^ 1;
  }

  [v3 sf_setConstraints:layoutConstraintsWhenInputAndPasswordAreVisible active:v5];
  [MEMORY[0x1E696ACD8] sf_setConstraints:self->_layoutConstraintsWhenTableViewIsVisible active:{-[UITableView isHidden](self->_tableView, "isHidden") ^ 1}];
}

- (id)_stackedActionButtons
{
  actionButtons = self->_actionButtons;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__SFDialogContentView__stackedActionButtons__block_invoke;
  v5[3] = &unk_1E721E0B0;
  v5[4] = self;
  v3 = [(NSArray *)actionButtons safari_mapObjectsUsingBlock:v5];

  return v3;
}

id __44__SFDialogContentView__stackedActionButtons__block_invoke(uint64_t a1, void *a2)
{
  if (*(*(a1 + 32) + 424) == a2)
  {
    return 0;
  }

  else
  {
    return a2;
  }
}

- (double)_desiredButtonsWidth
{
  v18 = *MEMORY[0x1E69E9840];
  _stackedActionButtons = [(SFDialogContentView *)self _stackedActionButtons];
  v13 = 0u;
  v14 = 0u;
  v3 = ([_stackedActionButtons count] + 1) * 20.0;
  v15 = 0u;
  v16 = 0u;
  v4 = _stackedActionButtons;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    v8 = *MEMORY[0x1E69DE090];
    v9 = *(MEMORY[0x1E69DE090] + 8);
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v13 + 1) + 8 * v10) systemLayoutSizeFittingSize:{v8, v9, v13}];
        v3 = v3 + v11;
        ++v10;
      }

      while (v6 != v10);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_populateOptionalConstraints
{
  v51[4] = *MEMORY[0x1E69E9840];
  _stackedActionButtons = [(SFDialogContentView *)self _stackedActionButtons];
  lastObject = [_stackedActionButtons lastObject];
  topAnchor = [lastObject topAnchor];
  v6 = topAnchor;
  if (topAnchor)
  {
    bottomAnchor = topAnchor;
  }

  else
  {
    bottomAnchor = [(SFDialogContentView *)self bottomAnchor];
  }

  v48 = bottomAnchor;

  leadingAnchor = [(SFDialogTextField *)self->_inputTextField leadingAnchor];
  leadingAnchor2 = [(SFDialogContentView *)self leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
  v51[0] = v8;
  trailingAnchor = [(SFDialogTextField *)self->_inputTextField trailingAnchor];
  trailingAnchor2 = [(SFDialogContentView *)self trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
  v51[1] = v11;
  topAnchor2 = [(SFDialogTextField *)self->_inputTextField topAnchor];
  bottomAnchor2 = [(SFDialogTextView *)self->_messageTextView bottomAnchor];
  v14 = [topAnchor2 constraintEqualToAnchor:bottomAnchor2];
  v51[2] = v14;
  bottomAnchor3 = [(SFDialogTextField *)self->_inputTextField bottomAnchor];
  v16 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:v48 constant:-16.0];
  v51[3] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:4];
  layoutConstraintsWhenInputIsVisible = self->_layoutConstraintsWhenInputIsVisible;
  self->_layoutConstraintsWhenInputIsVisible = v17;

  leadingAnchor3 = [(SFDialogTextField *)self->_passwordTextField leadingAnchor];
  leadingAnchor4 = [(SFDialogContentView *)self leadingAnchor];
  v19 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:20.0];
  v50[0] = v19;
  trailingAnchor3 = [(SFDialogTextField *)self->_passwordTextField trailingAnchor];
  trailingAnchor4 = [(SFDialogContentView *)self trailingAnchor];
  v22 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-20.0];
  v50[1] = v22;
  topAnchor3 = [(SFDialogTextField *)self->_passwordTextField topAnchor];
  bottomAnchor4 = [(SFDialogTextView *)self->_messageTextView bottomAnchor];
  v25 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:bottomAnchor4];
  v50[2] = v25;
  bottomAnchor5 = [(SFDialogTextField *)self->_passwordTextField bottomAnchor];
  v27 = [bottomAnchor5 constraintLessThanOrEqualToAnchor:v48 constant:-16.0];
  v50[3] = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:4];
  layoutConstraintsWhenPasswordIsVisible = self->_layoutConstraintsWhenPasswordIsVisible;
  self->_layoutConstraintsWhenPasswordIsVisible = v28;

  leadingAnchor5 = [(UITableView *)self->_tableView leadingAnchor];
  leadingAnchor6 = [(SFDialogContentView *)self leadingAnchor];
  v41 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:20.0];
  v49[0] = v41;
  trailingAnchor5 = [(UITableView *)self->_tableView trailingAnchor];
  trailingAnchor6 = [(SFDialogContentView *)self trailingAnchor];
  v32 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-20.0];
  v49[1] = v32;
  topAnchor4 = [(UITableView *)self->_tableView topAnchor];
  bottomAnchor6 = [(SFDialogTextView *)self->_messageTextView bottomAnchor];
  v35 = [topAnchor4 constraintGreaterThanOrEqualToAnchor:bottomAnchor6];
  v49[2] = v35;
  bottomAnchor7 = [(UITableView *)self->_tableView bottomAnchor];
  v37 = [bottomAnchor7 constraintLessThanOrEqualToAnchor:v48 constant:-16.0];
  tableViewHeightConstraint = self->_tableViewHeightConstraint;
  v49[3] = v37;
  v49[4] = tableViewHeightConstraint;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:5];
  layoutConstraintsWhenTableViewIsVisible = self->_layoutConstraintsWhenTableViewIsVisible;
  self->_layoutConstraintsWhenTableViewIsVisible = v39;
}

- (void)layoutSubviews
{
  v34.receiver = self;
  v34.super_class = SFDialogContentView;
  [(SFDialogContentView *)&v34 layoutSubviews];
  traitCollection = [(SFDialogContentView *)self traitCollection];
  v4 = borderColorForTraitCollection(traitCollection);
  cGColor = [v4 CGColor];
  layer = [(SFDialogContentView *)self layer];
  [layer setBorderColor:cGColor];

  [(UIButton *)self->_closeButton frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  rect = v13;
  [(SFDialogTextView *)self->_messageTextView frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = 20.0;
  if (([(UIButton *)self->_closeButton isHidden]& 1) != 0)
  {
    v23 = 20.0;
  }

  else
  {
    v24 = v15 + 20.0;
    v25 = v17 + 16.0;
    v26 = v19 + -40.0;
    v27 = v21 + -32.0;
    if ([(UIView *)self _sf_usesLeftToRightLayout])
    {
      v35.origin.x = v15 + 20.0;
      v35.origin.y = v25;
      v35.size.width = v26;
      v35.size.height = v27;
      MaxX = CGRectGetMaxX(v35);
      v36.origin.x = v8;
      v36.origin.y = v10;
      v36.size.width = v12;
      v36.size.height = rect;
      MinX = CGRectGetMinX(v36);
      v23 = 20.0;
      v22 = MaxX - MinX + 13.0 + 20.0;
    }

    else
    {
      v37.origin.x = v8;
      v37.origin.y = v10;
      v37.size.width = v12;
      v37.size.height = rect;
      v30 = CGRectGetMaxX(v37);
      v38.origin.x = v24;
      v38.origin.y = v25;
      v38.size.width = v26;
      v38.size.height = v27;
      v22 = 20.0;
      v23 = v30 - CGRectGetMinX(v38) + 13.0 + 20.0;
    }
  }

  [(SFDialogTextView *)self->_messageTextView setContentInsets:16.0, v23, 16.0, v22];
  messageTextView = self->_messageTextView;
  [(SFDialogTextView *)messageTextView frame];
  [(SFDialogTextView *)messageTextView setPreferredMaxLayoutWidth:CGRectGetWidth(v39)];
  [(SFDialogContentView *)self _addStackedActionButtonsIfNeeded];
  v33.receiver = self;
  v33.super_class = SFDialogContentView;
  [(SFDialogContentView *)&v33 layoutSubviews];
}

- (void)setMessageText:(id)text
{
  [(SFDialogTextView *)self->_messageTextView setMessage:text];
  [(SFDialogTextView *)self->_messageTextView setAccessibilityTraits:*MEMORY[0x1E69DDA18]];
  messageTextView = self->_messageTextView;

  [(SFDialogTextView *)messageTextView setAccessibilityIdentifier:@"SFDialogViewMessageText"];
}

- (void)setPasswordText:(id)text placeholder:(id)placeholder
{
  [(SFDialogContentView *)self _setText:text placeholder:placeholder forTextField:self->_passwordTextField];
  _usesLoginFormAppearance = [(SFDialogContentView *)self _usesLoginFormAppearance];
  v6 = _usesLoginFormAppearance;
  [(SFDialogTextField *)self->_inputTextField setAutocorrectionType:_usesLoginFormAppearance];
  v7 = !_usesLoginFormAppearance;
  if (_usesLoginFormAppearance)
  {
    v8 = 0;
  }

  else
  {
    v8 = 2;
  }

  if (_usesLoginFormAppearance)
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = 2;
  }

  [(SFDialogTextField *)self->_inputTextField setAutocapitalizationType:v8];
  [(SFDialogTextField *)self->_inputTextField setReturnKeyType:v9];
  [(SFDialogTextField *)self->_inputTextField setStackPosition:v6];
  passwordTextField = self->_passwordTextField;

  [(SFDialogTextField *)passwordTextField setStackPosition:v10];
}

- (void)_setText:(id)text placeholder:(id)placeholder forTextField:(id)field
{
  fieldCopy = field;
  placeholderCopy = placeholder;
  [fieldCopy setText:text];
  [fieldCopy setPlaceholder:placeholderCopy];

  [fieldCopy setHidden:(text | placeholderCopy) == 0];

  [(SFDialogContentView *)self setNeedsUpdateConstraints];
}

- (void)endEditing
{
  [(SFDialogTextField *)self->_inputTextField endEditing:1];
  passwordTextField = self->_passwordTextField;

  [(SFDialogTextField *)passwordTextField endEditing:1];
}

- (void)setActions:(id)actions
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [actions copy];
  actions = self->_actions;
  self->_actions = v4;

  self->_actionIndexTriggeredByEscapeKey = 0x7FFFFFFFFFFFFFFFLL;
  self->_actionIndexTriggeredByReturnKey = 0x7FFFFFFFFFFFFFFFLL;
  v6 = self->_actions;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __34__SFDialogContentView_setActions___block_invoke;
  v20[3] = &unk_1E721E0D8;
  v20[4] = self;
  [(NSArray *)v6 enumerateObjectsUsingBlock:v20];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  _stackedActionButtons = [(SFDialogContentView *)self _stackedActionButtons];
  v8 = [_stackedActionButtons countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(_stackedActionButtons);
        }

        [*(*(&v16 + 1) + 8 * v11++) removeFromSuperview];
      }

      while (v9 != v11);
      v9 = [_stackedActionButtons countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v9);
  }

  [(UIButton *)self->_closeButton setHidden:1];
  v12 = self->_actions;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __34__SFDialogContentView_setActions___block_invoke_2;
  v15[3] = &unk_1E721E100;
  v15[4] = self;
  v13 = [(NSArray *)v12 safari_mapObjectsUsingBlock:v15];
  actionButtons = self->_actionButtons;
  self->_actionButtons = v13;

  [(SFDialogContentView *)self _updateActionButtons];
  [(SFDialogContentView *)self _addStackedActionButtonsIfNeeded];
  [(SFDialogContentView *)self setNeedsUpdateConstraints];
}

void __34__SFDialogContentView_setActions___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([v5 activatingKeyboardShortcut] == 2)
  {
    *(*(a1 + 32) + 448) = a3;
  }

  if ([v5 activatingKeyboardShortcut] == 1)
  {
    *(*(a1 + 32) + 440) = a3;
  }

  v6 = [v5 activatingKeyboardShortcut];

  if (v6 == 3)
  {
    *(*(a1 + 32) + 432) = a3;
  }
}

id __34__SFDialogContentView_setActions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 title];
  v5 = [v4 isEqualToString:@"\n!cancel"];

  if (v5)
  {
    [*(*(a1 + 32) + 424) setHidden:0];
    v6 = *(*(a1 + 32) + 424);
  }

  else
  {
    v6 = [MEMORY[0x1E69DC738] buttonWithType:1];
    v7 = [MEMORY[0x1E69DC888] sf_safariAccentColor];
    [v6 setTintColor:v7];

    LODWORD(v8) = 1148846080;
    [v6 setContentCompressionResistancePriority:1 forAxis:v8];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [v6 titleLabel];
    [v9 setAdjustsFontForContentSizeCategory:1];

    v10 = [v3 title];
    [v6 setTitle:v10 forState:0];

    if ([v3 hasCustomAction])
    {
      v11 = &selRef_triggerCustomAction;
      v12 = v3;
    }

    else
    {
      v12 = *(a1 + 32);
      v11 = &selRef__actionTriggered_;
    }

    [v6 addTarget:v12 action:*v11 forEvents:0x2000];
  }

  return v6;
}

- (void)_updateActionButtons
{
  actions = self->_actions;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__SFDialogContentView__updateActionButtons__block_invoke;
  v3[3] = &unk_1E721E0D8;
  v3[4] = self;
  [(NSArray *)actions enumerateObjectsUsingBlock:v3];
}

void __43__SFDialogContentView__updateActionButtons__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 actionType];
  v6 = MEMORY[0x1E69DDD40];
  if (v5)
  {
    v6 = MEMORY[0x1E69DDCF8];
  }

  v10 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*v6 addingSymbolicTraits:0x8000 options:3];
  v7 = [MEMORY[0x1E69DB878] fontWithDescriptor:v10 size:0.0];
  v8 = [*(*(a1 + 32) + 408) objectAtIndexedSubscript:a3];
  v9 = [v8 titleLabel];
  [v9 setFont:v7];
}

- (void)_addStackedActionButtonsIfNeeded
{
  selfCopy = self;
  v68 = *MEMORY[0x1E69E9840];
  _stackedActionButtons = [(SFDialogContentView *)self _stackedActionButtons];
  [(SFDialogContentView *)selfCopy _desiredButtonsWidth];
  v5 = v4;
  v6 = v4 <= 440.0;
  if (selfCopy->cachedButtonAlignDirectionHorizontal != v6)
  {
    v7 = selfCopy;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v8 = _stackedActionButtons;
    v9 = [v8 countByEnumeratingWithState:&v60 objects:v67 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v61;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v61 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v60 + 1) + 8 * i) removeFromSuperview];
        }

        v10 = [v8 countByEnumeratingWithState:&v60 objects:v67 count:16];
      }

      while (v10);
    }

    selfCopy = v7;
    v7->cachedButtonAlignDirectionHorizontal = v6;
  }

  v13 = [_stackedActionButtons count];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v58 = _stackedActionButtons;
    v45 = selfCopy;
    do
    {
      v16 = [_stackedActionButtons objectAtIndexedSubscript:v15];
      [(SFDialogContentView *)selfCopy addSubview:v16];
      if (v5 > 440.0)
      {
        v57 = v14;
        if (v15)
        {
          v29 = [(NSArray *)selfCopy->_actionButtons objectAtIndexedSubscript:v15 - 1];
          topAnchor = [v29 topAnchor];

          v31 = -16.0;
        }

        else
        {
          topAnchor = [(SFDialogContentView *)selfCopy bottomAnchor];
          v31 = -10.0;
        }

        v53 = MEMORY[0x1E696ACD8];
        centerXAnchor = [v16 centerXAnchor];
        centerXAnchor2 = [(SFDialogContentView *)selfCopy centerXAnchor];
        v38 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
        v64[0] = v38;
        widthAnchor = [v16 widthAnchor];
        widthAnchor2 = [(SFDialogContentView *)selfCopy widthAnchor];
        v41 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2 constant:-40.0];
        v64[1] = v41;
        bottomAnchor = [v16 bottomAnchor];
        v59 = topAnchor;
        v43 = [bottomAnchor constraintEqualToAnchor:topAnchor constant:v31];
        v64[2] = v43;
        v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:3];
        [v53 activateConstraints:v44];

        v14 = v57;
        if (v57 != 1)
        {
          selfCopy = v45;
          _stackedActionButtons = v58;
          goto LABEL_24;
        }

        topAnchor2 = [v16 topAnchor];
        selfCopy = v45;
        bottomAnchor2 = [(SFDialogTextView *)v45->_messageTextView bottomAnchor];
        topAnchor5 = [topAnchor2 constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
        [topAnchor5 setActive:1];
        _stackedActionButtons = v58;
      }

      else
      {
        if (v15)
        {
          v17 = [(NSArray *)selfCopy->_actionButtons objectAtIndexedSubscript:v15 - 1];
          v51 = MEMORY[0x1E696ACD8];
          topAnchor3 = [v16 topAnchor];
          topAnchor4 = [v17 topAnchor];
          topAnchor5 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
          v65[0] = topAnchor5;
          trailingAnchor = [v16 trailingAnchor];
          leadingAnchor = [v17 leadingAnchor];
          v19 = [trailingAnchor constraintEqualToAnchor:leadingAnchor constant:-20.0];
          v65[1] = v19;
          bottomAnchor3 = [v16 bottomAnchor];
          v59 = v17;
          [v17 bottomAnchor];
          v21 = selfCopy;
          v23 = v22 = v14;
          v24 = [bottomAnchor3 constraintEqualToAnchor:v23];
          v65[2] = v24;
          v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:3];
          [v51 activateConstraints:v25];

          _stackedActionButtons = v58;
          v14 = v22;
          selfCopy = v21;
          bottomAnchor2 = topAnchor4;

          topAnchor2 = topAnchor3;
          v28 = trailingAnchor;
        }

        else
        {
          v55 = MEMORY[0x1E696ACD8];
          trailingAnchor2 = [v16 trailingAnchor];
          topAnchor2 = [(SFDialogContentView *)selfCopy trailingAnchor];
          v59 = trailingAnchor2;
          v33 = [trailingAnchor2 constraintEqualToAnchor:topAnchor2 constant:-20.0];
          v66[0] = v33;
          topAnchor5 = [v16 topAnchor];
          bottomAnchor4 = [(SFDialogTextView *)selfCopy->_messageTextView bottomAnchor];
          v50 = [topAnchor5 constraintGreaterThanOrEqualToAnchor:bottomAnchor4];
          v66[1] = v50;
          bottomAnchor5 = [v16 bottomAnchor];
          bottomAnchor6 = [(SFDialogContentView *)selfCopy bottomAnchor];
          v35 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-10.0];
          v66[2] = v35;
          v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:3];
          [v55 activateConstraints:v36];

          bottomAnchor2 = v33;
          _stackedActionButtons = v58;

          v28 = bottomAnchor4;
        }
      }

LABEL_24:
      ++v15;
      --v14;
    }

    while (v14);
  }

  [(SFDialogContentView *)selfCopy _populateOptionalConstraints];
}

- (void)setTableViewRows:(id)rows didSelectRowAction:(id)action
{
  rowsCopy = rows;
  actionCopy = action;
  [(UITableView *)self->_tableView setHidden:[(NSArray *)rowsCopy count]== 0];
  tableData = self->_tableData;
  self->_tableData = rowsCopy;
  v9 = rowsCopy;

  v10 = _Block_copy(actionCopy);
  tableDidSelectRowAction = self->_tableDidSelectRowAction;
  self->_tableDidSelectRowAction = v10;

  [(UITableView *)self->_tableView reloadData];
  [SFPopoverSizingTableViewController caculateHeightForTableView:self->_tableView targetGlobalRow:3 outGlobalRow:0];
  [(NSLayoutConstraint *)self->_tableViewHeightConstraint setConstant:?];

  [(SFDialogContentView *)self setNeedsUpdateConstraints];
}

- (CGRect)rectOfAcceptButtonContainingPoint:(CGPoint)point withBuffer:(double)buffer
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x4010000000;
  v19 = "";
  v4 = *(MEMORY[0x1E695F058] + 16);
  v20 = *MEMORY[0x1E695F058];
  v21 = v4;
  actions = self->_actions;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__SFDialogContentView_rectOfAcceptButtonContainingPoint_withBuffer___block_invoke;
  v14[3] = &unk_1E721E128;
  *&v14[6] = buffer;
  pointCopy = point;
  v14[4] = self;
  v14[5] = &v16;
  [(NSArray *)actions enumerateObjectsUsingBlock:v14];
  v6 = v17[4];
  v7 = v17[5];
  v8 = v17[6];
  v9 = v17[7];
  _Block_object_dispose(&v16, 8);
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

void __68__SFDialogContentView_rectOfAcceptButtonContainingPoint_withBuffer___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (![a2 actionType])
  {
    v5 = [*(*(a1 + 32) + 408) objectAtIndexedSubscript:a3];
    [v5 frame];
    x = v6;
    y = v8;
    width = v10;
    height = v12;

    v14 = *(a1 + 48);
    v15 = -(v14 * width);
    v16 = -(v14 * height);
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    v19 = CGRectInset(v18, v15, v16);
    if (CGRectContainsPoint(v19, *(a1 + 56)))
    {
      if (!CGRectIsEmpty(*(*(*(a1 + 40) + 8) + 32)))
      {
        v21.origin.x = x;
        v21.origin.y = y;
        v21.size.width = width;
        v21.size.height = height;
        v20 = CGRectUnion(*(*(*(a1 + 40) + 8) + 32), v21);
        x = v20.origin.x;
        y = v20.origin.y;
        width = v20.size.width;
        height = v20.size.height;
      }

      v17 = *(*(a1 + 40) + 8);
      v17[4] = x;
      v17[5] = y;
      v17[6] = width;
      v17[7] = height;
    }
  }
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  if ([(SFDialogContentView *)self _usesLoginFormAppearance]&& self->_inputTextField == returnCopy)
  {
    [(SFDialogTextField *)self->_passwordTextField becomeFirstResponder];
  }

  else
  {
    [(SFDialogContentView *)self _invokeDelegateWithSelectedIndex:self->_actionIndexTriggeredByReturnKey];
  }

  return 0;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  tableView = self->_tableView;
  pathCopy = path;
  v7 = [(UITableView *)tableView dequeueReusableCellWithIdentifier:@"tableCell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"tableCell"];
  }

  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark"];
  imageView = [v7 imageView];
  [imageView setImage:v8];

  v10 = [pathCopy row] != self->_selectedRow;
  imageView2 = [v7 imageView];
  [imageView2 setHidden:v10];

  v12 = -[NSArray safari_dictionaryAtIndex:](self->_tableData, "safari_dictionaryAtIndex:", [pathCopy row]);
  v13 = [v12 safari_stringForKey:@"textLabel"];
  textLabel = [v7 textLabel];
  [textLabel setText:v13];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  detailTextLabel = [v7 detailTextLabel];
  [detailTextLabel setTextColor:secondaryLabelColor];

  tableData = self->_tableData;
  v18 = [pathCopy row];

  v19 = [(NSArray *)tableData safari_dictionaryAtIndex:v18];
  v20 = [v19 safari_stringForKey:@"detailTextLabel"];
  detailTextLabel2 = [v7 detailTextLabel];
  [detailTextLabel2 setText:v20];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [(UITableView *)self->_tableView deselectRowAtIndexPath:pathCopy animated:1];
  selectedRow = self->_selectedRow;
  self->_selectedRow = [pathCopy row];
  if (selectedRow != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [MEMORY[0x1E696AC88] indexPathForRow:selectedRow inSection:0];
    v9 = [viewCopy cellForRowAtIndexPath:v8];
    imageView = [v9 imageView];
    [imageView setHidden:1];
  }

  v11 = [viewCopy cellForRowAtIndexPath:pathCopy];
  imageView2 = [v11 imageView];
  [imageView2 setHidden:0];

  tableDidSelectRowAction = self->_tableDidSelectRowAction;
  v14 = -[NSArray safari_dictionaryAtIndex:](self->_tableData, "safari_dictionaryAtIndex:", [pathCopy row]);
  v15 = [v14 objectForKeyedSubscript:@"context"];
  tableDidSelectRowAction[2](tableDidSelectRowAction, v15);
}

- (BOOL)_usesLoginFormAppearance
{
  if (([(SFDialogTextField *)self->_passwordTextField isHidden]& 1) != 0)
  {
    return 0;
  }

  else
  {
    return [(SFDialogTextField *)self->_inputTextField isHidden]^ 1;
  }
}

- (void)_actionTriggered:(id)triggered
{
  v4 = [(NSArray *)self->_actionButtons indexOfObject:triggered];

  [(SFDialogContentView *)self _invokeDelegateWithSelectedIndex:v4];
}

- (void)_invokeDelegateWithSelectedIndex:(unint64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_dialogView);
  delegate = [WeakRetained delegate];
  text = [(SFDialogTextField *)self->_inputTextField text];
  text2 = [(SFDialogTextField *)self->_passwordTextField text];
  [delegate dialogView:WeakRetained didSelectActionAtIndex:index withInputText:text passwordText:text2];
}

- (SFDialogView)dialogView
{
  WeakRetained = objc_loadWeakRetained(&self->_dialogView);

  return WeakRetained;
}

@end