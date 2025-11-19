@interface LACUIPasscodeField
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)resignFirstResponder;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (LACUIPasscodeField)initWithStyle:(int64_t)a3;
- (LACUIPasscodeFieldDelegate)delegate;
- (LAUITextField)passcodeField;
- (id)_alphanumericFieldPlaceholder;
- (id)_passcodeFieldColor;
- (id)textField:(id)a3 editMenuForCharactersInRange:(_NSRange)a4 suggestedActions:(id)a5;
- (unint64_t)_passcodeLengthForStyle:(int64_t)a3;
- (void)_activateFieldLayoutForSelectedPasscodeStyle;
- (void)_applyStyleToFieldLayout;
- (void)_notifyPasscodeFieldLengthChange;
- (void)_selectPasscodeField:(id)a3;
- (void)_setup;
- (void)_updateDotPattern;
- (void)_verifyTextField:(id)a3;
- (void)clear;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)setAcceptInputs:(BOOL)a3;
- (void)setStyle:(int64_t)a3;
- (void)shakeWithCompletion:(id)a3;
- (void)submit;
- (void)textFieldDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation LACUIPasscodeField

- (LACUIPasscodeField)initWithStyle:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = LACUIPasscodeField;
  v4 = [(LACUIPasscodeField *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_style = a3;
    v6 = objc_alloc_init(LACUIPasscodeFieldConfigurator);
    configurator = v5->_configurator;
    v5->_configurator = v6;
  }

  return v5;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = LACUIPasscodeField;
  [(LACUIPasscodeField *)&v5 viewDidLoad];
  v3 = [(LACUIPasscodeField *)self view];
  v4 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__selectPasscodeField_];
  [v3 addGestureRecognizer:v4];

  [(LACUIPasscodeField *)self _setup];
}

- (BOOL)canBecomeFirstResponder
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [(LACUIPasscodeField *)self passcodeField];
  v3 = [v2 canBecomeFirstResponder];

  v4 = LACLogPasscodeService();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_256063000, v4, OS_LOG_TYPE_DEFAULT, "PasscodeField canBecomeFirstResponder:%@", &v8, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)becomeFirstResponder
{
  v11 = *MEMORY[0x277D85DE8];
  [(LACUIPasscodeFieldConfiguring *)self->_configurator setUpKeyboardForPasscodeFieldStyle:self->_style];
  v3 = [(LACUIPasscodeField *)self passcodeField];
  v4 = [v3 becomeFirstResponder];

  v5 = LACLogPasscodeService();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:v4];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_256063000, v5, OS_LOG_TYPE_DEFAULT, "PasscodeField becomeFirstResponder:%@", &v9, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)resignFirstResponder
{
  v11 = *MEMORY[0x277D85DE8];
  [(LACUIPasscodeFieldConfiguring *)self->_configurator tearDownKeyboard];
  v3 = [(LACUIPasscodeField *)self passcodeField];
  v4 = [v3 resignFirstResponder];

  v5 = LACLogPasscodeService();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:v4];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_256063000, v5, OS_LOG_TYPE_DEFAULT, "PasscodeField resignFirstResponder:%@", &v9, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)setStyle:(int64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    [(LACUIPasscodeField *)self _activateFieldLayoutForSelectedPasscodeStyle];

    [(LACUIPasscodeField *)self _notifyPasscodeFieldLengthChange];
  }
}

- (void)setAcceptInputs:(BOOL)a3
{
  [(LACUIPasscodeField *)self setIgnoreInputs:!a3];
  if (![(LACUIPasscodeField *)self _shouldUseDotPattern])
  {
    v4 = [(LACUIPasscodeField *)self ignoreInputs];
    if (v4)
    {
      v6 = [MEMORY[0x277D75348] clearColor];
    }

    else
    {
      v6 = 0;
    }

    v5 = [(LACUIPasscodeField *)self passcodeField];
    [v5 setTintColor:v6];

    if (v4)
    {
    }
  }
}

- (void)shakeWithCompletion:(id)a3
{
  v4 = a3;
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    [(UIImpactFeedbackGenerator *)self->_hapticGenerator impactOccurred];
    v4[2](v4);
  }

  else
  {
    [(LACUIPasscodeFieldConfiguring *)self->_configurator passcodeFieldPadding];
    CGAffineTransformMakeTranslation(&v13, v5 + v5, 0.0);
    WeakRetained = objc_loadWeakRetained(&self->_passcodeFieldContainer);
    location = v13;
    [WeakRetained setTransform:&location];

    [(UIImpactFeedbackGenerator *)self->_hapticGenerator impactOccurred];
    objc_initWeak(&location, self);
    v7 = MEMORY[0x277D75D18];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __42__LACUIPasscodeField_shakeWithCompletion___block_invoke;
    v10[3] = &unk_27981E930;
    objc_copyWeak(&v11, &location);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __42__LACUIPasscodeField_shakeWithCompletion___block_invoke_2;
    v8[3] = &unk_27981E958;
    v9 = v4;
    [v7 animateWithDuration:0 delay:v10 usingSpringWithDamping:v8 initialSpringVelocity:0.4 options:0.0 animations:0.03 completion:1.2];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __42__LACUIPasscodeField_shakeWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 125);
    v4 = *(MEMORY[0x277CBF2C0] + 16);
    v5[0] = *MEMORY[0x277CBF2C0];
    v5[1] = v4;
    v5[2] = *(MEMORY[0x277CBF2C0] + 32);
    [v3 setTransform:v5];
  }
}

- (void)submit
{
  v3 = [(LACUIPasscodeField *)self passcodeField];
  [(LACUIPasscodeField *)self _verifyTextField:v3];
}

- (void)clear
{
  v3 = [(LACUIPasscodeField *)self passcodeField];
  v4 = [v3 text];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(LACUIPasscodeField *)self passcodeField];
    [v6 setText:&stru_28681D590];

    [(LACUIPasscodeField *)self _notifyPasscodeFieldLengthChange];
  }
}

- (void)textFieldDidChange:(id)a3
{
  v5 = a3;
  v4 = [(LACUIPasscodeField *)self passcodeField];
  if (v4 != v5)
  {
    [LACUIPasscodeField textFieldDidChange:];
  }

  [(LACUIPasscodeField *)self _notifyPasscodeFieldLengthChange];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = [(LACUIPasscodeField *)self passcodeField];
  if (v5 != v4)
  {
    [LACUIPasscodeField textFieldShouldReturn:];
  }

  if (![(LACUIPasscodeField *)self ignoreInputs])
  {
    [(LACUIPasscodeField *)self _verifyTextField:v4];
  }

  return 0;
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  v11 = [(LACUIPasscodeField *)self passcodeField];
  if (v11 != v9)
  {
    [LACUIPasscodeField textField:shouldChangeCharactersInRange:replacementString:];
  }

  if (![(LACUIPasscodeField *)self ignoreInputs])
  {
    if (-[LACUIPasscodeField _shouldUseAlphanumericKeyboard](self, "_shouldUseAlphanumericKeyboard") || ([MEMORY[0x277CCA900] decimalDigitCharacterSet], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "stringByTrimmingCharactersInSet:", v12), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "length"), v13, v12, !v14))
    {
      v15 = [v9 text];
      v16 = [v15 length];
      if (v16 >= [(LACUIPasscodeField *)self _passcodeLength])
      {
        v17 = [(LACUIPasscodeField *)self _passcodeLength];

        if (v17)
        {
          goto LABEL_9;
        }
      }

      else
      {
      }

      v18 = [v9 text];
      v19 = [v18 stringByReplacingCharactersInRange:location withString:{length, v10}];
      [v9 setText:v19];

      [(LACUIPasscodeField *)self _notifyPasscodeFieldLengthChange];
LABEL_9:
      v20 = [v9 text];
      v21 = [v20 length];
      v22 = [(LACUIPasscodeField *)self _passcodeLength];

      if (v21 >= v22)
      {
        [(LACUIPasscodeField *)self _verifyTextField:v9];
      }
    }
  }

  return 0;
}

- (id)textField:(id)a3 editMenuForCharactersInRange:(_NSRange)a4 suggestedActions:(id)a5
{
  v5 = MEMORY[0x277D75710];
  v6 = [MEMORY[0x277CBEA60] array];
  v7 = [v5 menuWithChildren:v6];

  return v7;
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 allObjects];
  v9 = [v8 firstObject];
  v10 = [v9 key];
  v11 = [v10 keyCode];

  if (v11 == 40 && ![(LACUIPasscodeField *)self ignoreInputs])
  {
    [(LACUIPasscodeField *)self submit];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = LACUIPasscodeField;
    [(LACUIPasscodeField *)&v12 pressesEnded:v6 withEvent:v7];
  }
}

- (LAUITextField)passcodeField
{
  WeakRetained = objc_loadWeakRetained(&self->_currentFieldLayout);
  v3 = [WeakRetained field];

  return v3;
}

- (void)_selectPasscodeField:(id)a3
{
  if ([a3 numberOfTouches] == 1 && !-[LACUIPasscodeField ignoreInputs](self, "ignoreInputs"))
  {

    [(LACUIPasscodeField *)self becomeFirstResponder];
  }
}

- (void)_setup
{
  v142[2] = *MEMORY[0x277D85DE8];
  v112 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v112 setTranslatesAutoresizingMaskIntoConstraints:0];
  val = self;
  v3 = [(LACUIPasscodeField *)self view];
  [v3 addSubview:v112];

  v4 = [v112 heightAnchor];
  v5 = [v4 constraintEqualToConstant:65.0];
  [v5 setActive:1];

  v6 = [v112 topAnchor];
  v7 = [(LACUIPasscodeField *)val view];
  v8 = [v7 topAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  [v9 setActive:1];

  v10 = [v112 bottomAnchor];
  v11 = [(LACUIPasscodeField *)val view];
  v12 = [v11 bottomAnchor];
  v13 = [v10 constraintLessThanOrEqualToAnchor:v12 constant:0.0];
  [v13 setActive:1];

  v14 = [v112 leadingAnchor];
  v15 = [(LACUIPasscodeField *)val view];
  v16 = [v15 leadingAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  [v17 setActive:1];

  v18 = [v112 trailingAnchor];
  v19 = [(LACUIPasscodeField *)val view];
  v20 = [v19 trailingAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  [v21 setActive:1];

  WeakRetained = objc_loadWeakRetained(&val->_mainContainer);
  [WeakRetained removeFromSuperview];

  v23 = objc_alloc_init(MEMORY[0x277D75A68]);
  objc_storeWeak(&val->_mainContainer, v23);
  [v23 setAxis:0];
  [v23 setAlignment:3];
  v113 = v23;
  [v23 setSpacing:16.0];
  v24 = [(LACUIPasscodeField *)val view];
  [v24 addSubview:v113];

  [v113 setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = [v113 topAnchor];
  v26 = [(LACUIPasscodeField *)val view];
  v27 = [v26 topAnchor];
  v28 = [v25 constraintEqualToAnchor:v27];
  [v28 setActive:1];

  v29 = [v113 bottomAnchor];
  v30 = [(LACUIPasscodeField *)val view];
  v31 = [v30 bottomAnchor];
  v32 = [v29 constraintEqualToAnchor:v31];
  [v32 setActive:1];

  v33 = [v113 leadingAnchor];
  v34 = [(LACUIPasscodeField *)val view];
  v35 = [v34 leadingAnchor];
  v36 = [v33 constraintEqualToAnchor:v35];
  [v36 setActive:1];

  v37 = [v113 trailingAnchor];
  v38 = [(LACUIPasscodeField *)val view];
  v39 = [v38 trailingAnchor];
  v40 = [v37 constraintEqualToAnchor:v39];
  [v40 setActive:1];

  v41 = [objc_alloc(MEMORY[0x277D755F0]) initWithStyle:2];
  hapticGenerator = val->_hapticGenerator;
  val->_hapticGenerator = v41;

  [(UIImpactFeedbackGenerator *)val->_hapticGenerator prepare];
  v43 = objc_alloc_init(MEMORY[0x277D75A68]);
  [v43 setAxis:1];
  objc_storeWeak(&val->_passcodeFieldContainer, v43);
  [v113 addArrangedSubview:v43];
  [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
  v116 = v43;
  v44 = [v43 heightAnchor];
  [(LACUIPasscodeFieldConfiguring *)val->_configurator passcodeFieldMinHeight];
  v45 = [v44 constraintGreaterThanOrEqualToConstant:?];
  [v45 setActive:1];

  obj = [MEMORY[0x277D75220] buttonWithType:1];
  objc_storeStrong(&val->_submitButton, obj);
  v46 = __28__LACUIPasscodeField__setup__block_invoke();
  [obj setConfiguration:v46];

  [obj addTarget:val action:sel_submit forControlEvents:64];
  [v113 addArrangedSubview:obj];
  [obj setTranslatesAutoresizingMaskIntoConstraints:0];
  v47 = MEMORY[0x277CCAAD0];
  v48 = [obj widthAnchor];
  v49 = [v48 constraintEqualToConstant:44.0];
  v142[0] = v49;
  v50 = [obj heightAnchor];
  v51 = [obj widthAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];
  v142[1] = v52;
  v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v142 count:2];
  [v47 activateConstraints:v53];

  v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
  fieldLayouts = val->_fieldLayouts;
  val->_fieldLayouts = v54;

  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v117 = [&unk_286827240 countByEnumeratingWithState:&v135 objects:v141 count:16];
  if (v117)
  {
    v115 = *v136;
    v114 = *MEMORY[0x277D77020];
    do
    {
      for (i = 0; i != v117; ++i)
      {
        if (*v136 != v115)
        {
          objc_enumerationMutation(&unk_286827240);
        }

        v125 = [*(*(&v135 + 1) + 8 * i) unsignedIntegerValue];
        v124 = objc_alloc_init(MEMORY[0x277D75D18]);
        [v116 addArrangedSubview:v124];
        [v124 setTranslatesAutoresizingMaskIntoConstraints:0];
        v56 = [v124 heightAnchor];
        [(LACUIPasscodeFieldConfiguring *)val->_configurator passcodeFieldMinHeight];
        v57 = [v56 constraintGreaterThanOrEqualToConstant:?];
        [v57 setActive:1];

        [v124 setHidden:1];
        v58 = objc_alloc_init(LAUITextField);
        [(LAUITextField *)v58 setShouldHideEditMenu:[(LACUIPasscodeField *)val _shouldUseAlphanumericKeyboardForStyle:v125]^ 1];
        [(LAUITextField *)v58 disablePrediction];
        [(LAUITextField *)v58 setDelegate:val];
        [(LAUITextField *)v58 setDevicePasscodeEntry:1];
        [(LAUITextField *)v58 setBorderStyle:[(LACUIPasscodeFieldConfiguring *)val->_configurator passcodeFieldBorderStyleForPasscodeFieldStyle:v125]];
        [(LAUITextField *)v58 setSecureTextEntry:1];
        [(LAUITextField *)v58 setDisplaySecureTextUsingPlainText:[(LACUIPasscodeFieldConfiguring *)val->_configurator shouldConcealInputs]^ 1];
        [(LAUITextField *)v58 setTextContentType:v114];
        [(LAUITextField *)v58 setAutocapitalizationType:0];
        [(LAUITextField *)v58 setAutocorrectionType:1];
        v59 = [(LACUIPasscodeFieldConfiguring *)val->_configurator passcodeFieldFont];
        [(LAUITextField *)v58 setFont:v59];

        v60 = [(LACUIPasscodeField *)val _alphanumericFieldPlaceholder];
        [(LAUITextField *)v58 setAttributedPlaceholder:v60];

        [(LAUITextField *)v58 setTextAlignment:[(LACUIPasscodeField *)val _textAlignment]];
        v61 = [MEMORY[0x277D75348] labelColor];
        [(LAUITextField *)v58 setTextColor:v61];

        [(LAUITextField *)v58 setReturnKeyType:9];
        if ([(LACUIPasscodeField *)val _shouldUseAlphanumericKeyboardForStyle:v125])
        {
          v62 = 0;
        }

        else
        {
          v63 = [MEMORY[0x277D75418] currentDevice];
          v64 = [v63 userInterfaceIdiom];

          if ((v64 & 0xFFFFFFFFFFFFFFFBLL) == 1)
          {
            v62 = 4;
          }

          else
          {
            v62 = 127;
          }
        }

        [(LAUITextField *)v58 setKeyboardType:v62];
        [(LAUITextField *)v58 setEnablesReturnKeyAutomatically:1];
        v65 = [(LACUIPasscodeField *)val _passcodeFieldColor];
        v66 = v65;
        v67 = [v65 CGColor];
        v68 = [v124 layer];
        [v68 setBackgroundColor:v67];

        [(LAUITextField *)v58 addTarget:val action:sel_textFieldDidChange_ forControlEvents:0x20000];
        [v124 addSubview:v58];
        [(LAUITextField *)v58 setTranslatesAutoresizingMaskIntoConstraints:0];
        v118 = MEMORY[0x277CCAAD0];
        v122 = [(LAUITextField *)v58 topAnchor];
        v121 = [v124 topAnchor];
        [(LACUIPasscodeFieldConfiguring *)val->_configurator passcodeFieldPadding];
        v120 = [v122 constraintEqualToAnchor:v121 constant:?];
        v140[0] = v120;
        v119 = [(LAUITextField *)v58 bottomAnchor];
        v69 = [v124 bottomAnchor];
        [(LACUIPasscodeFieldConfiguring *)val->_configurator passcodeFieldPadding];
        v71 = [v119 constraintEqualToAnchor:v69 constant:-v70];
        v140[1] = v71;
        v72 = [(LAUITextField *)v58 leadingAnchor];
        v73 = [v124 leadingAnchor];
        [(LACUIPasscodeFieldConfiguring *)val->_configurator passcodeFieldPadding];
        v74 = [v72 constraintEqualToAnchor:v73 constant:?];
        v140[2] = v74;
        v75 = [(LAUITextField *)v58 trailingAnchor];
        v76 = [v124 trailingAnchor];
        [(LACUIPasscodeFieldConfiguring *)val->_configurator passcodeFieldPadding];
        v78 = [v75 constraintEqualToAnchor:v76 constant:-v77];
        v140[3] = v78;
        v79 = [MEMORY[0x277CBEA60] arrayWithObjects:v140 count:4];
        [v118 activateConstraints:v79];

        [(LACUIPasscodeFieldConfiguring *)val->_configurator passcodeFieldCornerRadius:v58 forPasscodeStyle:v125];
        v81 = v80;
        [(LAUITextField *)v58 _setRoundedRectBackgroundCornerRadius:?];
        v82 = [v124 layer];
        [v82 setCornerRadius:v81];

        if ([(LACUIPasscodeField *)val _shouldUseDotPatternForStyle:v125])
        {
          v83 = [v124 layer];
          v84 = [MEMORY[0x277D75348] clearColor];
          v85 = v84;
          [v83 setBackgroundColor:{objc_msgSend(v84, "CGColor")}];

          v86 = objc_alloc_init(MEMORY[0x277D75A68]);
          [v86 setAxis:0];
          [(LACUIPasscodeFieldConfiguring *)val->_configurator dotSpacing];
          [v86 setSpacing:?];
          [v86 setSemanticContentAttribute:3];
          if ([(LACUIPasscodeField *)val _passcodeLengthForStyle:v125])
          {
            v87 = 0;
            do
            {
              v88 = objc_alloc_init(LACUIPasscodeDotView);
              [v86 addArrangedSubview:v88];
              [(LACUIPasscodeDotView *)v88 setTranslatesAutoresizingMaskIntoConstraints:0];
              v89 = [(LACUIPasscodeDotView *)v88 widthAnchor];
              [(LACUIPasscodeFieldConfiguring *)val->_configurator dotSize];
              v90 = [v89 constraintEqualToConstant:?];
              [v90 setActive:1];

              v91 = [(LACUIPasscodeDotView *)v88 heightAnchor];
              [(LACUIPasscodeFieldConfiguring *)val->_configurator dotSize];
              v92 = [v91 constraintEqualToConstant:?];
              [v92 setActive:1];

              ++v87;
            }

            while (v87 < [(LACUIPasscodeField *)val _passcodeLengthForStyle:v125]);
          }

          [v124 addSubview:v86];
          [v86 setTranslatesAutoresizingMaskIntoConstraints:0];
          if (_UISolariumEnabled())
          {
            v93 = [v86 leadingAnchor];
            [v124 leadingAnchor];
          }

          else
          {
            v93 = [v86 centerXAnchor];
            [v124 centerXAnchor];
          }
          v94 = ;
          v95 = [v93 constraintEqualToAnchor:v94];
          [v95 setActive:1];

          v96 = [v86 centerYAnchor];
          v97 = [v124 centerYAnchor];
          v98 = [v96 constraintEqualToAnchor:v97];
          [v98 setActive:1];

          [(LAUITextField *)v58 setShouldHideSelectionRects:1];
          v99 = [MEMORY[0x277D75348] clearColor];
          [(LAUITextField *)v58 setTintColor:v99];

          v100 = [MEMORY[0x277D75348] clearColor];
          [(LAUITextField *)v58 setTextColor:v100];

          [(LAUITextField *)v58 setIsAccessibilityElement:0];
        }

        else
        {
          v86 = 0;
        }

        v101 = val->_fieldLayouts;
        v130[0] = MEMORY[0x277D85DD0];
        v130[1] = 3221225472;
        v130[2] = __28__LACUIPasscodeField__setup__block_invoke_44;
        v130[3] = &unk_27981E980;
        v131 = v58;
        v132 = v86;
        v133 = v124;
        v134 = v125;
        v102 = v124;
        v103 = v86;
        v104 = v58;
        v105 = __28__LACUIPasscodeField__setup__block_invoke_44(v130);
        [(NSMutableArray *)v101 addObject:v105];
      }

      v117 = [&unk_286827240 countByEnumeratingWithState:&v135 objects:v141 count:16];
    }

    while (v117);
  }

  [(LACUIPasscodeField *)val _activateFieldLayoutForSelectedPasscodeStyle];
  objc_initWeak(&location, val);
  v106 = objc_opt_self();
  v139 = v106;
  v107 = [MEMORY[0x277CBEA60] arrayWithObjects:&v139 count:1];
  v127[0] = MEMORY[0x277D85DD0];
  v127[1] = 3221225472;
  v127[2] = __28__LACUIPasscodeField__setup__block_invoke_2;
  v127[3] = &unk_27981E9A8;
  objc_copyWeak(&v128, &location);
  v108 = [(LACUIPasscodeField *)val registerForTraitChanges:v107 withHandler:v127];

  objc_destroyWeak(&v128);
  objc_destroyWeak(&location);

  v109 = *MEMORY[0x277D85DE8];
}

id __28__LACUIPasscodeField__setup__block_invoke()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D75230] grayButtonConfiguration];
  v1 = objc_alloc(MEMORY[0x277CCA898]);
  v2 = +[LACUILocalization ok];
  v8 = *MEMORY[0x277D740A8];
  v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v1 initWithString:v2 attributes:v4];
  [v0 setAttributedTitle:v5];

  [v0 setContentInsets:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];
  [v0 setCornerStyle:4];
  v6 = *MEMORY[0x277D85DE8];

  return v0;
}

LACUIPasscodeFieldLayout *__28__LACUIPasscodeField__setup__block_invoke_44(void *a1)
{
  v2 = objc_alloc_init(LACUIPasscodeFieldLayout);
  [(LACUIPasscodeFieldLayout *)v2 setStyle:a1[7]];
  [(LACUIPasscodeFieldLayout *)v2 setField:a1[4]];
  [(LACUIPasscodeFieldLayout *)v2 setBackground:a1[5]];
  [(LACUIPasscodeFieldLayout *)v2 setContainer:a1[6]];

  return v2;
}

void __28__LACUIPasscodeField__setup__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _applyStyleToFieldLayout];
}

- (void)_activateFieldLayoutForSelectedPasscodeStyle
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __66__LACUIPasscodeField__activateFieldLayoutForSelectedPasscodeStyle__block_invoke;
  v2[3] = &unk_27981E8E8;
  v2[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v2];
}

void __66__LACUIPasscodeField__activateFieldLayoutForSelectedPasscodeStyle__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(*(a1 + 32) + 1032);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = [v7 style];
        v9 = *(a1 + 32);
        if (v8 == *(v9 + 1072))
        {
          objc_storeWeak((v9 + 1040), v7);
          v10 = [v7 container];
          [v10 setHidden:0];

          v11 = [v7 field];
          [v11 setText:&stru_28681D590];

          [*(a1 + 32) _applyStyleToFieldLayout];
        }

        else
        {
          v12 = [v7 container];
          [v12 setHidden:1];

          v13 = [v7 field];
          [v13 setText:&stru_28681D590];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  [*(*(a1 + 32) + 1016) setHidden:{objc_msgSend(*(a1 + 32), "_shouldShowSubmitButtonForStyle:", *(*(a1 + 32) + 1072)) ^ 1}];
  v14 = [*(a1 + 32) view];
  v15 = [v14 window];

  if (v15)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1000));
    [WeakRetained layoutIfNeeded];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_applyStyleToFieldLayout
{
  if ([(LACUIPasscodeField *)self _shouldUseDotPattern])
  {
    [(LACUIPasscodeField *)self _updateDotPattern];
    WeakRetained = objc_loadWeakRetained(&self->_currentFieldLayout);
    v3 = [WeakRetained container];
    v4 = [v3 layer];
    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_currentFieldLayout);
    v3 = [WeakRetained container];
    v4 = [v3 layer];
    [(LACUIPasscodeField *)self _passcodeFieldColor];
  }
  v5 = ;
  [v4 setBackgroundColor:{objc_msgSend(v5, "CGColor")}];
}

- (void)_updateDotPattern
{
  if ([(LACUIPasscodeField *)self _shouldUseDotPattern])
  {
    v3 = [(LACUIPasscodeField *)self traitCollection];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __39__LACUIPasscodeField__updateDotPattern__block_invoke;
    v4[3] = &unk_27981E8E8;
    v4[4] = self;
    [v3 performAsCurrentTraitCollection:v4];
  }
}

unint64_t __39__LACUIPasscodeField__updateDotPattern__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _passcodeLength];
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1040));
      v5 = [WeakRetained background];
      v6 = [v5 arrangedSubviews];
      v7 = [v6 objectAtIndex:i];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = *(a1 + 32);
        v9 = v8[128];
        v10 = [v8 passcodeField];
        [v9 configureDotView:v7 atIndex:i forField:v10];
      }

      result = [*(a1 + 32) _passcodeLength];
    }
  }

  return result;
}

- (unint64_t)_passcodeLengthForStyle:(int64_t)a3
{
  v3 = 4;
  if (a3 != 1)
  {
    v3 = -1;
  }

  if (a3 == 2)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

- (id)_alphanumericFieldPlaceholder
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CCA898]);
  v4 = [(LACUIPasscodeField *)self placeholderText];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_28681D590;
  }

  v7 = *MEMORY[0x277D74118];
  v14[4] = self;
  v15[0] = v7;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__LACUIPasscodeField__alphanumericFieldPlaceholder__block_invoke;
  v14[3] = &unk_27981E9D0;
  v8 = __51__LACUIPasscodeField__alphanumericFieldPlaceholder__block_invoke(v14);
  v16[0] = v8;
  v15[1] = *MEMORY[0x277D740A8];
  v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v16[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v11 = [v3 initWithString:v6 attributes:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id __51__LACUIPasscodeField__alphanumericFieldPlaceholder__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D74240]);
  [v2 setAlignment:{objc_msgSend(*(a1 + 32), "_textAlignment")}];

  return v2;
}

- (void)_verifyTextField:(id)a3
{
  v4 = a3;
  v6 = [(LACUIPasscodeField *)self delegate];
  v5 = [v4 text];

  [v6 passcodeField:self didSubmitPasscode:v5];
}

- (void)_notifyPasscodeFieldLengthChange
{
  [(LACUIPasscodeField *)self _updateDotPattern];
  v5 = [(LACUIPasscodeField *)self delegate];
  v3 = [(LACUIPasscodeField *)self passcodeField];
  v4 = [v3 text];
  [v5 passcodeField:self didChangePasscodeLength:{objc_msgSend(v4, "length")}];
}

- (id)_passcodeFieldColor
{
  v2 = [(LACUIPasscodeField *)self traitCollection];
  v3 = [v2 userInterfaceStyle];

  if (v3 == 2)
  {
    [MEMORY[0x277D75348] quaternaryLabelColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemLightGrayTintColor];
  }
  v4 = ;

  return v4;
}

- (LACUIPasscodeFieldDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end