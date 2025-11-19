@interface WDDataListViewControllerCell
- (WDDataListViewControllerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_updateFont;
- (void)_updateForCurrentSizeCategory;
- (void)layoutSubviews;
- (void)setupConstraints;
- (void)setupSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation WDDataListViewControllerCell

- (WDDataListViewControllerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = WDDataListViewControllerCell;
  v4 = [(WDDataListViewControllerCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
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
  v3 = [(WDDataListViewControllerCell *)self titleTextLabel];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(WDDataListViewControllerCell *)self titleTextLabel];
  [(WDDataListViewControllerCell *)self convertRect:v12 fromView:v5, v7, v9, v11];
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
  v4 = [(WDDataListViewControllerCell *)self contentView];
  [v4 addSubview:self->_iconImageView];

  v5 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(WDDataListViewControllerCell *)self setSubtitleTextLabel:v5];

  [(UILabel *)self->_subtitleTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)self->_subtitleTextLabel setTextColor:v6];

  v7 = [(WDDataListViewControllerCell *)self contentView];
  [v7 addSubview:self->_subtitleTextLabel];

  v8 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(WDDataListViewControllerCell *)self setTitleTextLabel:v8];

  [(UILabel *)self->_titleTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_titleTextLabel setNumberOfLines:0];
  v9 = [(WDDataListViewControllerCell *)self textLabel];
  v10 = [v9 textColor];
  [(UILabel *)self->_titleTextLabel setTextColor:v10];

  v11 = [(WDDataListViewControllerCell *)self contentView];
  [v11 addSubview:self->_titleTextLabel];
}

- (void)_updateFont
{
  v3 = [(WDDataListViewControllerCell *)self detailTextLabel];
  v4 = [v3 font];
  [(UILabel *)self->_subtitleTextLabel setFont:v4];

  v5 = [MEMORY[0x277D74300] hk_preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [(UILabel *)self->_titleTextLabel setFont:v5];
}

- (void)setupConstraints
{
  v72[8] = *MEMORY[0x277D85DE8];
  v3 = [(WDDataListViewControllerCell *)self iconImageView];
  LODWORD(v4) = 1148846080;
  [v3 setContentCompressionResistancePriority:0 forAxis:v4];

  v5 = [(WDDataListViewControllerCell *)self iconImageView];
  v6 = [v5 centerYAnchor];
  v7 = [(WDDataListViewControllerCell *)self subtitleTextLabel];
  v8 = [v7 firstBaselineAnchor];
  v9 = [v6 constraintEqualToAnchor:v8 constant:0.0];
  largeTextIconImageCenterYAnchorConstraint = self->_largeTextIconImageCenterYAnchorConstraint;
  self->_largeTextIconImageCenterYAnchorConstraint = v9;

  v68 = [(WDDataListViewControllerCell *)self iconImageView];
  v66 = [v68 leadingAnchor];
  v67 = [(WDDataListViewControllerCell *)self contentView];
  v65 = [v67 leadingAnchor];
  v64 = [v66 constraintEqualToAnchor:v65 constant:16.0];
  v72[0] = v64;
  v62 = [(WDDataListViewControllerCell *)self iconImageView];
  v61 = [v62 widthAnchor];
  v60 = [v61 constraintEqualToConstant:29.0];
  v72[1] = v60;
  v59 = [(WDDataListViewControllerCell *)self subtitleTextLabel];
  v57 = [v59 leadingAnchor];
  v58 = [(WDDataListViewControllerCell *)self iconImageView];
  v56 = [v58 trailingAnchor];
  v55 = [v57 constraintEqualToAnchor:v56 constant:16.0];
  v72[2] = v55;
  v54 = [(WDDataListViewControllerCell *)self subtitleTextLabel];
  v52 = [v54 trailingAnchor];
  v53 = [(WDDataListViewControllerCell *)self contentView];
  v51 = [v53 trailingAnchor];
  v50 = [v52 constraintLessThanOrEqualToAnchor:v51 constant:-16.0];
  v72[3] = v50;
  v49 = [(WDDataListViewControllerCell *)self subtitleTextLabel];
  v47 = [v49 topAnchor];
  v48 = [(WDDataListViewControllerCell *)self contentView];
  v46 = [v48 topAnchor];
  v45 = [v47 constraintEqualToAnchor:v46 constant:9.0];
  v72[4] = v45;
  v44 = [(WDDataListViewControllerCell *)self titleTextLabel];
  v42 = [v44 trailingAnchor];
  v43 = [(WDDataListViewControllerCell *)self contentView];
  v41 = [v43 trailingAnchor];
  v40 = [v42 constraintLessThanOrEqualToAnchor:v41 constant:-16.0];
  v72[5] = v40;
  v39 = [(WDDataListViewControllerCell *)self titleTextLabel];
  v11 = [v39 bottomAnchor];
  v12 = [(WDDataListViewControllerCell *)self contentView];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13 constant:-6.0];
  v72[6] = v14;
  v15 = [(WDDataListViewControllerCell *)self titleTextLabel];
  v16 = [v15 topAnchor];
  v17 = [(WDDataListViewControllerCell *)self subtitleTextLabel];
  v18 = [v17 bottomAnchor];
  v19 = [v16 constraintGreaterThanOrEqualToAnchor:v18 constant:1.0];
  v72[7] = v19;
  v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:8];

  v69 = [(WDDataListViewControllerCell *)self iconImageView];
  v20 = [v69 centerYAnchor];
  v21 = [(WDDataListViewControllerCell *)self contentView];
  v22 = [v21 centerYAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  v71[0] = v23;
  v24 = [(WDDataListViewControllerCell *)self titleTextLabel];
  v25 = [v24 leadingAnchor];
  v26 = [(WDDataListViewControllerCell *)self iconImageView];
  v27 = [v26 trailingAnchor];
  v28 = [v25 constraintEqualToAnchor:v27 constant:16.0];
  v71[1] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
  regularConstraints = self->_regularConstraints;
  self->_regularConstraints = v29;

  v70[0] = self->_largeTextIconImageCenterYAnchorConstraint;
  v31 = [(WDDataListViewControllerCell *)self titleTextLabel];
  v32 = [v31 leadingAnchor];
  v33 = [(WDDataListViewControllerCell *)self iconImageView];
  v34 = [v33 leadingAnchor];
  v35 = [v32 constraintEqualToAnchor:v34];
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
    v3 = [(UILabel *)self->_subtitleTextLabel font];
    [v3 capHeight];
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

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WDDataListViewControllerCell;
  [(WDDataListViewControllerCell *)&v9 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(WDDataListViewControllerCell *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      [(WDDataListViewControllerCell *)self _updateForCurrentSizeCategory];
    }
  }
}

@end