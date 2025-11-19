@interface SFCapsuleURLField
- (BOOL)_canUpdateLayoutDirectionImmediately;
- (BOOL)shouldShowClearButton;
- (BOOL)shouldShowVoiceSearchButton;
- (BOOL)showsVoiceSearchButton;
- (CGAffineTransform)keyContentTransform;
- (CGAffineTransform)microphoneContentTransform;
- (CGRect)keyContentRect;
- (NSNumber)microphoneContentOriginX;
- (SFCapsuleURLField)initWithTextField:(id)a3;
- (_NSRange)rangeOfKeyText;
- (id)_newDimmingButtonWithSystemImageNamed:(id)a3 action:(SEL)a4 accessibilityIdentifier:(id)a5;
- (void)_clearTextButtonTapped:(id)a3;
- (void)_updateKeyboardInputMode:(id)a3;
- (void)_updateLayoutDirectionIfNeeded;
- (void)_updatePlaceholderText;
- (void)_voiceSearchButtonTapped:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setKeyContentTransform:(CGAffineTransform *)a3;
- (void)setMicrophoneContentTransform:(CGAffineTransform *)a3;
- (void)setNonKeyContentAlpha:(double)a3;
- (void)textFieldDidChange:(id)a3;
- (void)updateButtonsVisibility;
- (void)updateConstraints;
@end

@implementation SFCapsuleURLField

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SFCapsuleURLField;
  [(SFCapsuleURLField *)&v3 layoutSubviews];
  [(SFCapsuleURLField *)self _updatePlaceholderText];
}

- (void)_updatePlaceholderText
{
  v15[1] = *MEMORY[0x1E69E9840];
  textField = self->_textField;
  [(UITextField *)textField bounds];
  [(UITextField *)textField placeholderRectForBounds:?];
  Width = CGRectGetWidth(v16);
  if (Width != self->_lastPlaceholderWidth)
  {
    v5 = _WBSLocalizedString();
    v14 = *MEMORY[0x1E69DB648];
    v6 = [(UITextField *)self->_textField _placeholderLabel];
    v7 = [v6 font];
    v15[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [v5 sizeWithAttributes:v8];
    v10 = v9;

    if (v10 <= Width)
    {
      [(UITextField *)self->_textField setPlaceholder:v5];
    }

    else
    {
      v11 = _WBSLocalizedString();
      [(UITextField *)self->_textField setPlaceholder:v11];
    }

    v12 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v13 = [(UITextField *)self->_textField _placeholderLabel];
    [v13 setTextColor:v12];

    self->_lastPlaceholderWidth = Width;
  }
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = SFCapsuleURLField;
  [(SFCapsuleURLField *)&v3 updateConstraints];
  [(SFCapsuleURLField *)self updateButtonsVisibility];
}

- (BOOL)showsVoiceSearchButton
{
  v2 = [(_SFDimmingButton *)self->_voiceSearchButton superview];
  v3 = v2 != 0;

  return v3;
}

- (SFCapsuleURLField)initWithTextField:(id)a3
{
  v80[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v78.receiver = self;
  v78.super_class = SFCapsuleURLField;
  v6 = [(SFCapsuleURLField *)&v78 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v6)
  {
    obj = a3;
    v76 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v6 action:sel__tap_];
    [(SFCapsuleURLField *)v6 addGestureRecognizer:?];
    v7 = [(SFCapsuleURLField *)v6 _newDimmingButtonWithSystemImageNamed:@"xmark.circle.fill" action:sel__clearTextButtonTapped_ accessibilityIdentifier:@"ClearTextButton"];
    v77 = v5;
    clearTextButton = v6->_clearTextButton;
    v6->_clearTextButton = v7;

    v9 = [(UIView *)v6 _sf_usesLeftToRightLayout];
    v10 = 8.0;
    if (v9)
    {
      v11 = 8.0;
    }

    else
    {
      v11 = 0.0;
    }

    if (v9)
    {
      v10 = 0.0;
    }

    [(_SFDimmingButton *)v6->_clearTextButton setImageEdgeInsets:0.0, v10, 0.0, v11];
    [(_SFDimmingButton *)v6->_clearTextButton setPointerInteractionEnabled:1];
    [(_SFDimmingButton *)v6->_clearTextButton setPointerStyleProvider:&__block_literal_global_49];
    v12 = [MEMORY[0x1E69DC668] sharedApplication];
    v6->_keyboardInputModeIsRTL = [v12 safari_currentKeyboardInputIsRTL];

    keyboardInputModeIsRTL = v6->_keyboardInputModeIsRTL;
    v6->_layoutShouldBeRTL = keyboardInputModeIsRTL;
    if (keyboardInputModeIsRTL)
    {
      v14 = 4;
    }

    else
    {
      v14 = 3;
    }

    [(SFCapsuleURLField *)v6 setSemanticContentAttribute:v14];
    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v6 selector:sel__updateKeyboardInputMode_ name:*MEMORY[0x1E69DE6B8] object:0];
    [v15 addObserver:v6 selector:sel__updateKeyboardInputMode_ name:@"SFDidGetTextInputModeDirectionality" object:0];
    v75 = v15;
    [v15 addObserver:v6 selector:sel__updateLayoutDirectionIfNeeded name:@"UpdateSmartSearchFieldLayoutImmediately" object:0];
    [(SFCapsuleURLField *)v6 addSubview:v6->_clearTextButton];
    v64 = MEMORY[0x1E696ACD8];
    v70 = [(_SFDimmingButton *)v6->_clearTextButton trailingAnchor];
    v68 = [(SFCapsuleURLField *)v6 trailingAnchor];
    v66 = [v70 constraintEqualToAnchor:v68];
    v80[0] = v66;
    v16 = [(_SFDimmingButton *)v6->_clearTextButton topAnchor];
    v17 = [(SFCapsuleURLField *)v6 topAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v80[1] = v18;
    v19 = [(_SFDimmingButton *)v6->_clearTextButton bottomAnchor];
    v20 = [(SFCapsuleURLField *)v6 bottomAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    v80[2] = v21;
    v22 = [(_SFDimmingButton *)v6->_clearTextButton widthAnchor];
    v23 = [v22 constraintEqualToConstant:44.0];
    v80[3] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:4];
    [v64 activateConstraints:v24];

    if (objc_opt_respondsToSelector())
    {
      [v77 setPreserveSelectionOnResignFirstResponder:1];
    }

    objc_storeStrong(&v6->_textField, obj);
    [(UITextField *)v6->_textField setAutocapitalizationType:0];
    [(UITextField *)v6->_textField setAutocorrectionType:1];
    [(UITextField *)v6->_textField setClearButtonMode:0];
    [(UITextField *)v6->_textField setKeyboardType:10];
    v25 = _WBSLocalizedString();
    [(UITextField *)v6->_textField setPlaceholder:v25];

    [(UITextField *)v6->_textField setSmartDashesType:1];
    [(UITextField *)v6->_textField setSmartQuotesType:1];
    [(UITextField *)v6->_textField setTintAdjustmentMode:1];
    [(UITextField *)v6->_textField setTranslatesAutoresizingMaskIntoConstraints:0];
    v26 = [(UITextField *)v6->_textField trailingAnchor];
    v27 = [(_SFDimmingButton *)v6->_clearTextButton leadingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    textFieldToClearButtonConstraint = v6->_textFieldToClearButtonConstraint;
    v6->_textFieldToClearButtonConstraint = v28;

    [(UITextField *)v6->_textField setAdjustsFontForContentSizeCategory:1];
    v30 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UITextField *)v6->_textField setFont:v30];

    [v77 addTarget:v6 action:sel_textFieldDidChange_ forControlEvents:0x20000];
    [(SFCapsuleURLField *)v6 addSubview:v6->_textField];
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      v31 = @"mic";
    }

    else
    {
      v31 = @"mic.fill";
    }

    v32 = _SFAccessibilityIdentifierForBarItem(4uLL);
    v33 = [(SFCapsuleURLField *)v6 _newDimmingButtonWithSystemImageNamed:v31 action:sel__voiceSearchButtonTapped_ accessibilityIdentifier:v32];
    voiceSearchButton = v6->_voiceSearchButton;
    v6->_voiceSearchButton = v33;

    [(_SFDimmingButton *)v6->_voiceSearchButton _setDisableDictationTouchCancellation:1];
    [(UIView *)v6->_voiceSearchButton sf_configureLargeContentViewerForBarItem:4];
    v35 = v6->_voiceSearchButton;
    v36 = objc_alloc_init(MEMORY[0x1E69DCC18]);
    [(_SFDimmingButton *)v35 addInteraction:v36];

    v37 = [(_SFDimmingButton *)v6->_voiceSearchButton trailingAnchor];
    v38 = [(_SFDimmingButton *)v6->_clearTextButton leadingAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];
    voiceSearchToClearButtonConstraint = v6->_voiceSearchToClearButtonConstraint;
    v6->_voiceSearchToClearButtonConstraint = v39;

    v41 = [(_SFDimmingButton *)v6->_voiceSearchButton trailingAnchor];
    v42 = [(SFCapsuleURLField *)v6 trailingAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];
    voiceSearchToCapsuleConstraint = v6->_voiceSearchToCapsuleConstraint;
    v6->_voiceSearchToCapsuleConstraint = v43;

    [(SFCapsuleURLField *)v6 addSubview:v6->_voiceSearchButton];
    [(_SFDimmingButton *)v6->_voiceSearchButton setHidden:1];
    v45 = [MEMORY[0x1E696AD88] defaultCenter];
    [v45 addObserver:v6 selector:sel__voiceSearchAvailabilityDidChange_ name:@"SFVoiceSearchAvailabilityDidChangeNotification" object:0];

    [(SFCapsuleURLField *)v6 _voiceSearchAvailabilityDidChange:0];
    v61 = MEMORY[0x1E696ACD8];
    v74 = [(UITextField *)v6->_textField leadingAnchor];
    obja = [(SFCapsuleURLField *)v6 leadingAnchor];
    v71 = [v74 constraintEqualToAnchor:obja constant:12.0];
    v79[0] = v71;
    v79[1] = v6->_textFieldToClearButtonConstraint;
    v69 = [(UITextField *)v6->_textField topAnchor];
    v67 = [(SFCapsuleURLField *)v6 topAnchor];
    v65 = [v69 constraintEqualToAnchor:v67];
    v79[2] = v65;
    v63 = [(UITextField *)v6->_textField centerYAnchor];
    v62 = [(SFCapsuleURLField *)v6 centerYAnchor];
    v60 = [v63 constraintEqualToAnchor:v62];
    v79[3] = v60;
    v59 = [(_SFDimmingButton *)v6->_voiceSearchButton topAnchor];
    v58 = [(SFCapsuleURLField *)v6 topAnchor];
    v57 = [v59 constraintEqualToAnchor:v58];
    v79[4] = v57;
    v46 = [(_SFDimmingButton *)v6->_voiceSearchButton bottomAnchor];
    v47 = [(SFCapsuleURLField *)v6 bottomAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];
    v79[5] = v48;
    v49 = [(_SFDimmingButton *)v6->_voiceSearchButton widthAnchor];
    v50 = [v49 constraintEqualToConstant:44.0];
    v79[6] = v50;
    v51 = [(_SFDimmingButton *)v6->_voiceSearchButton leadingAnchor];
    v52 = [(UITextField *)v6->_textField trailingAnchor];
    v53 = [v51 constraintEqualToAnchor:v52];
    v79[7] = v53;
    v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:8];
    [v61 activateConstraints:v54];

    v5 = v77;
    v6->_nonKeyContentAlpha = 1.0;
    v55 = v6;
  }

  return v6;
}

id __39__SFCapsuleURLField_initWithTextField___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 imageView];
  [v3 bounds];
  [v2 convertRect:v3 fromView:?];
  v26 = CGRectInset(v25, 1.0, 1.0);
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  v8 = objc_alloc_init(MEMORY[0x1E69DCE28]);
  v9 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{x, y, width, height}];
  [v8 setShadowPath:v9];

  v10 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v2 parameters:v8];
  v11 = [MEMORY[0x1E69DCDB8] effectWithPreview:v10];
  v12 = [v2 superview];
  [v12 convertRect:v2 fromView:{x, y, width, height}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v27.origin.x = v14;
  v27.origin.y = v16;
  v27.size.width = v18;
  v27.size.height = v20;
  v21 = [MEMORY[0x1E69DCDC8] shapeWithRoundedRect:v14 cornerRadius:{v16, v18, v20, CGRectGetHeight(v27) * 0.5}];
  v22 = [MEMORY[0x1E69DCDD0] styleWithEffect:v11 shape:v21];

  return v22;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SFCapsuleURLField;
  [(SFCapsuleURLField *)&v4 dealloc];
}

- (id)_newDimmingButtonWithSystemImageNamed:(id)a3 action:(SEL)a4 accessibilityIdentifier:(id)a5
{
  v8 = MEMORY[0x1E69DC740];
  v9 = a5;
  v10 = a3;
  v11 = [v8 plainButtonConfiguration];
  v12 = [MEMORY[0x1E69DC888] clearColor];
  v13 = [v11 background];
  [v13 setBackgroundColor:v12];

  [v11 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
  v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:v10];

  [v11 setImage:v14];
  v15 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:2];
  v16 = [MEMORY[0x1E69DCAD8] configurationWithWeight:5];
  v17 = [v15 configurationByApplyingConfiguration:v16];
  [v11 setPreferredSymbolConfigurationForImage:v17];

  v18 = [_SFDimmingButton buttonWithConfiguration:v11 primaryAction:0];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v18 setNormalImageAlpha:1.0];
  [v18 setHighlightedImageAlpha:0.2];
  v19 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v18 setTintColor:v19];

  [v18 setAccessibilityIdentifier:v9];
  [v18 addTarget:self action:a4 forControlEvents:64];
  [v18 sf_applyContentSizeCategoryLimitsForToolbarButton];

  return v18;
}

- (CGRect)keyContentRect
{
  p_rangeOfKeyText = &self->_rangeOfKeyText;
  v4 = self->_rangeOfKeyText.length + self->_rangeOfKeyText.location;
  v5 = [(UITextField *)self->_textField text];
  if (v4 <= [v5 length])
  {
    location = p_rangeOfKeyText->location;
    length = p_rangeOfKeyText->length;
  }

  else
  {
    v6 = [(UITextField *)self->_textField text];
    length = [v6 length];

    location = 0;
  }

  textField = self->_textField;
  v10 = [(UITextField *)textField beginningOfDocument];
  v11 = [(UITextField *)textField positionFromPosition:v10 offset:location];

  v12 = [(UITextField *)self->_textField positionFromPosition:v11 offset:length];
  v13 = [(UITextField *)self->_textField textRangeFromPosition:v11 toPosition:v12];
  [(UITextField *)self->_textField firstRectForRange:v13];
  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  height = v31.size.height;
  if (CGRectIsNull(v31))
  {
    v18 = self->_textField;
    [(UITextField *)v18 bounds];
    [(UITextField *)v18 textRectForBounds:?];
    x = v19;
    y = v20;
    width = v21;
    height = v22;
  }

  [(UITextField *)self->_textField ss_untransformedFrame];
  v24 = x + v23;
  v26 = y + v25;

  v27 = v24;
  v28 = v26;
  v29 = width;
  v30 = height;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (void)setKeyContentTransform:(CGAffineTransform *)a3
{
  p_keyContentTransform = &self->_keyContentTransform;
  v6 = *&a3->c;
  *&t1.a = *&a3->a;
  *&t1.c = v6;
  *&t1.tx = *&a3->tx;
  v7 = *&self->_keyContentTransform.c;
  *&v11.a = *&self->_keyContentTransform.a;
  *&v11.c = v7;
  *&v11.tx = *&self->_keyContentTransform.tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v11))
  {
    v8 = *&a3->a;
    v9 = *&a3->tx;
    *&p_keyContentTransform->c = *&a3->c;
    *&p_keyContentTransform->tx = v9;
    *&p_keyContentTransform->a = v8;
    v10 = *&a3->c;
    *&t1.a = *&a3->a;
    *&t1.c = v10;
    *&t1.tx = *&a3->tx;
    [(UITextField *)self->_textField setTransform:&t1];
  }
}

- (void)setNonKeyContentAlpha:(double)a3
{
  if (self->_nonKeyContentAlpha != a3)
  {
    self->_nonKeyContentAlpha = a3;
    [(_SFDimmingButton *)self->_voiceSearchButton setAlpha:?];

    [(SFCapsuleURLField *)self updateButtonsVisibility];
  }
}

- (NSNumber)microphoneContentOriginX
{
  v3 = [(_SFDimmingButton *)self->_voiceSearchButton imageView];
  if ([(SFCapsuleURLField *)self showsVoiceSearchButton])
  {
    v4 = MEMORY[0x1E696AD98];
    [v3 frame];
    [(SFCapsuleURLField *)self convertRect:self->_voiceSearchButton fromView:?];
    v5 = [v4 numberWithDouble:CGRectGetMinX(v8)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setMicrophoneContentTransform:(CGAffineTransform *)a3
{
  p_microphoneContentTransform = &self->_microphoneContentTransform;
  v6 = *&a3->c;
  *&t1.a = *&a3->a;
  *&t1.c = v6;
  *&t1.tx = *&a3->tx;
  v7 = *&self->_microphoneContentTransform.c;
  *&v11.a = *&self->_microphoneContentTransform.a;
  *&v11.c = v7;
  *&v11.tx = *&self->_microphoneContentTransform.tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v11))
  {
    v8 = *&a3->a;
    v9 = *&a3->tx;
    *&p_microphoneContentTransform->c = *&a3->c;
    *&p_microphoneContentTransform->tx = v9;
    *&p_microphoneContentTransform->a = v8;
    v10 = *&a3->c;
    *&t1.a = *&a3->a;
    *&t1.c = v10;
    *&t1.tx = *&a3->tx;
    [(_SFDimmingButton *)self->_voiceSearchButton setTransform:&t1];
  }
}

- (void)textFieldDidChange:(id)a3
{
  if ([(SFCapsuleURLField *)self _canUpdateLayoutDirectionImmediately])
  {
    [(SFCapsuleURLField *)self _updateLayoutDirectionIfNeeded];
  }

  [(SFCapsuleURLField *)self updateButtonsVisibility];

  [(SFCapsuleURLField *)self _voiceSearchAvailabilityDidChange:0];
}

- (BOOL)shouldShowClearButton
{
  v2 = [(UITextField *)self->_textField text];
  v3 = [v2 stringByReplacingOccurrencesOfString:@"\uFFFC" withString:&stru_1EFF36230];
  v4 = [v3 length] != 0;

  return v4;
}

- (BOOL)shouldShowVoiceSearchButton
{
  if ([MEMORY[0x1E69C8880] isSolariumEnabled] && -[SFCapsuleURLField shouldShowClearButton](self, "shouldShowClearButton"))
  {
    return 0;
  }

  v4 = +[SFVoiceSearchManager sharedManager];
  v3 = [v4 availability] != 0;

  return v3;
}

- (void)updateButtonsVisibility
{
  v3 = [(SFCapsuleURLField *)self shouldShowClearButton];
  [(_SFDimmingButton *)self->_clearTextButton setHidden:v3 ^ 1];
  v4 = 0.2;
  if (v3)
  {
    v4 = 1.0;
  }

  [(_SFDimmingButton *)self->_clearTextButton setAlpha:v4 * self->_nonKeyContentAlpha];
  [(_SFDimmingButton *)self->_clearTextButton setUserInteractionEnabled:v3];
  v5 = [(SFCapsuleURLField *)self shouldShowVoiceSearchButton];
  if (v5)
  {
    v6 = +[SFVoiceSearchManager sharedManager];
    v7 = [v6 availability] == 1;
  }

  else
  {
    v7 = 0;
  }

  [(_SFDimmingButton *)self->_voiceSearchButton setHidden:!v5];
  [(_SFDimmingButton *)self->_voiceSearchButton setEnabled:v7];
  if (v7)
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] quaternaryLabelColor];
  }
  v8 = ;
  [(_SFDimmingButton *)self->_voiceSearchButton setTintColor:v8];

  v9 = v3 & v5;
  [(NSLayoutConstraint *)self->_voiceSearchToClearButtonConstraint setActive:v9];
  [(NSLayoutConstraint *)self->_voiceSearchToCapsuleConstraint setActive:v9 ^ 1];
  textFieldToClearButtonConstraint = self->_textFieldToClearButtonConstraint;

  [(NSLayoutConstraint *)textFieldToClearButtonConstraint setActive:v9 ^ 1];
}

- (void)_clearTextButtonTapped:(id)a3
{
  [(UITextField *)self->_textField setText:&stru_1EFF36230];
  textField = self->_textField;

  [(UITextField *)textField sendActionsForControlEvents:0x20000];
}

- (void)_voiceSearchButtonTapped:(id)a3
{
  voiceSearchTappedAction = self->_voiceSearchTappedAction;
  if (voiceSearchTappedAction)
  {
    voiceSearchTappedAction[2]();
  }
}

- (void)_updateKeyboardInputMode:(id)a3
{
  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = [v4 safari_currentKeyboardInputIsRTL];

  if (self->_keyboardInputModeIsRTL != v5)
  {
    self->_keyboardInputModeIsRTL = v5;
    if ([(SFCapsuleURLField *)self _canUpdateLayoutDirectionImmediately])
    {

      [(SFCapsuleURLField *)self _updateLayoutDirectionIfNeeded];
    }
  }
}

- (BOOL)_canUpdateLayoutDirectionImmediately
{
  v3 = [(UITextField *)self->_textField text];
  if ([v3 length])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = [(UITextField *)self->_textField _fieldEditor];
    v4 = [v5 isHidden] ^ 1;
  }

  return v4;
}

- (void)_updateLayoutDirectionIfNeeded
{
  keyboardInputModeIsRTL = self->_keyboardInputModeIsRTL;
  if (self->_layoutShouldBeRTL != keyboardInputModeIsRTL || (v4 = [(UIView *)self _sf_usesLeftToRightLayout], keyboardInputModeIsRTL = self->_keyboardInputModeIsRTL, keyboardInputModeIsRTL != !v4))
  {
    self->_layoutShouldBeRTL = keyboardInputModeIsRTL;
    if (keyboardInputModeIsRTL)
    {
      v5 = 4;
    }

    else
    {
      v5 = 3;
    }

    [(SFCapsuleURLField *)self setSemanticContentAttribute:v5];

    [(SFCapsuleURLField *)self setNeedsLayout];
  }
}

- (CGAffineTransform)keyContentTransform
{
  v3 = *&self[11].a;
  *&retstr->a = *&self[10].tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[11].c;
  return self;
}

- (CGAffineTransform)microphoneContentTransform
{
  v3 = *&self[12].a;
  *&retstr->a = *&self[11].tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[12].c;
  return self;
}

- (_NSRange)rangeOfKeyText
{
  p_rangeOfKeyText = &self->_rangeOfKeyText;
  location = self->_rangeOfKeyText.location;
  length = p_rangeOfKeyText->length;
  result.length = length;
  result.location = location;
  return result;
}

@end