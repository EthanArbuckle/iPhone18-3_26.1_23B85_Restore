@interface CNFRegAliasTableCell
- (CNFRegAliasTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)visibleLeadingViewForState;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setUpViews;
- (void)updateViews;
@end

@implementation CNFRegAliasTableCell

- (CNFRegAliasTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = CNFRegAliasTableCell;
  v4 = [(PSTableCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
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

    v11 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)self->_secondaryLabel setTextColor:v11];

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

    v34 = [MEMORY[0x277D75348] tertiaryLabelColor];
    [(UIImageView *)self->_temporaryIconView setTintColor:v34];

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
    v43 = [(CNFRegAliasTableCell *)self contentView];
    [v43 addSubview:self->_mainStackView];

    v58 = MEMORY[0x277CCAAD0];
    v67 = [(UIStackView *)self->_mainStackView leadingAnchor];
    v68 = [(CNFRegAliasTableCell *)self contentView];
    v66 = [v68 layoutMarginsGuide];
    v65 = [v66 leadingAnchor];
    v64 = [v67 constraintEqualToAnchor:v65];
    v70[0] = v64;
    v62 = [(UIStackView *)self->_mainStackView trailingAnchor];
    v63 = [(CNFRegAliasTableCell *)self contentView];
    v61 = [v63 layoutMarginsGuide];
    v60 = [v61 trailingAnchor];
    v59 = [v62 constraintEqualToAnchor:v60];
    v70[1] = v59;
    v56 = [(UIStackView *)self->_mainStackView topAnchor];
    v57 = [(CNFRegAliasTableCell *)self contentView];
    v55 = [v57 layoutMarginsGuide];
    v44 = [v55 topAnchor];
    v45 = [v56 constraintEqualToAnchor:v44];
    v70[2] = v45;
    v46 = [(UIStackView *)self->_mainStackView bottomAnchor];
    v47 = [(CNFRegAliasTableCell *)self contentView];
    v48 = [v47 layoutMarginsGuide];
    v49 = [v48 bottomAnchor];
    v50 = [v46 constraintEqualToAnchor:v49];
    v70[3] = v50;
    v51 = [(UIView *)self->_leadingContainerView widthAnchor];
    v52 = [v51 constraintEqualToConstant:20.0];
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

  v4 = [(UILabel *)self->_secondaryLabel text];
  v5 = [v4 length];

  if (v5)
  {
    [(UIStackView *)self->_labelsStackView addArrangedSubview:self->_secondaryLabel];
  }

  else
  {
    [(UILabel *)self->_secondaryLabel removeFromSuperview];
  }

  v6 = [(CNFRegAliasTableCell *)self visibleLeadingViewForState];
  v7 = [(UIView *)self->_leadingContainerView subviews];
  v8 = [v7 firstObject];

  if (v6 != v8)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v9 = [(UIView *)self->_leadingContainerView subviews];
    v10 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
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
            objc_enumerationMutation(v9);
          }

          [*(*(&v34 + 1) + 8 * v13++) removeFromSuperview];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v11);
    }

    if (v6)
    {
      [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v14) = 1148846080;
      [v6 setContentCompressionResistancePriority:1 forAxis:v14];
      LODWORD(v15) = 1148846080;
      [v6 setContentCompressionResistancePriority:0 forAxis:v15];
      [(UIView *)self->_leadingContainerView addSubview:v6];
      v27 = MEMORY[0x277CCAAD0];
      v33 = [v6 leadingAnchor];
      v32 = [(UIView *)self->_leadingContainerView leadingAnchor];
      v31 = [v33 constraintGreaterThanOrEqualToAnchor:v32];
      v38[0] = v31;
      v30 = [v6 trailingAnchor];
      v29 = [(UIView *)self->_leadingContainerView trailingAnchor];
      v28 = [v30 constraintLessThanOrEqualToAnchor:v29];
      v38[1] = v28;
      v26 = [v6 centerXAnchor];
      v25 = [(UIView *)self->_leadingContainerView centerXAnchor];
      v16 = [v26 constraintEqualToAnchor:v25];
      v38[2] = v16;
      v17 = [v6 topAnchor];
      v18 = [(UIView *)self->_leadingContainerView topAnchor];
      v19 = [v17 constraintEqualToAnchor:v18];
      v38[3] = v19;
      v20 = [v6 bottomAnchor];
      v21 = [(UIView *)self->_leadingContainerView bottomAnchor];
      v22 = [v20 constraintEqualToAnchor:v21];
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

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v15.receiver = self;
  v15.super_class = CNFRegAliasTableCell;
  v4 = a3;
  [(PSTableCell *)&v15 refreshCellContentsWithSpecifier:v4];
  v5 = [(CNFRegAliasTableCell *)self textLabel:v15.receiver];
  [v5 setHidden:1];

  v6 = [(CNFRegAliasTableCell *)self detailTextLabel];
  [v6 setHidden:1];

  v7 = [v4 objectForKeyedSubscript:@"cnfreg-alias-spinning"];
  self->_isLoading = [v7 BOOLValue];

  v8 = [v4 objectForKeyedSubscript:@"cnfreg-alias-checked"];
  self->_hasCheckmark = [v8 BOOLValue];

  v9 = [v4 objectForKeyedSubscript:@"cnfreg-alias-temporary"];
  self->_isTemporary = [v9 BOOLValue];

  v10 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3FF38]];
  self->_isRestricted = [v10 BOOLValue] ^ 1;

  v11 = [v4 name];
  primaryText = self->_primaryText;
  self->_primaryText = v11;

  v13 = [v4 performGetter];

  secondaryText = self->_secondaryText;
  self->_secondaryText = v13;

  [(CNFRegAliasTableCell *)self updateViews];
}

@end