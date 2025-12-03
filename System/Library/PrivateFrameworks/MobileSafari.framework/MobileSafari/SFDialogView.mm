@interface SFDialogView
- (SFDialogView)initWithCoder:(id)coder;
- (SFDialogView)initWithFrame:(CGRect)frame;
- (SFDialogViewDelegate)delegate;
- (void)_keyboardDismissGesture:(id)gesture;
- (void)jitterDialogWithAcceptFromTap:(CGPoint)tap;
- (void)setDialogActions:(id)actions;
- (void)setInputText:(id)text placeholder:(id)placeholder;
- (void)setMessageText:(id)text;
- (void)setObscuredInsets:(UIEdgeInsets)insets;
- (void)setPasswordText:(id)text placeholder:(id)placeholder;
- (void)setTableViewRows:(id)rows didSelectRowAction:(id)action;
- (void)setTitleText:(id)text;
- (void)setUsesOpaqueAppearance:(BOOL)appearance;
- (void)willDisappear;
@end

@implementation SFDialogView

- (SFDialogView)initWithFrame:(CGRect)frame
{
  v92[18] = *MEMORY[0x1E69E9840];
  v91.receiver = self;
  v91.super_class = SFDialogView;
  v3 = [(SFDialogView *)&v91 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(SFKeyboardLayoutAlignmentView);
    keyboardAlignmentView = v3->_keyboardAlignmentView;
    v3->_keyboardAlignmentView = v4;

    [(SFDialogView *)v3 addSubview:v3->_keyboardAlignmentView];
    v6 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    [(SFDialogView *)v6 setIdentifier:@"SFDialogView.availableSpace"];
    [(SFDialogView *)v3 addLayoutGuide:v6];
    v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.4];
    [v7 setBackgroundColor:v8];

    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFDialogView *)v3 addSubview:v7];
    v9 = objc_alloc_init(SFDialogContentView);
    contentViewConfiguredForMinimumHeight = v3->_contentViewConfiguredForMinimumHeight;
    v3->_contentViewConfiguredForMinimumHeight = v9;

    [(SFDialogContentView *)v3->_contentViewConfiguredForMinimumHeight setHidden:1];
    [(SFDialogContentView *)v3->_contentViewConfiguredForMinimumHeight setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFDialogView *)v3 addSubview:v3->_contentViewConfiguredForMinimumHeight];
    v11 = objc_alloc_init(SFDialogContentView);
    contentView = v3->_contentView;
    v3->_contentView = v11;

    [(SFDialogContentView *)v3->_contentView setAccessibilityIdentifier:@"SFDialogView"];
    [(SFDialogContentView *)v3->_contentView setDialogView:v3];
    [(SFDialogContentView *)v3->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFDialogView *)v3 addSubview:v3->_contentView];
    topAnchor = [(SFDialogView *)v6 topAnchor];
    topAnchor2 = [(SFDialogView *)v3 topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
    obscuredInsetTopConstraint = v3->_obscuredInsetTopConstraint;
    v3->_obscuredInsetTopConstraint = v15;

    leftAnchor = [(SFDialogView *)v6 leftAnchor];
    leftAnchor2 = [(SFDialogView *)v3 leftAnchor];
    v19 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    obscuredInsetLeftConstraint = v3->_obscuredInsetLeftConstraint;
    v3->_obscuredInsetLeftConstraint = v19;

    bottomAnchor = [(SFDialogView *)v6 bottomAnchor];
    bottomAnchor2 = [(SFDialogView *)v3 bottomAnchor];
    v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    obscuredInsetBottomConstraint = v3->_obscuredInsetBottomConstraint;
    v3->_obscuredInsetBottomConstraint = v23;

    LODWORD(v25) = 1144750080;
    [(NSLayoutConstraint *)v3->_obscuredInsetBottomConstraint setPriority:v25];
    rightAnchor = [(SFDialogView *)v6 rightAnchor];
    rightAnchor2 = [(SFDialogView *)v3 rightAnchor];
    v28 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    obscuredInsetRightConstraint = v3->_obscuredInsetRightConstraint;
    v3->_obscuredInsetRightConstraint = v28;

    LODWORD(rightAnchor2) = [MEMORY[0x1E69C8880] isSolariumEnabled];
    topAnchor3 = [v7 topAnchor];
    if (rightAnchor2)
    {
      topAnchor4 = [(SFDialogView *)v6 topAnchor];
      v32 = [topAnchor3 constraintEqualToAnchor:topAnchor4];

      bottomAnchor3 = [v7 bottomAnchor];
      v34 = v6;
    }

    else
    {
      topAnchor5 = [(SFDialogView *)v3 topAnchor];
      v32 = [topAnchor3 constraintEqualToAnchor:topAnchor5];

      bottomAnchor3 = [v7 bottomAnchor];
      v34 = v3;
    }

    bottomAnchor4 = [(SFDialogView *)v34 bottomAnchor];
    v37 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];

    v78 = MEMORY[0x1E696ACD8];
    v90 = v32;
    v92[0] = v32;
    leftAnchor3 = [v7 leftAnchor];
    leftAnchor4 = [(SFDialogView *)v3 leftAnchor];
    v86 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
    v92[1] = v86;
    v92[2] = v37;
    rightAnchor3 = [v7 rightAnchor];
    rightAnchor4 = [(SFDialogView *)v3 rightAnchor];
    v83 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
    v92[3] = v83;
    v92[4] = v3->_obscuredInsetTopConstraint;
    v92[5] = v3->_obscuredInsetLeftConstraint;
    v92[6] = v3->_obscuredInsetBottomConstraint;
    bottomAnchor5 = [(SFDialogView *)v6 bottomAnchor];
    topAnchor6 = [(SFKeyboardLayoutAlignmentView *)v3->_keyboardAlignmentView topAnchor];
    v81 = [bottomAnchor5 constraintLessThanOrEqualToAnchor:topAnchor6];
    v92[7] = v81;
    v92[8] = v3->_obscuredInsetRightConstraint;
    widthAnchor = [(SFDialogContentView *)v3->_contentView widthAnchor];
    v79 = [widthAnchor constraintLessThanOrEqualToConstant:440.0];
    v92[9] = v79;
    widthAnchor2 = [(SFDialogContentView *)v3->_contentView widthAnchor];
    v75 = [widthAnchor2 constraintGreaterThanOrEqualToConstant:440.0];

    LODWORD(v39) = 1144750080;
    [v75 setPriority:v39];
    v92[10] = v75;
    widthAnchor3 = [(SFDialogContentView *)v3->_contentView widthAnchor];
    widthAnchor4 = [(SFDialogView *)v6 widthAnchor];
    v72 = [widthAnchor3 constraintLessThanOrEqualToAnchor:widthAnchor4 constant:-40.0];
    v92[11] = v72;
    heightAnchor = [(SFDialogContentView *)v3->_contentView heightAnchor];
    v70 = [heightAnchor constraintLessThanOrEqualToConstant:500.0];
    v92[12] = v70;
    heightAnchor2 = [(SFDialogContentView *)v3->_contentView heightAnchor];
    heightAnchor3 = [(SFDialogContentView *)v3->_contentViewConfiguredForMinimumHeight heightAnchor];
    v67 = [heightAnchor2 constraintGreaterThanOrEqualToAnchor:heightAnchor3];
    v92[13] = v67;
    heightAnchor4 = [(SFDialogContentView *)v3->_contentView heightAnchor];
    heightAnchor5 = [(SFDialogView *)v6 heightAnchor];
    v42 = [heightAnchor4 constraintLessThanOrEqualToAnchor:heightAnchor5 constant:-40.0];

    v66 = v42;
    LODWORD(v43) = 1144750080;
    [v42 setPriority:v43];
    v92[14] = v42;
    centerXAnchor = [(SFDialogContentView *)v3->_contentView centerXAnchor];
    centerXAnchor2 = [(SFDialogView *)v6 centerXAnchor];
    v46 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v92[15] = v46;
    [(SFDialogContentView *)v3->_contentView centerYAnchor];
    v48 = v47 = v6;
    v77 = v47;
    centerYAnchor = [(SFDialogView *)v47 centerYAnchor];
    [v48 constraintEqualToAnchor:centerYAnchor];
    v50 = v76 = v7;

    LODWORD(v51) = 1144750080;
    [v50 setPriority:v51];
    v92[16] = v50;
    bottomAnchor6 = [(SFDialogContentView *)v3->_contentView bottomAnchor];
    bottomAnchor7 = [(SFDialogView *)v47 bottomAnchor];
    v54 = [bottomAnchor6 constraintLessThanOrEqualToAnchor:bottomAnchor7 constant:-20.0];
    v92[17] = v54;
    v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:18];
    [v78 activateConstraints:v55];

    LODWORD(v56) = 1148846080;
    [(SFDialogContentView *)v3->_contentViewConfiguredForMinimumHeight setContentHuggingPriority:1 forAxis:v56];
    LODWORD(v57) = 1148846080;
    [(SFDialogContentView *)v3->_contentViewConfiguredForMinimumHeight setContentCompressionResistancePriority:1 forAxis:v57];
    LODWORD(v58) = 1148846080;
    [(SFDialogContentView *)v3->_contentView setContentHuggingPriority:1 forAxis:v58];
    LODWORD(v59) = 1144750080;
    [(SFDialogContentView *)v3->_contentView setContentCompressionResistancePriority:1 forAxis:v59];
    v60 = [objc_alloc(MEMORY[0x1E69DCFC8]) initWithTarget:v3 action:sel__keyboardDismissGesture_];
    keyboardDismissSwipeGesture = v3->_keyboardDismissSwipeGesture;
    v3->_keyboardDismissSwipeGesture = v60;

    [(UISwipeGestureRecognizer *)v3->_keyboardDismissSwipeGesture setDirection:8];
    [(SFDialogView *)v3 addGestureRecognizer:v3->_keyboardDismissSwipeGesture];
    v62 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v3 action:sel__keyboardDismissGesture_];
    keyboardDismissTapGesture = v3->_keyboardDismissTapGesture;
    v3->_keyboardDismissTapGesture = v62;

    [v76 addGestureRecognizer:v3->_keyboardDismissTapGesture];
    [(SFDialogView *)v3 setUsesOpaqueAppearance:0];
    v64 = v3;
  }

  return v3;
}

- (SFDialogView)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFDialogView;
  return [(SFDialogView *)&v4 initWithCoder:coder];
}

- (void)setTitleText:(id)text
{
  [(SFDialogContentView *)self->_contentView setTitleText:?];
  contentViewConfiguredForMinimumHeight = self->_contentViewConfiguredForMinimumHeight;
  if (text)
  {
    v6 = @"a";
  }

  else
  {
    v6 = 0;
  }

  [(SFDialogContentView *)contentViewConfiguredForMinimumHeight setTitleText:v6];
}

- (void)setMessageText:(id)text
{
  [(SFDialogContentView *)self->_contentView setMessageText:?];
  contentViewConfiguredForMinimumHeight = self->_contentViewConfiguredForMinimumHeight;
  if (text)
  {
    v6 = @"a";
  }

  else
  {
    v6 = 0;
  }

  [(SFDialogContentView *)contentViewConfiguredForMinimumHeight setMessageText:v6];
}

- (void)setObscuredInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  [(NSLayoutConstraint *)self->_obscuredInsetTopConstraint setConstant:insets.top];
  [(NSLayoutConstraint *)self->_obscuredInsetBottomConstraint setConstant:-bottom];
  [(NSLayoutConstraint *)self->_obscuredInsetLeftConstraint setConstant:left];
  obscuredInsetRightConstraint = self->_obscuredInsetRightConstraint;

  [(NSLayoutConstraint *)obscuredInsetRightConstraint setConstant:-right];
}

- (void)setUsesOpaqueAppearance:(BOOL)appearance
{
  if (appearance)
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(SFDialogView *)self setBackgroundColor:whiteColor];
  }

  else
  {

    [(SFDialogView *)self setBackgroundColor:0];
  }
}

- (void)setInputText:(id)text placeholder:(id)placeholder
{
  [SFDialogContentView setInputText:"setInputText:placeholder:" placeholder:?];
  contentViewConfiguredForMinimumHeight = self->_contentViewConfiguredForMinimumHeight;
  if (text)
  {
    v8 = @"a";
  }

  else
  {
    v8 = 0;
  }

  if (placeholder)
  {
    v9 = @"a";
  }

  else
  {
    v9 = 0;
  }

  v10 = v8;
  [(SFDialogContentView *)contentViewConfiguredForMinimumHeight setInputText:v10 placeholder:v9];
}

- (void)setPasswordText:(id)text placeholder:(id)placeholder
{
  [SFDialogContentView setPasswordText:"setPasswordText:placeholder:" placeholder:?];
  contentViewConfiguredForMinimumHeight = self->_contentViewConfiguredForMinimumHeight;
  if (text)
  {
    v8 = @"a";
  }

  else
  {
    v8 = 0;
  }

  if (placeholder)
  {
    v9 = @"a";
  }

  else
  {
    v9 = 0;
  }

  v10 = v8;
  [(SFDialogContentView *)contentViewConfiguredForMinimumHeight setPasswordText:v10 placeholder:v9];
}

- (void)setDialogActions:(id)actions
{
  contentView = self->_contentView;
  actionsCopy = actions;
  [(SFDialogContentView *)contentView setActions:actionsCopy];
  [(SFDialogContentView *)self->_contentViewConfiguredForMinimumHeight setActions:actionsCopy];
}

- (void)setTableViewRows:(id)rows didSelectRowAction:(id)action
{
  contentView = self->_contentView;
  actionCopy = action;
  rowsCopy = rows;
  [(SFDialogContentView *)contentView setTableViewRows:rowsCopy didSelectRowAction:actionCopy];
  [(SFDialogContentView *)self->_contentViewConfiguredForMinimumHeight setTableViewRows:rowsCopy didSelectRowAction:actionCopy];
}

- (void)jitterDialogWithAcceptFromTap:(CGPoint)tap
{
  contentView = self->_contentView;
  [(SFDialogContentView *)contentView convertPoint:self fromView:tap.x, tap.y];
  [SFDialogContentView rectOfAcceptButtonContainingPoint:"rectOfAcceptButtonContainingPoint:withBuffer:" withBuffer:?];
  height = v18.size.height;
  if (!CGRectIsEmpty(v18))
  {
    [(SFDialogContentView *)self->_contentView frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = height + arc4random_uniform(height);
    if (arc4random_uniform(2u))
    {
      v15 = 1;
    }

    else
    {
      v15 = -1;
    }

    v16 = self->_contentView;

    [(SFDialogContentView *)v16 setFrame:v7, v9 + v14 * v15, v11, v13];
  }
}

- (void)willDisappear
{
  [(SFKeyboardLayoutAlignmentView *)self->_keyboardAlignmentView setAutomaticKeyboardFrameTrackingDisabled:1];

  [(SFDialogView *)self endEditing:0];
}

- (void)_keyboardDismissGesture:(id)gesture
{
  if ([gesture state] == 3)
  {
    contentView = self->_contentView;

    [(SFDialogContentView *)contentView endEditing];
  }
}

- (SFDialogViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end