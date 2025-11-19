@interface DBUserAlertSheetView
- (DBUserAlertSheetView)initWithAlert:(id)a3 environmentConfiguration:(id)a4;
- (id)_buttonFont;
- (id)_buttonWithAlertAction:(id)a3;
- (id)_titleFont;
@end

@implementation DBUserAlertSheetView

- (DBUserAlertSheetView)initWithAlert:(id)a3 environmentConfiguration:(id)a4
{
  v84[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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
    v15 = [MEMORY[0x277D75348] tableBackgroundColor];
    [(DBUserAlertSheetView *)v13 setBackgroundColor:v15];

    v16 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v8, v9, v10, v11}];
    titleLabel = v13->_titleLabel;
    v13->_titleLabel = v16;

    [(UILabel *)v13->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [(DBUserAlertSheetView *)v13 _titleFont];
    [(UILabel *)v13->_titleLabel setFont:v18];

    [(UILabel *)v13->_titleLabel setTextAlignment:1];
    [(UILabel *)v13->_titleLabel setNumberOfLines:0];
    v19 = [v6 title];
    [(UILabel *)v13->_titleLabel setText:v19];

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
    v26 = [v6 message];
    [(UILabel *)v13->_messageLabel setText:v26];

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
    v31 = [v6 cancelAction];
    v30[2](v30, v31);

    v32 = [v6 otherAction];
    v71 = v30;
    v30[2](v30, v32);

    v33 = [v6 defaultAction];
    v30[2](v30, v33);

    [(DBUserAlertSheetView *)v29 safeAreaLayoutGuide];
    v34 = v74 = v6;
    v69 = [(UILabel *)v13->_titleLabel firstBaselineAnchor];
    v68 = [v34 topAnchor];
    [v7 currentSafeViewAreaFrame];
    v36 = v35 * 0.25;
    v70 = [v7 screen];
    [v70 scale];
    v67 = [v69 constraintEqualToAnchor:v68 constant:v36 * (v37 / 1.5) + -24.0];
    v80[0] = v67;
    v66 = [(UILabel *)v13->_titleLabel leadingAnchor];
    v65 = [v34 leadingAnchor];
    v64 = [v66 constraintEqualToAnchor:v65 constant:12.0];
    v80[1] = v64;
    v63 = [(UILabel *)v13->_titleLabel trailingAnchor];
    v62 = [v34 trailingAnchor];
    v61 = [v63 constraintEqualToAnchor:v62 constant:-12.0];
    v80[2] = v61;
    v60 = [(UILabel *)v13->_messageLabel firstBaselineAnchor];
    v59 = [(UILabel *)v13->_titleLabel lastBaselineAnchor];
    v58 = [v60 constraintEqualToAnchor:v59 constant:30.0];
    v80[3] = v58;
    v57 = [(UILabel *)v13->_messageLabel leadingAnchor];
    v56 = [v34 leadingAnchor];
    v55 = [v57 constraintEqualToAnchor:v56 constant:12.0];
    v80[4] = v55;
    v53 = [(UILabel *)v13->_messageLabel trailingAnchor];
    v54 = v34;
    v38 = v34;
    v52 = [v34 trailingAnchor];
    v51 = [v53 constraintEqualToAnchor:v52 constant:-12.0];
    v80[5] = v51;
    v49 = [(UIStackView *)v13->_buttonStackView widthAnchor];
    v50 = [(UIStackView *)v13->_buttonStackView arrangedSubviews];
    v39 = [v49 constraintEqualToConstant:{dbl_24839BDE0[objc_msgSend(v50, "count") == 1]}];
    v80[6] = v39;
    v40 = [(UIStackView *)v13->_buttonStackView centerXAnchor];
    v41 = [v34 centerXAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];
    v80[7] = v42;
    v43 = [(UIStackView *)v13->_buttonStackView bottomAnchor];
    v44 = [v38 bottomAnchor];
    [v43 constraintEqualToAnchor:v44 constant:-24.0];
    v46 = v45 = v7;
    v80[8] = v46;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:9];
    [v75 addObjectsFromArray:v47];

    v7 = v45;
    [MEMORY[0x277CCAAD0] activateConstraints:v75];

    v6 = v74;
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
  v4 = [(DBUserAlertSheetView *)self traitCollection];
  v5 = [v2 preferredFontDescriptorWithTextStyle:v3 compatibleWithTraitCollection:v4];

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

- (id)_buttonWithAlertAction:(id)a3
{
  v4 = a3;
  v5 = [DBColorButton buttonWithType:1];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [MEMORY[0x277D75348] _carSystemQuaternaryColor];
  [v5 setCarButtonColor:v6];

  v7 = [v4 title];
  [v5 setTitle:v7 forState:0];

  v8 = [v5 titleLabel];
  v9 = [(DBUserAlertSheetView *)self _buttonFont];
  [v8 setFont:v9];

  v10 = [MEMORY[0x277D75348] _carSystemFocusLabelColor];
  [v5 setTitleColor:v10 forState:8];

  v11 = [v5 titleLabel];
  [v11 setNumberOfLines:2];

  v12 = [v5 titleLabel];
  [v12 setTextAlignment:1];

  v13 = MEMORY[0x277D750C8];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __47__DBUserAlertSheetView__buttonWithAlertAction___block_invoke;
  v17[3] = &unk_278F03768;
  v18 = v4;
  v14 = v4;
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