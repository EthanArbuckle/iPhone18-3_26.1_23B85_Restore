@interface NTKUpNextLargeTextCell
- (NTKUpNextLargeTextCell)initWithFrame:(CGRect)a3;
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
- (void)updateConstraints;
- (void)updateMonochromeColor;
@end

@implementation NTKUpNextLargeTextCell

- (NTKUpNextLargeTextCell)initWithFrame:(CGRect)a3
{
  v147[9] = *MEMORY[0x277D85DE8];
  v141.receiver = self;
  v141.super_class = NTKUpNextLargeTextCell;
  v3 = [(NTKUpNextBaseCell *)&v141 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v140 = 0.0;
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v135 = 0u;
    v5 = [(NTKUpNextBaseCell *)v3 device];
    ___LayoutConstants_block_invoke_28(v5, &v135);

    v6 = *(&v136 + 1);
    v7 = [MEMORY[0x277CBBB08] systemFontOfSize:*(&v136 + 1)];
    v8 = [v7 fontDescriptor];
    v134 = [v8 fontDescriptorWithSymbolicTraits:2];

    v9 = [MEMORY[0x277CBBB08] systemFontOfSize:*&v137 weight:*MEMORY[0x277D74418]];
    v10 = [v9 CLKFontWithAlternativePunctuation];
    standardBodyFont = v4->_standardBodyFont;
    v4->_standardBodyFont = v10;

    v12 = [(CLKFont *)v4->_standardBodyFont CLKFontWithMonospacedNumbers];
    monospaceBodyFont = v4->_monospaceBodyFont;
    v4->_monospaceBodyFont = v12;

    v14 = [MEMORY[0x277CBBB08] fontWithDescriptor:v134 size:v6];
    v15 = objc_alloc_init(MEMORY[0x277D756D0]);
    contentLayoutGuide = v4->_contentLayoutGuide;
    v4->_contentLayoutGuide = v15;

    v17 = [off_27877BEF8 alloc];
    v18 = *MEMORY[0x277CBF3A0];
    v19 = *(MEMORY[0x277CBF3A0] + 8);
    v20 = *(MEMORY[0x277CBF3A0] + 16);
    v21 = *(MEMORY[0x277CBF3A0] + 24);
    v22 = [v17 initWithFrame:4 options:{*MEMORY[0x277CBF3A0], v19, v20, v21}];
    headerLabel = v4->_headerLabel;
    v4->_headerLabel = v22;

    [(CLKUIColoringLabel *)v4->_headerLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CLKUIColoringLabel *)v4->_headerLabel setLineBreakMode:4];
    [(CLKUIColoringLabel *)v4->_headerLabel setNowProvider:&__block_literal_global_82];
    v133 = v14;
    [(CLKUIColoringLabel *)v4->_headerLabel setFont:v14];
    v24 = v4->_headerLabel;
    v25 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v24 setTextColor:v25];

    v26 = [[off_27877BEF8 alloc] initWithFrame:6 options:{v18, v19, v20, v21}];
    bodyLabel = v4->_bodyLabel;
    v4->_bodyLabel = v26;

    [(CLKUIColoringLabel *)v4->_bodyLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CLKUIColoringLabel *)v4->_bodyLabel setLineBreakMode:4];
    [(CLKUIColoringLabel *)v4->_bodyLabel setNowProvider:&__block_literal_global_82];
    [(CLKUIColoringLabel *)v4->_bodyLabel setFont:v4->_standardBodyFont];
    v28 = v4->_bodyLabel;
    v29 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v28 setTextColor:v29];

    [(CLKUIColoringLabel *)v4->_bodyLabel setMinimumScaleFactor:0.75];
    [(CLKUIColoringLabel *)v4->_bodyLabel setAdjustsFontSizeToFitWidth:1];
    [(CLKUIColoringLabel *)v4->_bodyLabel setBaselineAdjustment:0];
    [(CLKUIColoringLabel *)v4->_bodyLabel setNumberOfLines:1];
    v30 = [[NTKUpNextImageView alloc] initWithFrame:v4 parentCell:v18, v19, v20, v21];
    headerImage = v4->_headerImage;
    v4->_headerImage = v30;

    LODWORD(v32) = 1148846080;
    [(NTKUpNextImageView *)v4->_headerImage setContentHuggingPriority:0 forAxis:v32];
    LODWORD(v33) = 1148846080;
    [(NTKUpNextImageView *)v4->_headerImage setContentHuggingPriority:1 forAxis:v33];
    LODWORD(v34) = 1148846080;
    [(NTKUpNextImageView *)v4->_headerImage setContentCompressionResistancePriority:0 forAxis:v34];
    LODWORD(v35) = 1148846080;
    [(NTKUpNextImageView *)v4->_headerImage setContentCompressionResistancePriority:1 forAxis:v35];
    [(NTKUpNextImageView *)v4->_headerImage setFilterProvider:v4];
    [(NTKUpNextImageView *)v4->_headerImage setTranslatesAutoresizingMaskIntoConstraints:0];
    v36 = [[NTKUpNextImageView alloc] initWithFrame:v4 parentCell:v18, v19, v20, v21];
    bodyImage = v4->_bodyImage;
    v4->_bodyImage = v36;

    LODWORD(v38) = 1148846080;
    [(NTKUpNextImageView *)v4->_bodyImage setContentHuggingPriority:0 forAxis:v38];
    LODWORD(v39) = 1148846080;
    [(NTKUpNextImageView *)v4->_bodyImage setContentHuggingPriority:1 forAxis:v39];
    LODWORD(v40) = 1148846080;
    [(NTKUpNextImageView *)v4->_bodyImage setContentCompressionResistancePriority:0 forAxis:v40];
    LODWORD(v41) = 1148846080;
    [(NTKUpNextImageView *)v4->_bodyImage setContentCompressionResistancePriority:1 forAxis:v41];
    [(NTKUpNextImageView *)v4->_bodyImage setTranslatesAutoresizingMaskIntoConstraints:0];
    [(NTKUpNextImageView *)v4->_bodyImage setFilterProvider:v4];
    v42 = [(NTKUpNextLargeTextCell *)v4 contentView];
    [v42 addLayoutGuide:v4->_contentLayoutGuide];

    v43 = [(NTKUpNextLargeTextCell *)v4 contentView];
    [v43 addSubview:v4->_headerImage];

    v44 = [(NTKUpNextLargeTextCell *)v4 contentView];
    [v44 addSubview:v4->_headerLabel];

    v45 = [(NTKUpNextLargeTextCell *)v4 contentView];
    [v45 addSubview:v4->_bodyLabel];

    v46 = [(NTKUpNextLargeTextCell *)v4 contentView];
    [v46 addSubview:v4->_bodyImage];

    [v14 capHeight];
    v47 = [(NTKUpNextBaseCell *)v4 device];
    CLKRoundForDevice();
    v49 = v48;

    v130 = [(UILayoutGuide *)v4->_contentLayoutGuide topAnchor];
    v131 = [(NTKUpNextLargeTextCell *)v4 contentView];
    v129 = [v131 topAnchor];
    v128 = [v130 constraintEqualToAnchor:v129 constant:*(&v138 + 1)];
    v147[0] = v128;
    v126 = [(UILayoutGuide *)v4->_contentLayoutGuide bottomAnchor];
    v127 = [(NTKUpNextLargeTextCell *)v4 contentView];
    v125 = [v127 bottomAnchor];
    v124 = [v126 constraintEqualToAnchor:v125 constant:-*(&v139 + 1)];
    v147[1] = v124;
    v122 = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    v123 = [(NTKUpNextLargeTextCell *)v4 contentView];
    v121 = [v123 leadingAnchor];
    v120 = [v122 constraintEqualToAnchor:v121 constant:*&v139];
    v147[2] = v120;
    v118 = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    v119 = [(NTKUpNextLargeTextCell *)v4 contentView];
    v117 = [v119 trailingAnchor];
    v116 = [v118 constraintEqualToAnchor:v117 constant:-v140];
    v147[3] = v116;
    v115 = [(NTKUpNextImageView *)v4->_headerImage centerYAnchor];
    v114 = [(CLKUIColoringLabel *)v4->_headerLabel firstBaselineAnchor];
    v113 = [v115 constraintEqualToAnchor:v114 constant:-v49];
    v147[4] = v113;
    v112 = [(CLKUIColoringLabel *)v4->_headerLabel firstBaselineAnchor];
    v111 = [(UILayoutGuide *)v4->_contentLayoutGuide topAnchor];
    v110 = [v112 constraintEqualToAnchor:v111 constant:*&v135];
    v147[5] = v110;
    v50 = [(NTKUpNextImageView *)v4->_bodyImage bottomAnchor];
    v51 = [(CLKUIColoringLabel *)v4->_bodyLabel firstBaselineAnchor];
    v52 = [v50 constraintEqualToAnchor:v51];
    v147[6] = v52;
    v53 = [(CLKUIColoringLabel *)v4->_bodyLabel firstBaselineAnchor];
    v54 = [(CLKUIColoringLabel *)v4->_headerLabel firstBaselineAnchor];
    v55 = [v53 constraintEqualToAnchor:v54 constant:*(&v135 + 1)];
    v147[7] = v55;
    v56 = [(CLKUIColoringLabel *)v4->_bodyLabel lastBaselineAnchor];
    v57 = [(UILayoutGuide *)v4->_contentLayoutGuide bottomAnchor];
    v58 = [v56 constraintEqualToAnchor:v57 constant:-*(&v137 + 1)];
    v147[8] = v58;
    v132 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:9];

    v59 = [(CLKUIColoringLabel *)v4->_headerLabel leadingAnchor];
    v60 = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    v61 = [v59 constraintEqualToAnchor:v60];
    v146[0] = v61;
    v62 = [(CLKUIColoringLabel *)v4->_headerLabel trailingAnchor];
    v63 = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    v64 = [v62 constraintEqualToAnchor:v63];
    v146[1] = v64;
    v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v146 count:2];
    headerWithNoImageConstraints = v4->_headerWithNoImageConstraints;
    v4->_headerWithNoImageConstraints = v65;

    v67 = [(NTKUpNextImageView *)v4->_headerImage leadingAnchor];
    v68 = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    v69 = [v67 constraintEqualToAnchor:v68];
    v145[0] = v69;
    v70 = [(CLKUIColoringLabel *)v4->_headerLabel leadingAnchor];
    v71 = [(NTKUpNextImageView *)v4->_headerImage trailingAnchor];
    v72 = *&v136;
    v73 = [v70 constraintEqualToAnchor:v71 constant:*&v136];
    v145[1] = v73;
    v74 = [(CLKUIColoringLabel *)v4->_headerLabel trailingAnchor];
    v75 = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    v76 = [v74 constraintEqualToAnchor:v75];
    v145[2] = v76;
    v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v145 count:3];
    headerWithLeftImageConstraints = v4->_headerWithLeftImageConstraints;
    v4->_headerWithLeftImageConstraints = v77;

    v79 = [(CLKUIColoringLabel *)v4->_headerLabel leadingAnchor];
    v80 = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    v81 = [v79 constraintEqualToAnchor:v80];
    v144[0] = v81;
    v82 = [(CLKUIColoringLabel *)v4->_headerLabel trailingAnchor];
    v83 = [(NTKUpNextImageView *)v4->_headerImage leadingAnchor];
    v84 = [v82 constraintEqualToAnchor:v83 constant:-v72];
    v144[1] = v84;
    v85 = [(NTKUpNextImageView *)v4->_headerImage trailingAnchor];
    v86 = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    v87 = [v85 constraintEqualToAnchor:v86];
    v144[2] = v87;
    v88 = [MEMORY[0x277CBEA60] arrayWithObjects:v144 count:3];
    headerWithRightImageConstraints = v4->_headerWithRightImageConstraints;
    v4->_headerWithRightImageConstraints = v88;

    v90 = [(CLKUIColoringLabel *)v4->_bodyLabel leadingAnchor];
    v91 = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    v92 = [v90 constraintEqualToAnchor:v91];
    v143[0] = v92;
    v93 = [(CLKUIColoringLabel *)v4->_bodyLabel trailingAnchor];
    v94 = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    v95 = [v93 constraintEqualToAnchor:v94];
    v143[1] = v95;
    v96 = [MEMORY[0x277CBEA60] arrayWithObjects:v143 count:2];
    bodyWithNoImageConstraints = v4->_bodyWithNoImageConstraints;
    v4->_bodyWithNoImageConstraints = v96;

    v98 = [(NTKUpNextImageView *)v4->_bodyImage leadingAnchor];
    v99 = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    v100 = [v98 constraintEqualToAnchor:v99];
    v142[0] = v100;
    v101 = [(CLKUIColoringLabel *)v4->_bodyLabel leadingAnchor];
    v102 = [(NTKUpNextImageView *)v4->_bodyImage trailingAnchor];
    v103 = [v101 constraintEqualToAnchor:v102 constant:*&v138];
    v142[1] = v103;
    v104 = [(CLKUIColoringLabel *)v4->_bodyLabel trailingAnchor];
    v105 = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    v106 = [v104 constraintEqualToAnchor:v105];
    v142[2] = v106;
    v107 = [MEMORY[0x277CBEA60] arrayWithObjects:v142 count:3];
    bodyWithLeftImageConstraints = v4->_bodyWithLeftImageConstraints;
    v4->_bodyWithLeftImageConstraints = v107;

    [MEMORY[0x277CCAAD0] activateConstraints:v4->_bodyWithNoImageConstraints];
    [MEMORY[0x277CCAAD0] activateConstraints:v4->_headerWithNoImageConstraints];
    [MEMORY[0x277CCAAD0] activateConstraints:v132];
  }

  return v4;
}

- (void)updateConstraints
{
  v3 = [(NTKUpNextBaseCell *)self content];
  v4 = [v3 headerImageProvider];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 overrideHeaderImage];
    v5 = v6 != 0;
  }

  v7 = [v3 headerImageEdge];
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  if (self->_showingHeaderImage != v5 || v7 != self->_currentImageEdge)
  {
    self->_currentImageEdge = v7;
    self->_showingHeaderImage = v5;
    headerImage = self->_headerImage;
    if (v5)
    {
      [(NTKUpNextImageView *)headerImage setHidden:0];
      [v9 addObjectsFromArray:self->_headerWithNoImageConstraints];
      v11 = [v3 headerImageEdge];
      if (v11 == 2)
      {
        v12 = &OBJC_IVAR___NTKUpNextLargeTextCell__headerWithLeftImageConstraints;
      }

      else
      {
        v12 = &OBJC_IVAR___NTKUpNextLargeTextCell__headerWithRightImageConstraints;
      }

      if (v11 == 2)
      {
        v13 = &OBJC_IVAR___NTKUpNextLargeTextCell__headerWithRightImageConstraints;
      }

      else
      {
        v13 = &OBJC_IVAR___NTKUpNextLargeTextCell__headerWithLeftImageConstraints;
      }
    }

    else
    {
      [(NTKUpNextImageView *)headerImage setHidden:1];
      [v9 addObjectsFromArray:self->_headerWithLeftImageConstraints];
      v13 = &OBJC_IVAR___NTKUpNextLargeTextCell__headerWithNoImageConstraints;
      v12 = &OBJC_IVAR___NTKUpNextLargeTextCell__headerWithRightImageConstraints;
    }

    [v9 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + *v12)];
    [v8 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + *v13)];
  }

  v14 = [v3 bodyImageProvider];
  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v16 = [v3 overrideBodyImage];
    v15 = v16 != 0;
  }

  if (self->_showingBodyImage != v15)
  {
    self->_showingBodyImage = v15;
    if (v15)
    {
      v17 = &OBJC_IVAR___NTKUpNextLargeTextCell__bodyWithNoImageConstraints;
    }

    else
    {
      v17 = &OBJC_IVAR___NTKUpNextLargeTextCell__bodyWithLeftImageConstraints;
    }

    if (v15)
    {
      v18 = &OBJC_IVAR___NTKUpNextLargeTextCell__bodyWithLeftImageConstraints;
    }

    else
    {
      v18 = &OBJC_IVAR___NTKUpNextLargeTextCell__bodyWithNoImageConstraints;
    }

    [(NTKUpNextImageView *)self->_bodyImage setHidden:!v15];
    [v9 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + *v17)];
    [v8 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + *v18)];
  }

  [MEMORY[0x277CCAAD0] deactivateConstraints:v9];
  [MEMORY[0x277CCAAD0] activateConstraints:v8];
  v19.receiver = self;
  v19.super_class = NTKUpNextLargeTextCell;
  [(NTKUpNextLargeTextCell *)&v19 updateConstraints];
}

- (void)configureWithContent:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = NTKUpNextLargeTextCell;
  [(NTKUpNextBaseCell *)&v30 configureWithContent:v4];
  v5 = [v4 useMonospaceFont];
  v6 = &OBJC_IVAR___NTKUpNextLargeTextCell__standardBodyFont;
  if (v5)
  {
    v6 = &OBJC_IVAR___NTKUpNextLargeTextCell__monospaceBodyFont;
  }

  [(CLKUIColoringLabel *)self->_bodyLabel setFont:*(&self->super.super.super.super.super.super.isa + *v6)];
  headerImage = self->_headerImage;
  v8 = [v4 tintColor];
  [(NTKUpNextImageView *)headerImage setFallbackTintColor:v8];

  v9 = self->_headerImage;
  v10 = [v4 overrideHeaderImage];
  v11 = [v4 headerImageProvider];
  [(NTKUpNextImageView *)v9 setFullColorImage:v10 tintableImageProvider:v11];

  bodyImage = self->_bodyImage;
  v13 = [v4 tintColor];
  [(NTKUpNextImageView *)bodyImage setFallbackTintColor:v13];

  v14 = self->_bodyImage;
  v15 = [v4 overrideBodyImage];
  v16 = [v4 bodyImageProvider];
  [(NTKUpNextImageView *)v14 setFullColorImage:v15 tintableImageProvider:v16];

  v17 = self->_bodyImage;
  v18 = [v4 bodyImageCompositingFilter];
  [(NTKUpNextImageView *)v17 setCompositingFilter:v18];

  v19 = [v4 tintColorAffectsHeader];
  headerLabel = self->_headerLabel;
  if (v19)
  {
    [v4 tintColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v21 = ;
  [(CLKUIColoringLabel *)headerLabel setTextColor:v21];

  [NTKUpNextBaseCell clearLabel:self->_headerLabel];
  v22 = self->_headerLabel;
  v23 = [v4 headerTextProvider];
  [(CLKUIColoringLabel *)v22 setTextProvider:v23];

  [NTKUpNextBaseCell clearLabel:self->_bodyLabel];
  v24 = [v4 overrideBodyString];

  bodyLabel = self->_bodyLabel;
  if (v24)
  {
    [(CLKUIColoringLabel *)self->_bodyLabel setTextProvider:0];
    v26 = self->_bodyLabel;
    v27 = [v4 overrideBodyString];
    [(CLKUIColoringLabel *)v26 setText:v27];
  }

  else
  {
    v27 = [v4 description1TextProvider];
    [(CLKUIColoringLabel *)bodyLabel setTextProvider:v27];
  }

  v28 = [v4 headerTextProvider];
  [v28 setPaused:{-[NTKUpNextBaseCell isPaused](self, "isPaused")}];

  v29 = [v4 description1TextProvider];
  [v29 setPaused:{-[NTKUpNextBaseCell isPaused](self, "isPaused")}];

  [(NTKUpNextLargeTextCell *)self setNeedsUpdateConstraints];
}

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = NTKUpNextLargeTextCell;
  [(NTKUpNextBaseCell *)&v7 setPaused:?];
  v5 = [(CLKUIColoringLabel *)self->_bodyLabel textProvider];
  [v5 setPaused:v3];

  v6 = [(CLKUIColoringLabel *)self->_headerLabel textProvider];
  [v6 setPaused:v3];
}

- (id)filtersForView:(id)a3 style:(int64_t)a4
{
  if (self->_bodyImage == a3 || self->_headerImage == a3 && self->_currentImageEdge == 2)
  {
    a4 = 0;
  }

  v6 = a3;
  v7 = [(NTKUpNextBaseCell *)self filterProvider];
  v8 = [v7 filtersForView:v6 style:a4];

  return v8;
}

- (id)filtersForView:(id)a3 style:(int64_t)a4 fraction:(double)a5
{
  if (self->_bodyImage == a3 || self->_headerImage == a3 && self->_currentImageEdge == 2)
  {
    a4 = 0;
  }

  v8 = a3;
  v9 = [(NTKUpNextBaseCell *)self filterProvider];
  v10 = [v9 filtersForView:v8 style:a4 fraction:a5];

  return v10;
}

- (id)filterForView:(id)a3 style:(int64_t)a4 fraction:(double)a5
{
  if (self->_bodyImage == a3 || self->_headerImage == a3 && self->_currentImageEdge == 2)
  {
    a4 = 0;
  }

  v8 = a3;
  v9 = [(NTKUpNextBaseCell *)self filterProvider];
  v10 = [v9 filterForView:v8 style:a4 fraction:a5];

  return v10;
}

- (id)filterForView:(id)a3 style:(int64_t)a4
{
  if (self->_bodyImage == a3 || self->_headerImage == a3 && self->_currentImageEdge == 2)
  {
    a4 = 0;
  }

  v6 = a3;
  v7 = [(NTKUpNextBaseCell *)self filterProvider];
  v8 = [v7 filterForView:v6 style:a4];

  return v8;
}

- (id)colorForView:(id)a3 accented:(BOOL)a4
{
  if (self->_bodyImage == a3 || (v5 = a4, self->_headerImage == a3) && self->_currentImageEdge == 2)
  {
    v5 = 0;
  }

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
  v4.super_class = NTKUpNextLargeTextCell;
  [(NTKUpNextBaseCell *)&v4 prepareForReuse];
  [(NTKUpNextImageView *)self->_headerImage transitionToMonochromeWithFraction:0.0];
  [(NTKUpNextImageView *)self->_bodyImage transitionToMonochromeWithFraction:0.0];
  v3 = [(CLKUIColoringLabel *)self->_headerLabel layer];
  [v3 setFilters:0];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  [(NTKUpNextImageView *)self->_headerImage transitionToMonochromeWithFraction:?];
  [(NTKUpNextImageView *)self->_bodyImage transitionToMonochromeWithFraction:a3];
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
  [(NTKUpNextImageView *)self->_headerImage updateMonochromeColor];
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