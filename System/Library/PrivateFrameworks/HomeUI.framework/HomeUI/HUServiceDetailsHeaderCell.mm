@interface HUServiceDetailsHeaderCell
- (HUResizableCellDelegate)resizingDelegate;
- (HUServiceDetailsHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_hiddenMessageTextViewConstraints;
- (id)_visibleMessageTextViewConstraints;
- (void)_configureConstraints;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)_setCornerRadius:(double)a3;
- (void)_updateErrorLabelConstraints;
- (void)setItem:(id)a3;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUServiceDetailsHeaderCell

- (HUServiceDetailsHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v44[1] = *MEMORY[0x277D85DE8];
  v43.receiver = self;
  v43.super_class = HUServiceDetailsHeaderCell;
  v4 = [(HUServiceDetailsHeaderCell *)&v43 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277D75348] clearColor];
    [(HUServiceDetailsHeaderCell *)v4 setBackgroundColor:v5];

    v6 = objc_opt_new();
    messageTextView = v4->_messageTextView;
    v4->_messageTextView = v6;

    [(UITextView *)v4->_messageTextView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITextView *)v4->_messageTextView setEditable:0];
    [(UITextView *)v4->_messageTextView _setInteractiveTextSelectionDisabled:1];
    [(UITextView *)v4->_messageTextView setScrollEnabled:0];
    v8 = [(UITextView *)v4->_messageTextView textContainer];
    [v8 setLineFragmentPadding:0.0];

    v9 = [MEMORY[0x277D75348] clearColor];
    [(UITextView *)v4->_messageTextView setBackgroundColor:v9];

    [(UITextView *)v4->_messageTextView setHidden:1];
    v10 = [(HUServiceDetailsHeaderCell *)v4 contentView];
    v11 = [(HUServiceDetailsHeaderCell *)v4 messageTextView];
    [v10 addSubview:v11];

    v12 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v12;

    [(UILabel *)v4->_titleLabel setTextAlignment:2 * ([(HUServiceDetailsHeaderCell *)v4 effectiveUserInterfaceLayoutDirection]== 0)];
    v14 = v4->_titleLabel;
    v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v14 setFont:v15];

    v16 = v4->_titleLabel;
    v17 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v16 setBackgroundColor:v17];

    v18 = v4->_titleLabel;
    v19 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v18 setTextColor:v19];

    [(UILabel *)v4->_titleLabel setLineBreakMode:0];
    v20 = HFLocalizedString();
    [(UILabel *)v4->_titleLabel setText:v20];

    [(UILabel *)v4->_titleLabel sizeToFit];
    v21 = objc_alloc(MEMORY[0x277D75A68]);
    v44[0] = v4->_titleLabel;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
    v23 = [v21 initWithArrangedSubviews:v22];
    titleSpinnerStackView = v4->_titleSpinnerStackView;
    v4->_titleSpinnerStackView = v23;

    [(UIStackView *)v4->_titleSpinnerStackView setAxis:0];
    [(UIStackView *)v4->_titleSpinnerStackView setAlignment:3];
    [(UIStackView *)v4->_titleSpinnerStackView setSpacing:8.0];
    [(UIStackView *)v4->_titleSpinnerStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [(HUServiceDetailsHeaderCell *)v4 contentView];
    [v25 addSubview:v4->_titleSpinnerStackView];

    v26 = [MEMORY[0x277D75220] buttonWithType:0];
    actionButton = v4->_actionButton;
    v4->_actionButton = v26;

    [(UIButton *)v4->_actionButton titleEdgeInsets];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = [(HUServiceDetailsHeaderCell *)v4 defaultContentConfiguration];
    [v34 directionalLayoutMargins];
    v36 = v35;

    [(UIButton *)v4->_actionButton setTitleEdgeInsets:v29, v36, v31, v33];
    v37 = [MEMORY[0x277D75348] secondarySystemGroupedBackgroundColor];
    [(UIButton *)v4->_actionButton setBackgroundColor:v37];

    [(UIButton *)v4->_actionButton setContentHorizontalAlignment:1];
    [(UIButton *)v4->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v38 = [MEMORY[0x277D75348] systemOrangeColor];
    [(UIButton *)v4->_actionButton setTitleColor:v38 forState:0];
    v39 = [(HUServiceDetailsHeaderCell *)v4 contentView];
    [v39 addSubview:v4->_actionButton];

    v40 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    checkingForUpdateSpinner = v4->_checkingForUpdateSpinner;
    v4->_checkingForUpdateSpinner = v40;

    [(UIActivityIndicatorView *)v4->_checkingForUpdateSpinner startAnimating];
    [(UIStackView *)v4->_titleSpinnerStackView addArrangedSubview:v4->_titleLabel];
  }

  return v4;
}

- (void)_setContinuousCornerRadius:(double)a3
{
  v5.receiver = self;
  v5.super_class = HUServiceDetailsHeaderCell;
  [(HUServiceDetailsHeaderCell *)&v5 _setContinuousCornerRadius:?];
  [(UIButton *)self->_actionButton _setContinuousCornerRadius:a3];
}

- (void)_setCornerRadius:(double)a3
{
  v5.receiver = self;
  v5.super_class = HUServiceDetailsHeaderCell;
  [(HUServiceDetailsHeaderCell *)&v5 _setCornerRadius:?];
  [(UIButton *)self->_actionButton _setCornerRadius:a3];
}

- (void)setItem:(id)a3
{
  v5 = a3;
  if (self->_item != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_item, a3);
    [(HUServiceDetailsHeaderCell *)self _configureConstraints];
    v5 = v6;
  }
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v4 = [(HUServiceDetailsHeaderCell *)self item];
  v5 = [v4 latestResults];

  v6 = [(HUServiceDetailsHeaderCell *)self item];
  v7 = [v6 latestResults];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13E40]];

  if (_os_feature_enabled_impl())
  {
    v9 = HFLocalizedString();
    v10 = [v8 isEqualToString:v9];

    if (v10)
    {

      v8 = 0;
    }
  }

  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __52__HUServiceDetailsHeaderCell_updateUIWithAnimation___block_invoke;
  v51[3] = &unk_277DBA678;
  v51[4] = self;
  v11 = v5;
  v52 = v11;
  v12 = __52__HUServiceDetailsHeaderCell_updateUIWithAnimation___block_invoke(v51);
  v13 = [(HUServiceDetailsHeaderCell *)self item];
  v14 = [v13 latestResults];
  v47 = [v14 objectForKeyedSubscript:*MEMORY[0x277D13E58]];

  v15 = [v11 objectForKeyedSubscript:*MEMORY[0x277D13E70]];
  v16 = [(HUServiceDetailsHeaderCell *)self item];
  v17 = [v16 latestResults];
  v18 = [v17 objectForKeyedSubscript:*MEMORY[0x277D140F8]];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = [(UILabel *)self->_titleLabel text];
  }

  v21 = v20;

  v22 = v47;
  if (v8)
  {
    v22 = v8;
  }

  v23 = v22;
  v24 = *MEMORY[0x277D13E78];
  v25 = [v11 objectForKeyedSubscript:*MEMORY[0x277D13E78]];

  v46 = v21;
  if (v25)
  {
    v26 = [v11 objectForKeyedSubscript:v24];

    v23 = v26;
  }

  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __52__HUServiceDetailsHeaderCell_updateUIWithAnimation___block_invoke_2;
  v48[3] = &unk_277DBA678;
  v27 = v12;
  v49 = v27;
  v28 = v23;
  v50 = v28;
  v29 = __52__HUServiceDetailsHeaderCell_updateUIWithAnimation___block_invoke_2(v48);
  v30 = [(HUServiceDetailsHeaderCell *)self messageTextView];
  [v30 setAttributedText:v29];

  v31 = [MEMORY[0x277D75348] labelColor];
  v32 = [(HUServiceDetailsHeaderCell *)self messageTextView];
  [v32 setTextColor:v31];

  v33 = [(HUServiceDetailsHeaderCell *)self actionButton];
  [v33 setTitle:v15 forState:0];

  v34 = [(HUServiceDetailsHeaderCell *)self messageTextView];
  [v34 setHidden:v29 == 0];

  v35 = [(HUServiceDetailsHeaderCell *)self actionButton];
  [v35 setHidden:v15 == 0];

  v36 = [v11 objectForKeyedSubscript:*MEMORY[0x277D140F0]];
  v37 = [v36 BOOLValue];

  v38 = [(HUServiceDetailsHeaderCell *)self titleLabel];
  v39 = v38;
  if (v37)
  {
    [v38 setHidden:0];

    v40 = [(HUServiceDetailsHeaderCell *)self titleLabel];
    v41 = v46;
    [v40 setText:v46];

    v42 = [(HUServiceDetailsHeaderCell *)self checkingForUpdateSpinner];
    [v42 setHidden:0];

    v43 = [(HUServiceDetailsHeaderCell *)self actionButton];
  }

  else
  {
    [v38 setHidden:1];

    v43 = [(HUServiceDetailsHeaderCell *)self checkingForUpdateSpinner];
    v41 = v46;
  }

  [v43 setHidden:{1, v46}];

  v44 = [(HUServiceDetailsHeaderCell *)self messageTextView];
  [v44 sizeToFit];

  v45 = [(HUServiceDetailsHeaderCell *)self titleLabel];
  [v45 sizeToFit];

  [(HUServiceDetailsHeaderCell *)self _updateErrorLabelConstraints];
}

id __52__HUServiceDetailsHeaderCell_updateUIWithAnimation___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) item];
  v3 = [v2 latestResults];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13E48]];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  objc_opt_class();
  v7 = [*(a1 + 32) item];
  v8 = [v7 latestResults];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D13E50]];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  objc_opt_class();
  v12 = [*(a1 + 32) item];
  v13 = [v12 latestResults];
  v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277D13E40]];
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  v17 = [*(a1 + 32) item];
  v18 = [v17 latestResults];
  v19 = *MEMORY[0x277D13E78];
  v20 = [v18 objectForKeyedSubscript:*MEMORY[0x277D13E78]];

  if (v20)
  {
    objc_opt_class();
    v21 = [*(a1 + 40) objectForKeyedSubscript:v19];
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    v16 = v23;
  }

  v24 = 0;
  if (v6 && v11 && v16)
  {
    v25 = MEMORY[0x277CCA898];
    v26 = [v16 stringByAppendingString:@"\n"];
    v24 = [v25 hf_attributedStringForString:v26 withAppendedString:v11 asURL:v6 withAttributes:0];
  }

  return v24;
}

id __52__HUServiceDetailsHeaderCell_updateUIWithAnimation___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [objc_alloc(MEMORY[0x277CCAB48]) initWithAttributedString:*(a1 + 32)];
    v3 = HUPriorityMessageDefaultAttributedStringAttributes();
    [v2 addAttributes:v3 range:{0, objc_msgSend(v2, "length")}];
LABEL_5:

    goto LABEL_6;
  }

  if (*(a1 + 40))
  {
    v4 = objc_alloc(MEMORY[0x277CCA898]);
    v5 = *(a1 + 40);
    v3 = HUPriorityMessageDefaultAttributedStringAttributes();
    v2 = [v4 initWithString:v5 attributes:v3];
    goto LABEL_5;
  }

  v2 = 0;
LABEL_6:

  return v2;
}

- (void)_configureConstraints
{
  v3 = MEMORY[0x277CCAAD0];
  v4 = [(HUServiceDetailsHeaderCell *)self constraints];
  [v3 deactivateConstraints:v4];

  v5 = [(HUServiceDetailsHeaderCell *)self _hiddenMessageTextViewConstraints];
  [(HUServiceDetailsHeaderCell *)self setHiddenMessageTextViewConstraints:v5];

  v6 = [(HUServiceDetailsHeaderCell *)self _visibleMessageTextViewConstraints];
  [(HUServiceDetailsHeaderCell *)self setVisibleMessageTextViewConstraints:v6];

  [(HUServiceDetailsHeaderCell *)self _updateErrorLabelConstraints];
}

- (void)_updateErrorLabelConstraints
{
  v3 = [(HUServiceDetailsHeaderCell *)self messageTextView];
  v4 = [v3 isHidden];

  v5 = MEMORY[0x277CCAAD0];
  if (v4)
  {
    v6 = [(HUServiceDetailsHeaderCell *)self visibleMessageTextViewConstraints];
    [v5 deactivateConstraints:v6];

    v7 = MEMORY[0x277CCAAD0];
    v8 = [(HUServiceDetailsHeaderCell *)self hiddenMessageTextViewConstraints];
    [v7 activateConstraints:v8];

    v9 = [(HUServiceDetailsHeaderCell *)self messageBottomConstraint];
    [v9 setActive:1];

    v28 = [(HUServiceDetailsHeaderCell *)self spinnerBottomConstraint];
    [v28 setActive:0];
  }

  else
  {
    v10 = [(HUServiceDetailsHeaderCell *)self hiddenMessageTextViewConstraints];
    [v5 deactivateConstraints:v10];

    v11 = MEMORY[0x277CCAAD0];
    v12 = [(HUServiceDetailsHeaderCell *)self visibleMessageTextViewConstraints];
    [v11 activateConstraints:v12];

    v13 = [(HUServiceDetailsHeaderCell *)self item];
    v14 = [v13 latestResults];
    v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277D140F0]];
    v16 = [v15 BOOLValue];

    if (v16)
    {
      v17 = [(HUServiceDetailsHeaderCell *)self messageBottomConstraint];
      [v17 setActive:0];

      v18 = [(HUServiceDetailsHeaderCell *)self spinnerBottomConstraint];
      [v18 setActive:1];

      titleSpinnerStackView = self->_titleSpinnerStackView;
      checkingForUpdateSpinner = self->_checkingForUpdateSpinner;

      [(UIStackView *)titleSpinnerStackView addArrangedSubview:checkingForUpdateSpinner];
    }

    else
    {
      v21 = [(HUServiceDetailsHeaderCell *)self actionButton];
      v22 = [v21 isHidden];

      v23 = [(HUServiceDetailsHeaderCell *)self messageBottomConstraint];
      [v23 setActive:v22];

      v24 = [(HUServiceDetailsHeaderCell *)self actionBottomConstraint];
      [v24 setActive:v22 ^ 1];

      v25 = [(HUServiceDetailsHeaderCell *)self spinnerBottomConstraint];
      [v25 setActive:0];

      v26 = self->_titleSpinnerStackView;
      v27 = self->_checkingForUpdateSpinner;

      [(UIStackView *)v26 removeArrangedSubview:v27];
    }
  }
}

- (id)_hiddenMessageTextViewConstraints
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [(HUServiceDetailsHeaderCell *)self heightAnchor];
  v3 = [v2 constraintEqualToConstant:0.0];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  return v4;
}

- (id)_visibleMessageTextViewConstraints
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(HUServiceDetailsHeaderCell *)self messageTextView];
  v5 = [v4 leadingAnchor];
  v6 = [(HUServiceDetailsHeaderCell *)self contentView];
  v7 = [v6 readableContentGuide];
  v8 = [v7 leadingAnchor];
  v9 = [v5 constraintEqualToAnchor:v8];
  [v3 addObject:v9];

  v10 = [(HUServiceDetailsHeaderCell *)self messageTextView];
  v11 = [v10 trailingAnchor];
  v12 = [(HUServiceDetailsHeaderCell *)self contentView];
  v13 = [v12 readableContentGuide];
  v14 = [v13 trailingAnchor];
  v15 = [v11 constraintEqualToAnchor:v14];
  [v3 addObject:v15];

  v16 = [(HUServiceDetailsHeaderCell *)self actionButton];
  v17 = [v16 leadingAnchor];
  v18 = [(HUServiceDetailsHeaderCell *)self contentView];
  v19 = [v18 leadingAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  [v3 addObject:v20];

  v21 = [(HUServiceDetailsHeaderCell *)self actionButton];
  v22 = [v21 trailingAnchor];
  v23 = [(HUServiceDetailsHeaderCell *)self contentView];
  v24 = [v23 trailingAnchor];
  v25 = [v22 constraintEqualToAnchor:v24];
  [v3 addObject:v25];

  v26 = [(HUServiceDetailsHeaderCell *)self actionButton];
  v27 = [v26 topAnchor];
  v28 = [(HUServiceDetailsHeaderCell *)self messageTextView];
  v29 = [v28 lastBaselineAnchor];
  v30 = [v27 constraintEqualToAnchor:v29 constant:35.0];
  [v3 addObject:v30];

  v31 = [(HUServiceDetailsHeaderCell *)self actionButton];
  v32 = [v31 centerXAnchor];
  v33 = [(HUServiceDetailsHeaderCell *)self messageTextView];
  v34 = [v33 centerXAnchor];
  v35 = [v32 constraintEqualToAnchor:v34];
  [v3 addObject:v35];

  v36 = [(HUServiceDetailsHeaderCell *)self actionButton];
  v37 = [v36 heightAnchor];
  v38 = [v37 constraintGreaterThanOrEqualToConstant:44.0];
  [v3 addObject:v38];

  v39 = [(HUServiceDetailsHeaderCell *)self messageTextView];
  v40 = [v39 topAnchor];
  v41 = [(HUServiceDetailsHeaderCell *)self contentView];
  v42 = [v41 topAnchor];
  v43 = [v40 constraintEqualToAnchor:v42];
  [v3 addObject:v43];

  v44 = [(HUServiceDetailsHeaderCell *)self titleSpinnerStackView];
  v45 = [v44 topAnchor];
  v46 = [(HUServiceDetailsHeaderCell *)self messageTextView];
  v47 = [v46 lastBaselineAnchor];
  v48 = [v45 constraintEqualToAnchor:v47 constant:35.0];
  [v3 addObject:v48];

  v49 = [(HUServiceDetailsHeaderCell *)self titleSpinnerStackView];
  v50 = [v49 centerXAnchor];
  v51 = [(HUServiceDetailsHeaderCell *)self messageTextView];
  v52 = [v51 centerXAnchor];
  v53 = [v50 constraintEqualToAnchor:v52];
  [v3 addObject:v53];

  v54 = [(HUServiceDetailsHeaderCell *)self messageTextView];
  v55 = [v54 bottomAnchor];
  v56 = [(HUServiceDetailsHeaderCell *)self contentView];
  v57 = [v56 bottomAnchor];
  v58 = [v55 constraintEqualToAnchor:v57 constant:-35.0];
  [(HUServiceDetailsHeaderCell *)self setMessageBottomConstraint:v58];

  v59 = [(HUServiceDetailsHeaderCell *)self contentView];
  v60 = [(HUServiceDetailsHeaderCell *)self messageBottomConstraint];
  [v59 addConstraint:v60];

  v61 = [(HUServiceDetailsHeaderCell *)self messageBottomConstraint];
  [v61 setActive:1];

  v62 = [(HUServiceDetailsHeaderCell *)self actionButton];
  v63 = [v62 bottomAnchor];
  v64 = [(HUServiceDetailsHeaderCell *)self contentView];
  v65 = [v64 bottomAnchor];
  v66 = [v63 constraintEqualToAnchor:v65 constant:-35.0];
  [(HUServiceDetailsHeaderCell *)self setActionBottomConstraint:v66];

  v67 = [(HUServiceDetailsHeaderCell *)self contentView];
  v68 = [(HUServiceDetailsHeaderCell *)self actionBottomConstraint];
  [v67 addConstraint:v68];

  v69 = [(HUServiceDetailsHeaderCell *)self actionBottomConstraint];
  [v69 setActive:0];

  v70 = [(HUServiceDetailsHeaderCell *)self titleSpinnerStackView];
  v71 = [v70 bottomAnchor];
  v72 = [(HUServiceDetailsHeaderCell *)self contentView];
  v73 = [v72 bottomAnchor];
  v74 = [v71 constraintEqualToAnchor:v73 constant:-35.0];
  [(HUServiceDetailsHeaderCell *)self setSpinnerBottomConstraint:v74];

  v75 = [(HUServiceDetailsHeaderCell *)self contentView];
  v76 = [(HUServiceDetailsHeaderCell *)self spinnerBottomConstraint];
  [v75 addConstraint:v76];

  v77 = [(HUServiceDetailsHeaderCell *)self spinnerBottomConstraint];
  [v77 setActive:0];

  return v3;
}

- (HUResizableCellDelegate)resizingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_resizingDelegate);

  return WeakRetained;
}

@end