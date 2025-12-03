@interface CNFRegAliasTableCell
- (CNFRegAliasTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)visibleLeadingViewForState;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setUpViews;
- (void)updateViews;
@end

@implementation CNFRegAliasTableCell

- (CNFRegAliasTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = CNFRegAliasTableCell;
  v4 = [(PSTableCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CNFRegAliasTableCell *)v4 setUpViews];
  }

  return v5;
}

- (void)setUpViews
{
  v72[1] = *MEMORY[0x277D85DE8];
  if (!self->_mainStackView)
  {
    v3 = objc_alloc_init(MEMORY[0x277D756B8]);
    primaryLabel = self->_primaryLabel;
    self->_primaryLabel = v3;

    v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)self->_primaryLabel setFont:v5];

    [(UILabel *)self->_primaryLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)self->_primaryLabel setNumberOfLines:0];
    [(UILabel *)self->_primaryLabel setLineBreakMode:1];
    LODWORD(v6) = 1148846080;
    [(UILabel *)self->_primaryLabel setContentCompressionResistancePriority:1 forAxis:v6];
    LODWORD(v7) = 1144750080;
    [(UILabel *)self->_primaryLabel setContentCompressionResistancePriority:0 forAxis:v7];
    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    secondaryLabel = self->_secondaryLabel;
    self->_secondaryLabel = v8;

    v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)self->_secondaryLabel setFont:v10];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)self->_secondaryLabel setTextColor:secondaryLabelColor];

    [(UILabel *)self->_secondaryLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)self->_secondaryLabel setNumberOfLines:0];
    LODWORD(v12) = 1148846080;
    [(UILabel *)self->_secondaryLabel setContentCompressionResistancePriority:1 forAxis:v12];
    LODWORD(v13) = 1144750080;
    [(UILabel *)self->_secondaryLabel setContentCompressionResistancePriority:0 forAxis:v13];
    v14 = objc_alloc(MEMORY[0x277D75A68]);
    v72[0] = self->_primaryLabel;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:1];
    v16 = [v14 initWithArrangedSubviews:v15];
    labelsStackView = self->_labelsStackView;
    self->_labelsStackView = v16;

    [(UIStackView *)self->_labelsStackView setAxis:1];
    [(UIStackView *)self->_labelsStackView setSpacing:2.0];
    v69 = [MEMORY[0x277D755D0] configurationWithWeight:6];
    v18 = objc_alloc(MEMORY[0x277D755E8]);
    v19 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark" withConfiguration:v69];
    v20 = [v18 initWithImage:v19];
    checkmarkView = self->_checkmarkView;
    self->_checkmarkView = v20;

    [(UIImageView *)self->_checkmarkView setContentMode:1];
    LODWORD(v22) = 1148846080;
    [(UIImageView *)self->_checkmarkView setContentCompressionResistancePriority:1 forAxis:v22];
    LODWORD(v23) = 1148846080;
    [(UIImageView *)self->_checkmarkView setContentCompressionResistancePriority:0 forAxis:v23];
    v24 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    spinner = self->_spinner;
    self->_spinner = v24;

    v26 = objc_alloc_init(MEMORY[0x277D75D18]);
    leadingContainerView = self->_leadingContainerView;
    self->_leadingContainerView = v26;

    LODWORD(v28) = 1148846080;
    [(UIView *)self->_leadingContainerView setContentCompressionResistancePriority:1 forAxis:v28];
    LODWORD(v29) = 1148846080;
    [(UIView *)self->_leadingContainerView setContentCompressionResistancePriority:0 forAxis:v29];
    v30 = objc_alloc(MEMORY[0x277D755E8]);
    v31 = [MEMORY[0x277D755B8] systemImageNamed:@"clock"];
    v32 = [v30 initWithImage:v31];
    temporaryIconView = self->_temporaryIconView;
    self->_temporaryIconView = v32;

    tertiaryLabelColor = [MEMORY[0x277D75348] tertiaryLabelColor];
    [(UIImageView *)self->_temporaryIconView setTintColor:tertiaryLabelColor];

    [(UIImageView *)self->_temporaryIconView setContentMode:1];
    LODWORD(v35) = 1148846080;
    [(UIImageView *)self->_temporaryIconView setContentCompressionResistancePriority:1 forAxis:v35];
    LODWORD(v36) = 1148846080;
    [(UIImageView *)self->_temporaryIconView setContentCompressionResistancePriority:0 forAxis:v36];
    LODWORD(v37) = 1148846080;
    [(UIImageView *)self->_temporaryIconView setContentHuggingPriority:0 forAxis:v37];
    v38 = objc_alloc(MEMORY[0x277D75A68]);
    v39 = self->_labelsStackView;
    v71[0] = self->_leadingContainerView;
    v71[1] = v39;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
    v41 = [v38 initWithArrangedSubviews:v40];
    mainStackView = self->_mainStackView;
    self->_mainStackView = v41;

    [(UIStackView *)self->_mainStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_mainStackView setSpacing:1.17549435e-38];
    [(UIStackView *)self->_mainStackView setCustomSpacing:self->_leadingContainerView afterView:16.0];
    contentView = [(CNFRegAliasTableCell *)self contentView];
    [contentView addSubview:self->_mainStackView];

    v58 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(UIStackView *)self->_mainStackView leadingAnchor];
    contentView2 = [(CNFRegAliasTableCell *)self contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v64 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v70[0] = v64;
    trailingAnchor = [(UIStackView *)self->_mainStackView trailingAnchor];
    contentView3 = [(CNFRegAliasTableCell *)self contentView];
    layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v59 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v70[1] = v59;
    topAnchor = [(UIStackView *)self->_mainStackView topAnchor];
    contentView4 = [(CNFRegAliasTableCell *)self contentView];
    layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide3 topAnchor];
    v45 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v70[2] = v45;
    bottomAnchor = [(UIStackView *)self->_mainStackView bottomAnchor];
    contentView5 = [(CNFRegAliasTableCell *)self contentView];
    layoutMarginsGuide4 = [contentView5 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
    v50 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v70[3] = v50;
    widthAnchor = [(UIView *)self->_leadingContainerView widthAnchor];
    v52 = [widthAnchor constraintEqualToConstant:20.0];
    v70[4] = v52;
    v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:5];
    [v58 activateConstraints:v53];
  }

  v54 = *MEMORY[0x277D85DE8];
}

- (void)updateViews
{
  v40 = *MEMORY[0x277D85DE8];
  [(UILabel *)self->_primaryLabel setText:self->_primaryText];
  [(UILabel *)self->_secondaryLabel setText:self->_secondaryText];
  [(UILabel *)self->_primaryLabel setEnabled:!self->_isRestricted];
  [(UILabel *)self->_secondaryLabel setEnabled:!self->_isRestricted];
  if (self->_isRestricted)
  {
    [MEMORY[0x277D75348] tertiaryLabelColor];
  }

  else
  {
    [(CNFRegAliasTableCell *)self tintColor];
  }
  v3 = ;
  [(UIImageView *)self->_checkmarkView setTintColor:v3];

  text = [(UILabel *)self->_secondaryLabel text];
  v5 = [text length];

  if (v5)
  {
    [(UIStackView *)self->_labelsStackView addArrangedSubview:self->_secondaryLabel];
  }

  else
  {
    [(UILabel *)self->_secondaryLabel removeFromSuperview];
  }

  visibleLeadingViewForState = [(CNFRegAliasTableCell *)self visibleLeadingViewForState];
  subviews = [(UIView *)self->_leadingContainerView subviews];
  firstObject = [subviews firstObject];

  if (visibleLeadingViewForState != firstObject)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    subviews2 = [(UIView *)self->_leadingContainerView subviews];
    v10 = [subviews2 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v35;
      do
      {
        v13 = 0;
        do
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(subviews2);
          }

          [*(*(&v34 + 1) + 8 * v13++) removeFromSuperview];
        }

        while (v11 != v13);
        v11 = [subviews2 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v11);
    }

    if (visibleLeadingViewForState)
    {
      [visibleLeadingViewForState setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v14) = 1148846080;
      [visibleLeadingViewForState setContentCompressionResistancePriority:1 forAxis:v14];
      LODWORD(v15) = 1148846080;
      [visibleLeadingViewForState setContentCompressionResistancePriority:0 forAxis:v15];
      [(UIView *)self->_leadingContainerView addSubview:visibleLeadingViewForState];
      v27 = MEMORY[0x277CCAAD0];
      leadingAnchor = [visibleLeadingViewForState leadingAnchor];
      leadingAnchor2 = [(UIView *)self->_leadingContainerView leadingAnchor];
      v31 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
      v38[0] = v31;
      trailingAnchor = [visibleLeadingViewForState trailingAnchor];
      trailingAnchor2 = [(UIView *)self->_leadingContainerView trailingAnchor];
      v28 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
      v38[1] = v28;
      centerXAnchor = [visibleLeadingViewForState centerXAnchor];
      centerXAnchor2 = [(UIView *)self->_leadingContainerView centerXAnchor];
      v16 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v38[2] = v16;
      topAnchor = [visibleLeadingViewForState topAnchor];
      topAnchor2 = [(UIView *)self->_leadingContainerView topAnchor];
      v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v38[3] = v19;
      bottomAnchor = [visibleLeadingViewForState bottomAnchor];
      bottomAnchor2 = [(UIView *)self->_leadingContainerView bottomAnchor];
      v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v38[4] = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:5];
      [v27 activateConstraints:v23];
    }
  }

  if (self->_isTemporary)
  {
    [(UIStackView *)self->_mainStackView addArrangedSubview:self->_temporaryIconView];
  }

  else
  {
    [(UIImageView *)self->_temporaryIconView removeFromSuperview];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)visibleLeadingViewForState
{
  if (self->_isLoading)
  {
    p_spinner = &self->_spinner;
    [(UIActivityIndicatorView *)self->_spinner startAnimating];
LABEL_5:
    v3 = *p_spinner;
    goto LABEL_7;
  }

  if (self->_hasCheckmark)
  {
    p_spinner = &self->_checkmarkView;
    goto LABEL_5;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v15.receiver = self;
  v15.super_class = CNFRegAliasTableCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v15 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [(CNFRegAliasTableCell *)self textLabel:v15.receiver];
  [v5 setHidden:1];

  detailTextLabel = [(CNFRegAliasTableCell *)self detailTextLabel];
  [detailTextLabel setHidden:1];

  v7 = [specifierCopy objectForKeyedSubscript:@"cnfreg-alias-spinning"];
  self->_isLoading = [v7 BOOLValue];

  v8 = [specifierCopy objectForKeyedSubscript:@"cnfreg-alias-checked"];
  self->_hasCheckmark = [v8 BOOLValue];

  v9 = [specifierCopy objectForKeyedSubscript:@"cnfreg-alias-temporary"];
  self->_isTemporary = [v9 BOOLValue];

  v10 = [specifierCopy objectForKeyedSubscript:*MEMORY[0x277D3FF38]];
  self->_isRestricted = [v10 BOOLValue] ^ 1;

  name = [specifierCopy name];
  primaryText = self->_primaryText;
  self->_primaryText = name;

  performGetter = [specifierCopy performGetter];

  secondaryText = self->_secondaryText;
  self->_secondaryText = performGetter;

  [(CNFRegAliasTableCell *)self updateViews];
}

@end