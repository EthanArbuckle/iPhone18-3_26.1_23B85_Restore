@interface DMCEnrollmentConfirmationView
- (CGSize)sizeThatFits:(CGSize)fits;
- (DMCEnrollmentConfirmationView)initWithConfirmationText:(id)text cancelText:(id)cancelText confirmationAction:(id)action cancelAction:(id)cancelAction;
- (double)_buttonWidth;
- (double)_horizontalMargin;
- (void)cancelButtonTapped:(id)tapped;
- (void)confirmationButtonTapped:(id)tapped;
- (void)layoutSubviews;
- (void)setConfirmationButtonEnabled:(BOOL)enabled;
- (void)setInProgress:(BOOL)progress;
@end

@implementation DMCEnrollmentConfirmationView

- (DMCEnrollmentConfirmationView)initWithConfirmationText:(id)text cancelText:(id)cancelText confirmationAction:(id)action cancelAction:(id)cancelAction
{
  textCopy = text;
  cancelTextCopy = cancelText;
  actionCopy = action;
  cancelActionCopy = cancelAction;
  v15 = [(DMCEnrollmentConfirmationView *)self initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v15)
  {
    boldButton = [MEMORY[0x277D37618] boldButton];
    confirmationButton = v15->_confirmationButton;
    v15->_confirmationButton = boldButton;

    [(OBBoldTrayButton *)v15->_confirmationButton setTitle:textCopy forState:0];
    v18 = v15->_confirmationButton;
    v19 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:textCopy];
    [(OBBoldTrayButton *)v18 setAttributedTitle:v19 forState:2];

    [(OBBoldTrayButton *)v15->_confirmationButton setTranslatesAutoresizingMaskIntoConstraints:1];
    [(OBBoldTrayButton *)v15->_confirmationButton addTarget:v15 action:sel_confirmationButtonTapped_ forControlEvents:64];
    [(DMCEnrollmentConfirmationView *)v15 addSubview:v15->_confirmationButton];
    if (cancelTextCopy && cancelActionCopy)
    {
      linkButton = [MEMORY[0x277D37650] linkButton];
      cancelButton = v15->_cancelButton;
      v15->_cancelButton = linkButton;

      whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v23 = [cancelTextCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
      v24 = [v23 length];

      if (!v24)
      {
        [(UIButton *)v15->_cancelButton setUserInteractionEnabled:0];
        [(UIButton *)v15->_cancelButton setAlpha:0.0];
      }

      [(UIButton *)v15->_cancelButton setTitle:cancelTextCopy forState:0];
      [(UIButton *)v15->_cancelButton setTranslatesAutoresizingMaskIntoConstraints:1];
      [(UIButton *)v15->_cancelButton addTarget:v15 action:sel_cancelButtonTapped_ forControlEvents:64];
      [(DMCEnrollmentConfirmationView *)v15 addSubview:v15->_cancelButton];
    }

    objc_storeStrong(&v15->_confirmationText, text);
    v25 = _Block_copy(actionCopy);
    confirmationAction = v15->_confirmationAction;
    v15->_confirmationAction = v25;

    v27 = _Block_copy(cancelActionCopy);
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
  confirmationButton = [(DMCEnrollmentConfirmationView *)self confirmationButton];
  [confirmationButton setFrame:{v8, 0.0, v6, v4}];

  cancelButton = [(DMCEnrollmentConfirmationView *)self cancelButton];

  if (cancelButton)
  {
    confirmationButton2 = [(DMCEnrollmentConfirmationView *)self confirmationButton];
    [confirmationButton2 frame];
    v12 = CGRectGetMaxY(v15) + 10.0;

    cancelButton2 = [(DMCEnrollmentConfirmationView *)self cancelButton];
    [cancelButton2 setFrame:{v8, v12, v6, v4}];
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
  isPad = [MEMORY[0x277D03530] isPad];
  result = 7.0;
  if (isPad)
  {
    [(DMCEnrollmentConfirmationView *)self bounds];
    return (CGRectGetWidth(v5) + -360.0) * 0.5;
  }

  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(DMCEnrollmentConfirmationView *)self _buttonHeight:fits.width];
  v6 = v5;
  cancelButton = [(DMCEnrollmentConfirmationView *)self cancelButton];
  if (cancelButton)
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

- (void)confirmationButtonTapped:(id)tapped
{
  v4 = DMCLogObjects();
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    [DMCEnrollmentConfirmationView confirmationButtonTapped:];
  }

  confirmationAction = [(DMCEnrollmentConfirmationView *)self confirmationAction];
  confirmationAction[2]();
}

- (void)cancelButtonTapped:(id)tapped
{
  v4 = DMCLogObjects();
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    [DMCEnrollmentConfirmationView cancelButtonTapped:];
  }

  cancelAction = [(DMCEnrollmentConfirmationView *)self cancelAction];
  cancelAction[2]();
}

- (void)setInProgress:(BOOL)progress
{
  if (self->_inProgress != progress)
  {
    self->_inProgress = progress;
    if (progress)
    {
      confirmationButton = self->_confirmationButton;
      v6 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" "];
      [(OBBoldTrayButton *)confirmationButton setAttributedTitle:v6 forState:2];

      confirmationButton = [(DMCEnrollmentConfirmationView *)self confirmationButton];
      [confirmationButton showsBusyIndicator];

      cancelButton = [(DMCEnrollmentConfirmationView *)self cancelButton];
      [cancelButton setEnabled:0];
    }

    else
    {
      confirmationButton2 = [(DMCEnrollmentConfirmationView *)self confirmationButton];
      [confirmationButton2 hidesBusyIndicator];

      cancelButton2 = [(DMCEnrollmentConfirmationView *)self cancelButton];
      [cancelButton2 setEnabled:1];

      v10 = self->_confirmationButton;
      cancelButton = [objc_alloc(MEMORY[0x277CCA898]) initWithString:self->_confirmationText];
      [OBBoldTrayButton setAttributedTitle:v10 forState:"setAttributedTitle:forState:"];
    }
  }
}

- (void)setConfirmationButtonEnabled:(BOOL)enabled
{
  if (self->_confirmationButtonEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_confirmationButtonEnabled = enabled;
    confirmationButton = [(DMCEnrollmentConfirmationView *)self confirmationButton];
    [confirmationButton setEnabled:enabledCopy];
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