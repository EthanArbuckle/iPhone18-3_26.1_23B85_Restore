@interface WDMedicalRecordStandaloneImageCell
- (NSString)detail;
- (NSString)title;
- (UIImage)titleImage;
- (void)_updateForCurrentSizeCategory;
- (void)setDetail:(id)detail;
- (void)setTitle:(id)title;
- (void)setTitleImage:(id)image;
- (void)setupSubviews;
@end

@implementation WDMedicalRecordStandaloneImageCell

- (void)setupSubviews
{
  v89.receiver = self;
  v89.super_class = WDMedicalRecordStandaloneImageCell;
  [(WDMedicalRecordGroupableCell *)&v89 setupSubviews];
  v3 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [(WDMedicalRecordStandaloneImageCell *)self setDisclosureChevronView:v3];

  disclosureChevronView = [(WDMedicalRecordStandaloneImageCell *)self disclosureChevronView];
  [disclosureChevronView setTranslatesAutoresizingMaskIntoConstraints:0];

  hk_disclosureChevronImage = [MEMORY[0x1E69DCAB8] hk_disclosureChevronImage];
  disclosureChevronView2 = [(WDMedicalRecordStandaloneImageCell *)self disclosureChevronView];
  [disclosureChevronView2 setImage:hk_disclosureChevronImage];

  disclosureChevronView3 = [(WDMedicalRecordStandaloneImageCell *)self disclosureChevronView];
  LODWORD(v8) = 1144750080;
  [disclosureChevronView3 setContentHuggingPriority:0 forAxis:v8];

  disclosureChevronView4 = [(WDMedicalRecordStandaloneImageCell *)self disclosureChevronView];
  LODWORD(v10) = 1148846080;
  [disclosureChevronView4 setContentCompressionResistancePriority:0 forAxis:v10];

  contentView = [(WDMedicalRecordStandaloneImageCell *)self contentView];
  disclosureChevronView5 = [(WDMedicalRecordStandaloneImageCell *)self disclosureChevronView];
  [contentView addSubview:disclosureChevronView5];

  v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(WDMedicalRecordStandaloneImageCell *)self setDetailLabel:v13];

  tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  detailLabel = [(WDMedicalRecordStandaloneImageCell *)self detailLabel];
  [detailLabel setTextColor:tertiaryLabelColor];

  detailLabel2 = [(WDMedicalRecordStandaloneImageCell *)self detailLabel];
  [detailLabel2 setNumberOfLines:0];

  detailLabel3 = [(WDMedicalRecordStandaloneImageCell *)self detailLabel];
  [detailLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

  detailLabel4 = [(WDMedicalRecordStandaloneImageCell *)self detailLabel];
  LODWORD(v19) = 1148846080;
  [detailLabel4 setContentCompressionResistancePriority:0 forAxis:v19];

  contentView2 = [(WDMedicalRecordStandaloneImageCell *)self contentView];
  detailLabel5 = [(WDMedicalRecordStandaloneImageCell *)self detailLabel];
  [contentView2 addSubview:detailLabel5];

  v22 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(WDMedicalRecordStandaloneImageCell *)self setTitleLabel:v22];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  titleLabel = [(WDMedicalRecordStandaloneImageCell *)self titleLabel];
  [titleLabel setTextColor:labelColor];

  titleLabel2 = [(WDMedicalRecordStandaloneImageCell *)self titleLabel];
  [titleLabel2 setNumberOfLines:0];

  titleLabel3 = [(WDMedicalRecordStandaloneImageCell *)self titleLabel];
  [titleLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel4 = [(WDMedicalRecordStandaloneImageCell *)self titleLabel];
  LODWORD(v28) = 1144750080;
  [titleLabel4 setContentHuggingPriority:0 forAxis:v28];

  contentView3 = [(WDMedicalRecordStandaloneImageCell *)self contentView];
  titleLabel5 = [(WDMedicalRecordStandaloneImageCell *)self titleLabel];
  [contentView3 addSubview:titleLabel5];

  [(WDMedicalRecordStandaloneImageCell *)self _updateForCurrentSizeCategory];
  v31 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [(WDMedicalRecordStandaloneImageCell *)self setTitleImageView:v31];

  titleImageView = [(WDMedicalRecordStandaloneImageCell *)self titleImageView];
  [titleImageView setTranslatesAutoresizingMaskIntoConstraints:0];

  titleImageView2 = [(WDMedicalRecordStandaloneImageCell *)self titleImageView];
  LODWORD(v34) = 1144750080;
  [titleImageView2 setContentHuggingPriority:0 forAxis:v34];

  titleImageView3 = [(WDMedicalRecordStandaloneImageCell *)self titleImageView];
  LODWORD(v36) = 1148846080;
  [titleImageView3 setContentCompressionResistancePriority:0 forAxis:v36];

  contentView4 = [(WDMedicalRecordStandaloneImageCell *)self contentView];
  titleImageView4 = [(WDMedicalRecordStandaloneImageCell *)self titleImageView];
  [contentView4 addSubview:titleImageView4];

  disclosureChevronView6 = [(WDMedicalRecordStandaloneImageCell *)self disclosureChevronView];
  trailingAnchor = [disclosureChevronView6 trailingAnchor];
  pillBackgroundView = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  trailingAnchor2 = [pillBackgroundView trailingAnchor];
  v43 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  [v43 setActive:1];

  disclosureChevronView7 = [(WDMedicalRecordStandaloneImageCell *)self disclosureChevronView];
  centerYAnchor = [disclosureChevronView7 centerYAnchor];
  pillBackgroundView2 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  centerYAnchor2 = [pillBackgroundView2 centerYAnchor];
  v48 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v48 setActive:1];

  detailLabel6 = [(WDMedicalRecordStandaloneImageCell *)self detailLabel];
  leadingAnchor = [detailLabel6 leadingAnchor];
  titleLabel6 = [(WDMedicalRecordStandaloneImageCell *)self titleLabel];
  trailingAnchor3 = [titleLabel6 trailingAnchor];
  v53 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor3 constant:16.0];
  [v53 setActive:1];

  detailLabel7 = [(WDMedicalRecordStandaloneImageCell *)self detailLabel];
  trailingAnchor4 = [detailLabel7 trailingAnchor];
  disclosureChevronView8 = [(WDMedicalRecordStandaloneImageCell *)self disclosureChevronView];
  leadingAnchor2 = [disclosureChevronView8 leadingAnchor];
  v58 = [trailingAnchor4 constraintEqualToAnchor:leadingAnchor2 constant:-16.0];
  [v58 setActive:1];

  detailLabel8 = [(WDMedicalRecordStandaloneImageCell *)self detailLabel];
  firstBaselineAnchor = [detailLabel8 firstBaselineAnchor];
  titleLabel7 = [(WDMedicalRecordStandaloneImageCell *)self titleLabel];
  firstBaselineAnchor2 = [titleLabel7 firstBaselineAnchor];
  v63 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2 constant:0.0];
  [v63 setActive:1];

  titleLabel8 = [(WDMedicalRecordStandaloneImageCell *)self titleLabel];
  leadingAnchor3 = [titleLabel8 leadingAnchor];
  titleImageView5 = [(WDMedicalRecordStandaloneImageCell *)self titleImageView];
  trailingAnchor5 = [titleImageView5 trailingAnchor];
  v68 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor5 constant:16.0];
  [v68 setActive:1];

  titleLabel9 = [(WDMedicalRecordStandaloneImageCell *)self titleLabel];
  topAnchor = [titleLabel9 topAnchor];
  pillBackgroundView3 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  topAnchor2 = [pillBackgroundView3 topAnchor];
  v73 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
  [v73 setActive:1];

  titleImageView6 = [(WDMedicalRecordStandaloneImageCell *)self titleImageView];
  leadingAnchor4 = [titleImageView6 leadingAnchor];
  pillBackgroundView4 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  leadingAnchor5 = [pillBackgroundView4 leadingAnchor];
  v78 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:16.0];
  [v78 setActive:1];

  titleImageView7 = [(WDMedicalRecordStandaloneImageCell *)self titleImageView];
  centerYAnchor3 = [titleImageView7 centerYAnchor];
  pillBackgroundView5 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  centerYAnchor4 = [pillBackgroundView5 centerYAnchor];
  v83 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [v83 setActive:1];

  pillBackgroundView6 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  bottomAnchor = [pillBackgroundView6 bottomAnchor];
  titleLabel10 = [(WDMedicalRecordStandaloneImageCell *)self titleLabel];
  bottomAnchor2 = [titleLabel10 bottomAnchor];
  v88 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:16.0];
  [v88 setActive:1];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  titleLabel = [(WDMedicalRecordStandaloneImageCell *)self titleLabel];
  [titleLabel setText:titleCopy];
}

- (NSString)title
{
  titleLabel = [(WDMedicalRecordStandaloneImageCell *)self titleLabel];
  text = [titleLabel text];

  return text;
}

- (void)setDetail:(id)detail
{
  detailCopy = detail;
  detailLabel = [(WDMedicalRecordStandaloneImageCell *)self detailLabel];
  [detailLabel setText:detailCopy];
}

- (NSString)detail
{
  detailLabel = [(WDMedicalRecordStandaloneImageCell *)self detailLabel];
  text = [detailLabel text];

  return text;
}

- (void)setTitleImage:(id)image
{
  imageCopy = image;
  titleImageView = [(WDMedicalRecordStandaloneImageCell *)self titleImageView];
  [titleImageView setImage:imageCopy];
}

- (UIImage)titleImage
{
  titleImageView = [(WDMedicalRecordStandaloneImageCell *)self titleImageView];
  image = [titleImageView image];

  return image;
}

- (void)_updateForCurrentSizeCategory
{
  v8.receiver = self;
  v8.super_class = WDMedicalRecordStandaloneImageCell;
  [(WDMedicalRecordGroupableCell *)&v8 _updateForCurrentSizeCategory];
  v3 = *MEMORY[0x1E69DDCF8];
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  detailLabel = [(WDMedicalRecordStandaloneImageCell *)self detailLabel];
  [detailLabel setFont:v4];

  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v3];
  titleLabel = [(WDMedicalRecordStandaloneImageCell *)self titleLabel];
  [titleLabel setFont:v6];
}

@end