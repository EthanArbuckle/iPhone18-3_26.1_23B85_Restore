@interface HUServiceDetailsHeaderCell
- (HUResizableCellDelegate)resizingDelegate;
- (HUServiceDetailsHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_hiddenMessageTextViewConstraints;
- (id)_visibleMessageTextViewConstraints;
- (void)_configureConstraints;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)_setCornerRadius:(double)radius;
- (void)_updateErrorLabelConstraints;
- (void)setItem:(id)item;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUServiceDetailsHeaderCell

- (HUServiceDetailsHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v44[1] = *MEMORY[0x277D85DE8];
  v43.receiver = self;
  v43.super_class = HUServiceDetailsHeaderCell;
  v4 = [(HUServiceDetailsHeaderCell *)&v43 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(HUServiceDetailsHeaderCell *)v4 setBackgroundColor:clearColor];

    v6 = objc_opt_new();
    messageTextView = v4->_messageTextView;
    v4->_messageTextView = v6;

    [(UITextView *)v4->_messageTextView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITextView *)v4->_messageTextView setEditable:0];
    [(UITextView *)v4->_messageTextView _setInteractiveTextSelectionDisabled:1];
    [(UITextView *)v4->_messageTextView setScrollEnabled:0];
    textContainer = [(UITextView *)v4->_messageTextView textContainer];
    [textContainer setLineFragmentPadding:0.0];

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(UITextView *)v4->_messageTextView setBackgroundColor:clearColor2];

    [(UITextView *)v4->_messageTextView setHidden:1];
    contentView = [(HUServiceDetailsHeaderCell *)v4 contentView];
    messageTextView = [(HUServiceDetailsHeaderCell *)v4 messageTextView];
    [contentView addSubview:messageTextView];

    v12 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v12;

    [(UILabel *)v4->_titleLabel setTextAlignment:2 * ([(HUServiceDetailsHeaderCell *)v4 effectiveUserInterfaceLayoutDirection]== 0)];
    v14 = v4->_titleLabel;
    v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v14 setFont:v15];

    v16 = v4->_titleLabel;
    clearColor3 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v16 setBackgroundColor:clearColor3];

    v18 = v4->_titleLabel;
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v18 setTextColor:systemGrayColor];

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
    contentView2 = [(HUServiceDetailsHeaderCell *)v4 contentView];
    [contentView2 addSubview:v4->_titleSpinnerStackView];

    v26 = [MEMORY[0x277D75220] buttonWithType:0];
    actionButton = v4->_actionButton;
    v4->_actionButton = v26;

    [(UIButton *)v4->_actionButton titleEdgeInsets];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    defaultContentConfiguration = [(HUServiceDetailsHeaderCell *)v4 defaultContentConfiguration];
    [defaultContentConfiguration directionalLayoutMargins];
    v36 = v35;

    [(UIButton *)v4->_actionButton setTitleEdgeInsets:v29, v36, v31, v33];
    secondarySystemGroupedBackgroundColor = [MEMORY[0x277D75348] secondarySystemGroupedBackgroundColor];
    [(UIButton *)v4->_actionButton setBackgroundColor:secondarySystemGroupedBackgroundColor];

    [(UIButton *)v4->_actionButton setContentHorizontalAlignment:1];
    [(UIButton *)v4->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
    systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
    [(UIButton *)v4->_actionButton setTitleColor:systemOrangeColor forState:0];
    contentView3 = [(HUServiceDetailsHeaderCell *)v4 contentView];
    [contentView3 addSubview:v4->_actionButton];

    v40 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    checkingForUpdateSpinner = v4->_checkingForUpdateSpinner;
    v4->_checkingForUpdateSpinner = v40;

    [(UIActivityIndicatorView *)v4->_checkingForUpdateSpinner startAnimating];
    [(UIStackView *)v4->_titleSpinnerStackView addArrangedSubview:v4->_titleLabel];
  }

  return v4;
}

- (void)_setContinuousCornerRadius:(double)radius
{
  v5.receiver = self;
  v5.super_class = HUServiceDetailsHeaderCell;
  [(HUServiceDetailsHeaderCell *)&v5 _setContinuousCornerRadius:?];
  [(UIButton *)self->_actionButton _setContinuousCornerRadius:radius];
}

- (void)_setCornerRadius:(double)radius
{
  v5.receiver = self;
  v5.super_class = HUServiceDetailsHeaderCell;
  [(HUServiceDetailsHeaderCell *)&v5 _setCornerRadius:?];
  [(UIButton *)self->_actionButton _setCornerRadius:radius];
}

- (void)setItem:(id)item
{
  itemCopy = item;
  if (self->_item != itemCopy)
  {
    v6 = itemCopy;
    objc_storeStrong(&self->_item, item);
    [(HUServiceDetailsHeaderCell *)self _configureConstraints];
    itemCopy = v6;
  }
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  item = [(HUServiceDetailsHeaderCell *)self item];
  latestResults = [item latestResults];

  item2 = [(HUServiceDetailsHeaderCell *)self item];
  latestResults2 = [item2 latestResults];
  v8 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13E40]];

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
  v11 = latestResults;
  v52 = v11;
  v12 = __52__HUServiceDetailsHeaderCell_updateUIWithAnimation___block_invoke(v51);
  item3 = [(HUServiceDetailsHeaderCell *)self item];
  latestResults3 = [item3 latestResults];
  v47 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13E58]];

  v15 = [v11 objectForKeyedSubscript:*MEMORY[0x277D13E70]];
  item4 = [(HUServiceDetailsHeaderCell *)self item];
  latestResults4 = [item4 latestResults];
  v18 = [latestResults4 objectForKeyedSubscript:*MEMORY[0x277D140F8]];
  v19 = v18;
  if (v18)
  {
    text = v18;
  }

  else
  {
    text = [(UILabel *)self->_titleLabel text];
  }

  v21 = text;

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
  messageTextView = [(HUServiceDetailsHeaderCell *)self messageTextView];
  [messageTextView setAttributedText:v29];

  labelColor = [MEMORY[0x277D75348] labelColor];
  messageTextView2 = [(HUServiceDetailsHeaderCell *)self messageTextView];
  [messageTextView2 setTextColor:labelColor];

  actionButton = [(HUServiceDetailsHeaderCell *)self actionButton];
  [actionButton setTitle:v15 forState:0];

  messageTextView3 = [(HUServiceDetailsHeaderCell *)self messageTextView];
  [messageTextView3 setHidden:v29 == 0];

  actionButton2 = [(HUServiceDetailsHeaderCell *)self actionButton];
  [actionButton2 setHidden:v15 == 0];

  v36 = [v11 objectForKeyedSubscript:*MEMORY[0x277D140F0]];
  bOOLValue = [v36 BOOLValue];

  titleLabel = [(HUServiceDetailsHeaderCell *)self titleLabel];
  v39 = titleLabel;
  if (bOOLValue)
  {
    [titleLabel setHidden:0];

    titleLabel2 = [(HUServiceDetailsHeaderCell *)self titleLabel];
    v41 = v46;
    [titleLabel2 setText:v46];

    checkingForUpdateSpinner = [(HUServiceDetailsHeaderCell *)self checkingForUpdateSpinner];
    [checkingForUpdateSpinner setHidden:0];

    actionButton3 = [(HUServiceDetailsHeaderCell *)self actionButton];
  }

  else
  {
    [titleLabel setHidden:1];

    actionButton3 = [(HUServiceDetailsHeaderCell *)self checkingForUpdateSpinner];
    v41 = v46;
  }

  [actionButton3 setHidden:{1, v46}];

  messageTextView4 = [(HUServiceDetailsHeaderCell *)self messageTextView];
  [messageTextView4 sizeToFit];

  titleLabel3 = [(HUServiceDetailsHeaderCell *)self titleLabel];
  [titleLabel3 sizeToFit];

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
  constraints = [(HUServiceDetailsHeaderCell *)self constraints];
  [v3 deactivateConstraints:constraints];

  _hiddenMessageTextViewConstraints = [(HUServiceDetailsHeaderCell *)self _hiddenMessageTextViewConstraints];
  [(HUServiceDetailsHeaderCell *)self setHiddenMessageTextViewConstraints:_hiddenMessageTextViewConstraints];

  _visibleMessageTextViewConstraints = [(HUServiceDetailsHeaderCell *)self _visibleMessageTextViewConstraints];
  [(HUServiceDetailsHeaderCell *)self setVisibleMessageTextViewConstraints:_visibleMessageTextViewConstraints];

  [(HUServiceDetailsHeaderCell *)self _updateErrorLabelConstraints];
}

- (void)_updateErrorLabelConstraints
{
  messageTextView = [(HUServiceDetailsHeaderCell *)self messageTextView];
  isHidden = [messageTextView isHidden];

  v5 = MEMORY[0x277CCAAD0];
  if (isHidden)
  {
    visibleMessageTextViewConstraints = [(HUServiceDetailsHeaderCell *)self visibleMessageTextViewConstraints];
    [v5 deactivateConstraints:visibleMessageTextViewConstraints];

    v7 = MEMORY[0x277CCAAD0];
    hiddenMessageTextViewConstraints = [(HUServiceDetailsHeaderCell *)self hiddenMessageTextViewConstraints];
    [v7 activateConstraints:hiddenMessageTextViewConstraints];

    messageBottomConstraint = [(HUServiceDetailsHeaderCell *)self messageBottomConstraint];
    [messageBottomConstraint setActive:1];

    spinnerBottomConstraint = [(HUServiceDetailsHeaderCell *)self spinnerBottomConstraint];
    [spinnerBottomConstraint setActive:0];
  }

  else
  {
    hiddenMessageTextViewConstraints2 = [(HUServiceDetailsHeaderCell *)self hiddenMessageTextViewConstraints];
    [v5 deactivateConstraints:hiddenMessageTextViewConstraints2];

    v11 = MEMORY[0x277CCAAD0];
    visibleMessageTextViewConstraints2 = [(HUServiceDetailsHeaderCell *)self visibleMessageTextViewConstraints];
    [v11 activateConstraints:visibleMessageTextViewConstraints2];

    item = [(HUServiceDetailsHeaderCell *)self item];
    latestResults = [item latestResults];
    v15 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D140F0]];
    bOOLValue = [v15 BOOLValue];

    if (bOOLValue)
    {
      messageBottomConstraint2 = [(HUServiceDetailsHeaderCell *)self messageBottomConstraint];
      [messageBottomConstraint2 setActive:0];

      spinnerBottomConstraint2 = [(HUServiceDetailsHeaderCell *)self spinnerBottomConstraint];
      [spinnerBottomConstraint2 setActive:1];

      titleSpinnerStackView = self->_titleSpinnerStackView;
      checkingForUpdateSpinner = self->_checkingForUpdateSpinner;

      [(UIStackView *)titleSpinnerStackView addArrangedSubview:checkingForUpdateSpinner];
    }

    else
    {
      actionButton = [(HUServiceDetailsHeaderCell *)self actionButton];
      isHidden2 = [actionButton isHidden];

      messageBottomConstraint3 = [(HUServiceDetailsHeaderCell *)self messageBottomConstraint];
      [messageBottomConstraint3 setActive:isHidden2];

      actionBottomConstraint = [(HUServiceDetailsHeaderCell *)self actionBottomConstraint];
      [actionBottomConstraint setActive:isHidden2 ^ 1];

      spinnerBottomConstraint3 = [(HUServiceDetailsHeaderCell *)self spinnerBottomConstraint];
      [spinnerBottomConstraint3 setActive:0];

      v26 = self->_titleSpinnerStackView;
      v27 = self->_checkingForUpdateSpinner;

      [(UIStackView *)v26 removeArrangedSubview:v27];
    }
  }
}

- (id)_hiddenMessageTextViewConstraints
{
  v6[1] = *MEMORY[0x277D85DE8];
  heightAnchor = [(HUServiceDetailsHeaderCell *)self heightAnchor];
  v3 = [heightAnchor constraintEqualToConstant:0.0];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  return v4;
}

- (id)_visibleMessageTextViewConstraints
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  messageTextView = [(HUServiceDetailsHeaderCell *)self messageTextView];
  leadingAnchor = [messageTextView leadingAnchor];
  contentView = [(HUServiceDetailsHeaderCell *)self contentView];
  readableContentGuide = [contentView readableContentGuide];
  leadingAnchor2 = [readableContentGuide leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v3 addObject:v9];

  messageTextView2 = [(HUServiceDetailsHeaderCell *)self messageTextView];
  trailingAnchor = [messageTextView2 trailingAnchor];
  contentView2 = [(HUServiceDetailsHeaderCell *)self contentView];
  readableContentGuide2 = [contentView2 readableContentGuide];
  trailingAnchor2 = [readableContentGuide2 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v3 addObject:v15];

  actionButton = [(HUServiceDetailsHeaderCell *)self actionButton];
  leadingAnchor3 = [actionButton leadingAnchor];
  contentView3 = [(HUServiceDetailsHeaderCell *)self contentView];
  leadingAnchor4 = [contentView3 leadingAnchor];
  v20 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v3 addObject:v20];

  actionButton2 = [(HUServiceDetailsHeaderCell *)self actionButton];
  trailingAnchor3 = [actionButton2 trailingAnchor];
  contentView4 = [(HUServiceDetailsHeaderCell *)self contentView];
  trailingAnchor4 = [contentView4 trailingAnchor];
  v25 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v3 addObject:v25];

  actionButton3 = [(HUServiceDetailsHeaderCell *)self actionButton];
  topAnchor = [actionButton3 topAnchor];
  messageTextView3 = [(HUServiceDetailsHeaderCell *)self messageTextView];
  lastBaselineAnchor = [messageTextView3 lastBaselineAnchor];
  v30 = [topAnchor constraintEqualToAnchor:lastBaselineAnchor constant:35.0];
  [v3 addObject:v30];

  actionButton4 = [(HUServiceDetailsHeaderCell *)self actionButton];
  centerXAnchor = [actionButton4 centerXAnchor];
  messageTextView4 = [(HUServiceDetailsHeaderCell *)self messageTextView];
  centerXAnchor2 = [messageTextView4 centerXAnchor];
  v35 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v3 addObject:v35];

  actionButton5 = [(HUServiceDetailsHeaderCell *)self actionButton];
  heightAnchor = [actionButton5 heightAnchor];
  v38 = [heightAnchor constraintGreaterThanOrEqualToConstant:44.0];
  [v3 addObject:v38];

  messageTextView5 = [(HUServiceDetailsHeaderCell *)self messageTextView];
  topAnchor2 = [messageTextView5 topAnchor];
  contentView5 = [(HUServiceDetailsHeaderCell *)self contentView];
  topAnchor3 = [contentView5 topAnchor];
  v43 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
  [v3 addObject:v43];

  titleSpinnerStackView = [(HUServiceDetailsHeaderCell *)self titleSpinnerStackView];
  topAnchor4 = [titleSpinnerStackView topAnchor];
  messageTextView6 = [(HUServiceDetailsHeaderCell *)self messageTextView];
  lastBaselineAnchor2 = [messageTextView6 lastBaselineAnchor];
  v48 = [topAnchor4 constraintEqualToAnchor:lastBaselineAnchor2 constant:35.0];
  [v3 addObject:v48];

  titleSpinnerStackView2 = [(HUServiceDetailsHeaderCell *)self titleSpinnerStackView];
  centerXAnchor3 = [titleSpinnerStackView2 centerXAnchor];
  messageTextView7 = [(HUServiceDetailsHeaderCell *)self messageTextView];
  centerXAnchor4 = [messageTextView7 centerXAnchor];
  v53 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v3 addObject:v53];

  messageTextView8 = [(HUServiceDetailsHeaderCell *)self messageTextView];
  bottomAnchor = [messageTextView8 bottomAnchor];
  contentView6 = [(HUServiceDetailsHeaderCell *)self contentView];
  bottomAnchor2 = [contentView6 bottomAnchor];
  v58 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-35.0];
  [(HUServiceDetailsHeaderCell *)self setMessageBottomConstraint:v58];

  contentView7 = [(HUServiceDetailsHeaderCell *)self contentView];
  messageBottomConstraint = [(HUServiceDetailsHeaderCell *)self messageBottomConstraint];
  [contentView7 addConstraint:messageBottomConstraint];

  messageBottomConstraint2 = [(HUServiceDetailsHeaderCell *)self messageBottomConstraint];
  [messageBottomConstraint2 setActive:1];

  actionButton6 = [(HUServiceDetailsHeaderCell *)self actionButton];
  bottomAnchor3 = [actionButton6 bottomAnchor];
  contentView8 = [(HUServiceDetailsHeaderCell *)self contentView];
  bottomAnchor4 = [contentView8 bottomAnchor];
  v66 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-35.0];
  [(HUServiceDetailsHeaderCell *)self setActionBottomConstraint:v66];

  contentView9 = [(HUServiceDetailsHeaderCell *)self contentView];
  actionBottomConstraint = [(HUServiceDetailsHeaderCell *)self actionBottomConstraint];
  [contentView9 addConstraint:actionBottomConstraint];

  actionBottomConstraint2 = [(HUServiceDetailsHeaderCell *)self actionBottomConstraint];
  [actionBottomConstraint2 setActive:0];

  titleSpinnerStackView3 = [(HUServiceDetailsHeaderCell *)self titleSpinnerStackView];
  bottomAnchor5 = [titleSpinnerStackView3 bottomAnchor];
  contentView10 = [(HUServiceDetailsHeaderCell *)self contentView];
  bottomAnchor6 = [contentView10 bottomAnchor];
  v74 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-35.0];
  [(HUServiceDetailsHeaderCell *)self setSpinnerBottomConstraint:v74];

  contentView11 = [(HUServiceDetailsHeaderCell *)self contentView];
  spinnerBottomConstraint = [(HUServiceDetailsHeaderCell *)self spinnerBottomConstraint];
  [contentView11 addConstraint:spinnerBottomConstraint];

  spinnerBottomConstraint2 = [(HUServiceDetailsHeaderCell *)self spinnerBottomConstraint];
  [spinnerBottomConstraint2 setActive:0];

  return v3;
}

- (HUResizableCellDelegate)resizingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_resizingDelegate);

  return WeakRetained;
}

@end