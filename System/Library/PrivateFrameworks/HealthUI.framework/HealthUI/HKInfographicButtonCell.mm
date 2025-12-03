@interface HKInfographicButtonCell
- (void)_constrainButton;
- (void)_didTapButton;
- (void)setConfiguration:(id)configuration buttonTapHandler:(id)handler;
- (void)updateAutomationIdentifiersWith:(id)with;
@end

@implementation HKInfographicButtonCell

- (void)setConfiguration:(id)configuration buttonTapHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  v8 = [configurationCopy copy];
  configuration = self->_configuration;
  self->_configuration = v8;

  [(UIButtonConfiguration *)self->_configuration setContentInsets:0.0, 0.0, 0.0, 0.0];
  v10 = [handlerCopy copy];
  buttonTapHandler = self->_buttonTapHandler;
  self->_buttonTapHandler = v10;

  button = self->_button;
  if (button)
  {
    [(UIButton *)button setConfiguration:configurationCopy];
  }

  else
  {
    objc_initWeak(&location, self);
    v13 = MEMORY[0x1E69DC628];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __61__HKInfographicButtonCell_setConfiguration_buttonTapHandler___block_invoke;
    v20 = &unk_1E81B6A10;
    objc_copyWeak(&v21, &location);
    v14 = [v13 actionWithHandler:&v17];
    v15 = [MEMORY[0x1E69DC738] buttonWithConfiguration:self->_configuration primaryAction:{v14, v17, v18, v19, v20}];
    v16 = self->_button;
    self->_button = v15;

    [(HKInfographicButtonCell *)self _constrainButton];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

void __61__HKInfographicButtonCell_setConfiguration_buttonTapHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didTapButton];
}

- (void)_constrainButton
{
  v26[4] = *MEMORY[0x1E69E9840];
  contentView = [(HKInfographicButtonCell *)self contentView];
  [contentView addSubview:self->_button];

  [(UIButton *)self->_button setContentHorizontalAlignment:4];
  v17 = MEMORY[0x1E696ACD8];
  topAnchor = [(UIButton *)self->_button topAnchor];
  contentView2 = [(HKInfographicButtonCell *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:5.0];
  v26[0] = v22;
  leadingAnchor = [(UIButton *)self->_button leadingAnchor];
  contentView3 = [(HKInfographicButtonCell *)self contentView];
  layoutMarginsGuide = [contentView3 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v26[1] = v16;
  trailingAnchor = [(UIButton *)self->_button trailingAnchor];
  contentView4 = [(HKInfographicButtonCell *)self contentView];
  layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v5 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v26[2] = v5;
  bottomAnchor = [(UIButton *)self->_button bottomAnchor];
  contentView5 = [(HKInfographicButtonCell *)self contentView];
  layoutMarginsGuide3 = [contentView5 layoutMarginsGuide];
  bottomAnchor2 = [layoutMarginsGuide3 bottomAnchor];
  v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v26[3] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
  [v17 activateConstraints:v11];

  [(UIButton *)self->_button setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView6 = [(HKInfographicButtonCell *)self contentView];
  [contentView6 setDirectionalLayoutMargins:{7.0, 7.0, 18.0, 7.0}];
}

- (void)_didTapButton
{
  buttonTapHandler = self->_buttonTapHandler;
  if (buttonTapHandler)
  {
    buttonTapHandler[2]();
  }
}

- (void)updateAutomationIdentifiersWith:(id)with
{
  v13[3] = *MEMORY[0x1E69E9840];
  withCopy = with;
  v5 = withCopy;
  if (withCopy)
  {
    v13[0] = withCopy;
    v13[1] = @"InfographicButtonItem";
    v13[2] = @"Cell";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
    v7 = HKUIJoinStringsForAutomationIdentifier(v6);
    [(HKInfographicButtonCell *)self setAccessibilityIdentifier:v7];

    v12[0] = v5;
    v12[1] = @"InfographicButtonItem";
    v12[2] = @"Button";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
    v9 = HKUIJoinStringsForAutomationIdentifier(v8);
    button = [(HKInfographicButtonCell *)self button];
    [button setAccessibilityIdentifier:v9];
  }

  else
  {
    [(HKInfographicButtonCell *)self setAccessibilityIdentifier:0];
    button2 = [(HKInfographicButtonCell *)self button];
    [button2 setAccessibilityIdentifier:0];
  }
}

@end