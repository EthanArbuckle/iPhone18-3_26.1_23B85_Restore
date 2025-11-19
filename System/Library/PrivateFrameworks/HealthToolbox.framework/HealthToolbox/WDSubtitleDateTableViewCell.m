@interface WDSubtitleDateTableViewCell
- (WDSubtitleDateTableViewCell)initWithReuseIdentifier:(id)a3;
- (void)_updateForCurrentSizeCategory;
- (void)setupConstraints;
- (void)setupSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation WDSubtitleDateTableViewCell

- (WDSubtitleDateTableViewCell)initWithReuseIdentifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = WDSubtitleDateTableViewCell;
  v3 = [(WDSubtitleDateTableViewCell *)&v6 initWithStyle:3 reuseIdentifier:a3];
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
  v5 = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)self->_subtitleTextLabel setTextColor:v5];

  v6 = [(WDSubtitleDateTableViewCell *)self contentView];
  [v6 addSubview:self->_subtitleTextLabel];

  v7 = objc_alloc_init(MEMORY[0x277D756B8]);
  mainTextLabel = self->_mainTextLabel;
  self->_mainTextLabel = v7;

  [(UILabel *)self->_mainTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [(WDSubtitleDateTableViewCell *)self textLabel];
  v10 = [v9 textColor];
  [(UILabel *)self->_mainTextLabel setTextColor:v10];

  v11 = [(WDSubtitleDateTableViewCell *)self contentView];
  [v11 addSubview:self->_mainTextLabel];

  v12 = objc_alloc_init(MEMORY[0x277D756B8]);
  dateTextLabel = self->_dateTextLabel;
  self->_dateTextLabel = v12;

  [(UILabel *)self->_dateTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)self->_dateTextLabel setTextColor:v14];

  v15 = [(WDSubtitleDateTableViewCell *)self contentView];
  [v15 addSubview:self->_dateTextLabel];
}

- (void)setupConstraints
{
  v45[9] = *MEMORY[0x277D85DE8];
  v3 = [(UILabel *)self->_mainTextLabel firstBaselineAnchor];
  v4 = [(UILabel *)self->_subtitleTextLabel lastBaselineAnchor];
  v5 = [(WDSubtitleDateTableViewCell *)self textLabel];
  v6 = [v5 font];
  [v6 _scaledValueForValue:22.0];
  v7 = [v3 constraintEqualToAnchor:v4 constant:?];
  [(WDSubtitleDateTableViewCell *)self setBaselineConstraint:v7];

  v30 = MEMORY[0x277CCAAD0];
  v43 = [(UILabel *)self->_mainTextLabel leadingAnchor];
  v44 = [(WDSubtitleDateTableViewCell *)self contentView];
  v42 = [v44 layoutMarginsGuide];
  v41 = [v42 leadingAnchor];
  v40 = [v43 constraintEqualToAnchor:v41];
  v45[0] = v40;
  v39 = [(WDSubtitleDateTableViewCell *)self contentView];
  v38 = [v39 bottomAnchor];
  v37 = [(UILabel *)self->_mainTextLabel bottomAnchor];
  v36 = [v38 constraintEqualToSystemSpacingBelowAnchor:v37 multiplier:1.0];
  v45[1] = v36;
  v34 = [(UILabel *)self->_subtitleTextLabel leadingAnchor];
  v35 = [(WDSubtitleDateTableViewCell *)self contentView];
  v33 = [v35 layoutMarginsGuide];
  v32 = [v33 leadingAnchor];
  v31 = [v34 constraintEqualToAnchor:v32];
  v45[2] = v31;
  v28 = [(UILabel *)self->_subtitleTextLabel topAnchor];
  v29 = [(WDSubtitleDateTableViewCell *)self contentView];
  v27 = [v29 topAnchor];
  v26 = [v28 constraintEqualToSystemSpacingBelowAnchor:v27 multiplier:1.0];
  v45[3] = v26;
  v25 = [(WDSubtitleDateTableViewCell *)self baselineConstraint];
  v45[4] = v25;
  v24 = [(WDSubtitleDateTableViewCell *)self contentView];
  v23 = [v24 trailingAnchor];
  v22 = [(UILabel *)self->_dateTextLabel trailingAnchor];
  v21 = [v23 constraintEqualToSystemSpacingAfterAnchor:v22 multiplier:1.0];
  v45[5] = v21;
  v20 = [(UILabel *)self->_dateTextLabel leadingAnchor];
  v19 = [(UILabel *)self->_subtitleTextLabel trailingAnchor];
  v8 = [v20 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v19 multiplier:1.0];
  v45[6] = v8;
  v9 = [(UILabel *)self->_dateTextLabel leadingAnchor];
  v10 = [(UILabel *)self->_mainTextLabel trailingAnchor];
  v11 = [v9 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v10 multiplier:1.0];
  v45[7] = v11;
  v12 = [(WDSubtitleDateTableViewCell *)self contentView];
  v13 = [v12 centerYAnchor];
  v14 = [(UILabel *)self->_dateTextLabel centerYAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v45[8] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:9];
  [v30 activateConstraints:v16];

  LODWORD(v17) = 1144766464;
  [(UILabel *)self->_dateTextLabel setContentCompressionResistancePriority:0 forAxis:v17];
  v18 = *MEMORY[0x277D85DE8];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WDSubtitleDateTableViewCell;
  [(WDSubtitleDateTableViewCell *)&v9 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(WDSubtitleDateTableViewCell *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      [(WDSubtitleDateTableViewCell *)self _updateForCurrentSizeCategory];
    }
  }
}

- (void)_updateForCurrentSizeCategory
{
  v3 = [(WDSubtitleDateTableViewCell *)self detailTextLabel];
  v4 = [v3 font];
  [(UILabel *)self->_subtitleTextLabel setFont:v4];

  v5 = [(WDSubtitleDateTableViewCell *)self textLabel];
  v6 = [v5 font];
  [(UILabel *)self->_mainTextLabel setFont:v6];

  v7 = [(WDSubtitleDateTableViewCell *)self textLabel];
  v8 = [v7 font];
  [(UILabel *)self->_dateTextLabel setFont:v8];

  v9 = [(WDSubtitleDateTableViewCell *)self textLabel];
  v10 = [v9 font];
  [v10 _scaledValueForValue:22.0];
  [(NSLayoutConstraint *)self->_baselineConstraint setConstant:?];

  [(WDSubtitleDateTableViewCell *)self setNeedsLayout];
}

@end