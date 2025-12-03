@interface WDSubtitleDateTableViewCell
- (WDSubtitleDateTableViewCell)initWithReuseIdentifier:(id)identifier;
- (void)_updateForCurrentSizeCategory;
- (void)setupConstraints;
- (void)setupSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation WDSubtitleDateTableViewCell

- (WDSubtitleDateTableViewCell)initWithReuseIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = WDSubtitleDateTableViewCell;
  v3 = [(WDSubtitleDateTableViewCell *)&v6 initWithStyle:3 reuseIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    [(WDSubtitleDateTableViewCell *)v3 setupSubviews];
    [(WDSubtitleDateTableViewCell *)v4 setupConstraints];
    [(WDSubtitleDateTableViewCell *)v4 setSelectionStyle:0];
  }

  return v4;
}

- (void)setupSubviews
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  subtitleTextLabel = self->_subtitleTextLabel;
  self->_subtitleTextLabel = v3;

  [(UILabel *)self->_subtitleTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_subtitleTextLabel setNumberOfLines:0];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)self->_subtitleTextLabel setTextColor:secondaryLabelColor];

  contentView = [(WDSubtitleDateTableViewCell *)self contentView];
  [contentView addSubview:self->_subtitleTextLabel];

  v7 = objc_alloc_init(MEMORY[0x277D756B8]);
  mainTextLabel = self->_mainTextLabel;
  self->_mainTextLabel = v7;

  [(UILabel *)self->_mainTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  textLabel = [(WDSubtitleDateTableViewCell *)self textLabel];
  textColor = [textLabel textColor];
  [(UILabel *)self->_mainTextLabel setTextColor:textColor];

  contentView2 = [(WDSubtitleDateTableViewCell *)self contentView];
  [contentView2 addSubview:self->_mainTextLabel];

  v12 = objc_alloc_init(MEMORY[0x277D756B8]);
  dateTextLabel = self->_dateTextLabel;
  self->_dateTextLabel = v12;

  [(UILabel *)self->_dateTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)self->_dateTextLabel setTextColor:secondaryLabelColor2];

  contentView3 = [(WDSubtitleDateTableViewCell *)self contentView];
  [contentView3 addSubview:self->_dateTextLabel];
}

- (void)setupConstraints
{
  v45[9] = *MEMORY[0x277D85DE8];
  firstBaselineAnchor = [(UILabel *)self->_mainTextLabel firstBaselineAnchor];
  lastBaselineAnchor = [(UILabel *)self->_subtitleTextLabel lastBaselineAnchor];
  textLabel = [(WDSubtitleDateTableViewCell *)self textLabel];
  font = [textLabel font];
  [font _scaledValueForValue:22.0];
  v7 = [firstBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor constant:?];
  [(WDSubtitleDateTableViewCell *)self setBaselineConstraint:v7];

  v30 = MEMORY[0x277CCAAD0];
  leadingAnchor = [(UILabel *)self->_mainTextLabel leadingAnchor];
  contentView = [(WDSubtitleDateTableViewCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v45[0] = v40;
  contentView2 = [(WDSubtitleDateTableViewCell *)self contentView];
  bottomAnchor = [contentView2 bottomAnchor];
  bottomAnchor2 = [(UILabel *)self->_mainTextLabel bottomAnchor];
  v36 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:1.0];
  v45[1] = v36;
  leadingAnchor3 = [(UILabel *)self->_subtitleTextLabel leadingAnchor];
  contentView3 = [(WDSubtitleDateTableViewCell *)self contentView];
  layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
  leadingAnchor4 = [layoutMarginsGuide2 leadingAnchor];
  v31 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v45[2] = v31;
  topAnchor = [(UILabel *)self->_subtitleTextLabel topAnchor];
  contentView4 = [(WDSubtitleDateTableViewCell *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  v26 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];
  v45[3] = v26;
  baselineConstraint = [(WDSubtitleDateTableViewCell *)self baselineConstraint];
  v45[4] = baselineConstraint;
  contentView5 = [(WDSubtitleDateTableViewCell *)self contentView];
  trailingAnchor = [contentView5 trailingAnchor];
  trailingAnchor2 = [(UILabel *)self->_dateTextLabel trailingAnchor];
  v21 = [trailingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor2 multiplier:1.0];
  v45[5] = v21;
  leadingAnchor5 = [(UILabel *)self->_dateTextLabel leadingAnchor];
  trailingAnchor3 = [(UILabel *)self->_subtitleTextLabel trailingAnchor];
  v8 = [leadingAnchor5 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor3 multiplier:1.0];
  v45[6] = v8;
  leadingAnchor6 = [(UILabel *)self->_dateTextLabel leadingAnchor];
  trailingAnchor4 = [(UILabel *)self->_mainTextLabel trailingAnchor];
  v11 = [leadingAnchor6 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor4 multiplier:1.0];
  v45[7] = v11;
  contentView6 = [(WDSubtitleDateTableViewCell *)self contentView];
  centerYAnchor = [contentView6 centerYAnchor];
  centerYAnchor2 = [(UILabel *)self->_dateTextLabel centerYAnchor];
  v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v45[8] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:9];
  [v30 activateConstraints:v16];

  LODWORD(v17) = 1144766464;
  [(UILabel *)self->_dateTextLabel setContentCompressionResistancePriority:0 forAxis:v17];
  v18 = *MEMORY[0x277D85DE8];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = WDSubtitleDateTableViewCell;
  [(WDSubtitleDateTableViewCell *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(WDSubtitleDateTableViewCell *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      [(WDSubtitleDateTableViewCell *)self _updateForCurrentSizeCategory];
    }
  }
}

- (void)_updateForCurrentSizeCategory
{
  detailTextLabel = [(WDSubtitleDateTableViewCell *)self detailTextLabel];
  font = [detailTextLabel font];
  [(UILabel *)self->_subtitleTextLabel setFont:font];

  textLabel = [(WDSubtitleDateTableViewCell *)self textLabel];
  font2 = [textLabel font];
  [(UILabel *)self->_mainTextLabel setFont:font2];

  textLabel2 = [(WDSubtitleDateTableViewCell *)self textLabel];
  font3 = [textLabel2 font];
  [(UILabel *)self->_dateTextLabel setFont:font3];

  textLabel3 = [(WDSubtitleDateTableViewCell *)self textLabel];
  font4 = [textLabel3 font];
  [font4 _scaledValueForValue:22.0];
  [(NSLayoutConstraint *)self->_baselineConstraint setConstant:?];

  [(WDSubtitleDateTableViewCell *)self setNeedsLayout];
}

@end