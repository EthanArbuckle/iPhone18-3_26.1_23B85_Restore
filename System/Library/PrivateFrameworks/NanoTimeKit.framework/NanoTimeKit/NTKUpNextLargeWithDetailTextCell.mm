@interface NTKUpNextLargeWithDetailTextCell
- (NTKUpNextLargeWithDetailTextCell)initWithFrame:(CGRect)frame;
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
- (void)updateMonochromeColor;
@end

@implementation NTKUpNextLargeWithDetailTextCell

- (NTKUpNextLargeWithDetailTextCell)initWithFrame:(CGRect)frame
{
  v133[18] = *MEMORY[0x277D85DE8];
  v132.receiver = self;
  v132.super_class = NTKUpNextLargeWithDetailTextCell;
  v3 = [(NTKUpNextBaseCell *)&v132 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    device = [(NTKUpNextBaseCell *)v3 device];
    ___LayoutConstants_block_invoke_25(device, &v124);

    v6 = *(&v127 + 1);
    v7 = [MEMORY[0x277CBBB08] systemFontOfSize:*(&v127 + 1)];
    fontDescriptor = [v7 fontDescriptor];
    v122 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];

    v9 = *MEMORY[0x277D74418];
    v10 = [MEMORY[0x277CBBB08] systemFontOfSize:*&v128 weight:*MEMORY[0x277D74418]];
    cLKFontWithAlternativePunctuation = [v10 CLKFontWithAlternativePunctuation];

    v121 = [MEMORY[0x277CBBB08] fontWithDescriptor:v122 size:v6];
    v11 = [MEMORY[0x277CBBB08] systemFontOfSize:*&v127 weight:v9];
    cLKFontWithAlternativePunctuation2 = [v11 CLKFontWithAlternativePunctuation];
    cLKFontWithMonospacedNumbers = [cLKFontWithAlternativePunctuation2 CLKFontWithMonospacedNumbers];

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
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v22 setTextColor:whiteColor];

    v24 = [[off_27877BEF8 alloc] initWithFrame:2 options:{v16, v17, v18, v19}];
    bodyLabel = v4->_bodyLabel;
    v4->_bodyLabel = v24;

    [(CLKUIColoringLabel *)v4->_bodyLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CLKUIColoringLabel *)v4->_bodyLabel setLineBreakMode:4];
    [(CLKUIColoringLabel *)v4->_bodyLabel setNowProvider:&__block_literal_global_65];
    [(CLKUIColoringLabel *)v4->_bodyLabel setFont:cLKFontWithAlternativePunctuation];
    v26 = v4->_bodyLabel;
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v26 setTextColor:whiteColor2];

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
    [(CLKUIColoringLabel *)v4->_detail1Label setFont:cLKFontWithMonospacedNumbers];
    v38 = v4->_detail1Label;
    whiteColor3 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v38 setTextColor:whiteColor3];

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
    [(CLKUIColoringLabel *)v4->_detail2Label setFont:cLKFontWithMonospacedNumbers];
    v44 = v4->_detail2Label;
    whiteColor4 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v44 setTextColor:whiteColor4];

    LODWORD(v46) = 1148846080;
    [(CLKUIColoringLabel *)v4->_detail2Label setContentCompressionResistancePriority:0 forAxis:v46];
    LODWORD(v47) = 1132068864;
    [(CLKUIColoringLabel *)v4->_detail2Label setContentHuggingPriority:0 forAxis:v47];
    contentView = [(NTKUpNextLargeWithDetailTextCell *)v4 contentView];
    [contentView addLayoutGuide:v4->_contentLayoutGuide];

    contentView2 = [(NTKUpNextLargeWithDetailTextCell *)v4 contentView];
    [contentView2 addSubview:v4->_headerLabel];

    contentView3 = [(NTKUpNextLargeWithDetailTextCell *)v4 contentView];
    [contentView3 addSubview:v4->_bodyLabel];

    contentView4 = [(NTKUpNextLargeWithDetailTextCell *)v4 contentView];
    [contentView4 addSubview:v4->_bodyImage];

    contentView5 = [(NTKUpNextLargeWithDetailTextCell *)v4 contentView];
    [contentView5 addSubview:v4->_detail1Label];

    contentView6 = [(NTKUpNextLargeWithDetailTextCell *)v4 contentView];
    [contentView6 addSubview:v4->_detail2Label];

    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    languageCode = [currentLocale languageCode];
    lowercaseString = [languageCode lowercaseString];
    v57 = [lowercaseString isEqualToString:@"th"];

    if (v57)
    {
      v58 = 3.0;
    }

    else
    {
      v58 = 0.0;
    }

    topAnchor = [(UILayoutGuide *)v4->_contentLayoutGuide topAnchor];
    contentView7 = [(NTKUpNextLargeWithDetailTextCell *)v4 contentView];
    topAnchor2 = [contentView7 topAnchor];
    v116 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:*(&v129 + 1)];
    v133[0] = v116;
    bottomAnchor = [(UILayoutGuide *)v4->_contentLayoutGuide bottomAnchor];
    contentView8 = [(NTKUpNextLargeWithDetailTextCell *)v4 contentView];
    bottomAnchor2 = [contentView8 bottomAnchor];
    v112 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-*(&v130 + 1)];
    v133[1] = v112;
    leadingAnchor = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    contentView9 = [(NTKUpNextLargeWithDetailTextCell *)v4 contentView];
    leadingAnchor2 = [contentView9 leadingAnchor];
    v108 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:*&v130];
    v133[2] = v108;
    trailingAnchor = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    contentView10 = [(NTKUpNextLargeWithDetailTextCell *)v4 contentView];
    trailingAnchor2 = [contentView10 trailingAnchor];
    v104 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v131];
    v133[3] = v104;
    firstBaselineAnchor = [(CLKUIColoringLabel *)v4->_headerLabel firstBaselineAnchor];
    topAnchor3 = [(UILayoutGuide *)v4->_contentLayoutGuide topAnchor];
    v101 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor3 constant:*&v124];
    v133[4] = v101;
    leadingAnchor3 = [(CLKUIColoringLabel *)v4->_headerLabel leadingAnchor];
    leadingAnchor4 = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    v98 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v133[5] = v98;
    trailingAnchor3 = [(CLKUIColoringLabel *)v4->_headerLabel trailingAnchor];
    trailingAnchor4 = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    v95 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v133[6] = v95;
    firstBaselineAnchor2 = [(CLKUIColoringLabel *)v4->_bodyLabel firstBaselineAnchor];
    firstBaselineAnchor3 = [(CLKUIColoringLabel *)v4->_headerLabel firstBaselineAnchor];
    v92 = [firstBaselineAnchor2 constraintEqualToAnchor:firstBaselineAnchor3 constant:*(&v124 + 1)];
    v133[7] = v92;
    lastBaselineAnchor = [(CLKUIColoringLabel *)v4->_bodyLabel lastBaselineAnchor];
    bottomAnchor3 = [(UILayoutGuide *)v4->_contentLayoutGuide bottomAnchor];
    v59 = -*(&v128 + 1);
    v89 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor3 constant:-*(&v128 + 1)];
    v133[8] = v89;
    bottomAnchor4 = [(NTKUpNextImageView *)v4->_bodyImage bottomAnchor];
    firstBaselineAnchor4 = [(CLKUIColoringLabel *)v4->_bodyLabel firstBaselineAnchor];
    v86 = [bottomAnchor4 constraintEqualToAnchor:firstBaselineAnchor4];
    v133[9] = v86;
    firstBaselineAnchor5 = [(CLKUIColoringLabel *)v4->_detail2Label firstBaselineAnchor];
    bottomAnchor5 = [(UILayoutGuide *)v4->_contentLayoutGuide bottomAnchor];
    v83 = [firstBaselineAnchor5 constraintEqualToAnchor:bottomAnchor5 constant:v59];
    v133[10] = v83;
    firstBaselineAnchor6 = [(CLKUIColoringLabel *)v4->_detail1Label firstBaselineAnchor];
    firstBaselineAnchor7 = [(CLKUIColoringLabel *)v4->_detail2Label firstBaselineAnchor];
    v80 = [firstBaselineAnchor6 constraintEqualToAnchor:firstBaselineAnchor7 constant:-(v58 + *&v129)];
    v133[11] = v80;
    leadingAnchor5 = [(CLKUIColoringLabel *)v4->_detail2Label leadingAnchor];
    leadingAnchor6 = [(CLKUIColoringLabel *)v4->_detail1Label leadingAnchor];
    v77 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v133[12] = v77;
    trailingAnchor5 = [(CLKUIColoringLabel *)v4->_detail2Label trailingAnchor];
    trailingAnchor6 = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    v74 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v133[13] = v74;
    leadingAnchor7 = [(CLKUIColoringLabel *)v4->_bodyLabel leadingAnchor];
    leadingAnchor8 = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    v71 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v133[14] = v71;
    leadingAnchor9 = [(NTKUpNextImageView *)v4->_bodyImage leadingAnchor];
    trailingAnchor7 = [(CLKUIColoringLabel *)v4->_bodyLabel trailingAnchor];
    v61 = [leadingAnchor9 constraintEqualToAnchor:trailingAnchor7 constant:*&v125];
    v133[15] = v61;
    leadingAnchor10 = [(CLKUIColoringLabel *)v4->_detail1Label leadingAnchor];
    trailingAnchor8 = [(NTKUpNextImageView *)v4->_bodyImage trailingAnchor];
    v64 = [leadingAnchor10 constraintEqualToAnchor:trailingAnchor8 constant:*(&v125 + 1)];
    v133[16] = v64;
    trailingAnchor9 = [(CLKUIColoringLabel *)v4->_detail1Label trailingAnchor];
    trailingAnchor10 = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    v67 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
    v133[17] = v67;
    v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v133 count:18];

    [MEMORY[0x277CCAAD0] activateConstraints:v68];
  }

  return v4;
}

- (void)configureWithContent:(id)content
{
  contentCopy = content;
  v27.receiver = self;
  v27.super_class = NTKUpNextLargeWithDetailTextCell;
  [(NTKUpNextBaseCell *)&v27 configureWithContent:contentCopy];
  bodyImage = self->_bodyImage;
  tintColor = [contentCopy tintColor];
  [(NTKUpNextImageView *)bodyImage setFallbackTintColor:tintColor];

  v7 = self->_bodyImage;
  overrideBodyImage = [contentCopy overrideBodyImage];
  bodyImageProvider = [contentCopy bodyImageProvider];
  [(NTKUpNextImageView *)v7 setFullColorImage:overrideBodyImage tintableImageProvider:bodyImageProvider];

  v10 = self->_bodyImage;
  bodyImageCompositingFilter = [contentCopy bodyImageCompositingFilter];
  [(NTKUpNextImageView *)v10 setCompositingFilter:bodyImageCompositingFilter];

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
  v14 = ;
  [(CLKUIColoringLabel *)headerLabel setTextColor:v14];

  [NTKUpNextBaseCell clearLabel:self->_headerLabel];
  v15 = self->_headerLabel;
  headerTextProvider = [contentCopy headerTextProvider];
  [(CLKUIColoringLabel *)v15 setTextProvider:headerTextProvider];

  [NTKUpNextBaseCell clearLabel:self->_bodyLabel];
  bodyLabel = self->_bodyLabel;
  description1TextProvider = [contentCopy description1TextProvider];
  [(CLKUIColoringLabel *)bodyLabel setTextProvider:description1TextProvider];

  [NTKUpNextBaseCell clearLabel:self->_detail1Label];
  detail1Label = self->_detail1Label;
  description2TextProvider = [contentCopy description2TextProvider];
  [(CLKUIColoringLabel *)detail1Label setTextProvider:description2TextProvider];

  [NTKUpNextBaseCell clearLabel:self->_detail2Label];
  detail2Label = self->_detail2Label;
  description3TextProvider = [contentCopy description3TextProvider];
  [(CLKUIColoringLabel *)detail2Label setTextProvider:description3TextProvider];

  headerTextProvider2 = [contentCopy headerTextProvider];
  [headerTextProvider2 setPaused:{-[NTKUpNextBaseCell isPaused](self, "isPaused")}];

  description1TextProvider2 = [contentCopy description1TextProvider];
  [description1TextProvider2 setPaused:{-[NTKUpNextBaseCell isPaused](self, "isPaused")}];

  description2TextProvider2 = [contentCopy description2TextProvider];
  [description2TextProvider2 setPaused:{-[NTKUpNextBaseCell isPaused](self, "isPaused")}];

  description3TextProvider2 = [contentCopy description3TextProvider];
  [description3TextProvider2 setPaused:{-[NTKUpNextBaseCell isPaused](self, "isPaused")}];
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  v9.receiver = self;
  v9.super_class = NTKUpNextLargeWithDetailTextCell;
  [(NTKUpNextBaseCell *)&v9 setPaused:?];
  textProvider = [(CLKUIColoringLabel *)self->_headerLabel textProvider];
  [textProvider setPaused:pausedCopy];

  textProvider2 = [(CLKUIColoringLabel *)self->_bodyLabel textProvider];
  [textProvider2 setPaused:pausedCopy];

  textProvider3 = [(CLKUIColoringLabel *)self->_detail1Label textProvider];
  [textProvider3 setPaused:pausedCopy];

  textProvider4 = [(CLKUIColoringLabel *)self->_detail2Label textProvider];
  [textProvider4 setPaused:pausedCopy];
}

- (id)filtersForView:(id)view style:(int64_t)style
{
  if (self->_bodyImage == view)
  {
    styleCopy = 0;
  }

  else
  {
    styleCopy = style;
  }

  viewCopy = view;
  filterProvider = [(NTKUpNextBaseCell *)self filterProvider];
  v8 = [filterProvider filtersForView:viewCopy style:styleCopy];

  return v8;
}

- (id)filtersForView:(id)view style:(int64_t)style fraction:(double)fraction
{
  if (self->_bodyImage == view)
  {
    styleCopy = 0;
  }

  else
  {
    styleCopy = style;
  }

  viewCopy = view;
  filterProvider = [(NTKUpNextBaseCell *)self filterProvider];
  v10 = [filterProvider filtersForView:viewCopy style:styleCopy fraction:fraction];

  return v10;
}

- (id)filterForView:(id)view style:(int64_t)style fraction:(double)fraction
{
  if (self->_bodyImage == view)
  {
    styleCopy = 0;
  }

  else
  {
    styleCopy = style;
  }

  viewCopy = view;
  filterProvider = [(NTKUpNextBaseCell *)self filterProvider];
  v10 = [filterProvider filterForView:viewCopy style:styleCopy fraction:fraction];

  return v10;
}

- (id)filterForView:(id)view style:(int64_t)style
{
  if (self->_bodyImage == view)
  {
    styleCopy = 0;
  }

  else
  {
    styleCopy = style;
  }

  viewCopy = view;
  filterProvider = [(NTKUpNextBaseCell *)self filterProvider];
  v8 = [filterProvider filterForView:viewCopy style:styleCopy];

  return v8;
}

- (id)colorForView:(id)view accented:(BOOL)accented
{
  v5 = self->_bodyImage != view && accented;
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
  v4.super_class = NTKUpNextLargeWithDetailTextCell;
  [(NTKUpNextBaseCell *)&v4 prepareForReuse];
  [(NTKUpNextImageView *)self->_bodyImage transitionToMonochromeWithFraction:0.0];
  layer = [(CLKUIColoringLabel *)self->_headerLabel layer];
  [layer setFilters:0];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  [(NTKUpNextImageView *)self->_bodyImage transitionToMonochromeWithFraction:?];
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