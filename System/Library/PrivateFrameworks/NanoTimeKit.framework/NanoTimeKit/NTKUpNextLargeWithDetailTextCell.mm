@interface NTKUpNextLargeWithDetailTextCell
- (NTKUpNextLargeWithDetailTextCell)initWithFrame:(CGRect)a3;
- (id)backgroundColorForView:(id)a3;
- (id)colorForView:(id)a3 accented:(BOOL)a4;
- (id)filterForView:(id)a3 style:(int64_t)a4;
- (id)filterForView:(id)a3 style:(int64_t)a4 fraction:(double)a5;
- (id)filtersForView:(id)a3 style:(int64_t)a4;
- (id)filtersForView:(id)a3 style:(int64_t)a4 fraction:(double)a5;
- (void)configureWithContent:(id)a3;
- (void)prepareForReuse;
- (void)setPaused:(BOOL)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKUpNextLargeWithDetailTextCell

- (NTKUpNextLargeWithDetailTextCell)initWithFrame:(CGRect)a3
{
  v133[18] = *MEMORY[0x277D85DE8];
  v132.receiver = self;
  v132.super_class = NTKUpNextLargeWithDetailTextCell;
  v3 = [(NTKUpNextBaseCell *)&v132 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v131 = 0.0;
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v124 = 0u;
    v5 = [(NTKUpNextBaseCell *)v3 device];
    ___LayoutConstants_block_invoke_25(v5, &v124);

    v6 = *(&v127 + 1);
    v7 = [MEMORY[0x277CBBB08] systemFontOfSize:*(&v127 + 1)];
    v8 = [v7 fontDescriptor];
    v122 = [v8 fontDescriptorWithSymbolicTraits:2];

    v9 = *MEMORY[0x277D74418];
    v10 = [MEMORY[0x277CBBB08] systemFontOfSize:*&v128 weight:*MEMORY[0x277D74418]];
    v120 = [v10 CLKFontWithAlternativePunctuation];

    v121 = [MEMORY[0x277CBBB08] fontWithDescriptor:v122 size:v6];
    v11 = [MEMORY[0x277CBBB08] systemFontOfSize:*&v127 weight:v9];
    v12 = [v11 CLKFontWithAlternativePunctuation];
    v123 = [v12 CLKFontWithMonospacedNumbers];

    v13 = objc_alloc_init(MEMORY[0x277D756D0]);
    contentLayoutGuide = v4->_contentLayoutGuide;
    v4->_contentLayoutGuide = v13;

    v15 = [off_27877BEF8 alloc];
    v16 = *MEMORY[0x277CBF3A0];
    v17 = *(MEMORY[0x277CBF3A0] + 8);
    v18 = *(MEMORY[0x277CBF3A0] + 16);
    v19 = *(MEMORY[0x277CBF3A0] + 24);
    v20 = [v15 initWithFrame:4 options:{*MEMORY[0x277CBF3A0], v17, v18, v19}];
    headerLabel = v4->_headerLabel;
    v4->_headerLabel = v20;

    [(CLKUIColoringLabel *)v4->_headerLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CLKUIColoringLabel *)v4->_headerLabel setLineBreakMode:4];
    [(CLKUIColoringLabel *)v4->_headerLabel setNowProvider:&__block_literal_global_65];
    [(CLKUIColoringLabel *)v4->_headerLabel setFont:v121];
    v22 = v4->_headerLabel;
    v23 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v22 setTextColor:v23];

    v24 = [[off_27877BEF8 alloc] initWithFrame:2 options:{v16, v17, v18, v19}];
    bodyLabel = v4->_bodyLabel;
    v4->_bodyLabel = v24;

    [(CLKUIColoringLabel *)v4->_bodyLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CLKUIColoringLabel *)v4->_bodyLabel setLineBreakMode:4];
    [(CLKUIColoringLabel *)v4->_bodyLabel setNowProvider:&__block_literal_global_65];
    [(CLKUIColoringLabel *)v4->_bodyLabel setFont:v120];
    v26 = v4->_bodyLabel;
    v27 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v26 setTextColor:v27];

    [(CLKUIColoringLabel *)v4->_bodyLabel setMinimumScaleFactor:0.3];
    [(CLKUIColoringLabel *)v4->_bodyLabel setAdjustsFontSizeToFitWidth:1];
    [(CLKUIColoringLabel *)v4->_bodyLabel setBaselineAdjustment:0];
    [(CLKUIColoringLabel *)v4->_bodyLabel setNumberOfLines:1];
    LODWORD(v28) = 1132068864;
    [(CLKUIColoringLabel *)v4->_bodyLabel setContentCompressionResistancePriority:0 forAxis:v28];
    LODWORD(v29) = 1148846080;
    [(CLKUIColoringLabel *)v4->_bodyLabel setContentHuggingPriority:0 forAxis:v29];
    v30 = [[NTKUpNextImageView alloc] initWithFrame:v4 parentCell:v16, v17, v18, v19];
    bodyImage = v4->_bodyImage;
    v4->_bodyImage = v30;

    LODWORD(v32) = 1148846080;
    [(NTKUpNextImageView *)v4->_bodyImage setContentHuggingPriority:0 forAxis:v32];
    LODWORD(v33) = 1148846080;
    [(NTKUpNextImageView *)v4->_bodyImage setContentHuggingPriority:1 forAxis:v33];
    LODWORD(v34) = 1148846080;
    [(NTKUpNextImageView *)v4->_bodyImage setContentCompressionResistancePriority:0 forAxis:v34];
    LODWORD(v35) = 1148846080;
    [(NTKUpNextImageView *)v4->_bodyImage setContentCompressionResistancePriority:1 forAxis:v35];
    [(NTKUpNextImageView *)v4->_bodyImage setTranslatesAutoresizingMaskIntoConstraints:0];
    [(NTKUpNextImageView *)v4->_bodyImage setFilterProvider:v4];
    v36 = [[off_27877BEF8 alloc] initWithFrame:4 options:{v16, v17, v18, v19}];
    detail1Label = v4->_detail1Label;
    v4->_detail1Label = v36;

    [(CLKUIColoringLabel *)v4->_detail1Label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CLKUIColoringLabel *)v4->_detail1Label setLineBreakMode:4];
    [(CLKUIColoringLabel *)v4->_detail1Label setTextAlignment:2];
    [(CLKUIColoringLabel *)v4->_detail1Label setNowProvider:&__block_literal_global_65];
    [(CLKUIColoringLabel *)v4->_detail1Label setFont:v123];
    v38 = v4->_detail1Label;
    v39 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v38 setTextColor:v39];

    LODWORD(v40) = 1148846080;
    [(CLKUIColoringLabel *)v4->_detail1Label setContentCompressionResistancePriority:0 forAxis:v40];
    LODWORD(v41) = 1132068864;
    [(CLKUIColoringLabel *)v4->_detail1Label setContentHuggingPriority:0 forAxis:v41];
    v42 = [[off_27877BEF8 alloc] initWithFrame:4 options:{v16, v17, v18, v19}];
    detail2Label = v4->_detail2Label;
    v4->_detail2Label = v42;

    [(CLKUIColoringLabel *)v4->_detail2Label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CLKUIColoringLabel *)v4->_detail2Label setLineBreakMode:4];
    [(CLKUIColoringLabel *)v4->_detail2Label setTextAlignment:2];
    [(CLKUIColoringLabel *)v4->_detail2Label setNowProvider:&__block_literal_global_65];
    [(CLKUIColoringLabel *)v4->_detail2Label setFont:v123];
    v44 = v4->_detail2Label;
    v45 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v44 setTextColor:v45];

    LODWORD(v46) = 1148846080;
    [(CLKUIColoringLabel *)v4->_detail2Label setContentCompressionResistancePriority:0 forAxis:v46];
    LODWORD(v47) = 1132068864;
    [(CLKUIColoringLabel *)v4->_detail2Label setContentHuggingPriority:0 forAxis:v47];
    v48 = [(NTKUpNextLargeWithDetailTextCell *)v4 contentView];
    [v48 addLayoutGuide:v4->_contentLayoutGuide];

    v49 = [(NTKUpNextLargeWithDetailTextCell *)v4 contentView];
    [v49 addSubview:v4->_headerLabel];

    v50 = [(NTKUpNextLargeWithDetailTextCell *)v4 contentView];
    [v50 addSubview:v4->_bodyLabel];

    v51 = [(NTKUpNextLargeWithDetailTextCell *)v4 contentView];
    [v51 addSubview:v4->_bodyImage];

    v52 = [(NTKUpNextLargeWithDetailTextCell *)v4 contentView];
    [v52 addSubview:v4->_detail1Label];

    v53 = [(NTKUpNextLargeWithDetailTextCell *)v4 contentView];
    [v53 addSubview:v4->_detail2Label];

    v54 = [MEMORY[0x277CBEAF8] currentLocale];
    v55 = [v54 languageCode];
    v56 = [v55 lowercaseString];
    v57 = [v56 isEqualToString:@"th"];

    if (v57)
    {
      v58 = 3.0;
    }

    else
    {
      v58 = 0.0;
    }

    v118 = [(UILayoutGuide *)v4->_contentLayoutGuide topAnchor];
    v119 = [(NTKUpNextLargeWithDetailTextCell *)v4 contentView];
    v117 = [v119 topAnchor];
    v116 = [v118 constraintEqualToAnchor:v117 constant:*(&v129 + 1)];
    v133[0] = v116;
    v114 = [(UILayoutGuide *)v4->_contentLayoutGuide bottomAnchor];
    v115 = [(NTKUpNextLargeWithDetailTextCell *)v4 contentView];
    v113 = [v115 bottomAnchor];
    v112 = [v114 constraintEqualToAnchor:v113 constant:-*(&v130 + 1)];
    v133[1] = v112;
    v110 = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    v111 = [(NTKUpNextLargeWithDetailTextCell *)v4 contentView];
    v109 = [v111 leadingAnchor];
    v108 = [v110 constraintEqualToAnchor:v109 constant:*&v130];
    v133[2] = v108;
    v106 = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    v107 = [(NTKUpNextLargeWithDetailTextCell *)v4 contentView];
    v105 = [v107 trailingAnchor];
    v104 = [v106 constraintEqualToAnchor:v105 constant:-v131];
    v133[3] = v104;
    v103 = [(CLKUIColoringLabel *)v4->_headerLabel firstBaselineAnchor];
    v102 = [(UILayoutGuide *)v4->_contentLayoutGuide topAnchor];
    v101 = [v103 constraintEqualToAnchor:v102 constant:*&v124];
    v133[4] = v101;
    v100 = [(CLKUIColoringLabel *)v4->_headerLabel leadingAnchor];
    v99 = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    v98 = [v100 constraintEqualToAnchor:v99];
    v133[5] = v98;
    v97 = [(CLKUIColoringLabel *)v4->_headerLabel trailingAnchor];
    v96 = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    v95 = [v97 constraintEqualToAnchor:v96];
    v133[6] = v95;
    v94 = [(CLKUIColoringLabel *)v4->_bodyLabel firstBaselineAnchor];
    v93 = [(CLKUIColoringLabel *)v4->_headerLabel firstBaselineAnchor];
    v92 = [v94 constraintEqualToAnchor:v93 constant:*(&v124 + 1)];
    v133[7] = v92;
    v91 = [(CLKUIColoringLabel *)v4->_bodyLabel lastBaselineAnchor];
    v90 = [(UILayoutGuide *)v4->_contentLayoutGuide bottomAnchor];
    v59 = -*(&v128 + 1);
    v89 = [v91 constraintEqualToAnchor:v90 constant:-*(&v128 + 1)];
    v133[8] = v89;
    v88 = [(NTKUpNextImageView *)v4->_bodyImage bottomAnchor];
    v87 = [(CLKUIColoringLabel *)v4->_bodyLabel firstBaselineAnchor];
    v86 = [v88 constraintEqualToAnchor:v87];
    v133[9] = v86;
    v85 = [(CLKUIColoringLabel *)v4->_detail2Label firstBaselineAnchor];
    v84 = [(UILayoutGuide *)v4->_contentLayoutGuide bottomAnchor];
    v83 = [v85 constraintEqualToAnchor:v84 constant:v59];
    v133[10] = v83;
    v82 = [(CLKUIColoringLabel *)v4->_detail1Label firstBaselineAnchor];
    v81 = [(CLKUIColoringLabel *)v4->_detail2Label firstBaselineAnchor];
    v80 = [v82 constraintEqualToAnchor:v81 constant:-(v58 + *&v129)];
    v133[11] = v80;
    v79 = [(CLKUIColoringLabel *)v4->_detail2Label leadingAnchor];
    v78 = [(CLKUIColoringLabel *)v4->_detail1Label leadingAnchor];
    v77 = [v79 constraintEqualToAnchor:v78];
    v133[12] = v77;
    v76 = [(CLKUIColoringLabel *)v4->_detail2Label trailingAnchor];
    v75 = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    v74 = [v76 constraintEqualToAnchor:v75];
    v133[13] = v74;
    v73 = [(CLKUIColoringLabel *)v4->_bodyLabel leadingAnchor];
    v72 = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    v71 = [v73 constraintEqualToAnchor:v72];
    v133[14] = v71;
    v70 = [(NTKUpNextImageView *)v4->_bodyImage leadingAnchor];
    v60 = [(CLKUIColoringLabel *)v4->_bodyLabel trailingAnchor];
    v61 = [v70 constraintEqualToAnchor:v60 constant:*&v125];
    v133[15] = v61;
    v62 = [(CLKUIColoringLabel *)v4->_detail1Label leadingAnchor];
    v63 = [(NTKUpNextImageView *)v4->_bodyImage trailingAnchor];
    v64 = [v62 constraintEqualToAnchor:v63 constant:*(&v125 + 1)];
    v133[16] = v64;
    v65 = [(CLKUIColoringLabel *)v4->_detail1Label trailingAnchor];
    v66 = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    v67 = [v65 constraintEqualToAnchor:v66];
    v133[17] = v67;
    v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v133 count:18];

    [MEMORY[0x277CCAAD0] activateConstraints:v68];
  }

  return v4;
}

- (void)configureWithContent:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = NTKUpNextLargeWithDetailTextCell;
  [(NTKUpNextBaseCell *)&v27 configureWithContent:v4];
  bodyImage = self->_bodyImage;
  v6 = [v4 tintColor];
  [(NTKUpNextImageView *)bodyImage setFallbackTintColor:v6];

  v7 = self->_bodyImage;
  v8 = [v4 overrideBodyImage];
  v9 = [v4 bodyImageProvider];
  [(NTKUpNextImageView *)v7 setFullColorImage:v8 tintableImageProvider:v9];

  v10 = self->_bodyImage;
  v11 = [v4 bodyImageCompositingFilter];
  [(NTKUpNextImageView *)v10 setCompositingFilter:v11];

  v12 = [v4 tintColorAffectsHeader];
  headerLabel = self->_headerLabel;
  if (v12)
  {
    [v4 tintColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v14 = ;
  [(CLKUIColoringLabel *)headerLabel setTextColor:v14];

  [NTKUpNextBaseCell clearLabel:self->_headerLabel];
  v15 = self->_headerLabel;
  v16 = [v4 headerTextProvider];
  [(CLKUIColoringLabel *)v15 setTextProvider:v16];

  [NTKUpNextBaseCell clearLabel:self->_bodyLabel];
  bodyLabel = self->_bodyLabel;
  v18 = [v4 description1TextProvider];
  [(CLKUIColoringLabel *)bodyLabel setTextProvider:v18];

  [NTKUpNextBaseCell clearLabel:self->_detail1Label];
  detail1Label = self->_detail1Label;
  v20 = [v4 description2TextProvider];
  [(CLKUIColoringLabel *)detail1Label setTextProvider:v20];

  [NTKUpNextBaseCell clearLabel:self->_detail2Label];
  detail2Label = self->_detail2Label;
  v22 = [v4 description3TextProvider];
  [(CLKUIColoringLabel *)detail2Label setTextProvider:v22];

  v23 = [v4 headerTextProvider];
  [v23 setPaused:{-[NTKUpNextBaseCell isPaused](self, "isPaused")}];

  v24 = [v4 description1TextProvider];
  [v24 setPaused:{-[NTKUpNextBaseCell isPaused](self, "isPaused")}];

  v25 = [v4 description2TextProvider];
  [v25 setPaused:{-[NTKUpNextBaseCell isPaused](self, "isPaused")}];

  v26 = [v4 description3TextProvider];
  [v26 setPaused:{-[NTKUpNextBaseCell isPaused](self, "isPaused")}];
}

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = NTKUpNextLargeWithDetailTextCell;
  [(NTKUpNextBaseCell *)&v9 setPaused:?];
  v5 = [(CLKUIColoringLabel *)self->_headerLabel textProvider];
  [v5 setPaused:v3];

  v6 = [(CLKUIColoringLabel *)self->_bodyLabel textProvider];
  [v6 setPaused:v3];

  v7 = [(CLKUIColoringLabel *)self->_detail1Label textProvider];
  [v7 setPaused:v3];

  v8 = [(CLKUIColoringLabel *)self->_detail2Label textProvider];
  [v8 setPaused:v3];
}

- (id)filtersForView:(id)a3 style:(int64_t)a4
{
  if (self->_bodyImage == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = a4;
  }

  v6 = a3;
  v7 = [(NTKUpNextBaseCell *)self filterProvider];
  v8 = [v7 filtersForView:v6 style:v5];

  return v8;
}

- (id)filtersForView:(id)a3 style:(int64_t)a4 fraction:(double)a5
{
  if (self->_bodyImage == a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a4;
  }

  v8 = a3;
  v9 = [(NTKUpNextBaseCell *)self filterProvider];
  v10 = [v9 filtersForView:v8 style:v7 fraction:a5];

  return v10;
}

- (id)filterForView:(id)a3 style:(int64_t)a4 fraction:(double)a5
{
  if (self->_bodyImage == a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a4;
  }

  v8 = a3;
  v9 = [(NTKUpNextBaseCell *)self filterProvider];
  v10 = [v9 filterForView:v8 style:v7 fraction:a5];

  return v10;
}

- (id)filterForView:(id)a3 style:(int64_t)a4
{
  if (self->_bodyImage == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = a4;
  }

  v6 = a3;
  v7 = [(NTKUpNextBaseCell *)self filterProvider];
  v8 = [v7 filterForView:v6 style:v5];

  return v8;
}

- (id)colorForView:(id)a3 accented:(BOOL)a4
{
  v5 = self->_bodyImage != a3 && a4;
  v6 = a3;
  v7 = [(NTKUpNextBaseCell *)self filterProvider];
  v8 = [v7 colorForView:v6 accented:v5];

  return v8;
}

- (id)backgroundColorForView:(id)a3
{
  v4 = a3;
  v5 = [(NTKUpNextBaseCell *)self filterProvider];
  v6 = [v5 backgroundColorForView:v4];

  return v6;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = NTKUpNextLargeWithDetailTextCell;
  [(NTKUpNextBaseCell *)&v4 prepareForReuse];
  [(NTKUpNextImageView *)self->_bodyImage transitionToMonochromeWithFraction:0.0];
  v3 = [(CLKUIColoringLabel *)self->_headerLabel layer];
  [v3 setFilters:0];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  [(NTKUpNextImageView *)self->_bodyImage transitionToMonochromeWithFraction:?];
  if (fabs(a3) >= 0.00000011920929)
  {
    v5 = [(NTKUpNextBaseCell *)self filterProvider];
    v8 = [v5 filtersForView:self style:2 fraction:a3];

    v6 = v8;
    if (!v8)
    {
      goto LABEL_6;
    }

    v7 = [(CLKUIColoringLabel *)self->_headerLabel layer];
    [v7 setFilters:v8];
  }

  else
  {
    v8 = [(CLKUIColoringLabel *)self->_headerLabel layer];
    [v8 setFilters:0];
  }

  v6 = v8;
LABEL_6:
}

- (void)updateMonochromeColor
{
  [(NTKUpNextImageView *)self->_bodyImage updateMonochromeColor];
  v3 = [(NTKUpNextBaseCell *)self filterProvider];
  v5 = [v3 filtersForView:self style:2];

  if (v5)
  {
    v4 = [(CLKUIColoringLabel *)self->_headerLabel layer];
    [v4 setFilters:v5];
  }
}

@end