@interface SFDialogView
- (SFDialogView)initWithCoder:(id)a3;
- (SFDialogView)initWithFrame:(CGRect)a3;
- (SFDialogViewDelegate)delegate;
- (void)_keyboardDismissGesture:(id)a3;
- (void)jitterDialogWithAcceptFromTap:(CGPoint)a3;
- (void)setDialogActions:(id)a3;
- (void)setInputText:(id)a3 placeholder:(id)a4;
- (void)setMessageText:(id)a3;
- (void)setObscuredInsets:(UIEdgeInsets)a3;
- (void)setPasswordText:(id)a3 placeholder:(id)a4;
- (void)setTableViewRows:(id)a3 didSelectRowAction:(id)a4;
- (void)setTitleText:(id)a3;
- (void)setUsesOpaqueAppearance:(BOOL)a3;
- (void)willDisappear;
@end

@implementation SFDialogView

- (SFDialogView)initWithFrame:(CGRect)a3
{
  v92[18] = *MEMORY[0x1E69E9840];
  v91.receiver = self;
  v91.super_class = SFDialogView;
  v3 = [(SFDialogView *)&v91 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v13 = [(SFDialogView *)v6 topAnchor];
    v14 = [(SFDialogView *)v3 topAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    obscuredInsetTopConstraint = v3->_obscuredInsetTopConstraint;
    v3->_obscuredInsetTopConstraint = v15;

    v17 = [(SFDialogView *)v6 leftAnchor];
    v18 = [(SFDialogView *)v3 leftAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    obscuredInsetLeftConstraint = v3->_obscuredInsetLeftConstraint;
    v3->_obscuredInsetLeftConstraint = v19;

    v21 = [(SFDialogView *)v6 bottomAnchor];
    v22 = [(SFDialogView *)v3 bottomAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    obscuredInsetBottomConstraint = v3->_obscuredInsetBottomConstraint;
    v3->_obscuredInsetBottomConstraint = v23;

    LODWORD(v25) = 1144750080;
    [(NSLayoutConstraint *)v3->_obscuredInsetBottomConstraint setPriority:v25];
    v26 = [(SFDialogView *)v6 rightAnchor];
    v27 = [(SFDialogView *)v3 rightAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    obscuredInsetRightConstraint = v3->_obscuredInsetRightConstraint;
    v3->_obscuredInsetRightConstraint = v28;

    LODWORD(v27) = [MEMORY[0x1E69C8880] isSolariumEnabled];
    v30 = [v7 topAnchor];
    if (v27)
    {
      v31 = [(SFDialogView *)v6 topAnchor];
      v32 = [v30 constraintEqualToAnchor:v31];

      v33 = [v7 bottomAnchor];
      v34 = v6;
    }

    else
    {
      v35 = [(SFDialogView *)v3 topAnchor];
      v32 = [v30 constraintEqualToAnchor:v35];

      v33 = [v7 bottomAnchor];
      v34 = v3;
    }

    v36 = [(SFDialogView *)v34 bottomAnchor];
    v37 = [v33 constraintEqualToAnchor:v36];

    v78 = MEMORY[0x1E696ACD8];
    v90 = v32;
    v92[0] = v32;
    v88 = [v7 leftAnchor];
    v87 = [(SFDialogView *)v3 leftAnchor];
    v86 = [v88 constraintEqualToAnchor:v87];
    v92[1] = v86;
    v92[2] = v37;
    v85 = [v7 rightAnchor];
    v84 = [(SFDialogView *)v3 rightAnchor];
    v83 = [v85 constraintEqualToAnchor:v84];
    v92[3] = v83;
    v92[4] = v3->_obscuredInsetTopConstraint;
    v92[5] = v3->_obscuredInsetLeftConstraint;
    v92[6] = v3->_obscuredInsetBottomConstraint;
    v82 = [(SFDialogView *)v6 bottomAnchor];
    v89 = [(SFKeyboardLayoutAlignmentView *)v3->_keyboardAlignmentView topAnchor];
    v81 = [v82 constraintLessThanOrEqualToAnchor:v89];
    v92[7] = v81;
    v92[8] = v3->_obscuredInsetRightConstraint;
    v80 = [(SFDialogContentView *)v3->_contentView widthAnchor];
    v79 = [v80 constraintLessThanOrEqualToConstant:440.0];
    v92[9] = v79;
    v38 = [(SFDialogContentView *)v3->_contentView widthAnchor];
    v75 = [v38 constraintGreaterThanOrEqualToConstant:440.0];

    LODWORD(v39) = 1144750080;
    [v75 setPriority:v39];
    v92[10] = v75;
    v74 = [(SFDialogContentView *)v3->_contentView widthAnchor];
    v73 = [(SFDialogView *)v6 widthAnchor];
    v72 = [v74 constraintLessThanOrEqualToAnchor:v73 constant:-40.0];
    v92[11] = v72;
    v71 = [(SFDialogContentView *)v3->_contentView heightAnchor];
    v70 = [v71 constraintLessThanOrEqualToConstant:500.0];
    v92[12] = v70;
    v69 = [(SFDialogContentView *)v3->_contentView heightAnchor];
    v68 = [(SFDialogContentView *)v3->_contentViewConfiguredForMinimumHeight heightAnchor];
    v67 = [v69 constraintGreaterThanOrEqualToAnchor:v68];
    v92[13] = v67;
    v40 = [(SFDialogContentView *)v3->_contentView heightAnchor];
    v41 = [(SFDialogView *)v6 heightAnchor];
    v42 = [v40 constraintLessThanOrEqualToAnchor:v41 constant:-40.0];

    v66 = v42;
    LODWORD(v43) = 1144750080;
    [v42 setPriority:v43];
    v92[14] = v42;
    v44 = [(SFDialogContentView *)v3->_contentView centerXAnchor];
    v45 = [(SFDialogView *)v6 centerXAnchor];
    v46 = [v44 constraintEqualToAnchor:v45];
    v92[15] = v46;
    [(SFDialogContentView *)v3->_contentView centerYAnchor];
    v48 = v47 = v6;
    v77 = v47;
    v49 = [(SFDialogView *)v47 centerYAnchor];
    [v48 constraintEqualToAnchor:v49];
    v50 = v76 = v7;

    LODWORD(v51) = 1144750080;
    [v50 setPriority:v51];
    v92[16] = v50;
    v52 = [(SFDialogContentView *)v3->_contentView bottomAnchor];
    v53 = [(SFDialogView *)v47 bottomAnchor];
    v54 = [v52 constraintLessThanOrEqualToAnchor:v53 constant:-20.0];
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

- (SFDialogView)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SFDialogView;
  return [(SFDialogView *)&v4 initWithCoder:a3];
}

- (void)setTitleText:(id)a3
{
  [(SFDialogContentView *)self->_contentView setTitleText:?];
  contentViewConfiguredForMinimumHeight = self->_contentViewConfiguredForMinimumHeight;
  if (a3)
  {
    v6 = @"a";
  }

  else
  {
    v6 = 0;
  }

  [(SFDialogContentView *)contentViewConfiguredForMinimumHeight setTitleText:v6];
}

- (void)setMessageText:(id)a3
{
  [(SFDialogContentView *)self->_contentView setMessageText:?];
  contentViewConfiguredForMinimumHeight = self->_contentViewConfiguredForMinimumHeight;
  if (a3)
  {
    v6 = @"a";
  }

  else
  {
    v6 = 0;
  }

  [(SFDialogContentView *)contentViewConfiguredForMinimumHeight setMessageText:v6];
}

- (void)setObscuredInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  [(NSLayoutConstraint *)self->_obscuredInsetTopConstraint setConstant:a3.top];
  [(NSLayoutConstraint *)self->_obscuredInsetBottomConstraint setConstant:-bottom];
  [(NSLayoutConstraint *)self->_obscuredInsetLeftConstraint setConstant:left];
  obscuredInsetRightConstraint = self->_obscuredInsetRightConstraint;

  [(NSLayoutConstraint *)obscuredInsetRightConstraint setConstant:-right];
}

- (void)setUsesOpaqueAppearance:(BOOL)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E69DC888] whiteColor];
    [(SFDialogView *)self setBackgroundColor:v4];
  }

  else
  {

    [(SFDialogView *)self setBackgroundColor:0];
  }
}

- (void)setInputText:(id)a3 placeholder:(id)a4
{
  [SFDialogContentView setInputText:"setInputText:placeholder:" placeholder:?];
  contentViewConfiguredForMinimumHeight = self->_contentViewConfiguredForMinimumHeight;
  if (a3)
  {
    v8 = @"a";
  }

  else
  {
    v8 = 0;
  }

  if (a4)
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

- (void)setPasswordText:(id)a3 placeholder:(id)a4
{
  [SFDialogContentView setPasswordText:"setPasswordText:placeholder:" placeholder:?];
  contentViewConfiguredForMinimumHeight = self->_contentViewConfiguredForMinimumHeight;
  if (a3)
  {
    v8 = @"a";
  }

  else
  {
    v8 = 0;
  }

  if (a4)
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

- (void)setDialogActions:(id)a3
{
  contentView = self->_contentView;
  v5 = a3;
  [(SFDialogContentView *)contentView setActions:v5];
  [(SFDialogContentView *)self->_contentViewConfiguredForMinimumHeight setActions:v5];
}

- (void)setTableViewRows:(id)a3 didSelectRowAction:(id)a4
{
  contentView = self->_contentView;
  v7 = a4;
  v8 = a3;
  [(SFDialogContentView *)contentView setTableViewRows:v8 didSelectRowAction:v7];
  [(SFDialogContentView *)self->_contentViewConfiguredForMinimumHeight setTableViewRows:v8 didSelectRowAction:v7];
}

- (void)jitterDialogWithAcceptFromTap:(CGPoint)a3
{
  contentView = self->_contentView;
  [(SFDialogContentView *)contentView convertPoint:self fromView:a3.x, a3.y];
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

- (void)_keyboardDismissGesture:(id)a3
{
  if ([a3 state] == 3)
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