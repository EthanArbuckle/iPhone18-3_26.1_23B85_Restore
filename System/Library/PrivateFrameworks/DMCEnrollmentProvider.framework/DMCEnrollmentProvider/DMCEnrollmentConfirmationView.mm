@interface DMCEnrollmentConfirmationView
- (CGSize)sizeThatFits:(CGSize)a3;
- (DMCEnrollmentConfirmationView)initWithConfirmationText:(id)a3 cancelText:(id)a4 confirmationAction:(id)a5 cancelAction:(id)a6;
- (double)_buttonWidth;
- (double)_horizontalMargin;
- (void)cancelButtonTapped:(id)a3;
- (void)confirmationButtonTapped:(id)a3;
- (void)layoutSubviews;
- (void)setConfirmationButtonEnabled:(BOOL)a3;
- (void)setInProgress:(BOOL)a3;
@end

@implementation DMCEnrollmentConfirmationView

- (DMCEnrollmentConfirmationView)initWithConfirmationText:(id)a3 cancelText:(id)a4 confirmationAction:(id)a5 cancelAction:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(DMCEnrollmentConfirmationView *)self initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v15)
  {
    v16 = [MEMORY[0x277D37618] boldButton];
    confirmationButton = v15->_confirmationButton;
    v15->_confirmationButton = v16;

    [(OBBoldTrayButton *)v15->_confirmationButton setTitle:v11 forState:0];
    v18 = v15->_confirmationButton;
    v19 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v11];
    [(OBBoldTrayButton *)v18 setAttributedTitle:v19 forState:2];

    [(OBBoldTrayButton *)v15->_confirmationButton setTranslatesAutoresizingMaskIntoConstraints:1];
    [(OBBoldTrayButton *)v15->_confirmationButton addTarget:v15 action:sel_confirmationButtonTapped_ forControlEvents:64];
    [(DMCEnrollmentConfirmationView *)v15 addSubview:v15->_confirmationButton];
    if (v12 && v14)
    {
      v20 = [MEMORY[0x277D37650] linkButton];
      cancelButton = v15->_cancelButton;
      v15->_cancelButton = v20;

      v22 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v23 = [v12 stringByTrimmingCharactersInSet:v22];
      v24 = [v23 length];

      if (!v24)
      {
        [(UIButton *)v15->_cancelButton setUserInteractionEnabled:0];
        [(UIButton *)v15->_cancelButton setAlpha:0.0];
      }

      [(UIButton *)v15->_cancelButton setTitle:v12 forState:0];
      [(UIButton *)v15->_cancelButton setTranslatesAutoresizingMaskIntoConstraints:1];
      [(UIButton *)v15->_cancelButton addTarget:v15 action:sel_cancelButtonTapped_ forControlEvents:64];
      [(DMCEnrollmentConfirmationView *)v15 addSubview:v15->_cancelButton];
    }

    objc_storeStrong(&v15->_confirmationText, a3);
    v25 = _Block_copy(v13);
    confirmationAction = v15->_confirmationAction;
    v15->_confirmationAction = v25;

    v27 = _Block_copy(v14);
    cancelAction = v15->_cancelAction;
    v15->_cancelAction = v27;

    v15->_confirmationButtonEnabled = 1;
  }

  return v15;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = DMCEnrollmentConfirmationView;
  [(DMCEnrollmentConfirmationView *)&v14 layoutSubviews];
  [(DMCEnrollmentConfirmationView *)self _buttonHeight];
  v4 = v3;
  [(DMCEnrollmentConfirmationView *)self _buttonWidth];
  v6 = v5;
  [(DMCEnrollmentConfirmationView *)self _horizontalMargin];
  v8 = v7;
  v9 = [(DMCEnrollmentConfirmationView *)self confirmationButton];
  [v9 setFrame:{v8, 0.0, v6, v4}];

  v10 = [(DMCEnrollmentConfirmationView *)self cancelButton];

  if (v10)
  {
    v11 = [(DMCEnrollmentConfirmationView *)self confirmationButton];
    [v11 frame];
    v12 = CGRectGetMaxY(v15) + 10.0;

    v13 = [(DMCEnrollmentConfirmationView *)self cancelButton];
    [v13 setFrame:{v8, v12, v6, v4}];
  }
}

- (double)_buttonWidth
{
  if ([MEMORY[0x277D03530] isPad])
  {
    return 360.0;
  }

  [(DMCEnrollmentConfirmationView *)self bounds];
  return CGRectGetWidth(v4) + -14.0;
}

- (double)_horizontalMargin
{
  v3 = [MEMORY[0x277D03530] isPad];
  result = 7.0;
  if (v3)
  {
    [(DMCEnrollmentConfirmationView *)self bounds];
    return (CGRectGetWidth(v5) + -360.0) * 0.5;
  }

  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(DMCEnrollmentConfirmationView *)self _buttonHeight:a3.width];
  v6 = v5;
  v7 = [(DMCEnrollmentConfirmationView *)self cancelButton];
  if (v7)
  {
    v8 = v6 + 10.0;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = v6 + v8;
  v10 = width;
  result.height = v9;
  result.width = v10;
  return result;
}

- (void)confirmationButtonTapped:(id)a3
{
  v4 = DMCLogObjects();
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    [DMCEnrollmentConfirmationView confirmationButtonTapped:];
  }

  v5 = [(DMCEnrollmentConfirmationView *)self confirmationAction];
  v5[2]();
}

- (void)cancelButtonTapped:(id)a3
{
  v4 = DMCLogObjects();
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    [DMCEnrollmentConfirmationView cancelButtonTapped:];
  }

  v5 = [(DMCEnrollmentConfirmationView *)self cancelAction];
  v5[2]();
}

- (void)setInProgress:(BOOL)a3
{
  if (self->_inProgress != a3)
  {
    self->_inProgress = a3;
    if (a3)
    {
      confirmationButton = self->_confirmationButton;
      v6 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" "];
      [(OBBoldTrayButton *)confirmationButton setAttributedTitle:v6 forState:2];

      v7 = [(DMCEnrollmentConfirmationView *)self confirmationButton];
      [v7 showsBusyIndicator];

      v11 = [(DMCEnrollmentConfirmationView *)self cancelButton];
      [v11 setEnabled:0];
    }

    else
    {
      v8 = [(DMCEnrollmentConfirmationView *)self confirmationButton];
      [v8 hidesBusyIndicator];

      v9 = [(DMCEnrollmentConfirmationView *)self cancelButton];
      [v9 setEnabled:1];

      v10 = self->_confirmationButton;
      v11 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:self->_confirmationText];
      [OBBoldTrayButton setAttributedTitle:v10 forState:"setAttributedTitle:forState:"];
    }
  }
}

- (void)setConfirmationButtonEnabled:(BOOL)a3
{
  if (self->_confirmationButtonEnabled != a3)
  {
    v4 = a3;
    self->_confirmationButtonEnabled = a3;
    v5 = [(DMCEnrollmentConfirmationView *)self confirmationButton];
    [v5 setEnabled:v4];
  }
}

- (void)confirmationButtonTapped:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = "/Library/Caches/com.apple.xbs/Sources/DeviceManagementClientTools/DeviceManagementClientTools/DMC Enrollment Provider/DMC UI Utilities/Views/Functional Views/DMCEnrollmentConfirmationView.m";
  v3 = 2080;
  OUTLINED_FUNCTION_0();
  v4 = 128;
  _os_log_debug_impl(&dword_247E7D000, v0, OS_LOG_TYPE_DEBUG, "<%s %s:%lu>", v1, 0x20u);
}

- (void)cancelButtonTapped:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = "/Library/Caches/com.apple.xbs/Sources/DeviceManagementClientTools/DeviceManagementClientTools/DMC Enrollment Provider/DMC UI Utilities/Views/Functional Views/DMCEnrollmentConfirmationView.m";
  v3 = 2080;
  OUTLINED_FUNCTION_0();
  v4 = 133;
  _os_log_debug_impl(&dword_247E7D000, v0, OS_LOG_TYPE_DEBUG, "<%s %s:%lu>", v1, 0x20u);
}

@end