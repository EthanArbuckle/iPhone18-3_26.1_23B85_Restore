@interface WDDataListViewControllerCell
- (WDDataListViewControllerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_updateFont;
- (void)_updateForCurrentSizeCategory;
- (void)layoutSubviews;
- (void)setupConstraints;
- (void)setupSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation WDDataListViewControllerCell

- (WDDataListViewControllerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = WDDataListViewControllerCell;
  v4 = [(WDDataListViewControllerCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(WDDataListViewControllerCell *)v4 setupSubviews];
    [(WDDataListViewControllerCell *)v5 setupConstraints];
    [(WDDataListViewControllerCell *)v5 _updateForCurrentSizeCategory];
    [(WDDataListViewControllerCell *)v5 setAccessoryType:1];
  }

  return v5;
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = WDDataListViewControllerCell;
  [(WDDataListViewControllerCell *)&v23 layoutSubviews];
  titleTextLabel = [(WDDataListViewControllerCell *)self titleTextLabel];
  [titleTextLabel bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  titleTextLabel2 = [(WDDataListViewControllerCell *)self titleTextLabel];
  [(WDDataListViewControllerCell *)self convertRect:titleTextLabel2 fromView:v5, v7, v9, v11];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  if ([(WDDataListViewControllerCell *)self hk_isLeftToRight])
  {
    v24.origin.x = v14;
    v24.origin.y = v16;
    v24.size.width = v18;
    v24.size.height = v20;
    MinX = CGRectGetMinX(v24);
  }

  else
  {
    [(WDDataListViewControllerCell *)self bounds];
    Width = CGRectGetWidth(v25);
    v26.origin.x = v14;
    v26.origin.y = v16;
    v26.size.width = v18;
    v26.size.height = v20;
    MinX = Width - CGRectGetMaxX(v26);
  }

  [(WDDataListViewControllerCell *)self setSeparatorInset:0.0, MinX, 0.0, 0.0];
}

- (void)setupSubviews
{
  v3 = objc_alloc_init(MEMORY[0x277D755E8]);
  [(WDDataListViewControllerCell *)self setIconImageView:v3];

  [(UIImageView *)self->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_iconImageView setContentMode:1];
  contentView = [(WDDataListViewControllerCell *)self contentView];
  [contentView addSubview:self->_iconImageView];

  v5 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(WDDataListViewControllerCell *)self setSubtitleTextLabel:v5];

  [(UILabel *)self->_subtitleTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)self->_subtitleTextLabel setTextColor:secondaryLabelColor];

  contentView2 = [(WDDataListViewControllerCell *)self contentView];
  [contentView2 addSubview:self->_subtitleTextLabel];

  v8 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(WDDataListViewControllerCell *)self setTitleTextLabel:v8];

  [(UILabel *)self->_titleTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_titleTextLabel setNumberOfLines:0];
  textLabel = [(WDDataListViewControllerCell *)self textLabel];
  textColor = [textLabel textColor];
  [(UILabel *)self->_titleTextLabel setTextColor:textColor];

  contentView3 = [(WDDataListViewControllerCell *)self contentView];
  [contentView3 addSubview:self->_titleTextLabel];
}

- (void)_updateFont
{
  detailTextLabel = [(WDDataListViewControllerCell *)self detailTextLabel];
  font = [detailTextLabel font];
  [(UILabel *)self->_subtitleTextLabel setFont:font];

  v5 = [MEMORY[0x277D74300] hk_preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [(UILabel *)self->_titleTextLabel setFont:v5];
}

- (void)setupConstraints
{
  v72[8] = *MEMORY[0x277D85DE8];
  iconImageView = [(WDDataListViewControllerCell *)self iconImageView];
  LODWORD(v4) = 1148846080;
  [iconImageView setContentCompressionResistancePriority:0 forAxis:v4];

  iconImageView2 = [(WDDataListViewControllerCell *)self iconImageView];
  centerYAnchor = [iconImageView2 centerYAnchor];
  subtitleTextLabel = [(WDDataListViewControllerCell *)self subtitleTextLabel];
  firstBaselineAnchor = [subtitleTextLabel firstBaselineAnchor];
  v9 = [centerYAnchor constraintEqualToAnchor:firstBaselineAnchor constant:0.0];
  largeTextIconImageCenterYAnchorConstraint = self->_largeTextIconImageCenterYAnchorConstraint;
  self->_largeTextIconImageCenterYAnchorConstraint = v9;

  iconImageView3 = [(WDDataListViewControllerCell *)self iconImageView];
  leadingAnchor = [iconImageView3 leadingAnchor];
  contentView = [(WDDataListViewControllerCell *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  v64 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v72[0] = v64;
  iconImageView4 = [(WDDataListViewControllerCell *)self iconImageView];
  widthAnchor = [iconImageView4 widthAnchor];
  v60 = [widthAnchor constraintEqualToConstant:29.0];
  v72[1] = v60;
  subtitleTextLabel2 = [(WDDataListViewControllerCell *)self subtitleTextLabel];
  leadingAnchor3 = [subtitleTextLabel2 leadingAnchor];
  iconImageView5 = [(WDDataListViewControllerCell *)self iconImageView];
  trailingAnchor = [iconImageView5 trailingAnchor];
  v55 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:16.0];
  v72[2] = v55;
  subtitleTextLabel3 = [(WDDataListViewControllerCell *)self subtitleTextLabel];
  trailingAnchor2 = [subtitleTextLabel3 trailingAnchor];
  contentView2 = [(WDDataListViewControllerCell *)self contentView];
  trailingAnchor3 = [contentView2 trailingAnchor];
  v50 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:trailingAnchor3 constant:-16.0];
  v72[3] = v50;
  subtitleTextLabel4 = [(WDDataListViewControllerCell *)self subtitleTextLabel];
  topAnchor = [subtitleTextLabel4 topAnchor];
  contentView3 = [(WDDataListViewControllerCell *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v45 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:9.0];
  v72[4] = v45;
  titleTextLabel = [(WDDataListViewControllerCell *)self titleTextLabel];
  trailingAnchor4 = [titleTextLabel trailingAnchor];
  contentView4 = [(WDDataListViewControllerCell *)self contentView];
  trailingAnchor5 = [contentView4 trailingAnchor];
  v40 = [trailingAnchor4 constraintLessThanOrEqualToAnchor:trailingAnchor5 constant:-16.0];
  v72[5] = v40;
  titleTextLabel2 = [(WDDataListViewControllerCell *)self titleTextLabel];
  bottomAnchor = [titleTextLabel2 bottomAnchor];
  contentView5 = [(WDDataListViewControllerCell *)self contentView];
  bottomAnchor2 = [contentView5 bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-6.0];
  v72[6] = v14;
  titleTextLabel3 = [(WDDataListViewControllerCell *)self titleTextLabel];
  topAnchor3 = [titleTextLabel3 topAnchor];
  subtitleTextLabel5 = [(WDDataListViewControllerCell *)self subtitleTextLabel];
  bottomAnchor3 = [subtitleTextLabel5 bottomAnchor];
  v19 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:bottomAnchor3 constant:1.0];
  v72[7] = v19;
  v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:8];

  iconImageView6 = [(WDDataListViewControllerCell *)self iconImageView];
  centerYAnchor2 = [iconImageView6 centerYAnchor];
  contentView6 = [(WDDataListViewControllerCell *)self contentView];
  centerYAnchor3 = [contentView6 centerYAnchor];
  v23 = [centerYAnchor2 constraintEqualToAnchor:centerYAnchor3];
  v71[0] = v23;
  titleTextLabel4 = [(WDDataListViewControllerCell *)self titleTextLabel];
  leadingAnchor4 = [titleTextLabel4 leadingAnchor];
  iconImageView7 = [(WDDataListViewControllerCell *)self iconImageView];
  trailingAnchor6 = [iconImageView7 trailingAnchor];
  v28 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor6 constant:16.0];
  v71[1] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
  regularConstraints = self->_regularConstraints;
  self->_regularConstraints = v29;

  v70[0] = self->_largeTextIconImageCenterYAnchorConstraint;
  titleTextLabel5 = [(WDDataListViewControllerCell *)self titleTextLabel];
  leadingAnchor5 = [titleTextLabel5 leadingAnchor];
  iconImageView8 = [(WDDataListViewControllerCell *)self iconImageView];
  leadingAnchor6 = [iconImageView8 leadingAnchor];
  v35 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v70[1] = v35;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
  largeTextConstraints = self->_largeTextConstraints;
  self->_largeTextConstraints = v36;

  [MEMORY[0x277CCAAD0] activateConstraints:v63];
  v38 = *MEMORY[0x277D85DE8];
}

- (void)_updateForCurrentSizeCategory
{
  [(WDDataListViewControllerCell *)self _updateFont];
  if (HKUIApplicationIsUsingAccessibilityContentSizeCategory())
  {
    font = [(UILabel *)self->_subtitleTextLabel font];
    [font capHeight];
    [(NSLayoutConstraint *)self->_largeTextIconImageCenterYAnchorConstraint setConstant:v4 * -0.5];

    v5 = &OBJC_IVAR___WDDataListViewControllerCell__largeTextConstraints;
    v6 = &OBJC_IVAR___WDDataListViewControllerCell__regularConstraints;
  }

  else
  {
    v5 = &OBJC_IVAR___WDDataListViewControllerCell__regularConstraints;
    v6 = &OBJC_IVAR___WDDataListViewControllerCell__largeTextConstraints;
  }

  [MEMORY[0x277CCAAD0] deactivateConstraints:*(&self->super.super.super.super.isa + *v6)];
  v7 = MEMORY[0x277CCAAD0];
  v8 = *(&self->super.super.super.super.isa + *v5);

  [v7 activateConstraints:v8];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = WDDataListViewControllerCell;
  [(WDDataListViewControllerCell *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(WDDataListViewControllerCell *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      [(WDDataListViewControllerCell *)self _updateForCurrentSizeCategory];
    }
  }
}

@end