@interface NTKUpNextGaugeCell
- (NTKUpNextGaugeCell)initWithFrame:(CGRect)frame;
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

@implementation NTKUpNextGaugeCell

- (NTKUpNextGaugeCell)initWithFrame:(CGRect)frame
{
  v127[20] = *MEMORY[0x277D85DE8];
  v126.receiver = self;
  v126.super_class = NTKUpNextGaugeCell;
  v3 = [(NTKUpNextBaseCell *)&v126 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    device = [(NTKUpNextBaseCell *)v3 device];
    ___LayoutConstants_block_invoke_1(device, &v120);

    v6 = *&v121;
    v7 = [MEMORY[0x277CBBB08] systemFontOfSize:*&v121];
    fontDescriptor = [v7 fontDescriptor];
    v9 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];

    v10 = [MEMORY[0x277CBBB08] systemFontOfSize:v6 weight:*MEMORY[0x277D74410]];
    standardFont = v4->_standardFont;
    v4->_standardFont = v10;

    v119 = v9;
    v12 = [MEMORY[0x277CBBB08] fontWithDescriptor:v9 size:v6];
    boldFont = v4->_boldFont;
    v4->_boldFont = v12;

    v14 = [MEMORY[0x277CBBB08] systemFontOfSize:*&v123 weight:*MEMORY[0x277D74420]];
    semiboldFont = v4->_semiboldFont;
    v4->_semiboldFont = v14;

    nTKHyphenationParagraphStyle = [MEMORY[0x277D74240] NTKHyphenationParagraphStyle];
    [nTKHyphenationParagraphStyle setLineBreakMode:4];
    v17 = __36__NTKUpNextGaugeCell_initWithFrame___block_invoke();
    headerLabel = v4->_headerLabel;
    v4->_headerLabel = v17;

    [(CLKUIColoringLabel *)v4->_headerLabel setFont:v4->_boldFont];
    v19 = v4->_headerLabel;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v19 setTextColor:whiteColor];

    [(CLKUIColoringLabel *)v4->_headerLabel setNumberOfLines:1];
    [(CLKUIColoringLabel *)v4->_headerLabel setParagraphStyle:nTKHyphenationParagraphStyle];
    v21 = __36__NTKUpNextGaugeCell_initWithFrame___block_invoke();
    descriptionLine1Label = v4->_descriptionLine1Label;
    v4->_descriptionLine1Label = v21;

    v23 = v4->_descriptionLine1Label;
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v23 setTextColor:whiteColor2];

    [(CLKUIColoringLabel *)v4->_descriptionLine1Label setFont:v4->_standardFont];
    [(CLKUIColoringLabel *)v4->_descriptionLine1Label setNumberOfLines:1];
    [(CLKUIColoringLabel *)v4->_descriptionLine1Label setParagraphStyle:nTKHyphenationParagraphStyle];
    if (CLKLayoutIsRTL())
    {
      [nTKHyphenationParagraphStyle setAlignment:0];
    }

    v25 = __36__NTKUpNextGaugeCell_initWithFrame___block_invoke();
    descriptionLine2Label = v4->_descriptionLine2Label;
    v4->_descriptionLine2Label = v25;

    v27 = v4->_descriptionLine2Label;
    whiteColor3 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v27 setTextColor:whiteColor3];

    [(CLKUIColoringLabel *)v4->_descriptionLine2Label setFont:v4->_semiboldFont];
    [(CLKUIColoringLabel *)v4->_descriptionLine2Label setNumberOfLines:1];
    [(CLKUIColoringLabel *)v4->_descriptionLine2Label setParagraphStyle:nTKHyphenationParagraphStyle];
    if ((CLKLayoutIsRTL() & 1) == 0)
    {
      [nTKHyphenationParagraphStyle setAlignment:2];
    }

    v29 = __36__NTKUpNextGaugeCell_initWithFrame___block_invoke();
    descriptionLine3Label = v4->_descriptionLine3Label;
    v4->_descriptionLine3Label = v29;

    v31 = v4->_descriptionLine3Label;
    whiteColor4 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v31 setTextColor:whiteColor4];

    [(CLKUIColoringLabel *)v4->_descriptionLine3Label setFont:v4->_semiboldFont];
    [(CLKUIColoringLabel *)v4->_descriptionLine3Label setNumberOfLines:1];
    v118 = nTKHyphenationParagraphStyle;
    [(CLKUIColoringLabel *)v4->_descriptionLine3Label setParagraphStyle:nTKHyphenationParagraphStyle];
    device2 = [(NTKUpNextBaseCell *)v4 device];
    sizeClass = [device2 sizeClass];

    if (sizeClass == 3)
    {
      v35 = *(&v120 + 1);
      [(CLKUIColoringLabel *)v4->_headerLabel setLineSpacing:*(&v120 + 1)];
      [(CLKUIColoringLabel *)v4->_descriptionLine1Label setLineSpacing:v35];
    }

    v36 = [NTKRichComplicationLineProgressView alloc];
    device3 = [(NTKUpNextBaseCell *)v4 device];
    v38 = [(NTKRichComplicationLineProgressView *)v36 initForFamily:10 device:device3 progressFillStyle:0];
    progressView = v4->_progressView;
    v4->_progressView = v38;

    [(NTKRichComplicationLineProgressView *)v4->_progressView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CDRichComplicationProgressView *)v4->_progressView setFilterProvider:v4];
    ringView = [(CDRichComplicationProgressView *)v4->_progressView ringView];
    layer = [ringView layer];
    whiteColor5 = [MEMORY[0x277D75348] whiteColor];
    [layer setBorderColor:{objc_msgSend(whiteColor5, "CGColor")}];

    v43 = objc_alloc_init(MEMORY[0x277D756D0]);
    contentLayoutGuide = v4->_contentLayoutGuide;
    v4->_contentLayoutGuide = v43;

    [(UILayoutGuide *)v4->_contentLayoutGuide setIdentifier:@"content"];
    contentView = [(NTKUpNextGaugeCell *)v4 contentView];
    [contentView addLayoutGuide:v4->_contentLayoutGuide];

    contentView2 = [(NTKUpNextGaugeCell *)v4 contentView];
    [contentView2 addSubview:v4->_headerLabel];

    contentView3 = [(NTKUpNextGaugeCell *)v4 contentView];
    [contentView3 addSubview:v4->_descriptionLine1Label];

    contentView4 = [(NTKUpNextGaugeCell *)v4 contentView];
    [contentView4 addSubview:v4->_progressView];

    contentView5 = [(NTKUpNextGaugeCell *)v4 contentView];
    [contentView5 insertSubview:v4->_descriptionLine2Label aboveSubview:v4->_progressView];

    contentView6 = [(NTKUpNextGaugeCell *)v4 contentView];
    [contentView6 insertSubview:v4->_descriptionLine3Label aboveSubview:v4->_progressView];

    topAnchor = [(UILayoutGuide *)v4->_contentLayoutGuide topAnchor];
    contentView7 = [(NTKUpNextGaugeCell *)v4 contentView];
    topAnchor2 = [contentView7 topAnchor];
    v114 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:*&v124];
    v127[0] = v114;
    bottomAnchor = [(UILayoutGuide *)v4->_contentLayoutGuide bottomAnchor];
    contentView8 = [(NTKUpNextGaugeCell *)v4 contentView];
    bottomAnchor2 = [contentView8 bottomAnchor];
    v110 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-*&v125];
    v127[1] = v110;
    leadingAnchor = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    contentView9 = [(NTKUpNextGaugeCell *)v4 contentView];
    leadingAnchor2 = [contentView9 leadingAnchor];
    v106 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:*(&v124 + 1)];
    v127[2] = v106;
    trailingAnchor = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    contentView10 = [(NTKUpNextGaugeCell *)v4 contentView];
    trailingAnchor2 = [contentView10 trailingAnchor];
    v102 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-*(&v125 + 1)];
    v127[3] = v102;
    leadingAnchor3 = [(CLKUIColoringLabel *)v4->_headerLabel leadingAnchor];
    leadingAnchor4 = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    v99 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v127[4] = v99;
    trailingAnchor3 = [(CLKUIColoringLabel *)v4->_headerLabel trailingAnchor];
    trailingAnchor4 = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    v96 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v127[5] = v96;
    leadingAnchor5 = [(CLKUIColoringLabel *)v4->_descriptionLine1Label leadingAnchor];
    leadingAnchor6 = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    v93 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v127[6] = v93;
    trailingAnchor5 = [(CLKUIColoringLabel *)v4->_descriptionLine1Label trailingAnchor];
    trailingAnchor6 = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    v90 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v127[7] = v90;
    leadingAnchor7 = [(NTKRichComplicationLineProgressView *)v4->_progressView leadingAnchor];
    leadingAnchor8 = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    v87 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v127[8] = v87;
    trailingAnchor7 = [(NTKRichComplicationLineProgressView *)v4->_progressView trailingAnchor];
    trailingAnchor8 = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    v84 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    v127[9] = v84;
    firstBaselineAnchor = [(CLKUIColoringLabel *)v4->_headerLabel firstBaselineAnchor];
    topAnchor3 = [(UILayoutGuide *)v4->_contentLayoutGuide topAnchor];
    v81 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor3 constant:*&v120];
    v127[10] = v81;
    firstBaselineAnchor2 = [(CLKUIColoringLabel *)v4->_descriptionLine1Label firstBaselineAnchor];
    lastBaselineAnchor = [(CLKUIColoringLabel *)v4->_headerLabel lastBaselineAnchor];
    v78 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:*(&v120 + 1)];
    v127[11] = v78;
    bottomAnchor3 = [(NTKRichComplicationLineProgressView *)v4->_progressView bottomAnchor];
    bottomAnchor4 = [(UILayoutGuide *)v4->_contentLayoutGuide bottomAnchor];
    v74 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-*(&v121 + 1)];
    v127[12] = v74;
    heightAnchor = [(NTKRichComplicationLineProgressView *)v4->_progressView heightAnchor];
    v72 = [heightAnchor constraintEqualToConstant:*&v122];
    v127[13] = v72;
    centerYAnchor = [(CLKUIColoringLabel *)v4->_descriptionLine2Label centerYAnchor];
    centerYAnchor2 = [(NTKRichComplicationLineProgressView *)v4->_progressView centerYAnchor];
    v69 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v127[14] = v69;
    widthAnchor = [(CLKUIColoringLabel *)v4->_descriptionLine2Label widthAnchor];
    widthAnchor2 = [(NTKRichComplicationLineProgressView *)v4->_progressView widthAnchor];
    v51 = *(&v123 + 1);
    v52 = -*(&v123 + 1);
    v66 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.5 constant:-*(&v123 + 1)];
    v127[15] = v66;
    leadingAnchor9 = [(CLKUIColoringLabel *)v4->_descriptionLine2Label leadingAnchor];
    leadingAnchor10 = [(NTKRichComplicationLineProgressView *)v4->_progressView leadingAnchor];
    v63 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:v51];
    v127[16] = v63;
    centerYAnchor3 = [(CLKUIColoringLabel *)v4->_descriptionLine3Label centerYAnchor];
    centerYAnchor4 = [(NTKRichComplicationLineProgressView *)v4->_progressView centerYAnchor];
    v55 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v127[17] = v55;
    widthAnchor3 = [(CLKUIColoringLabel *)v4->_descriptionLine3Label widthAnchor];
    widthAnchor4 = [(NTKRichComplicationLineProgressView *)v4->_progressView widthAnchor];
    v58 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 multiplier:0.5 constant:v52];
    v127[18] = v58;
    trailingAnchor9 = [(CLKUIColoringLabel *)v4->_descriptionLine3Label trailingAnchor];
    trailingAnchor10 = [(NTKRichComplicationLineProgressView *)v4->_progressView trailingAnchor];
    v61 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10 constant:v52];
    v127[19] = v61;
    v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v127 count:20];

    [MEMORY[0x277CCAAD0] activateConstraints:v77];
  }

  return v4;
}

id __36__NTKUpNextGaugeCell_initWithFrame___block_invoke()
{
  v0 = [off_27877BEF8 alloc];
  v1 = [v0 initWithFrame:4 options:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 setLineBreakMode:4];
  [v1 _setUseShortcutIntrinsicContentSize:1];
  [v1 setNowProvider:&__block_literal_global_4];

  return v1;
}

- (void)configureWithContent:(id)content
{
  v18.receiver = self;
  v18.super_class = NTKUpNextGaugeCell;
  contentCopy = content;
  [(NTKUpNextBaseCell *)&v18 configureWithContent:contentCopy];
  [NTKUpNextBaseCell clearLabel:self->_headerLabel, v18.receiver, v18.super_class];
  headerLabel = self->_headerLabel;
  headerTextProvider = [contentCopy headerTextProvider];
  [(CLKUIColoringLabel *)headerLabel setTextProvider:headerTextProvider];

  [NTKUpNextBaseCell clearLabel:self->_descriptionLine1Label];
  descriptionLine1Label = self->_descriptionLine1Label;
  description1TextProvider = [contentCopy description1TextProvider];
  [(CLKUIColoringLabel *)descriptionLine1Label setTextProvider:description1TextProvider];

  [NTKUpNextBaseCell clearLabel:self->_descriptionLine2Label];
  descriptionLine2Label = self->_descriptionLine2Label;
  description2TextProvider = [contentCopy description2TextProvider];
  [(CLKUIColoringLabel *)descriptionLine2Label setTextProvider:description2TextProvider];

  [NTKUpNextBaseCell clearLabel:self->_descriptionLine3Label];
  descriptionLine3Label = self->_descriptionLine3Label;
  description3TextProvider = [contentCopy description3TextProvider];
  [(CLKUIColoringLabel *)descriptionLine3Label setTextProvider:description3TextProvider];

  gaugeProvider = [contentCopy gaugeProvider];
  [(CDRichComplicationProgressView *)self->_progressView setGaugeProvider:gaugeProvider];
  [(NTKRichComplicationLineProgressView *)self->_progressView setHidden:gaugeProvider == 0];
  [(CLKUIColoringLabel *)self->_descriptionLine2Label setHidden:gaugeProvider == 0];
  [(CLKUIColoringLabel *)self->_descriptionLine3Label setHidden:gaugeProvider == 0];
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
  v9.super_class = NTKUpNextGaugeCell;
  [(NTKUpNextBaseCell *)&v9 setPaused:?];
  textProvider = [(CLKUIColoringLabel *)self->_headerLabel textProvider];
  [textProvider setPaused:pausedCopy];

  textProvider2 = [(CLKUIColoringLabel *)self->_descriptionLine1Label textProvider];
  [textProvider2 setPaused:pausedCopy];

  textProvider3 = [(CLKUIColoringLabel *)self->_descriptionLine2Label textProvider];
  [textProvider3 setPaused:pausedCopy];

  textProvider4 = [(CLKUIColoringLabel *)self->_descriptionLine3Label textProvider];
  [textProvider4 setPaused:pausedCopy];
}

- (id)filtersForView:(id)view style:(int64_t)style fraction:(double)fraction
{
  viewCopy = view;
  filterProvider = [(NTKUpNextBaseCell *)self filterProvider];
  v10 = [filterProvider filtersForView:viewCopy style:style fraction:fraction];

  return v10;
}

- (id)filtersForView:(id)view style:(int64_t)style
{
  viewCopy = view;
  filterProvider = [(NTKUpNextBaseCell *)self filterProvider];
  v8 = [filterProvider filtersForView:viewCopy style:style];

  return v8;
}

- (id)filterForView:(id)view style:(int64_t)style fraction:(double)fraction
{
  viewCopy = view;
  filterProvider = [(NTKUpNextBaseCell *)self filterProvider];
  v10 = [filterProvider filterForView:viewCopy style:style fraction:fraction];

  return v10;
}

- (id)filterForView:(id)view style:(int64_t)style
{
  viewCopy = view;
  filterProvider = [(NTKUpNextBaseCell *)self filterProvider];
  v8 = [filterProvider filterForView:viewCopy style:style];

  return v8;
}

- (id)colorForView:(id)view accented:(BOOL)accented
{
  accentedCopy = accented;
  viewCopy = view;
  filterProvider = [(NTKUpNextBaseCell *)self filterProvider];
  v8 = [filterProvider colorForView:viewCopy accented:accentedCopy];

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
  v5.receiver = self;
  v5.super_class = NTKUpNextGaugeCell;
  [(NTKUpNextBaseCell *)&v5 prepareForReuse];
  [(CDRichComplicationProgressView *)self->_progressView transitionToMonochromeWithFraction:0.0];
  layer = [(CLKUIColoringLabel *)self->_headerLabel layer];
  [layer setFilters:0];

  layer2 = [(CLKUIColoringLabel *)self->_descriptionLine1Label layer];
  [layer2 setFilters:0];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  [(CDRichComplicationProgressView *)self->_progressView transitionToMonochromeWithFraction:?];
  if (fabs(fraction) >= 0.00000011920929)
  {
    filterProvider = [(NTKUpNextBaseCell *)self filterProvider];
    layer4 = [filterProvider filtersForView:self style:2 fraction:fraction];

    v7 = layer4;
    if (!layer4)
    {
      goto LABEL_6;
    }

    layer = [(CLKUIColoringLabel *)self->_headerLabel layer];
    [layer setFilters:layer4];

    layer2 = [(CLKUIColoringLabel *)self->_descriptionLine1Label layer];
    [layer2 setFilters:layer4];
  }

  else
  {
    layer3 = [(CLKUIColoringLabel *)self->_headerLabel layer];
    [layer3 setFilters:0];

    layer4 = [(CLKUIColoringLabel *)self->_descriptionLine1Label layer];
    [layer4 setFilters:0];
  }

  v7 = layer4;
LABEL_6:
}

- (void)updateMonochromeColor
{
  [(CDRichComplicationProgressView *)self->_progressView updateMonochromeColor];
  filterProvider = [(NTKUpNextBaseCell *)self filterProvider];
  v6 = [filterProvider filtersForView:self style:2];

  if (v6)
  {
    layer = [(CLKUIColoringLabel *)self->_headerLabel layer];
    [layer setFilters:v6];

    layer2 = [(CLKUIColoringLabel *)self->_descriptionLine1Label layer];
    [layer2 setFilters:v6];
  }
}

@end