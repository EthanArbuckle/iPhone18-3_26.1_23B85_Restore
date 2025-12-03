@interface DBUserAlertSheetView
- (DBUserAlertSheetView)initWithAlert:(id)alert environmentConfiguration:(id)configuration;
- (id)_buttonFont;
- (id)_buttonWithAlertAction:(id)action;
- (id)_titleFont;
@end

@implementation DBUserAlertSheetView

- (DBUserAlertSheetView)initWithAlert:(id)alert environmentConfiguration:(id)configuration
{
  v84[1] = *MEMORY[0x277D85DE8];
  alertCopy = alert;
  configurationCopy = configuration;
  v79.receiver = self;
  v79.super_class = DBUserAlertSheetView;
  v8 = *MEMORY[0x277CBF3A0];
  v9 = *(MEMORY[0x277CBF3A0] + 8);
  v10 = *(MEMORY[0x277CBF3A0] + 16);
  v11 = *(MEMORY[0x277CBF3A0] + 24);
  v12 = [(DBUserAlertSheetView *)&v79 initWithFrame:*MEMORY[0x277CBF3A0], v9, v10, v11];
  v13 = v12;
  if (v12)
  {
    [(DBUserAlertSheetView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    tableBackgroundColor = [MEMORY[0x277D75348] tableBackgroundColor];
    [(DBUserAlertSheetView *)v13 setBackgroundColor:tableBackgroundColor];

    v16 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v8, v9, v10, v11}];
    titleLabel = v13->_titleLabel;
    v13->_titleLabel = v16;

    [(UILabel *)v13->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    _titleFont = [(DBUserAlertSheetView *)v13 _titleFont];
    [(UILabel *)v13->_titleLabel setFont:_titleFont];

    [(UILabel *)v13->_titleLabel setTextAlignment:1];
    [(UILabel *)v13->_titleLabel setNumberOfLines:0];
    title = [alertCopy title];
    [(UILabel *)v13->_titleLabel setText:title];

    [(DBUserAlertSheetView *)v13 addSubview:v13->_titleLabel];
    v20 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v8, v9, v10, v11}];
    messageLabel = v13->_messageLabel;
    v13->_messageLabel = v20;

    [(UILabel *)v13->_messageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76920]];
    v83 = *MEMORY[0x277D74430];
    v23 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74418]];
    v84[0] = v23;
    v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:&v83 count:1];

    v81 = *MEMORY[0x277D74380];
    v82 = v73;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
    v72 = [v22 fontDescriptorByAddingAttributes:v24];

    v25 = [MEMORY[0x277D74300] fontWithDescriptor:v72 size:0.0];
    [(UILabel *)v13->_messageLabel setFont:v25];

    [(UILabel *)v13->_messageLabel setTextAlignment:1];
    [(UILabel *)v13->_messageLabel setNumberOfLines:0];
    message = [alertCopy message];
    [(UILabel *)v13->_messageLabel setText:message];

    [(DBUserAlertSheetView *)v13 addSubview:v13->_messageLabel];
    v27 = [objc_alloc(MEMORY[0x277D75A68]) initWithFrame:{v8, v9, v10, v11}];
    buttonStackView = v13->_buttonStackView;
    v13->_buttonStackView = v27;

    [(UIStackView *)v13->_buttonStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v13->_buttonStackView setAxis:0];
    [(UIStackView *)v13->_buttonStackView setDistribution:1];
    [(UIStackView *)v13->_buttonStackView setSpacing:20.0];
    [(DBUserAlertSheetView *)v13 addSubview:v13->_buttonStackView];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__DBUserAlertSheetView_initWithAlert_environmentConfiguration___block_invoke;
    aBlock[3] = &unk_278F03740;
    v29 = v13;
    v77 = v29;
    v78 = v14;
    v75 = v14;
    v30 = _Block_copy(aBlock);
    cancelAction = [alertCopy cancelAction];
    v30[2](v30, cancelAction);

    otherAction = [alertCopy otherAction];
    v71 = v30;
    v30[2](v30, otherAction);

    defaultAction = [alertCopy defaultAction];
    v30[2](v30, defaultAction);

    [(DBUserAlertSheetView *)v29 safeAreaLayoutGuide];
    v34 = v74 = alertCopy;
    firstBaselineAnchor = [(UILabel *)v13->_titleLabel firstBaselineAnchor];
    topAnchor = [v34 topAnchor];
    [configurationCopy currentSafeViewAreaFrame];
    v36 = v35 * 0.25;
    screen = [configurationCopy screen];
    [screen scale];
    v67 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:v36 * (v37 / 1.5) + -24.0];
    v80[0] = v67;
    leadingAnchor = [(UILabel *)v13->_titleLabel leadingAnchor];
    leadingAnchor2 = [v34 leadingAnchor];
    v64 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:12.0];
    v80[1] = v64;
    trailingAnchor = [(UILabel *)v13->_titleLabel trailingAnchor];
    trailingAnchor2 = [v34 trailingAnchor];
    v61 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-12.0];
    v80[2] = v61;
    firstBaselineAnchor2 = [(UILabel *)v13->_messageLabel firstBaselineAnchor];
    lastBaselineAnchor = [(UILabel *)v13->_titleLabel lastBaselineAnchor];
    v58 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:30.0];
    v80[3] = v58;
    leadingAnchor3 = [(UILabel *)v13->_messageLabel leadingAnchor];
    leadingAnchor4 = [v34 leadingAnchor];
    v55 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:12.0];
    v80[4] = v55;
    trailingAnchor3 = [(UILabel *)v13->_messageLabel trailingAnchor];
    v54 = v34;
    v38 = v34;
    trailingAnchor4 = [v34 trailingAnchor];
    v51 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-12.0];
    v80[5] = v51;
    widthAnchor = [(UIStackView *)v13->_buttonStackView widthAnchor];
    arrangedSubviews = [(UIStackView *)v13->_buttonStackView arrangedSubviews];
    v39 = [widthAnchor constraintEqualToConstant:{dbl_24839BDE0[objc_msgSend(arrangedSubviews, "count") == 1]}];
    v80[6] = v39;
    centerXAnchor = [(UIStackView *)v13->_buttonStackView centerXAnchor];
    centerXAnchor2 = [v34 centerXAnchor];
    v42 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v80[7] = v42;
    bottomAnchor = [(UIStackView *)v13->_buttonStackView bottomAnchor];
    bottomAnchor2 = [v38 bottomAnchor];
    [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-24.0];
    v46 = v45 = configurationCopy;
    v80[8] = v46;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:9];
    [v75 addObjectsFromArray:v47];

    configurationCopy = v45;
    [MEMORY[0x277CCAAD0] activateConstraints:v75];

    alertCopy = v74;
  }

  return v13;
}

void __63__DBUserAlertSheetView_initWithAlert_environmentConfiguration___block_invoke(uint64_t a1, uint64_t a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [*(a1 + 32) _buttonWithAlertAction:a2];
    [*(*(a1 + 32) + 424) addArrangedSubview:v3];
    v4 = *(a1 + 40);
    v5 = [v3 widthAnchor];
    v6 = [v5 constraintLessThanOrEqualToConstant:241.0];
    v10[0] = v6;
    v7 = [v3 heightAnchor];
    v8 = [v7 constraintGreaterThanOrEqualToConstant:40.0];
    v10[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
    [v4 addObjectsFromArray:v9];
  }
}

- (id)_titleFont
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D74310];
  v3 = *MEMORY[0x277D76A20];
  traitCollection = [(DBUserAlertSheetView *)self traitCollection];
  v5 = [v2 preferredFontDescriptorWithTextStyle:v3 compatibleWithTraitCollection:traitCollection];

  v14 = *MEMORY[0x277D74430];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D743F8]];
  v15[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  v12 = *MEMORY[0x277D74380];
  v13 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v9 = [v5 fontDescriptorByAddingAttributes:v8];

  v10 = [MEMORY[0x277D74300] fontWithDescriptor:v9 size:0.0];

  return v10;
}

- (id)_buttonFont
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76920]];
  v11 = *MEMORY[0x277D74430];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D743F8]];
  v12[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v9 = *MEMORY[0x277D74380];
  v10 = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v6 = [v2 fontDescriptorByAddingAttributes:v5];

  v7 = [MEMORY[0x277D74300] fontWithDescriptor:v6 size:0.0];

  return v7;
}

- (id)_buttonWithAlertAction:(id)action
{
  actionCopy = action;
  v5 = [DBColorButton buttonWithType:1];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  _carSystemQuaternaryColor = [MEMORY[0x277D75348] _carSystemQuaternaryColor];
  [v5 setCarButtonColor:_carSystemQuaternaryColor];

  title = [actionCopy title];
  [v5 setTitle:title forState:0];

  titleLabel = [v5 titleLabel];
  _buttonFont = [(DBUserAlertSheetView *)self _buttonFont];
  [titleLabel setFont:_buttonFont];

  _carSystemFocusLabelColor = [MEMORY[0x277D75348] _carSystemFocusLabelColor];
  [v5 setTitleColor:_carSystemFocusLabelColor forState:8];

  titleLabel2 = [v5 titleLabel];
  [titleLabel2 setNumberOfLines:2];

  titleLabel3 = [v5 titleLabel];
  [titleLabel3 setTextAlignment:1];

  v13 = MEMORY[0x277D750C8];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __47__DBUserAlertSheetView__buttonWithAlertAction___block_invoke;
  v17[3] = &unk_278F03768;
  v18 = actionCopy;
  v14 = actionCopy;
  v15 = [v13 actionWithHandler:v17];
  [v5 addAction:v15 forControlEvents:0x2000];

  return v5;
}

void __47__DBUserAlertSheetView__buttonWithAlertAction___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DBLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "handling alert button action: %@", &v7, 0xCu);
  }

  v5 = [*(a1 + 32) handler];

  if (v5)
  {
    v6 = [*(a1 + 32) handler];
    v6[2](v6, *(a1 + 32));
  }
}

@end