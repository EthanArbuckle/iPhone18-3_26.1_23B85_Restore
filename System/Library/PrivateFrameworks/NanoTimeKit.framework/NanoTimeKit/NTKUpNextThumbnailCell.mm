@interface NTKUpNextThumbnailCell
+ (CGSize)suggestedBodyImageSizeForDevice:(id)a3;
- (NTKUpNextThumbnailCell)initWithFrame:(CGRect)a3;
- (id)backgroundColorForView:(id)a3;
- (id)colorForView:(id)a3 accented:(BOOL)a4;
- (void)configureWithContent:(id)a3;
- (void)prepareForReuse;
- (void)setPaused:(BOOL)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateConstraints;
- (void)updateMonochromeColor;
@end

@implementation NTKUpNextThumbnailCell

+ (CGSize)suggestedBodyImageSizeForDevice:(id)a3
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  memset(v5, 0, sizeof(v5));
  ___LayoutConstants_block_invoke_49(a3, v5);
  v3 = *&v8 - (*(&v8 + 1) + *&v6 * 2.0 + *(&v9 + 1));
  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (NTKUpNextThumbnailCell)initWithFrame:(CGRect)a3
{
  v198[16] = *MEMORY[0x277D85DE8];
  v191.receiver = self;
  v191.super_class = NTKUpNextThumbnailCell;
  v3 = [(NTKUpNextBaseCell *)&v191 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v5 = [(NTKUpNextBaseCell *)v3 device];
    ___LayoutConstants_block_invoke_49(v5, &v183);

    v6 = *(&v185 + 1);
    v7 = [MEMORY[0x277CBBB08] systemFontOfSize:*(&v185 + 1)];
    v8 = [v7 fontDescriptor];
    v9 = [v8 fontDescriptorWithSymbolicTraits:1];

    v10 = [MEMORY[0x277CBBB08] systemFontOfSize:v6];
    v11 = [v10 fontDescriptor];
    v12 = [v11 fontDescriptorWithSymbolicTraits:2];

    LOBYTE(v11) = CLKIsCurrentLocaleNonLatin();
    v13 = *MEMORY[0x277D74410];
    v14 = [MEMORY[0x277CBBB08] systemFontOfSize:v6 weight:*MEMORY[0x277D74410]];
    v15 = [v14 fontDescriptor];
    v16 = v15;
    if ((v11 & 1) == 0)
    {
      v17 = [v15 fontDescriptorWithSymbolicTraits:1];

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
    v25 = [MEMORY[0x277D74240] NTKHyphenationParagraphStyle];
    [v25 setLineBreakMode:4];
    [v25 lineSpacing];
    [v25 setLineSpacing:v26 + *&v186];
    v27 = __40__NTKUpNextThumbnailCell_initWithFrame___block_invoke();
    headerLabel = v4->_headerLabel;
    v4->_headerLabel = v27;

    [(CLKUIColoringLabel *)v4->_headerLabel setFont:v4->_boldFont];
    v29 = v4->_headerLabel;
    v30 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v29 setTextColor:v30];

    [(CLKUIColoringLabel *)v4->_headerLabel setNumberOfLines:2];
    [(CLKUIColoringLabel *)v4->_headerLabel setParagraphStyle:v25];
    v31 = __40__NTKUpNextThumbnailCell_initWithFrame___block_invoke();
    descriptionLine1Label = v4->_descriptionLine1Label;
    v4->_descriptionLine1Label = v31;

    v33 = v4->_descriptionLine1Label;
    v34 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v33 setTextColor:v34];

    [(CLKUIColoringLabel *)v4->_descriptionLine1Label setFont:v4->_standardFont];
    v178 = v25;
    [(CLKUIColoringLabel *)v4->_descriptionLine1Label setParagraphStyle:v25];
    v35 = __40__NTKUpNextThumbnailCell_initWithFrame___block_invoke();
    descriptionLine2Label = v4->_descriptionLine2Label;
    v4->_descriptionLine2Label = v35;

    v37 = v4->_descriptionLine2Label;
    v38 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v37 setTextColor:v38];

    [(CLKUIColoringLabel *)v4->_descriptionLine2Label setFont:v4->_italicFont];
    [(CLKUIColoringLabel *)v4->_descriptionLine2Label setNumberOfLines:1];
    v39 = __40__NTKUpNextThumbnailCell_initWithFrame___block_invoke();
    descriptionLine3Label = v4->_descriptionLine3Label;
    v4->_descriptionLine3Label = v39;

    v41 = v4->_descriptionLine3Label;
    v42 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v41 setTextColor:v42];

    v179 = v24;
    [(CLKUIColoringLabel *)v4->_descriptionLine3Label setFont:v24];
    [(CLKUIColoringLabel *)v4->_descriptionLine3Label setNumberOfLines:1];
    [(CLKUIColoringLabel *)v4->_descriptionLine3Label setTextAlignment:1];
    [(CLKUIColoringLabel *)v4->_descriptionLine3Label setAdjustsFontSizeToFitWidth:1];
    [(CLKUIColoringLabel *)v4->_descriptionLine3Label setMinimumScaleFactor:0.7];
    v43 = [(NTKUpNextBaseCell *)v4 device];
    v44 = [v43 sizeClass];

    if (v44 == 3)
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
    v49 = [(NTKUpNextImageView *)v4->_imageView layer];
    [v49 setCornerRadius:*&v183];

    [(NTKUpNextImageView *)v4->_imageView setClipsToBounds:1];
    [(NTKUpNextImageView *)v4->_imageView setFilterProvider:v4];
    v50 = objc_alloc_init(MEMORY[0x277D756D0]);
    labelLayoutGuide = v4->_labelLayoutGuide;
    v4->_labelLayoutGuide = v50;

    v52 = [(NTKUpNextThumbnailCell *)v4 contentView];
    [v52 addLayoutGuide:v4->_labelLayoutGuide];

    v53 = [(NTKUpNextThumbnailCell *)v4 contentView];
    [v53 addSubview:v4->_imageView];

    v54 = [(NTKUpNextThumbnailCell *)v4 contentView];
    [v54 addSubview:v4->_headerLabel];

    v55 = [(NTKUpNextThumbnailCell *)v4 contentView];
    [v55 addSubview:v4->_descriptionLine1Label];

    v56 = [(NTKUpNextThumbnailCell *)v4 contentView];
    [v56 addSubview:v4->_descriptionLine2Label];

    v57 = [(NTKUpNextThumbnailCell *)v4 contentView];
    [v57 addSubview:v4->_descriptionLine3Label];

    v58 = objc_alloc_init(MEMORY[0x277D756D0]);
    imageLayoutGuide = v4->_imageLayoutGuide;
    v4->_imageLayoutGuide = v58;

    v60 = [(NTKUpNextThumbnailCell *)v4 contentView];
    [v60 addLayoutGuide:v4->_imageLayoutGuide];

    v61 = [(UILayoutGuide *)v4->_imageLayoutGuide widthAnchor];
    v62 = [v61 constraintEqualToConstant:1.0];
    imageLayoutGuideWidthConstraint = v4->_imageLayoutGuideWidthConstraint;
    v4->_imageLayoutGuideWidthConstraint = v62;

    v64 = [(UILayoutGuide *)v4->_imageLayoutGuide heightAnchor];
    v65 = [v64 constraintEqualToConstant:1.0];
    imageLayoutGuideHeightConstraint = v4->_imageLayoutGuideHeightConstraint;
    v4->_imageLayoutGuideHeightConstraint = v65;

    v176 = [(NTKUpNextImageView *)v4->_imageView centerYAnchor];
    v175 = [(UILayoutGuide *)v4->_imageLayoutGuide centerYAnchor];
    v173 = [v176 constraintEqualToAnchor:v175];
    v198[0] = v173;
    v171 = [(NTKUpNextImageView *)v4->_imageView centerXAnchor];
    v169 = [(UILayoutGuide *)v4->_imageLayoutGuide centerXAnchor];
    v167 = [v171 constraintEqualToAnchor:v169];
    v198[1] = v167;
    v165 = [(NTKUpNextImageView *)v4->_imageView widthAnchor];
    v163 = [(UILayoutGuide *)v4->_imageLayoutGuide widthAnchor];
    v161 = [v165 constraintLessThanOrEqualToAnchor:v163];
    v198[2] = v161;
    v159 = [(NTKUpNextImageView *)v4->_imageView heightAnchor];
    v157 = [(UILayoutGuide *)v4->_imageLayoutGuide heightAnchor];
    v155 = [v159 constraintLessThanOrEqualToAnchor:v157];
    v198[3] = v155;
    v153 = [(UILayoutGuide *)v4->_labelLayoutGuide topAnchor];
    v154 = [(NTKUpNextThumbnailCell *)v4 contentView];
    v152 = [v154 topAnchor];
    v151 = [v153 constraintEqualToAnchor:v152 constant:*(&v187 + 1)];
    v198[4] = v151;
    v149 = [(UILayoutGuide *)v4->_labelLayoutGuide bottomAnchor];
    v150 = [(NTKUpNextThumbnailCell *)v4 contentView];
    v148 = [v150 bottomAnchor];
    v147 = [v149 constraintEqualToAnchor:v148 constant:-*(&v188 + 1)];
    v198[5] = v147;
    v146 = [(UILayoutGuide *)v4->_labelLayoutGuide leadingAnchor];
    v145 = [(UILayoutGuide *)v4->_imageLayoutGuide trailingAnchor];
    v144 = [v146 constraintEqualToAnchor:v145 constant:*&v185];
    v198[6] = v144;
    v142 = [(UILayoutGuide *)v4->_labelLayoutGuide trailingAnchor];
    v143 = [(NTKUpNextThumbnailCell *)v4 contentView];
    v141 = [v143 trailingAnchor];
    v140 = [v142 constraintEqualToAnchor:v141 constant:-*&v189];
    v198[7] = v140;
    v139 = [(CLKUIColoringLabel *)v4->_headerLabel leadingAnchor];
    v138 = [(UILayoutGuide *)v4->_labelLayoutGuide leadingAnchor];
    v137 = [v139 constraintEqualToAnchor:v138];
    v198[8] = v137;
    v136 = [(CLKUIColoringLabel *)v4->_headerLabel trailingAnchor];
    v135 = [(UILayoutGuide *)v4->_labelLayoutGuide trailingAnchor];
    v134 = [v136 constraintEqualToAnchor:v135];
    v198[9] = v134;
    v133 = [(CLKUIColoringLabel *)v4->_descriptionLine1Label leadingAnchor];
    v132 = [(UILayoutGuide *)v4->_labelLayoutGuide leadingAnchor];
    v131 = [v133 constraintEqualToAnchor:v132];
    v198[10] = v131;
    v67 = [(CLKUIColoringLabel *)v4->_descriptionLine1Label trailingAnchor];
    v68 = [(UILayoutGuide *)v4->_labelLayoutGuide trailingAnchor];
    v69 = [v67 constraintEqualToAnchor:v68];
    v198[11] = v69;
    v70 = [(CLKUIColoringLabel *)v4->_descriptionLine2Label leadingAnchor];
    v71 = [(UILayoutGuide *)v4->_labelLayoutGuide leadingAnchor];
    v72 = [v70 constraintEqualToAnchor:v71];
    v198[12] = v72;
    v73 = [(CLKUIColoringLabel *)v4->_descriptionLine2Label trailingAnchor];
    v74 = [(UILayoutGuide *)v4->_labelLayoutGuide trailingAnchor];
    v75 = [v73 constraintEqualToAnchor:v74];
    v198[13] = v75;
    v198[14] = v4->_imageLayoutGuideHeightConstraint;
    v198[15] = v4->_imageLayoutGuideWidthConstraint;
    v177 = [MEMORY[0x277CBEA60] arrayWithObjects:v198 count:16];

    v76 = [(CLKUIColoringLabel *)v4->_descriptionLine1Label firstBaselineAnchor];
    v77 = [(UILayoutGuide *)v4->_labelLayoutGuide topAnchor];
    v78 = *(&v183 + 1);
    v79 = [v76 constraintEqualToAnchor:v77 constant:*(&v183 + 1)];
    v197 = v79;
    v80 = [MEMORY[0x277CBEA60] arrayWithObjects:&v197 count:1];
    withoutHeaderConstraints = v4->_withoutHeaderConstraints;
    v4->_withoutHeaderConstraints = v80;

    v82 = [(CLKUIColoringLabel *)v4->_headerLabel firstBaselineAnchor];
    v83 = [(UILayoutGuide *)v4->_labelLayoutGuide topAnchor];
    v84 = [v82 constraintEqualToAnchor:v83 constant:v78];
    v196[0] = v84;
    v85 = [(CLKUIColoringLabel *)v4->_descriptionLine1Label firstBaselineAnchor];
    v86 = [(CLKUIColoringLabel *)v4->_headerLabel lastBaselineAnchor];
    v87 = [v85 constraintEqualToAnchor:v86 constant:*&v184];
    v196[1] = v87;
    v88 = [MEMORY[0x277CBEA60] arrayWithObjects:v196 count:2];
    withHeaderConstraints = v4->_withHeaderConstraints;
    v4->_withHeaderConstraints = v88;

    v90 = [(CLKUIColoringLabel *)v4->_descriptionLine2Label firstBaselineAnchor];
    v91 = [(CLKUIColoringLabel *)v4->_descriptionLine1Label lastBaselineAnchor];
    v92 = *&v186;
    v93 = [v90 constraintEqualToAnchor:v91 constant:*(&v184 + 1) + *&v186];
    v195[0] = v93;
    v94 = [(CLKUIColoringLabel *)v4->_descriptionLine2Label lastBaselineAnchor];
    v95 = [(UILayoutGuide *)v4->_labelLayoutGuide bottomAnchor];
    v96 = *(&v186 + 1);
    v97 = -*(&v186 + 1);
    v98 = [v94 constraintLessThanOrEqualToAnchor:v95 constant:-*(&v186 + 1)];
    v195[1] = v98;
    v99 = [MEMORY[0x277CBEA60] arrayWithObjects:v195 count:2];
    withDescription2Constraints = v4->_withDescription2Constraints;
    v4->_withDescription2Constraints = v99;

    v101 = [(CLKUIColoringLabel *)v4->_descriptionLine1Label lastBaselineAnchor];
    v102 = [(UILayoutGuide *)v4->_labelLayoutGuide bottomAnchor];
    v103 = [v101 constraintLessThanOrEqualToAnchor:v102 constant:v97];
    v194[0] = v103;
    v104 = [(CLKUIColoringLabel *)v4->_headerLabel lastBaselineAnchor];
    v105 = [(UILayoutGuide *)v4->_labelLayoutGuide bottomAnchor];
    v106 = [v104 constraintLessThanOrEqualToAnchor:v105 constant:v97];
    v194[1] = v106;
    v107 = [MEMORY[0x277CBEA60] arrayWithObjects:v194 count:2];
    withoutDescription2Constraints = v4->_withoutDescription2Constraints;
    v4->_withoutDescription2Constraints = v107;

    v172 = [(UILayoutGuide *)v4->_imageLayoutGuide leadingAnchor];
    v174 = [(NTKUpNextThumbnailCell *)v4 contentView];
    v170 = [v174 leadingAnchor];
    v168 = [v172 constraintEqualToAnchor:v170 constant:*&v185];
    v193[0] = v168;
    v164 = [(UILayoutGuide *)v4->_imageLayoutGuide centerYAnchor];
    v162 = [(CLKUIColoringLabel *)v4->_descriptionLine3Label firstBaselineAnchor];
    v166 = [MEMORY[0x277D759A0] mainScreen];
    [v166 scale];
    UIRoundToScale();
    v160 = [v164 constraintEqualToAnchor:v162 constant:?];
    v193[1] = v160;
    v156 = [(CLKUIColoringLabel *)v4->_descriptionLine3Label leadingAnchor];
    v158 = [(NTKUpNextThumbnailCell *)v4 contentView];
    v109 = [v158 leadingAnchor];
    v110 = [v156 constraintEqualToAnchor:v109 constant:1.0];
    v193[2] = v110;
    v111 = [(CLKUIColoringLabel *)v4->_descriptionLine3Label trailingAnchor];
    v112 = [(UILayoutGuide *)v4->_labelLayoutGuide leadingAnchor];
    v113 = [v111 constraintEqualToAnchor:v112 constant:-1.0];
    v193[3] = v113;
    v114 = [(CLKUIColoringLabel *)v4->_descriptionLine3Label firstBaselineAnchor];
    v115 = [(NTKUpNextThumbnailCell *)v4 contentView];
    v116 = [v115 bottomAnchor];
    v117 = [v114 constraintEqualToAnchor:v116 constant:v92 - v96];
    v193[4] = v117;
    v118 = [MEMORY[0x277CBEA60] arrayWithObjects:v193 count:5];
    withDescription3Constraints = v4->_withDescription3Constraints;
    v4->_withDescription3Constraints = v118;

    v120 = [(UILayoutGuide *)v4->_imageLayoutGuide leadingAnchor];
    v121 = [(NTKUpNextThumbnailCell *)v4 contentView];
    v122 = [v121 leadingAnchor];
    v123 = [v120 constraintEqualToAnchor:v122 constant:*&v188];
    v192[0] = v123;
    v124 = [(UILayoutGuide *)v4->_imageLayoutGuide centerYAnchor];
    v125 = [(NTKUpNextThumbnailCell *)v4 contentView];
    v126 = [v125 centerYAnchor];
    v127 = [v124 constraintEqualToAnchor:v126];
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
  v3 = [(NTKUpNextBaseCell *)self content];
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  memset(v37, 0, sizeof(v37));
  v6 = [(NTKUpNextBaseCell *)self device];
  ___LayoutConstants_block_invoke_49(v6, v37);

  v7 = [v3 description3TextProvider];
  v8 = v7 != 0;

  if (self->_showingSmallThumbnail == v8)
  {
    if (v7)
    {
      goto LABEL_24;
    }
  }

  else
  {
    self->_showingSmallThumbnail = v8;
    [(CLKUIColoringLabel *)self->_descriptionLine3Label setHidden:v7 == 0];
    if (v7)
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
  v10 = [(NTKUpNextBaseCell *)self device];
  [v9 suggestedBodyImageSizeForDevice:v10];
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
  v23 = [v3 description2TextProvider];
  v24 = v23 != 0;

  if (self->_showingThirdLine != v24)
  {
    self->_showingThirdLine = v24;
    [(CLKUIColoringLabel *)self->_descriptionLine2Label setHidden:v23 == 0];
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

  v27 = [v3 headerTextProvider];
  v28 = v27 != 0;

  if (self->_showingHeader != v28)
  {
    v29 = v27 == 0;
    v30 = v27 == 0;
    self->_showingHeader = v28;
    if (v27)
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
      v35 = [v3 description1TextProvider];

      headerLabel = self->_headerLabel;
      if (v35)
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

- (void)configureWithContent:(id)a3
{
  v28.receiver = self;
  v28.super_class = NTKUpNextThumbnailCell;
  v4 = a3;
  [(NTKUpNextBaseCell *)&v28 configureWithContent:v4];
  [NTKUpNextBaseCell clearLabel:self->_headerLabel];
  headerLabel = self->_headerLabel;
  v6 = [v4 headerTextProvider];
  [(CLKUIColoringLabel *)headerLabel setTextProvider:v6];

  [NTKUpNextBaseCell clearLabel:self->_descriptionLine1Label];
  descriptionLine1Label = self->_descriptionLine1Label;
  v8 = [v4 description1TextProvider];
  [(CLKUIColoringLabel *)descriptionLine1Label setTextProvider:v8];

  [NTKUpNextBaseCell clearLabel:self->_descriptionLine2Label];
  descriptionLine2Label = self->_descriptionLine2Label;
  v10 = [v4 description2TextProvider];
  [(CLKUIColoringLabel *)descriptionLine2Label setTextProvider:v10];

  [NTKUpNextBaseCell clearLabel:self->_descriptionLine3Label];
  descriptionLine3Label = self->_descriptionLine3Label;
  v12 = [v4 description3TextProvider];
  [(CLKUIColoringLabel *)descriptionLine3Label setTextProvider:v12];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__NTKUpNextThumbnailCell_configureWithContent___block_invoke;
  aBlock[3] = &unk_278781428;
  aBlock[4] = self;
  v13 = _Block_copy(aBlock);
  v13[2](v13, self->_headerLabel, [v4 headerFontStyle]);
  v13[2](v13, self->_descriptionLine1Label, [v4 description1FontStyle]);
  v13[2](v13, self->_descriptionLine2Label, [v4 description2FontStyle]);
  imageView = self->_imageView;
  v15 = [v4 overrideBodyImage];
  v16 = [v4 bodyImageProvider];
  [(NTKUpNextImageView *)imageView setFullColorImage:v15 tintableImageProvider:v16];

  v17 = self->_imageView;
  v18 = [v4 bodyImageCompositingFilter];
  [(NTKUpNextImageView *)v17 setCompositingFilter:v18];

  v19 = [v4 headerTextProvider];
  [v19 setPaused:{-[NTKUpNextBaseCell isPaused](self, "isPaused")}];

  v20 = [v4 description1TextProvider];
  [v20 setPaused:{-[NTKUpNextBaseCell isPaused](self, "isPaused")}];

  v21 = [v4 description2TextProvider];
  [v21 setPaused:{-[NTKUpNextBaseCell isPaused](self, "isPaused")}];

  v22 = [v4 description3TextProvider];
  [v22 setPaused:{-[NTKUpNextBaseCell isPaused](self, "isPaused")}];

  v23 = [v4 description1Opacity];

  v24 = self->_descriptionLine1Label;
  if (v23)
  {
    [v23 floatValue];
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

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = NTKUpNextThumbnailCell;
  [(NTKUpNextBaseCell *)&v9 setPaused:?];
  v5 = [(CLKUIColoringLabel *)self->_headerLabel textProvider];
  [v5 setPaused:v3];

  v6 = [(CLKUIColoringLabel *)self->_descriptionLine1Label textProvider];
  [v6 setPaused:v3];

  v7 = [(CLKUIColoringLabel *)self->_descriptionLine2Label textProvider];
  [v7 setPaused:v3];

  v8 = [(CLKUIColoringLabel *)self->_descriptionLine3Label textProvider];
  [v8 setPaused:v3];
}

- (id)colorForView:(id)a3 accented:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NTKUpNextBaseCell *)self filterProvider];
  v8 = [v7 colorForView:v6 accented:v4];

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
  v7.receiver = self;
  v7.super_class = NTKUpNextThumbnailCell;
  [(NTKUpNextBaseCell *)&v7 prepareForReuse];
  [(NTKUpNextImageView *)self->_imageView transitionToMonochromeWithFraction:0.0];
  v3 = [(CLKUIColoringLabel *)self->_headerLabel layer];
  [v3 setFilters:0];

  v4 = [(CLKUIColoringLabel *)self->_descriptionLine1Label layer];
  [v4 setFilters:0];

  v5 = [(CLKUIColoringLabel *)self->_descriptionLine2Label layer];
  [v5 setFilters:0];

  v6 = [(CLKUIColoringLabel *)self->_descriptionLine3Label layer];
  [v6 setFilters:0];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  [(NTKUpNextImageView *)self->_imageView transitionToMonochromeWithFraction:?];
  if (fabs(a3) >= 0.00000011920929)
  {
    v8 = [(NTKUpNextBaseCell *)self filterProvider];
    v19 = [v8 filtersForView:self style:2 fraction:a3];

    v9 = v19;
    if (!v19)
    {
      goto LABEL_10;
    }

    v10 = [(CLKUIColoringLabel *)self->_headerLabel layer];
    [v10 setFilters:v19];

    v11 = [(CLKUIColoringLabel *)self->_descriptionLine3Label layer];
    [v11 setFilters:v19];

    v12 = [(NTKUpNextBaseCell *)self content];
    v13 = [v12 headerTextProvider];
    if (v13)
    {
      v14 = v13;
      v15 = [(NTKUpNextBaseCell *)self content];
      v16 = [v15 headerFontStyle];

      if (v16 == 2)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v17 = [(CLKUIColoringLabel *)self->_descriptionLine1Label layer];
    [v17 setFilters:v19];

    v18 = [(CLKUIColoringLabel *)self->_descriptionLine2Label layer];
    [v18 setFilters:v19];
  }

  else
  {
    v5 = [(CLKUIColoringLabel *)self->_headerLabel layer];
    [v5 setFilters:0];

    v6 = [(CLKUIColoringLabel *)self->_descriptionLine1Label layer];
    [v6 setFilters:0];

    v7 = [(CLKUIColoringLabel *)self->_descriptionLine2Label layer];
    [v7 setFilters:0];

    v19 = [(CLKUIColoringLabel *)self->_descriptionLine3Label layer];
    [v19 setFilters:0];
  }

LABEL_9:
  v9 = v19;
LABEL_10:
}

- (void)updateMonochromeColor
{
  [(NTKUpNextImageView *)self->_imageView updateMonochromeColor];
  v3 = [(NTKUpNextBaseCell *)self filterProvider];
  v13 = [v3 filtersForView:self style:2];

  if (v13)
  {
    v4 = [(CLKUIColoringLabel *)self->_headerLabel layer];
    [v4 setFilters:v13];

    v5 = [(CLKUIColoringLabel *)self->_descriptionLine3Label layer];
    [v5 setFilters:v13];

    v6 = [(NTKUpNextBaseCell *)self content];
    v7 = [v6 headerTextProvider];
    if (v7)
    {
      v8 = v7;
      v9 = [(NTKUpNextBaseCell *)self content];
      v10 = [v9 headerFontStyle];

      if (v10 == 2)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v11 = [(CLKUIColoringLabel *)self->_descriptionLine1Label layer];
    [v11 setFilters:v13];

    v12 = [(CLKUIColoringLabel *)self->_descriptionLine2Label layer];
    [v12 setFilters:v13];
  }

LABEL_7:
}

@end