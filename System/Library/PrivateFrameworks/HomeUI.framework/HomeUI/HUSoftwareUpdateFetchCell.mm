@interface HUSoftwareUpdateFetchCell
- (HUSoftwareUpdateFetchCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUSoftwareUpdateFetchCell

- (HUSoftwareUpdateFetchCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v38[2] = *MEMORY[0x277D85DE8];
  v37.receiver = self;
  v37.super_class = HUSoftwareUpdateFetchCell;
  v4 = [(HUSoftwareUpdateFetchCell *)&v37 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(HUSoftwareUpdateFetchCell *)v4 setSelectionStyle:0];
    [(HUSoftwareUpdateFetchCell *)v5 setUserInteractionEnabled:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(HUSoftwareUpdateFetchCell *)v5 setBackgroundColor:clearColor];

    v7 = objc_alloc_init(MEMORY[0x277D180D0]);
    iconView = v5->_iconView;
    v5->_iconView = v7;

    [(HUIconView *)v5->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUIconView *)v5->_iconView setContentMode:4];
    v5->_iconSize = 2;
    [(HUIconView *)v5->_iconView setIconSize:2];
    v9 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v9;

    v11 = v5->_titleLabel;
    v12 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D76918] traits:2];
    [(UILabel *)v11 setFont:v12];

    v13 = v5->_titleLabel;
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v13 setBackgroundColor:clearColor2];

    [(UILabel *)v5->_titleLabel setNumberOfLines:0];
    [(UILabel *)v5->_titleLabel setTextAlignment:1];
    [(UILabel *)v5->_titleLabel setLineBreakMode:0];
    [(UILabel *)v5->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = objc_alloc_init(MEMORY[0x277D756B8]);
    subtitleLabel = v5->_subtitleLabel;
    v5->_subtitleLabel = v15;

    v17 = v5->_subtitleLabel;
    v18 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v17 setFont:v18];

    v19 = v5->_subtitleLabel;
    clearColor3 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v19 setBackgroundColor:clearColor3];

    v21 = v5->_subtitleLabel;
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v21 setTextColor:systemGrayColor];

    [(UILabel *)v5->_subtitleLabel setNumberOfLines:0];
    [(UILabel *)v5->_subtitleLabel setTextAlignment:1];
    [(UILabel *)v5->_subtitleLabel setLineBreakMode:0];
    v23 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    checkingForUpdateSpinner = v5->_checkingForUpdateSpinner;
    v5->_checkingForUpdateSpinner = v23;

    [(UIActivityIndicatorView *)v5->_checkingForUpdateSpinner startAnimating];
    [(UIActivityIndicatorView *)v5->_checkingForUpdateSpinner setHidesWhenStopped:1];
    LODWORD(v25) = 1148846080;
    [(UIActivityIndicatorView *)v5->_checkingForUpdateSpinner setContentHuggingPriority:0 forAxis:v25];
    LODWORD(v26) = 1148846080;
    [(UIActivityIndicatorView *)v5->_checkingForUpdateSpinner setContentCompressionResistancePriority:0 forAxis:v26];
    [(UIActivityIndicatorView *)v5->_checkingForUpdateSpinner setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = objc_opt_new();
    titleSpinnerView = v5->_titleSpinnerView;
    v5->_titleSpinnerView = v27;

    [(UIView *)v5->_titleSpinnerView addSubview:v5->_checkingForUpdateSpinner];
    [(UIView *)v5->_titleSpinnerView addSubview:v5->_titleLabel];
    array = [MEMORY[0x277CBEB18] array];
    [array addObject:v5->_iconView];
    v38[0] = v5->_titleSpinnerView;
    v38[1] = v5->_subtitleLabel;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
    [array addObjectsFromArray:v30];

    v31 = [objc_alloc(MEMORY[0x277D75A68]) initWithArrangedSubviews:array];
    mainStackView = v5->_mainStackView;
    v5->_mainStackView = v31;

    [(UIStackView *)v5->_mainStackView setAxis:1];
    [(UIStackView *)v5->_mainStackView setAlignment:3];
    [(UIStackView *)v5->_mainStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v5->_mainStackView setSpacing:4.0];
    v33 = v5->_mainStackView;
    iconView = [(HUSoftwareUpdateFetchCell *)v5 iconView];
    [(UIStackView *)v33 setCustomSpacing:iconView afterView:10.0];

    contentView = [(HUSoftwareUpdateFetchCell *)v5 contentView];
    [contentView addSubview:v5->_mainStackView];
  }

  return v5;
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  item = [(HUSoftwareUpdateFetchCell *)self item];
  latestResults = [item latestResults];

  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  titleLabel = [(HUSoftwareUpdateFetchCell *)self titleLabel];
  [titleLabel setText:v6];

  v8 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E20]];
  v9 = [v8 stringWithAttributes:MEMORY[0x277CBEC10]];
  subtitleLabel = [(HUSoftwareUpdateFetchCell *)self subtitleLabel];
  [subtitleLabel setAttributedText:v9];

  v11 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D140F0]];
  bOOLValue = [v11 BOOLValue];

  titleSpinnerView = [(HUSoftwareUpdateFetchCell *)self titleSpinnerView];
  checkingForUpdateSpinner = [(HUSoftwareUpdateFetchCell *)self checkingForUpdateSpinner];
  v15 = [titleSpinnerView containsView:checkingForUpdateSpinner];

  if (!bOOLValue || (v15 & 1) != 0)
  {
    if (!(bOOLValue & 1 | ((v15 & 1) == 0)))
    {
      checkingForUpdateSpinner2 = [(HUSoftwareUpdateFetchCell *)self checkingForUpdateSpinner];
      [checkingForUpdateSpinner2 removeFromSuperview];

      checkingForUpdateSpinner3 = [(HUSoftwareUpdateFetchCell *)self checkingForUpdateSpinner];
      [checkingForUpdateSpinner3 stopAnimating];
    }
  }

  else
  {
    titleSpinnerView2 = [(HUSoftwareUpdateFetchCell *)self titleSpinnerView];
    checkingForUpdateSpinner4 = [(HUSoftwareUpdateFetchCell *)self checkingForUpdateSpinner];
    [titleSpinnerView2 addSubview:checkingForUpdateSpinner4];

    checkingForUpdateSpinner5 = [(HUSoftwareUpdateFetchCell *)self checkingForUpdateSpinner];
    [checkingForUpdateSpinner5 startAnimating];

    [(HUSoftwareUpdateFetchCell *)self updateConstraints];
  }

  if (v15)
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v21 = ;
  titleLabel2 = [(HUSoftwareUpdateFetchCell *)self titleLabel];
  [titleLabel2 setTextColor:v21];

  v23 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E88]];
  iconView = [(HUSoftwareUpdateFetchCell *)self iconView];
  [iconView updateWithIconDescriptor:v23 displayStyle:1 animated:animationCopy];

  iconView2 = [(HUSoftwareUpdateFetchCell *)self iconView];
  [iconView2 setHidden:v23 == 0];

  [(HUSoftwareUpdateFetchCell *)self setNeedsLayout];
}

- (void)updateConstraints
{
  v48.receiver = self;
  v48.super_class = HUSoftwareUpdateFetchCell;
  [(HUSoftwareUpdateFetchCell *)&v48 updateConstraints];
  array = [MEMORY[0x277CBEB18] array];
  leadingAnchor = [(UIStackView *)self->_mainStackView leadingAnchor];
  contentView = [(HUSoftwareUpdateFetchCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v8];

  trailingAnchor = [(UIStackView *)self->_mainStackView trailingAnchor];
  contentView2 = [(HUSoftwareUpdateFetchCell *)self contentView];
  layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v13];

  topAnchor = [(UIStackView *)self->_mainStackView topAnchor];
  contentView3 = [(HUSoftwareUpdateFetchCell *)self contentView];
  layoutMarginsGuide3 = [contentView3 layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide3 topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [array addObject:v18];

  bottomAnchor = [(UIStackView *)self->_mainStackView bottomAnchor];
  contentView4 = [(HUSoftwareUpdateFetchCell *)self contentView];
  layoutMarginsGuide4 = [contentView4 layoutMarginsGuide];
  bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
  v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [array addObject:v23];

  rightAnchor = [(UILabel *)self->_titleLabel rightAnchor];
  rightAnchor2 = [(UIView *)self->_titleSpinnerView rightAnchor];
  v26 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [array addObject:v26];

  topAnchor3 = [(UILabel *)self->_titleLabel topAnchor];
  topAnchor4 = [(UIView *)self->_titleSpinnerView topAnchor];
  v29 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [array addObject:v29];

  bottomAnchor3 = [(UILabel *)self->_titleLabel bottomAnchor];
  bottomAnchor4 = [(UIView *)self->_titleSpinnerView bottomAnchor];
  v32 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [array addObject:v32];

  leftAnchor = [(UILabel *)self->_titleLabel leftAnchor];
  leftAnchor2 = [(UIView *)self->_titleSpinnerView leftAnchor];
  v35 = [leftAnchor constraintGreaterThanOrEqualToAnchor:leftAnchor2];
  [array addObject:v35];

  if ([(UIView *)self->_titleSpinnerView containsView:self->_checkingForUpdateSpinner])
  {
    widthAnchor = [(UIView *)self->_titleSpinnerView widthAnchor];
    widthAnchor2 = [(UIStackView *)self->_mainStackView widthAnchor];
    v38 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
    [array addObject:v38];

    leftAnchor3 = [(UIActivityIndicatorView *)self->_checkingForUpdateSpinner leftAnchor];
    leftAnchor4 = [(UIView *)self->_titleSpinnerView leftAnchor];
    v41 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
    [array addObject:v41];

    centerYAnchor = [(UIActivityIndicatorView *)self->_checkingForUpdateSpinner centerYAnchor];
    centerYAnchor2 = [(UIView *)self->_titleSpinnerView centerYAnchor];
    v44 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [array addObject:v44];

    leftAnchor5 = [(UILabel *)self->_titleLabel leftAnchor];
    rightAnchor3 = [(UIActivityIndicatorView *)self->_checkingForUpdateSpinner rightAnchor];
    v47 = [leftAnchor5 constraintEqualToAnchor:rightAnchor3 constant:8.0];
    [array addObject:v47];
  }

  [MEMORY[0x277CCAAD0] activateConstraints:array];
}

@end