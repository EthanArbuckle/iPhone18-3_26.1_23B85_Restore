@interface NTKUpNextLargeTextCell
- (NTKUpNextLargeTextCell)initWithFrame:(CGRect)frame;
- (id)backgroundColorForView:(id)view;
- (id)colorForView:(id)view accented:(BOOL)accented;
- (id)filterForView:(id)view style:(int64_t)style;
- (id)filterForView:(id)view style:(int64_t)style fraction:(double)fraction;
- (id)filtersForView:(id)view style:(int64_t)style;
- (id)filtersForView:(id)view style:(int64_t)style fraction:(double)fraction;
- (void)configureWithContent:(id)content;
- (void)prepareForReuse;
- (void)setPaused:(BOOL)paused;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateConstraints;
- (void)updateMonochromeColor;
@end

@implementation NTKUpNextLargeTextCell

- (NTKUpNextLargeTextCell)initWithFrame:(CGRect)frame
{
  v147[9] = *MEMORY[0x277D85DE8];
  v141.receiver = self;
  v141.super_class = NTKUpNextLargeTextCell;
  v3 = [(NTKUpNextBaseCell *)&v141 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v140 = 0.0;
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v135 = 0u;
    device = [(NTKUpNextBaseCell *)v3 device];
    ___LayoutConstants_block_invoke_28(device, &v135);

    v6 = *(&v136 + 1);
    v7 = [MEMORY[0x277CBBB08] systemFontOfSize:*(&v136 + 1)];
    fontDescriptor = [v7 fontDescriptor];
    v134 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];

    v9 = [MEMORY[0x277CBBB08] systemFontOfSize:*&v137 weight:*MEMORY[0x277D74418]];
    cLKFontWithAlternativePunctuation = [v9 CLKFontWithAlternativePunctuation];
    standardBodyFont = v4->_standardBodyFont;
    v4->_standardBodyFont = cLKFontWithAlternativePunctuation;

    cLKFontWithMonospacedNumbers = [(CLKFont *)v4->_standardBodyFont CLKFontWithMonospacedNumbers];
    monospaceBodyFont = v4->_monospaceBodyFont;
    v4->_monospaceBodyFont = cLKFontWithMonospacedNumbers;

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
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v24 setTextColor:whiteColor];

    v26 = [[off_27877BEF8 alloc] initWithFrame:6 options:{v18, v19, v20, v21}];
    bodyLabel = v4->_bodyLabel;
    v4->_bodyLabel = v26;

    [(CLKUIColoringLabel *)v4->_bodyLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CLKUIColoringLabel *)v4->_bodyLabel setLineBreakMode:4];
    [(CLKUIColoringLabel *)v4->_bodyLabel setNowProvider:&__block_literal_global_82];
    [(CLKUIColoringLabel *)v4->_bodyLabel setFont:v4->_standardBodyFont];
    v28 = v4->_bodyLabel;
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v28 setTextColor:whiteColor2];

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
    contentView = [(NTKUpNextLargeTextCell *)v4 contentView];
    [contentView addLayoutGuide:v4->_contentLayoutGuide];

    contentView2 = [(NTKUpNextLargeTextCell *)v4 contentView];
    [contentView2 addSubview:v4->_headerImage];

    contentView3 = [(NTKUpNextLargeTextCell *)v4 contentView];
    [contentView3 addSubview:v4->_headerLabel];

    contentView4 = [(NTKUpNextLargeTextCell *)v4 contentView];
    [contentView4 addSubview:v4->_bodyLabel];

    contentView5 = [(NTKUpNextLargeTextCell *)v4 contentView];
    [contentView5 addSubview:v4->_bodyImage];

    [v14 capHeight];
    device2 = [(NTKUpNextBaseCell *)v4 device];
    CLKRoundForDevice();
    v49 = v48;

    topAnchor = [(UILayoutGuide *)v4->_contentLayoutGuide topAnchor];
    contentView6 = [(NTKUpNextLargeTextCell *)v4 contentView];
    topAnchor2 = [contentView6 topAnchor];
    v128 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:*(&v138 + 1)];
    v147[0] = v128;
    bottomAnchor = [(UILayoutGuide *)v4->_contentLayoutGuide bottomAnchor];
    contentView7 = [(NTKUpNextLargeTextCell *)v4 contentView];
    bottomAnchor2 = [contentView7 bottomAnchor];
    v124 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-*(&v139 + 1)];
    v147[1] = v124;
    leadingAnchor = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    contentView8 = [(NTKUpNextLargeTextCell *)v4 contentView];
    leadingAnchor2 = [contentView8 leadingAnchor];
    v120 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:*&v139];
    v147[2] = v120;
    trailingAnchor = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    contentView9 = [(NTKUpNextLargeTextCell *)v4 contentView];
    trailingAnchor2 = [contentView9 trailingAnchor];
    v116 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v140];
    v147[3] = v116;
    centerYAnchor = [(NTKUpNextImageView *)v4->_headerImage centerYAnchor];
    firstBaselineAnchor = [(CLKUIColoringLabel *)v4->_headerLabel firstBaselineAnchor];
    v113 = [centerYAnchor constraintEqualToAnchor:firstBaselineAnchor constant:-v49];
    v147[4] = v113;
    firstBaselineAnchor2 = [(CLKUIColoringLabel *)v4->_headerLabel firstBaselineAnchor];
    topAnchor3 = [(UILayoutGuide *)v4->_contentLayoutGuide topAnchor];
    v110 = [firstBaselineAnchor2 constraintEqualToAnchor:topAnchor3 constant:*&v135];
    v147[5] = v110;
    bottomAnchor3 = [(NTKUpNextImageView *)v4->_bodyImage bottomAnchor];
    firstBaselineAnchor3 = [(CLKUIColoringLabel *)v4->_bodyLabel firstBaselineAnchor];
    v52 = [bottomAnchor3 constraintEqualToAnchor:firstBaselineAnchor3];
    v147[6] = v52;
    firstBaselineAnchor4 = [(CLKUIColoringLabel *)v4->_bodyLabel firstBaselineAnchor];
    firstBaselineAnchor5 = [(CLKUIColoringLabel *)v4->_headerLabel firstBaselineAnchor];
    v55 = [firstBaselineAnchor4 constraintEqualToAnchor:firstBaselineAnchor5 constant:*(&v135 + 1)];
    v147[7] = v55;
    lastBaselineAnchor = [(CLKUIColoringLabel *)v4->_bodyLabel lastBaselineAnchor];
    bottomAnchor4 = [(UILayoutGuide *)v4->_contentLayoutGuide bottomAnchor];
    v58 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor4 constant:-*(&v137 + 1)];
    v147[8] = v58;
    v132 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:9];

    leadingAnchor3 = [(CLKUIColoringLabel *)v4->_headerLabel leadingAnchor];
    leadingAnchor4 = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    v61 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v146[0] = v61;
    trailingAnchor3 = [(CLKUIColoringLabel *)v4->_headerLabel trailingAnchor];
    trailingAnchor4 = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    v64 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v146[1] = v64;
    v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v146 count:2];
    headerWithNoImageConstraints = v4->_headerWithNoImageConstraints;
    v4->_headerWithNoImageConstraints = v65;

    leadingAnchor5 = [(NTKUpNextImageView *)v4->_headerImage leadingAnchor];
    leadingAnchor6 = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    v69 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v145[0] = v69;
    leadingAnchor7 = [(CLKUIColoringLabel *)v4->_headerLabel leadingAnchor];
    trailingAnchor5 = [(NTKUpNextImageView *)v4->_headerImage trailingAnchor];
    v72 = *&v136;
    v73 = [leadingAnchor7 constraintEqualToAnchor:trailingAnchor5 constant:*&v136];
    v145[1] = v73;
    trailingAnchor6 = [(CLKUIColoringLabel *)v4->_headerLabel trailingAnchor];
    trailingAnchor7 = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    v76 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
    v145[2] = v76;
    v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v145 count:3];
    headerWithLeftImageConstraints = v4->_headerWithLeftImageConstraints;
    v4->_headerWithLeftImageConstraints = v77;

    leadingAnchor8 = [(CLKUIColoringLabel *)v4->_headerLabel leadingAnchor];
    leadingAnchor9 = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    v81 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
    v144[0] = v81;
    trailingAnchor8 = [(CLKUIColoringLabel *)v4->_headerLabel trailingAnchor];
    leadingAnchor10 = [(NTKUpNextImageView *)v4->_headerImage leadingAnchor];
    v84 = [trailingAnchor8 constraintEqualToAnchor:leadingAnchor10 constant:-v72];
    v144[1] = v84;
    trailingAnchor9 = [(NTKUpNextImageView *)v4->_headerImage trailingAnchor];
    trailingAnchor10 = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    v87 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
    v144[2] = v87;
    v88 = [MEMORY[0x277CBEA60] arrayWithObjects:v144 count:3];
    headerWithRightImageConstraints = v4->_headerWithRightImageConstraints;
    v4->_headerWithRightImageConstraints = v88;

    leadingAnchor11 = [(CLKUIColoringLabel *)v4->_bodyLabel leadingAnchor];
    leadingAnchor12 = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    v92 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
    v143[0] = v92;
    trailingAnchor11 = [(CLKUIColoringLabel *)v4->_bodyLabel trailingAnchor];
    trailingAnchor12 = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    v95 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
    v143[1] = v95;
    v96 = [MEMORY[0x277CBEA60] arrayWithObjects:v143 count:2];
    bodyWithNoImageConstraints = v4->_bodyWithNoImageConstraints;
    v4->_bodyWithNoImageConstraints = v96;

    leadingAnchor13 = [(NTKUpNextImageView *)v4->_bodyImage leadingAnchor];
    leadingAnchor14 = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    v100 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14];
    v142[0] = v100;
    leadingAnchor15 = [(CLKUIColoringLabel *)v4->_bodyLabel leadingAnchor];
    trailingAnchor13 = [(NTKUpNextImageView *)v4->_bodyImage trailingAnchor];
    v103 = [leadingAnchor15 constraintEqualToAnchor:trailingAnchor13 constant:*&v138];
    v142[1] = v103;
    trailingAnchor14 = [(CLKUIColoringLabel *)v4->_bodyLabel trailingAnchor];
    trailingAnchor15 = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    v106 = [trailingAnchor14 constraintEqualToAnchor:trailingAnchor15];
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
  content = [(NTKUpNextBaseCell *)self content];
  headerImageProvider = [content headerImageProvider];
  if (headerImageProvider)
  {
    v5 = 1;
  }

  else
  {
    overrideHeaderImage = [content overrideHeaderImage];
    v5 = overrideHeaderImage != 0;
  }

  headerImageEdge = [content headerImageEdge];
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  if (self->_showingHeaderImage != v5 || headerImageEdge != self->_currentImageEdge)
  {
    self->_currentImageEdge = headerImageEdge;
    self->_showingHeaderImage = v5;
    headerImage = self->_headerImage;
    if (v5)
    {
      [(NTKUpNextImageView *)headerImage setHidden:0];
      [v9 addObjectsFromArray:self->_headerWithNoImageConstraints];
      headerImageEdge2 = [content headerImageEdge];
      if (headerImageEdge2 == 2)
      {
        v12 = &OBJC_IVAR___NTKUpNextLargeTextCell__headerWithLeftImageConstraints;
      }

      else
      {
        v12 = &OBJC_IVAR___NTKUpNextLargeTextCell__headerWithRightImageConstraints;
      }

      if (headerImageEdge2 == 2)
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

  bodyImageProvider = [content bodyImageProvider];
  if (bodyImageProvider)
  {
    v15 = 1;
  }

  else
  {
    overrideBodyImage = [content overrideBodyImage];
    v15 = overrideBodyImage != 0;
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

- (void)configureWithContent:(id)content
{
  contentCopy = content;
  v30.receiver = self;
  v30.super_class = NTKUpNextLargeTextCell;
  [(NTKUpNextBaseCell *)&v30 configureWithContent:contentCopy];
  useMonospaceFont = [contentCopy useMonospaceFont];
  v6 = &OBJC_IVAR___NTKUpNextLargeTextCell__standardBodyFont;
  if (useMonospaceFont)
  {
    v6 = &OBJC_IVAR___NTKUpNextLargeTextCell__monospaceBodyFont;
  }

  [(CLKUIColoringLabel *)self->_bodyLabel setFont:*(&self->super.super.super.super.super.super.isa + *v6)];
  headerImage = self->_headerImage;
  tintColor = [contentCopy tintColor];
  [(NTKUpNextImageView *)headerImage setFallbackTintColor:tintColor];

  v9 = self->_headerImage;
  overrideHeaderImage = [contentCopy overrideHeaderImage];
  headerImageProvider = [contentCopy headerImageProvider];
  [(NTKUpNextImageView *)v9 setFullColorImage:overrideHeaderImage tintableImageProvider:headerImageProvider];

  bodyImage = self->_bodyImage;
  tintColor2 = [contentCopy tintColor];
  [(NTKUpNextImageView *)bodyImage setFallbackTintColor:tintColor2];

  v14 = self->_bodyImage;
  overrideBodyImage = [contentCopy overrideBodyImage];
  bodyImageProvider = [contentCopy bodyImageProvider];
  [(NTKUpNextImageView *)v14 setFullColorImage:overrideBodyImage tintableImageProvider:bodyImageProvider];

  v17 = self->_bodyImage;
  bodyImageCompositingFilter = [contentCopy bodyImageCompositingFilter];
  [(NTKUpNextImageView *)v17 setCompositingFilter:bodyImageCompositingFilter];

  tintColorAffectsHeader = [contentCopy tintColorAffectsHeader];
  headerLabel = self->_headerLabel;
  if (tintColorAffectsHeader)
  {
    [contentCopy tintColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v21 = ;
  [(CLKUIColoringLabel *)headerLabel setTextColor:v21];

  [NTKUpNextBaseCell clearLabel:self->_headerLabel];
  v22 = self->_headerLabel;
  headerTextProvider = [contentCopy headerTextProvider];
  [(CLKUIColoringLabel *)v22 setTextProvider:headerTextProvider];

  [NTKUpNextBaseCell clearLabel:self->_bodyLabel];
  overrideBodyString = [contentCopy overrideBodyString];

  bodyLabel = self->_bodyLabel;
  if (overrideBodyString)
  {
    [(CLKUIColoringLabel *)self->_bodyLabel setTextProvider:0];
    v26 = self->_bodyLabel;
    overrideBodyString2 = [contentCopy overrideBodyString];
    [(CLKUIColoringLabel *)v26 setText:overrideBodyString2];
  }

  else
  {
    overrideBodyString2 = [contentCopy description1TextProvider];
    [(CLKUIColoringLabel *)bodyLabel setTextProvider:overrideBodyString2];
  }

  headerTextProvider2 = [contentCopy headerTextProvider];
  [headerTextProvider2 setPaused:{-[NTKUpNextBaseCell isPaused](self, "isPaused")}];

  description1TextProvider = [contentCopy description1TextProvider];
  [description1TextProvider setPaused:{-[NTKUpNextBaseCell isPaused](self, "isPaused")}];

  [(NTKUpNextLargeTextCell *)self setNeedsUpdateConstraints];
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  v7.receiver = self;
  v7.super_class = NTKUpNextLargeTextCell;
  [(NTKUpNextBaseCell *)&v7 setPaused:?];
  textProvider = [(CLKUIColoringLabel *)self->_bodyLabel textProvider];
  [textProvider setPaused:pausedCopy];

  textProvider2 = [(CLKUIColoringLabel *)self->_headerLabel textProvider];
  [textProvider2 setPaused:pausedCopy];
}

- (id)filtersForView:(id)view style:(int64_t)style
{
  if (self->_bodyImage == view || self->_headerImage == view && self->_currentImageEdge == 2)
  {
    style = 0;
  }

  viewCopy = view;
  filterProvider = [(NTKUpNextBaseCell *)self filterProvider];
  v8 = [filterProvider filtersForView:viewCopy style:style];

  return v8;
}

- (id)filtersForView:(id)view style:(int64_t)style fraction:(double)fraction
{
  if (self->_bodyImage == view || self->_headerImage == view && self->_currentImageEdge == 2)
  {
    style = 0;
  }

  viewCopy = view;
  filterProvider = [(NTKUpNextBaseCell *)self filterProvider];
  v10 = [filterProvider filtersForView:viewCopy style:style fraction:fraction];

  return v10;
}

- (id)filterForView:(id)view style:(int64_t)style fraction:(double)fraction
{
  if (self->_bodyImage == view || self->_headerImage == view && self->_currentImageEdge == 2)
  {
    style = 0;
  }

  viewCopy = view;
  filterProvider = [(NTKUpNextBaseCell *)self filterProvider];
  v10 = [filterProvider filterForView:viewCopy style:style fraction:fraction];

  return v10;
}

- (id)filterForView:(id)view style:(int64_t)style
{
  if (self->_bodyImage == view || self->_headerImage == view && self->_currentImageEdge == 2)
  {
    style = 0;
  }

  viewCopy = view;
  filterProvider = [(NTKUpNextBaseCell *)self filterProvider];
  v8 = [filterProvider filterForView:viewCopy style:style];

  return v8;
}

- (id)colorForView:(id)view accented:(BOOL)accented
{
  if (self->_bodyImage == view || (v5 = accented, self->_headerImage == view) && self->_currentImageEdge == 2)
  {
    v5 = 0;
  }

  viewCopy = view;
  filterProvider = [(NTKUpNextBaseCell *)self filterProvider];
  v8 = [filterProvider colorForView:viewCopy accented:v5];

  return v8;
}

- (id)backgroundColorForView:(id)view
{
  viewCopy = view;
  filterProvider = [(NTKUpNextBaseCell *)self filterProvider];
  v6 = [filterProvider backgroundColorForView:viewCopy];

  return v6;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = NTKUpNextLargeTextCell;
  [(NTKUpNextBaseCell *)&v4 prepareForReuse];
  [(NTKUpNextImageView *)self->_headerImage transitionToMonochromeWithFraction:0.0];
  [(NTKUpNextImageView *)self->_bodyImage transitionToMonochromeWithFraction:0.0];
  layer = [(CLKUIColoringLabel *)self->_headerLabel layer];
  [layer setFilters:0];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  [(NTKUpNextImageView *)self->_headerImage transitionToMonochromeWithFraction:?];
  [(NTKUpNextImageView *)self->_bodyImage transitionToMonochromeWithFraction:fraction];
  if (fabs(fraction) >= 0.00000011920929)
  {
    filterProvider = [(NTKUpNextBaseCell *)self filterProvider];
    layer2 = [filterProvider filtersForView:self style:2 fraction:fraction];

    v6 = layer2;
    if (!layer2)
    {
      goto LABEL_6;
    }

    layer = [(CLKUIColoringLabel *)self->_headerLabel layer];
    [layer setFilters:layer2];
  }

  else
  {
    layer2 = [(CLKUIColoringLabel *)self->_headerLabel layer];
    [layer2 setFilters:0];
  }

  v6 = layer2;
LABEL_6:
}

- (void)updateMonochromeColor
{
  [(NTKUpNextImageView *)self->_headerImage updateMonochromeColor];
  [(NTKUpNextImageView *)self->_bodyImage updateMonochromeColor];
  filterProvider = [(NTKUpNextBaseCell *)self filterProvider];
  v5 = [filterProvider filtersForView:self style:2];

  if (v5)
  {
    layer = [(CLKUIColoringLabel *)self->_headerLabel layer];
    [layer setFilters:v5];
  }
}

@end