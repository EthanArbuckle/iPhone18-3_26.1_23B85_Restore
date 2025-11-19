@interface WDMedicalRecordStandaloneImageCell
- (NSString)detail;
- (NSString)title;
- (UIImage)titleImage;
- (void)_updateForCurrentSizeCategory;
- (void)setDetail:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTitleImage:(id)a3;
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

  v4 = [(WDMedicalRecordStandaloneImageCell *)self disclosureChevronView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [MEMORY[0x1E69DCAB8] hk_disclosureChevronImage];
  v6 = [(WDMedicalRecordStandaloneImageCell *)self disclosureChevronView];
  [v6 setImage:v5];

  v7 = [(WDMedicalRecordStandaloneImageCell *)self disclosureChevronView];
  LODWORD(v8) = 1144750080;
  [v7 setContentHuggingPriority:0 forAxis:v8];

  v9 = [(WDMedicalRecordStandaloneImageCell *)self disclosureChevronView];
  LODWORD(v10) = 1148846080;
  [v9 setContentCompressionResistancePriority:0 forAxis:v10];

  v11 = [(WDMedicalRecordStandaloneImageCell *)self contentView];
  v12 = [(WDMedicalRecordStandaloneImageCell *)self disclosureChevronView];
  [v11 addSubview:v12];

  v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(WDMedicalRecordStandaloneImageCell *)self setDetailLabel:v13];

  v14 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  v15 = [(WDMedicalRecordStandaloneImageCell *)self detailLabel];
  [v15 setTextColor:v14];

  v16 = [(WDMedicalRecordStandaloneImageCell *)self detailLabel];
  [v16 setNumberOfLines:0];

  v17 = [(WDMedicalRecordStandaloneImageCell *)self detailLabel];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

  v18 = [(WDMedicalRecordStandaloneImageCell *)self detailLabel];
  LODWORD(v19) = 1148846080;
  [v18 setContentCompressionResistancePriority:0 forAxis:v19];

  v20 = [(WDMedicalRecordStandaloneImageCell *)self contentView];
  v21 = [(WDMedicalRecordStandaloneImageCell *)self detailLabel];
  [v20 addSubview:v21];

  v22 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(WDMedicalRecordStandaloneImageCell *)self setTitleLabel:v22];

  v23 = [MEMORY[0x1E69DC888] labelColor];
  v24 = [(WDMedicalRecordStandaloneImageCell *)self titleLabel];
  [v24 setTextColor:v23];

  v25 = [(WDMedicalRecordStandaloneImageCell *)self titleLabel];
  [v25 setNumberOfLines:0];

  v26 = [(WDMedicalRecordStandaloneImageCell *)self titleLabel];
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

  v27 = [(WDMedicalRecordStandaloneImageCell *)self titleLabel];
  LODWORD(v28) = 1144750080;
  [v27 setContentHuggingPriority:0 forAxis:v28];

  v29 = [(WDMedicalRecordStandaloneImageCell *)self contentView];
  v30 = [(WDMedicalRecordStandaloneImageCell *)self titleLabel];
  [v29 addSubview:v30];

  [(WDMedicalRecordStandaloneImageCell *)self _updateForCurrentSizeCategory];
  v31 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [(WDMedicalRecordStandaloneImageCell *)self setTitleImageView:v31];

  v32 = [(WDMedicalRecordStandaloneImageCell *)self titleImageView];
  [v32 setTranslatesAutoresizingMaskIntoConstraints:0];

  v33 = [(WDMedicalRecordStandaloneImageCell *)self titleImageView];
  LODWORD(v34) = 1144750080;
  [v33 setContentHuggingPriority:0 forAxis:v34];

  v35 = [(WDMedicalRecordStandaloneImageCell *)self titleImageView];
  LODWORD(v36) = 1148846080;
  [v35 setContentCompressionResistancePriority:0 forAxis:v36];

  v37 = [(WDMedicalRecordStandaloneImageCell *)self contentView];
  v38 = [(WDMedicalRecordStandaloneImageCell *)self titleImageView];
  [v37 addSubview:v38];

  v39 = [(WDMedicalRecordStandaloneImageCell *)self disclosureChevronView];
  v40 = [v39 trailingAnchor];
  v41 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v42 = [v41 trailingAnchor];
  v43 = [v40 constraintEqualToAnchor:v42 constant:-16.0];
  [v43 setActive:1];

  v44 = [(WDMedicalRecordStandaloneImageCell *)self disclosureChevronView];
  v45 = [v44 centerYAnchor];
  v46 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v47 = [v46 centerYAnchor];
  v48 = [v45 constraintEqualToAnchor:v47];
  [v48 setActive:1];

  v49 = [(WDMedicalRecordStandaloneImageCell *)self detailLabel];
  v50 = [v49 leadingAnchor];
  v51 = [(WDMedicalRecordStandaloneImageCell *)self titleLabel];
  v52 = [v51 trailingAnchor];
  v53 = [v50 constraintGreaterThanOrEqualToAnchor:v52 constant:16.0];
  [v53 setActive:1];

  v54 = [(WDMedicalRecordStandaloneImageCell *)self detailLabel];
  v55 = [v54 trailingAnchor];
  v56 = [(WDMedicalRecordStandaloneImageCell *)self disclosureChevronView];
  v57 = [v56 leadingAnchor];
  v58 = [v55 constraintEqualToAnchor:v57 constant:-16.0];
  [v58 setActive:1];

  v59 = [(WDMedicalRecordStandaloneImageCell *)self detailLabel];
  v60 = [v59 firstBaselineAnchor];
  v61 = [(WDMedicalRecordStandaloneImageCell *)self titleLabel];
  v62 = [v61 firstBaselineAnchor];
  v63 = [v60 constraintEqualToAnchor:v62 constant:0.0];
  [v63 setActive:1];

  v64 = [(WDMedicalRecordStandaloneImageCell *)self titleLabel];
  v65 = [v64 leadingAnchor];
  v66 = [(WDMedicalRecordStandaloneImageCell *)self titleImageView];
  v67 = [v66 trailingAnchor];
  v68 = [v65 constraintEqualToAnchor:v67 constant:16.0];
  [v68 setActive:1];

  v69 = [(WDMedicalRecordStandaloneImageCell *)self titleLabel];
  v70 = [v69 topAnchor];
  v71 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v72 = [v71 topAnchor];
  v73 = [v70 constraintEqualToAnchor:v72 constant:16.0];
  [v73 setActive:1];

  v74 = [(WDMedicalRecordStandaloneImageCell *)self titleImageView];
  v75 = [v74 leadingAnchor];
  v76 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v77 = [v76 leadingAnchor];
  v78 = [v75 constraintEqualToAnchor:v77 constant:16.0];
  [v78 setActive:1];

  v79 = [(WDMedicalRecordStandaloneImageCell *)self titleImageView];
  v80 = [v79 centerYAnchor];
  v81 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v82 = [v81 centerYAnchor];
  v83 = [v80 constraintEqualToAnchor:v82];
  [v83 setActive:1];

  v84 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v85 = [v84 bottomAnchor];
  v86 = [(WDMedicalRecordStandaloneImageCell *)self titleLabel];
  v87 = [v86 bottomAnchor];
  v88 = [v85 constraintEqualToAnchor:v87 constant:16.0];
  [v88 setActive:1];
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(WDMedicalRecordStandaloneImageCell *)self titleLabel];
  [v5 setText:v4];
}

- (NSString)title
{
  v2 = [(WDMedicalRecordStandaloneImageCell *)self titleLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setDetail:(id)a3
{
  v4 = a3;
  v5 = [(WDMedicalRecordStandaloneImageCell *)self detailLabel];
  [v5 setText:v4];
}

- (NSString)detail
{
  v2 = [(WDMedicalRecordStandaloneImageCell *)self detailLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setTitleImage:(id)a3
{
  v4 = a3;
  v5 = [(WDMedicalRecordStandaloneImageCell *)self titleImageView];
  [v5 setImage:v4];
}

- (UIImage)titleImage
{
  v2 = [(WDMedicalRecordStandaloneImageCell *)self titleImageView];
  v3 = [v2 image];

  return v3;
}

- (void)_updateForCurrentSizeCategory
{
  v8.receiver = self;
  v8.super_class = WDMedicalRecordStandaloneImageCell;
  [(WDMedicalRecordGroupableCell *)&v8 _updateForCurrentSizeCategory];
  v3 = *MEMORY[0x1E69DDCF8];
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v5 = [(WDMedicalRecordStandaloneImageCell *)self detailLabel];
  [v5 setFont:v4];

  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v3];
  v7 = [(WDMedicalRecordStandaloneImageCell *)self titleLabel];
  [v7 setFont:v6];
}

@end