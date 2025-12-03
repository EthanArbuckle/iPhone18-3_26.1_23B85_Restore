@interface NTKUpNextThumbnailCell
+ (CGSize)suggestedBodyImageSizeForDevice:(id)device;
- (NTKUpNextThumbnailCell)initWithFrame:(CGRect)frame;
- (id)backgroundColorForView:(id)view;
- (id)colorForView:(id)view accented:(BOOL)accented;
- (void)configureWithContent:(id)content;
- (void)prepareForReuse;
- (void)setPaused:(BOOL)paused;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateConstraints;
- (void)updateMonochromeColor;
@end

@implementation NTKUpNextThumbnailCell

+ (CGSize)suggestedBodyImageSizeForDevice:(id)device
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  memset(v5, 0, sizeof(v5));
  ___LayoutConstants_block_invoke_49(device, v5);
  v3 = *&v8 - (*(&v8 + 1) + *&v6 * 2.0 + *(&v9 + 1));
  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (NTKUpNextThumbnailCell)initWithFrame:(CGRect)frame
{
  v198[16] = *MEMORY[0x277D85DE8];
  v191.receiver = self;
  v191.super_class = NTKUpNextThumbnailCell;
  v3 = [(NTKUpNextBaseCell *)&v191 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v185 = 0u;
    v186 = 0u;
    v183 = 0u;
    v184 = 0u;
    device = [(NTKUpNextBaseCell *)v3 device];
    ___LayoutConstants_block_invoke_49(device, &v183);

    v6 = *(&v185 + 1);
    v7 = [MEMORY[0x277CBBB08] systemFontOfSize:*(&v185 + 1)];
    fontDescriptor = [v7 fontDescriptor];
    v9 = [fontDescriptor fontDescriptorWithSymbolicTraits:1];

    v10 = [MEMORY[0x277CBBB08] systemFontOfSize:v6];
    fontDescriptor2 = [v10 fontDescriptor];
    v12 = [fontDescriptor2 fontDescriptorWithSymbolicTraits:2];

    LOBYTE(fontDescriptor2) = CLKIsCurrentLocaleNonLatin();
    v13 = *MEMORY[0x277D74410];
    v14 = [MEMORY[0x277CBBB08] systemFontOfSize:v6 weight:*MEMORY[0x277D74410]];
    fontDescriptor3 = [v14 fontDescriptor];
    v16 = fontDescriptor3;
    if ((fontDescriptor2 & 1) == 0)
    {
      v17 = [fontDescriptor3 fontDescriptorWithSymbolicTraits:1];

      v16 = v17;
    }

    v18 = [MEMORY[0x277CBBB08] systemFontOfSize:v6 weight:v13];
    standardFont = v4->_standardFont;
    v4->_standardFont = v18;

    v181 = v12;
    v20 = [MEMORY[0x277CBBB08] fontWithDescriptor:v12 size:v6];
    boldFont = v4->_boldFont;
    v4->_boldFont = v20;

    v182 = v9;
    v22 = [MEMORY[0x277CBBB08] fontWithDescriptor:v9 size:v6];
    italicFont = v4->_italicFont;
    v4->_italicFont = v22;

    v180 = v16;
    v24 = [MEMORY[0x277CBBB08] fontWithDescriptor:v16 size:*(&v190 + 1)];
    nTKHyphenationParagraphStyle = [MEMORY[0x277D74240] NTKHyphenationParagraphStyle];
    [nTKHyphenationParagraphStyle setLineBreakMode:4];
    [nTKHyphenationParagraphStyle lineSpacing];
    [nTKHyphenationParagraphStyle setLineSpacing:v26 + *&v186];
    v27 = __40__NTKUpNextThumbnailCell_initWithFrame___block_invoke();
    headerLabel = v4->_headerLabel;
    v4->_headerLabel = v27;

    [(CLKUIColoringLabel *)v4->_headerLabel setFont:v4->_boldFont];
    v29 = v4->_headerLabel;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v29 setTextColor:whiteColor];

    [(CLKUIColoringLabel *)v4->_headerLabel setNumberOfLines:2];
    [(CLKUIColoringLabel *)v4->_headerLabel setParagraphStyle:nTKHyphenationParagraphStyle];
    v31 = __40__NTKUpNextThumbnailCell_initWithFrame___block_invoke();
    descriptionLine1Label = v4->_descriptionLine1Label;
    v4->_descriptionLine1Label = v31;

    v33 = v4->_descriptionLine1Label;
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v33 setTextColor:whiteColor2];

    [(CLKUIColoringLabel *)v4->_descriptionLine1Label setFont:v4->_standardFont];
    v178 = nTKHyphenationParagraphStyle;
    [(CLKUIColoringLabel *)v4->_descriptionLine1Label setParagraphStyle:nTKHyphenationParagraphStyle];
    v35 = __40__NTKUpNextThumbnailCell_initWithFrame___block_invoke();
    descriptionLine2Label = v4->_descriptionLine2Label;
    v4->_descriptionLine2Label = v35;

    v37 = v4->_descriptionLine2Label;
    whiteColor3 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v37 setTextColor:whiteColor3];

    [(CLKUIColoringLabel *)v4->_descriptionLine2Label setFont:v4->_italicFont];
    [(CLKUIColoringLabel *)v4->_descriptionLine2Label setNumberOfLines:1];
    v39 = __40__NTKUpNextThumbnailCell_initWithFrame___block_invoke();
    descriptionLine3Label = v4->_descriptionLine3Label;
    v4->_descriptionLine3Label = v39;

    v41 = v4->_descriptionLine3Label;
    whiteColor4 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v41 setTextColor:whiteColor4];

    v179 = v24;
    [(CLKUIColoringLabel *)v4->_descriptionLine3Label setFont:v24];
    [(CLKUIColoringLabel *)v4->_descriptionLine3Label setNumberOfLines:1];
    [(CLKUIColoringLabel *)v4->_descriptionLine3Label setTextAlignment:1];
    [(CLKUIColoringLabel *)v4->_descriptionLine3Label setAdjustsFontSizeToFitWidth:1];
    [(CLKUIColoringLabel *)v4->_descriptionLine3Label setMinimumScaleFactor:0.7];
    device2 = [(NTKUpNextBaseCell *)v4 device];
    sizeClass = [device2 sizeClass];

    if (sizeClass == 3)
    {
      v45 = *&v184;
      [(CLKUIColoringLabel *)v4->_headerLabel setLineSpacing:*&v184];
      [(CLKUIColoringLabel *)v4->_descriptionLine1Label setLineSpacing:v45];
      [(CLKUIColoringLabel *)v4->_descriptionLine2Label setLineSpacing:*(&v184 + 1)];
    }

    v46 = [NTKUpNextImageView alloc];
    v47 = [(NTKUpNextImageView *)v46 initWithFrame:v4 parentCell:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    imageView = v4->_imageView;
    v4->_imageView = v47;

    [(NTKUpNextImageView *)v4->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(NTKUpNextImageView *)v4->_imageView setContentMode:1];
    layer = [(NTKUpNextImageView *)v4->_imageView layer];
    [layer setCornerRadius:*&v183];

    [(NTKUpNextImageView *)v4->_imageView setClipsToBounds:1];
    [(NTKUpNextImageView *)v4->_imageView setFilterProvider:v4];
    v50 = objc_alloc_init(MEMORY[0x277D756D0]);
    labelLayoutGuide = v4->_labelLayoutGuide;
    v4->_labelLayoutGuide = v50;

    contentView = [(NTKUpNextThumbnailCell *)v4 contentView];
    [contentView addLayoutGuide:v4->_labelLayoutGuide];

    contentView2 = [(NTKUpNextThumbnailCell *)v4 contentView];
    [contentView2 addSubview:v4->_imageView];

    contentView3 = [(NTKUpNextThumbnailCell *)v4 contentView];
    [contentView3 addSubview:v4->_headerLabel];

    contentView4 = [(NTKUpNextThumbnailCell *)v4 contentView];
    [contentView4 addSubview:v4->_descriptionLine1Label];

    contentView5 = [(NTKUpNextThumbnailCell *)v4 contentView];
    [contentView5 addSubview:v4->_descriptionLine2Label];

    contentView6 = [(NTKUpNextThumbnailCell *)v4 contentView];
    [contentView6 addSubview:v4->_descriptionLine3Label];

    v58 = objc_alloc_init(MEMORY[0x277D756D0]);
    imageLayoutGuide = v4->_imageLayoutGuide;
    v4->_imageLayoutGuide = v58;

    contentView7 = [(NTKUpNextThumbnailCell *)v4 contentView];
    [contentView7 addLayoutGuide:v4->_imageLayoutGuide];

    widthAnchor = [(UILayoutGuide *)v4->_imageLayoutGuide widthAnchor];
    v62 = [widthAnchor constraintEqualToConstant:1.0];
    imageLayoutGuideWidthConstraint = v4->_imageLayoutGuideWidthConstraint;
    v4->_imageLayoutGuideWidthConstraint = v62;

    heightAnchor = [(UILayoutGuide *)v4->_imageLayoutGuide heightAnchor];
    v65 = [heightAnchor constraintEqualToConstant:1.0];
    imageLayoutGuideHeightConstraint = v4->_imageLayoutGuideHeightConstraint;
    v4->_imageLayoutGuideHeightConstraint = v65;

    centerYAnchor = [(NTKUpNextImageView *)v4->_imageView centerYAnchor];
    centerYAnchor2 = [(UILayoutGuide *)v4->_imageLayoutGuide centerYAnchor];
    v173 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v198[0] = v173;
    centerXAnchor = [(NTKUpNextImageView *)v4->_imageView centerXAnchor];
    centerXAnchor2 = [(UILayoutGuide *)v4->_imageLayoutGuide centerXAnchor];
    v167 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v198[1] = v167;
    widthAnchor2 = [(NTKUpNextImageView *)v4->_imageView widthAnchor];
    widthAnchor3 = [(UILayoutGuide *)v4->_imageLayoutGuide widthAnchor];
    v161 = [widthAnchor2 constraintLessThanOrEqualToAnchor:widthAnchor3];
    v198[2] = v161;
    heightAnchor2 = [(NTKUpNextImageView *)v4->_imageView heightAnchor];
    heightAnchor3 = [(UILayoutGuide *)v4->_imageLayoutGuide heightAnchor];
    v155 = [heightAnchor2 constraintLessThanOrEqualToAnchor:heightAnchor3];
    v198[3] = v155;
    topAnchor = [(UILayoutGuide *)v4->_labelLayoutGuide topAnchor];
    contentView8 = [(NTKUpNextThumbnailCell *)v4 contentView];
    topAnchor2 = [contentView8 topAnchor];
    v151 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:*(&v187 + 1)];
    v198[4] = v151;
    bottomAnchor = [(UILayoutGuide *)v4->_labelLayoutGuide bottomAnchor];
    contentView9 = [(NTKUpNextThumbnailCell *)v4 contentView];
    bottomAnchor2 = [contentView9 bottomAnchor];
    v147 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-*(&v188 + 1)];
    v198[5] = v147;
    leadingAnchor = [(UILayoutGuide *)v4->_labelLayoutGuide leadingAnchor];
    trailingAnchor = [(UILayoutGuide *)v4->_imageLayoutGuide trailingAnchor];
    v144 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:*&v185];
    v198[6] = v144;
    trailingAnchor2 = [(UILayoutGuide *)v4->_labelLayoutGuide trailingAnchor];
    contentView10 = [(NTKUpNextThumbnailCell *)v4 contentView];
    trailingAnchor3 = [contentView10 trailingAnchor];
    v140 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-*&v189];
    v198[7] = v140;
    leadingAnchor2 = [(CLKUIColoringLabel *)v4->_headerLabel leadingAnchor];
    leadingAnchor3 = [(UILayoutGuide *)v4->_labelLayoutGuide leadingAnchor];
    v137 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
    v198[8] = v137;
    trailingAnchor4 = [(CLKUIColoringLabel *)v4->_headerLabel trailingAnchor];
    trailingAnchor5 = [(UILayoutGuide *)v4->_labelLayoutGuide trailingAnchor];
    v134 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v198[9] = v134;
    leadingAnchor4 = [(CLKUIColoringLabel *)v4->_descriptionLine1Label leadingAnchor];
    leadingAnchor5 = [(UILayoutGuide *)v4->_labelLayoutGuide leadingAnchor];
    v131 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    v198[10] = v131;
    trailingAnchor6 = [(CLKUIColoringLabel *)v4->_descriptionLine1Label trailingAnchor];
    trailingAnchor7 = [(UILayoutGuide *)v4->_labelLayoutGuide trailingAnchor];
    v69 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
    v198[11] = v69;
    leadingAnchor6 = [(CLKUIColoringLabel *)v4->_descriptionLine2Label leadingAnchor];
    leadingAnchor7 = [(UILayoutGuide *)v4->_labelLayoutGuide leadingAnchor];
    v72 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    v198[12] = v72;
    trailingAnchor8 = [(CLKUIColoringLabel *)v4->_descriptionLine2Label trailingAnchor];
    trailingAnchor9 = [(UILayoutGuide *)v4->_labelLayoutGuide trailingAnchor];
    v75 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
    v198[13] = v75;
    v198[14] = v4->_imageLayoutGuideHeightConstraint;
    v198[15] = v4->_imageLayoutGuideWidthConstraint;
    v177 = [MEMORY[0x277CBEA60] arrayWithObjects:v198 count:16];

    firstBaselineAnchor = [(CLKUIColoringLabel *)v4->_descriptionLine1Label firstBaselineAnchor];
    topAnchor3 = [(UILayoutGuide *)v4->_labelLayoutGuide topAnchor];
    v78 = *(&v183 + 1);
    v79 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor3 constant:*(&v183 + 1)];
    v197 = v79;
    v80 = [MEMORY[0x277CBEA60] arrayWithObjects:&v197 count:1];
    withoutHeaderConstraints = v4->_withoutHeaderConstraints;
    v4->_withoutHeaderConstraints = v80;

    firstBaselineAnchor2 = [(CLKUIColoringLabel *)v4->_headerLabel firstBaselineAnchor];
    topAnchor4 = [(UILayoutGuide *)v4->_labelLayoutGuide topAnchor];
    v84 = [firstBaselineAnchor2 constraintEqualToAnchor:topAnchor4 constant:v78];
    v196[0] = v84;
    firstBaselineAnchor3 = [(CLKUIColoringLabel *)v4->_descriptionLine1Label firstBaselineAnchor];
    lastBaselineAnchor = [(CLKUIColoringLabel *)v4->_headerLabel lastBaselineAnchor];
    v87 = [firstBaselineAnchor3 constraintEqualToAnchor:lastBaselineAnchor constant:*&v184];
    v196[1] = v87;
    v88 = [MEMORY[0x277CBEA60] arrayWithObjects:v196 count:2];
    withHeaderConstraints = v4->_withHeaderConstraints;
    v4->_withHeaderConstraints = v88;

    firstBaselineAnchor4 = [(CLKUIColoringLabel *)v4->_descriptionLine2Label firstBaselineAnchor];
    lastBaselineAnchor2 = [(CLKUIColoringLabel *)v4->_descriptionLine1Label lastBaselineAnchor];
    v92 = *&v186;
    v93 = [firstBaselineAnchor4 constraintEqualToAnchor:lastBaselineAnchor2 constant:*(&v184 + 1) + *&v186];
    v195[0] = v93;
    lastBaselineAnchor3 = [(CLKUIColoringLabel *)v4->_descriptionLine2Label lastBaselineAnchor];
    bottomAnchor3 = [(UILayoutGuide *)v4->_labelLayoutGuide bottomAnchor];
    v96 = *(&v186 + 1);
    v97 = -*(&v186 + 1);
    v98 = [lastBaselineAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor3 constant:-*(&v186 + 1)];
    v195[1] = v98;
    v99 = [MEMORY[0x277CBEA60] arrayWithObjects:v195 count:2];
    withDescription2Constraints = v4->_withDescription2Constraints;
    v4->_withDescription2Constraints = v99;

    lastBaselineAnchor4 = [(CLKUIColoringLabel *)v4->_descriptionLine1Label lastBaselineAnchor];
    bottomAnchor4 = [(UILayoutGuide *)v4->_labelLayoutGuide bottomAnchor];
    v103 = [lastBaselineAnchor4 constraintLessThanOrEqualToAnchor:bottomAnchor4 constant:v97];
    v194[0] = v103;
    lastBaselineAnchor5 = [(CLKUIColoringLabel *)v4->_headerLabel lastBaselineAnchor];
    bottomAnchor5 = [(UILayoutGuide *)v4->_labelLayoutGuide bottomAnchor];
    v106 = [lastBaselineAnchor5 constraintLessThanOrEqualToAnchor:bottomAnchor5 constant:v97];
    v194[1] = v106;
    v107 = [MEMORY[0x277CBEA60] arrayWithObjects:v194 count:2];
    withoutDescription2Constraints = v4->_withoutDescription2Constraints;
    v4->_withoutDescription2Constraints = v107;

    leadingAnchor8 = [(UILayoutGuide *)v4->_imageLayoutGuide leadingAnchor];
    contentView11 = [(NTKUpNextThumbnailCell *)v4 contentView];
    leadingAnchor9 = [contentView11 leadingAnchor];
    v168 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9 constant:*&v185];
    v193[0] = v168;
    centerYAnchor3 = [(UILayoutGuide *)v4->_imageLayoutGuide centerYAnchor];
    firstBaselineAnchor5 = [(CLKUIColoringLabel *)v4->_descriptionLine3Label firstBaselineAnchor];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    UIRoundToScale();
    v160 = [centerYAnchor3 constraintEqualToAnchor:firstBaselineAnchor5 constant:?];
    v193[1] = v160;
    leadingAnchor10 = [(CLKUIColoringLabel *)v4->_descriptionLine3Label leadingAnchor];
    contentView12 = [(NTKUpNextThumbnailCell *)v4 contentView];
    leadingAnchor11 = [contentView12 leadingAnchor];
    v110 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor11 constant:1.0];
    v193[2] = v110;
    trailingAnchor10 = [(CLKUIColoringLabel *)v4->_descriptionLine3Label trailingAnchor];
    leadingAnchor12 = [(UILayoutGuide *)v4->_labelLayoutGuide leadingAnchor];
    v113 = [trailingAnchor10 constraintEqualToAnchor:leadingAnchor12 constant:-1.0];
    v193[3] = v113;
    firstBaselineAnchor6 = [(CLKUIColoringLabel *)v4->_descriptionLine3Label firstBaselineAnchor];
    contentView13 = [(NTKUpNextThumbnailCell *)v4 contentView];
    bottomAnchor6 = [contentView13 bottomAnchor];
    v117 = [firstBaselineAnchor6 constraintEqualToAnchor:bottomAnchor6 constant:v92 - v96];
    v193[4] = v117;
    v118 = [MEMORY[0x277CBEA60] arrayWithObjects:v193 count:5];
    withDescription3Constraints = v4->_withDescription3Constraints;
    v4->_withDescription3Constraints = v118;

    leadingAnchor13 = [(UILayoutGuide *)v4->_imageLayoutGuide leadingAnchor];
    contentView14 = [(NTKUpNextThumbnailCell *)v4 contentView];
    leadingAnchor14 = [contentView14 leadingAnchor];
    v123 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14 constant:*&v188];
    v192[0] = v123;
    centerYAnchor4 = [(UILayoutGuide *)v4->_imageLayoutGuide centerYAnchor];
    contentView15 = [(NTKUpNextThumbnailCell *)v4 contentView];
    centerYAnchor5 = [contentView15 centerYAnchor];
    v127 = [centerYAnchor4 constraintEqualToAnchor:centerYAnchor5];
    v192[1] = v127;
    v128 = [MEMORY[0x277CBEA60] arrayWithObjects:v192 count:2];
    withoutDescription3Constraints = v4->_withoutDescription3Constraints;
    v4->_withoutDescription3Constraints = v128;

    [MEMORY[0x277CCAAD0] activateConstraints:v4->_withoutDescription3Constraints];
    [MEMORY[0x277CCAAD0] activateConstraints:v4->_withoutDescription2Constraints];
    [MEMORY[0x277CCAAD0] activateConstraints:v4->_withoutHeaderConstraints];
    [MEMORY[0x277CCAAD0] activateConstraints:v177];
    [(CLKUIColoringLabel *)v4->_descriptionLine1Label setNumberOfLines:3];
    [(CLKUIColoringLabel *)v4->_headerLabel setHidden:1];
    [(CLKUIColoringLabel *)v4->_descriptionLine2Label setHidden:1];
    [(CLKUIColoringLabel *)v4->_descriptionLine3Label setHidden:1];
  }

  return v4;
}

id __40__NTKUpNextThumbnailCell_initWithFrame___block_invoke()
{
  v0 = [off_27877BEF8 alloc];
  v1 = [v0 initWithFrame:4 options:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 setLineBreakMode:4];
  [v1 _setUseShortcutIntrinsicContentSize:1];
  [v1 setNowProvider:&__block_literal_global_4_2];

  return v1;
}

- (void)updateConstraints
{
  content = [(NTKUpNextBaseCell *)self content];
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  memset(v37, 0, sizeof(v37));
  device = [(NTKUpNextBaseCell *)self device];
  ___LayoutConstants_block_invoke_49(device, v37);

  description3TextProvider = [content description3TextProvider];
  v8 = description3TextProvider != 0;

  if (self->_showingSmallThumbnail == v8)
  {
    if (description3TextProvider)
    {
      goto LABEL_24;
    }
  }

  else
  {
    self->_showingSmallThumbnail = v8;
    [(CLKUIColoringLabel *)self->_descriptionLine3Label setHidden:description3TextProvider == 0];
    if (description3TextProvider)
    {
      [(NSLayoutConstraint *)self->_imageLayoutGuideWidthConstraint setConstant:*(&v38 + 1)];
      [(NSLayoutConstraint *)self->_imageLayoutGuideHeightConstraint setConstant:*&v39];
      [v4 addObjectsFromArray:self->_withDescription3Constraints];
      [v5 addObjectsFromArray:self->_withoutDescription3Constraints];
      goto LABEL_24;
    }

    [v4 addObjectsFromArray:self->_withoutDescription3Constraints];
    [v5 addObjectsFromArray:self->_withDescription3Constraints];
  }

  v9 = objc_opt_class();
  device2 = [(NTKUpNextBaseCell *)self device];
  [v9 suggestedBodyImageSizeForDevice:device2];
  v12 = v11;
  v14 = v13;

  [(NTKUpNextImageView *)self->_imageView intrinsicContentSize];
  v17 = v16;
  if (v15 == *MEMORY[0x277D77260] && v16 == *MEMORY[0x277D77260])
  {
    [(NSLayoutConstraint *)self->_imageLayoutGuideWidthConstraint setConstant:v12];
    imageLayoutGuideHeightConstraint = self->_imageLayoutGuideHeightConstraint;
    v22 = v14;
  }

  else
  {
    if (v16 <= v15 || v16 <= v14)
    {
      if (v15 >= v16 && v15 > v12)
      {
        v17 = v12 * (v16 / v15);
        v15 = v12;
      }
    }

    else
    {
      v15 = v14 * (v15 / v16);
      v17 = v14;
    }

    [(NSLayoutConstraint *)self->_imageLayoutGuideWidthConstraint setConstant:v15];
    imageLayoutGuideHeightConstraint = self->_imageLayoutGuideHeightConstraint;
    v22 = v17;
  }

  [(NSLayoutConstraint *)imageLayoutGuideHeightConstraint setConstant:v22];
LABEL_24:
  description2TextProvider = [content description2TextProvider];
  v24 = description2TextProvider != 0;

  if (self->_showingThirdLine != v24)
  {
    self->_showingThirdLine = v24;
    [(CLKUIColoringLabel *)self->_descriptionLine2Label setHidden:description2TextProvider == 0];
    if (self->_showingThirdLine)
    {
      v25 = &OBJC_IVAR___NTKUpNextThumbnailCell__withoutDescription2Constraints;
    }

    else
    {
      v25 = &OBJC_IVAR___NTKUpNextThumbnailCell__withDescription2Constraints;
    }

    if (self->_showingThirdLine)
    {
      v26 = &OBJC_IVAR___NTKUpNextThumbnailCell__withDescription2Constraints;
    }

    else
    {
      v26 = &OBJC_IVAR___NTKUpNextThumbnailCell__withoutDescription2Constraints;
    }

    [v5 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + *v25)];
    [v4 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + *v26)];
  }

  headerTextProvider = [content headerTextProvider];
  v28 = headerTextProvider != 0;

  if (self->_showingHeader != v28)
  {
    v29 = headerTextProvider == 0;
    v30 = headerTextProvider == 0;
    self->_showingHeader = v28;
    if (headerTextProvider)
    {
      v31 = &OBJC_IVAR___NTKUpNextThumbnailCell__withoutHeaderConstraints;
    }

    else
    {
      v31 = &OBJC_IVAR___NTKUpNextThumbnailCell__withHeaderConstraints;
    }

    if (v29)
    {
      v32 = &OBJC_IVAR___NTKUpNextThumbnailCell__withoutHeaderConstraints;
    }

    else
    {
      v32 = &OBJC_IVAR___NTKUpNextThumbnailCell__withHeaderConstraints;
    }

    [(CLKUIColoringLabel *)self->_headerLabel setHidden:v30];
    [v5 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + *v31)];
    [v4 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + *v32)];
  }

  if (!self->_showingThirdLine)
  {
    if (self->_showingHeader)
    {
      description1TextProvider = [content description1TextProvider];

      headerLabel = self->_headerLabel;
      if (description1TextProvider)
      {
        [(CLKUIColoringLabel *)headerLabel setNumberOfLines:2];
        headerLabel = self->_descriptionLine1Label;
        v34 = 2;
        goto LABEL_49;
      }
    }

    else
    {
      headerLabel = self->_descriptionLine1Label;
    }

    v34 = 3;
    goto LABEL_49;
  }

  [(CLKUIColoringLabel *)self->_headerLabel setNumberOfLines:1];
  headerLabel = self->_descriptionLine1Label;
  if (self->_showingHeader)
  {
    v34 = 1;
  }

  else
  {
    v34 = 2;
  }

LABEL_49:
  [(CLKUIColoringLabel *)headerLabel setNumberOfLines:v34];
  [MEMORY[0x277CCAAD0] deactivateConstraints:v5];
  [MEMORY[0x277CCAAD0] activateConstraints:v4];
  v36.receiver = self;
  v36.super_class = NTKUpNextThumbnailCell;
  [(NTKUpNextThumbnailCell *)&v36 updateConstraints];
}

- (void)configureWithContent:(id)content
{
  v28.receiver = self;
  v28.super_class = NTKUpNextThumbnailCell;
  contentCopy = content;
  [(NTKUpNextBaseCell *)&v28 configureWithContent:contentCopy];
  [NTKUpNextBaseCell clearLabel:self->_headerLabel];
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

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__NTKUpNextThumbnailCell_configureWithContent___block_invoke;
  aBlock[3] = &unk_278781428;
  aBlock[4] = self;
  v13 = _Block_copy(aBlock);
  v13[2](v13, self->_headerLabel, [contentCopy headerFontStyle]);
  v13[2](v13, self->_descriptionLine1Label, [contentCopy description1FontStyle]);
  v13[2](v13, self->_descriptionLine2Label, [contentCopy description2FontStyle]);
  imageView = self->_imageView;
  overrideBodyImage = [contentCopy overrideBodyImage];
  bodyImageProvider = [contentCopy bodyImageProvider];
  [(NTKUpNextImageView *)imageView setFullColorImage:overrideBodyImage tintableImageProvider:bodyImageProvider];

  v17 = self->_imageView;
  bodyImageCompositingFilter = [contentCopy bodyImageCompositingFilter];
  [(NTKUpNextImageView *)v17 setCompositingFilter:bodyImageCompositingFilter];

  headerTextProvider2 = [contentCopy headerTextProvider];
  [headerTextProvider2 setPaused:{-[NTKUpNextBaseCell isPaused](self, "isPaused")}];

  description1TextProvider2 = [contentCopy description1TextProvider];
  [description1TextProvider2 setPaused:{-[NTKUpNextBaseCell isPaused](self, "isPaused")}];

  description2TextProvider2 = [contentCopy description2TextProvider];
  [description2TextProvider2 setPaused:{-[NTKUpNextBaseCell isPaused](self, "isPaused")}];

  description3TextProvider2 = [contentCopy description3TextProvider];
  [description3TextProvider2 setPaused:{-[NTKUpNextBaseCell isPaused](self, "isPaused")}];

  description1Opacity = [contentCopy description1Opacity];

  v24 = self->_descriptionLine1Label;
  if (description1Opacity)
  {
    [description1Opacity floatValue];
    v26 = v25;
  }

  else
  {
    v26 = 1.0;
  }

  [(CLKUIColoringLabel *)v24 setAlpha:v26];
  [(NTKUpNextThumbnailCell *)self setNeedsUpdateConstraints];
}

void __47__NTKUpNextThumbnailCell_configureWithContent___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = 0.0;
  v8 = v5;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v7 = &OBJC_IVAR___NTKUpNextThumbnailCell__boldFont;
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_12;
      }

      v7 = &OBJC_IVAR___NTKUpNextThumbnailCell__standardFont;
      v6 = 0.8;
    }
  }

  else
  {
    v7 = &OBJC_IVAR___NTKUpNextThumbnailCell__standardFont;
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_12;
      }

      if (!CLKIsCurrentLocaleNonLatin())
      {
        v7 = &OBJC_IVAR___NTKUpNextThumbnailCell__italicFont;
      }
    }
  }

  [v8 setFont:*(*(a1 + 32) + *v7)];
  v5 = v8;
LABEL_12:
  [v5 setMinimumScaleFactor:v6];
  [v8 setAdjustsFontSizeToFitWidth:v6 != 0.0];
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  v9.receiver = self;
  v9.super_class = NTKUpNextThumbnailCell;
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
  v7.receiver = self;
  v7.super_class = NTKUpNextThumbnailCell;
  [(NTKUpNextBaseCell *)&v7 prepareForReuse];
  [(NTKUpNextImageView *)self->_imageView transitionToMonochromeWithFraction:0.0];
  layer = [(CLKUIColoringLabel *)self->_headerLabel layer];
  [layer setFilters:0];

  layer2 = [(CLKUIColoringLabel *)self->_descriptionLine1Label layer];
  [layer2 setFilters:0];

  layer3 = [(CLKUIColoringLabel *)self->_descriptionLine2Label layer];
  [layer3 setFilters:0];

  layer4 = [(CLKUIColoringLabel *)self->_descriptionLine3Label layer];
  [layer4 setFilters:0];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  [(NTKUpNextImageView *)self->_imageView transitionToMonochromeWithFraction:?];
  if (fabs(fraction) >= 0.00000011920929)
  {
    filterProvider = [(NTKUpNextBaseCell *)self filterProvider];
    layer8 = [filterProvider filtersForView:self style:2 fraction:fraction];

    v9 = layer8;
    if (!layer8)
    {
      goto LABEL_10;
    }

    layer = [(CLKUIColoringLabel *)self->_headerLabel layer];
    [layer setFilters:layer8];

    layer2 = [(CLKUIColoringLabel *)self->_descriptionLine3Label layer];
    [layer2 setFilters:layer8];

    content = [(NTKUpNextBaseCell *)self content];
    headerTextProvider = [content headerTextProvider];
    if (headerTextProvider)
    {
      v14 = headerTextProvider;
      content2 = [(NTKUpNextBaseCell *)self content];
      headerFontStyle = [content2 headerFontStyle];

      if (headerFontStyle == 2)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    layer3 = [(CLKUIColoringLabel *)self->_descriptionLine1Label layer];
    [layer3 setFilters:layer8];

    layer4 = [(CLKUIColoringLabel *)self->_descriptionLine2Label layer];
    [layer4 setFilters:layer8];
  }

  else
  {
    layer5 = [(CLKUIColoringLabel *)self->_headerLabel layer];
    [layer5 setFilters:0];

    layer6 = [(CLKUIColoringLabel *)self->_descriptionLine1Label layer];
    [layer6 setFilters:0];

    layer7 = [(CLKUIColoringLabel *)self->_descriptionLine2Label layer];
    [layer7 setFilters:0];

    layer8 = [(CLKUIColoringLabel *)self->_descriptionLine3Label layer];
    [layer8 setFilters:0];
  }

LABEL_9:
  v9 = layer8;
LABEL_10:
}

- (void)updateMonochromeColor
{
  [(NTKUpNextImageView *)self->_imageView updateMonochromeColor];
  filterProvider = [(NTKUpNextBaseCell *)self filterProvider];
  v13 = [filterProvider filtersForView:self style:2];

  if (v13)
  {
    layer = [(CLKUIColoringLabel *)self->_headerLabel layer];
    [layer setFilters:v13];

    layer2 = [(CLKUIColoringLabel *)self->_descriptionLine3Label layer];
    [layer2 setFilters:v13];

    content = [(NTKUpNextBaseCell *)self content];
    headerTextProvider = [content headerTextProvider];
    if (headerTextProvider)
    {
      v8 = headerTextProvider;
      content2 = [(NTKUpNextBaseCell *)self content];
      headerFontStyle = [content2 headerFontStyle];

      if (headerFontStyle == 2)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    layer3 = [(CLKUIColoringLabel *)self->_descriptionLine1Label layer];
    [layer3 setFilters:v13];

    layer4 = [(CLKUIColoringLabel *)self->_descriptionLine2Label layer];
    [layer4 setFilters:v13];
  }

LABEL_7:
}

@end