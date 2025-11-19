@interface NTKUpNextMultilineCell
+ (CGSize)suggestedBodyImageSizeForDevice:(id)a3;
- (NTKUpNextMultilineCell)initWithFrame:(CGRect)a3;
- (id)backgroundColorForView:(id)a3;
- (id)colorForView:(id)a3 accented:(BOOL)a4;
- (id)filterForView:(id)a3 style:(int64_t)a4;
- (id)filterForView:(id)a3 style:(int64_t)a4 fraction:(double)a5;
- (id)filtersForView:(id)a3 style:(int64_t)a4;
- (id)filtersForView:(id)a3 style:(int64_t)a4 fraction:(double)a5;
- (void)configureWithContent:(id)a3;
- (void)prepareForReuse;
- (void)setFilterProvider:(id)a3;
- (void)setPaused:(BOOL)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateConstraints;
- (void)updateMonochromeColor;
@end

@implementation NTKUpNextMultilineCell

+ (CGSize)suggestedBodyImageSizeForDevice:(id)a3
{
  v3 = [a3 sizeClass];
  if (v3 > 1)
  {
    if (v3 != 2 && v3 != 4)
    {
LABEL_8:
      v4 = 34.0;
      goto LABEL_10;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = 27.0;
      goto LABEL_10;
    }

    if (v3 != 1)
    {
      goto LABEL_8;
    }
  }

  v4 = 31.0;
LABEL_10:
  v5 = v4;
  result.height = v5;
  result.width = v4;
  return result;
}

- (NTKUpNextMultilineCell)initWithFrame:(CGRect)a3
{
  v244[14] = *MEMORY[0x277D85DE8];
  v232.receiver = self;
  v232.super_class = NTKUpNextMultilineCell;
  v3 = [(NTKUpNextBaseCell *)&v232 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v231 = 0;
    v229 = 0u;
    v230 = 0u;
    v227 = 0u;
    v228 = 0u;
    v225 = 0u;
    v226 = 0u;
    v223 = 0u;
    v224 = 0u;
    v221 = 0u;
    v222 = 0u;
    v5 = [(NTKUpNextBaseCell *)v3 device];
    ___LayoutConstants_block_invoke_21(v5, &v221);

    v6 = *(&v223 + 1);
    v7 = [MEMORY[0x277CBBB08] systemFontOfSize:*(&v223 + 1)];
    v8 = [v7 fontDescriptor];
    v219 = [v8 fontDescriptorWithSymbolicTraits:1];

    v9 = [MEMORY[0x277CBBB08] systemFontOfSize:v6];
    v10 = [v9 fontDescriptor];
    v218 = [v10 fontDescriptorWithSymbolicTraits:2];

    v11 = [MEMORY[0x277CBBB08] systemFontOfSize:v6 weight:*MEMORY[0x277D74410]];
    standardFont = v4->_standardFont;
    v4->_standardFont = v11;

    v13 = [MEMORY[0x277CBBB08] fontWithDescriptor:v219 size:v6];
    italicFont = v4->_italicFont;
    v4->_italicFont = v13;

    v15 = [MEMORY[0x277CBBB08] fontWithDescriptor:v218 size:v6];
    boldFont = v4->_boldFont;
    v4->_boldFont = v15;

    v17 = __40__NTKUpNextMultilineCell_initWithFrame___block_invoke();
    headerLabel = v4->_headerLabel;
    v4->_headerLabel = v17;

    [(CLKUIColoringLabel *)v4->_headerLabel setFont:v4->_boldFont];
    v19 = v4->_headerLabel;
    v20 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v19 setTextColor:v20];

    v21 = __40__NTKUpNextMultilineCell_initWithFrame___block_invoke();
    descriptionLine1Label = v4->_descriptionLine1Label;
    v4->_descriptionLine1Label = v21;

    v23 = v4->_descriptionLine1Label;
    v24 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v23 setTextColor:v24];

    [(CLKUIColoringLabel *)v4->_descriptionLine1Label setFont:v4->_standardFont];
    v217 = [MEMORY[0x277D74240] NTKHyphenationParagraphStyle];
    [v217 setLineBreakMode:4];
    [v217 lineSpacing];
    [v217 setLineSpacing:v25 + *&v224];
    [(CLKUIColoringLabel *)v4->_descriptionLine1Label setParagraphStyle:v217];
    LODWORD(v26) = 1148846080;
    [(CLKUIColoringLabel *)v4->_descriptionLine1Label setContentHuggingPriority:1 forAxis:v26];
    v27 = __40__NTKUpNextMultilineCell_initWithFrame___block_invoke();
    descriptionLine2Label = v4->_descriptionLine2Label;
    v4->_descriptionLine2Label = v27;

    v29 = v4->_descriptionLine2Label;
    v30 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v29 setTextColor:v30];

    [(CLKUIColoringLabel *)v4->_descriptionLine2Label setFont:v4->_italicFont];
    [(CLKUIColoringLabel *)v4->_descriptionLine2Label setNumberOfLines:1];
    v31 = [NTKUpNextImageView alloc];
    v32 = *MEMORY[0x277CBF3A0];
    v33 = *(MEMORY[0x277CBF3A0] + 8);
    v34 = *(MEMORY[0x277CBF3A0] + 16);
    v35 = *(MEMORY[0x277CBF3A0] + 24);
    v36 = [(NTKUpNextImageView *)v31 initWithFrame:v4 parentCell:*MEMORY[0x277CBF3A0], v33, v34, v35];
    headerImage = v4->_headerImage;
    v4->_headerImage = v36;

    LODWORD(v38) = 1148846080;
    [(NTKUpNextImageView *)v4->_headerImage setContentHuggingPriority:0 forAxis:v38];
    LODWORD(v39) = 1148846080;
    [(NTKUpNextImageView *)v4->_headerImage setContentHuggingPriority:1 forAxis:v39];
    LODWORD(v40) = 1148846080;
    [(NTKUpNextImageView *)v4->_headerImage setContentCompressionResistancePriority:0 forAxis:v40];
    LODWORD(v41) = 1148846080;
    [(NTKUpNextImageView *)v4->_headerImage setContentCompressionResistancePriority:1 forAxis:v41];
    LODWORD(v42) = 1148846080;
    [(CLKUIColoringLabel *)v4->_descriptionLine1Label setContentCompressionResistancePriority:1 forAxis:v42];
    LODWORD(v43) = 1148829696;
    [(CLKUIColoringLabel *)v4->_headerLabel setContentCompressionResistancePriority:1 forAxis:v43];
    LODWORD(v44) = 1132003328;
    [(CLKUIColoringLabel *)v4->_headerLabel setContentHuggingPriority:1 forAxis:v44];
    [(NTKUpNextImageView *)v4->_headerImage setTranslatesAutoresizingMaskIntoConstraints:0];
    v45 = [[NTKUpNextImageView alloc] initWithFrame:v4 parentCell:v32, v33, v34, v35];
    descriptionImageView = v4->_descriptionImageView;
    v4->_descriptionImageView = v45;

    [(NTKUpNextImageView *)v4->_descriptionImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(NTKUpNextImageView *)v4->_descriptionImageView setContentMode:6];
    LODWORD(v47) = 1148846080;
    [(NTKUpNextImageView *)v4->_descriptionImageView setContentHuggingPriority:0 forAxis:v47];
    LODWORD(v48) = 1148846080;
    [(NTKUpNextImageView *)v4->_descriptionImageView setContentCompressionResistancePriority:0 forAxis:v48];
    [(NTKUpNextImageView *)v4->_descriptionImageView setFilterProvider:v4];
    v49 = objc_alloc_init(MEMORY[0x277D756D0]);
    contentLayoutGuide = v4->_contentLayoutGuide;
    v4->_contentLayoutGuide = v49;

    [(UILayoutGuide *)v4->_contentLayoutGuide setIdentifier:@"Multiline-Content"];
    v51 = objc_alloc_init(MEMORY[0x277D756D0]);
    descriptionTextLayoutGuide = v4->_descriptionTextLayoutGuide;
    v4->_descriptionTextLayoutGuide = v51;

    [(UILayoutGuide *)v4->_descriptionTextLayoutGuide setIdentifier:@"Multiline-Description-Text"];
    v53 = objc_alloc_init(MEMORY[0x277D756D0]);
    bodyImageSizingLayoutGuide = v4->_bodyImageSizingLayoutGuide;
    v4->_bodyImageSizingLayoutGuide = v53;

    [(UILayoutGuide *)v4->_bodyImageSizingLayoutGuide setIdentifier:@"Multiline-Body-Image"];
    v55 = [(NTKUpNextMultilineCell *)v4 contentView];
    [v55 addLayoutGuide:v4->_contentLayoutGuide];

    v56 = [(NTKUpNextMultilineCell *)v4 contentView];
    [v56 addLayoutGuide:v4->_descriptionTextLayoutGuide];

    v57 = [(NTKUpNextMultilineCell *)v4 contentView];
    [v57 addLayoutGuide:v4->_bodyImageSizingLayoutGuide];

    v58 = [(NTKUpNextMultilineCell *)v4 contentView];
    [v58 addSubview:v4->_headerImage];

    v59 = [(NTKUpNextMultilineCell *)v4 contentView];
    [v59 addSubview:v4->_headerLabel];

    v60 = [(NTKUpNextMultilineCell *)v4 contentView];
    [v60 addSubview:v4->_descriptionLine1Label];

    v61 = [(NTKUpNextMultilineCell *)v4 contentView];
    [v61 addSubview:v4->_descriptionLine2Label];

    v62 = [(NTKUpNextMultilineCell *)v4 contentView];
    [v62 addSubview:v4->_descriptionImageView];

    [(CLKFont *)v4->_boldFont capHeight];
    v63 = [(NTKUpNextBaseCell *)v4 device];
    CLKRoundForDevice();
    v65 = v64;

    v213 = [(UILayoutGuide *)v4->_contentLayoutGuide topAnchor];
    v215 = [(NTKUpNextMultilineCell *)v4 contentView];
    v212 = [v215 topAnchor];
    v210 = [v213 constraintEqualToAnchor:v212 constant:*(&v228 + 1)];
    v244[0] = v210;
    v208 = [(UILayoutGuide *)v4->_contentLayoutGuide bottomAnchor];
    v209 = [(NTKUpNextMultilineCell *)v4 contentView];
    v207 = [v209 bottomAnchor];
    v206 = [v208 constraintEqualToAnchor:v207 constant:-*(&v229 + 1)];
    v244[1] = v206;
    v204 = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    v205 = [(NTKUpNextMultilineCell *)v4 contentView];
    v203 = [v205 leadingAnchor];
    v202 = [v204 constraintEqualToAnchor:v203 constant:*&v229];
    v244[2] = v202;
    v200 = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    v201 = [(NTKUpNextMultilineCell *)v4 contentView];
    v199 = [v201 trailingAnchor];
    v198 = [v200 constraintEqualToAnchor:v199 constant:-*&v230];
    v244[3] = v198;
    v197 = [(UILayoutGuide *)v4->_descriptionTextLayoutGuide trailingAnchor];
    v196 = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    v195 = [v197 constraintEqualToAnchor:v196];
    v244[4] = v195;
    v194 = [(UILayoutGuide *)v4->_descriptionTextLayoutGuide bottomAnchor];
    v193 = [(UILayoutGuide *)v4->_contentLayoutGuide bottomAnchor];
    v192 = [v194 constraintEqualToAnchor:v193 constant:-*(&v224 + 1)];
    v244[5] = v192;
    v191 = [(NTKUpNextImageView *)v4->_headerImage centerYAnchor];
    v190 = [(CLKUIColoringLabel *)v4->_headerLabel firstBaselineAnchor];
    v189 = [v191 constraintEqualToAnchor:v190 constant:-v65];
    v244[6] = v189;
    v188 = [(CLKUIColoringLabel *)v4->_descriptionLine1Label leadingAnchor];
    v187 = [(UILayoutGuide *)v4->_descriptionTextLayoutGuide leadingAnchor];
    v186 = [v188 constraintEqualToAnchor:v187];
    v244[7] = v186;
    v185 = [(CLKUIColoringLabel *)v4->_descriptionLine1Label trailingAnchor];
    v184 = [(UILayoutGuide *)v4->_descriptionTextLayoutGuide trailingAnchor];
    v183 = [v185 constraintEqualToAnchor:v184];
    v244[8] = v183;
    v182 = [(CLKUIColoringLabel *)v4->_descriptionLine2Label trailingAnchor];
    v181 = [(UILayoutGuide *)v4->_descriptionTextLayoutGuide trailingAnchor];
    v180 = [v182 constraintEqualToAnchor:v181];
    v244[9] = v180;
    v179 = [(NTKUpNextImageView *)v4->_descriptionImageView leadingAnchor];
    v178 = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    v177 = [v179 constraintEqualToAnchor:v178 constant:*&v226];
    v244[10] = v177;
    v66 = [(UILayoutGuide *)v4->_bodyImageSizingLayoutGuide leadingAnchor];
    v67 = [(UILayoutGuide *)v4->_descriptionTextLayoutGuide leadingAnchor];
    v68 = [v66 constraintEqualToAnchor:v67];
    v244[11] = v68;
    v69 = [(UILayoutGuide *)v4->_bodyImageSizingLayoutGuide trailingAnchor];
    v70 = [(UILayoutGuide *)v4->_descriptionTextLayoutGuide trailingAnchor];
    v71 = [v69 constraintEqualToAnchor:v70];
    v244[12] = v71;
    v72 = [(UILayoutGuide *)v4->_bodyImageSizingLayoutGuide topAnchor];
    v73 = [(CLKUIColoringLabel *)v4->_descriptionLine1Label firstBaselineAnchor];
    [(CLKFont *)v4->_standardFont capHeight];
    v75 = [v72 constraintEqualToAnchor:v73 constant:-(v74 + *(&v227 + 1))];
    v244[13] = v75;
    v216 = [MEMORY[0x277CBEA60] arrayWithObjects:v244 count:14];

    v76 = [(CLKUIColoringLabel *)v4->_descriptionLine1Label firstBaselineAnchor];
    v77 = [(UILayoutGuide *)v4->_contentLayoutGuide topAnchor];
    v78 = *&v222;
    v79 = [v76 constraintEqualToAnchor:v77 constant:*&v222];
    v243[0] = v79;
    v80 = [(UILayoutGuide *)v4->_descriptionTextLayoutGuide topAnchor];
    v81 = [(UILayoutGuide *)v4->_contentLayoutGuide topAnchor];
    v82 = [v80 constraintEqualToAnchor:v81];
    v243[1] = v82;
    v83 = [MEMORY[0x277CBEA60] arrayWithObjects:v243 count:2];
    withoutHeaderConstraints = v4->_withoutHeaderConstraints;
    v4->_withoutHeaderConstraints = v83;

    v214 = [(CLKUIColoringLabel *)v4->_descriptionLine1Label firstBaselineAnchor];
    v85 = [(CLKUIColoringLabel *)v4->_headerLabel lastBaselineAnchor];
    v86 = [v214 constraintEqualToAnchor:v85 constant:v78];
    v242[0] = v86;
    v87 = [(CLKUIColoringLabel *)v4->_headerLabel firstBaselineAnchor];
    v88 = [(UILayoutGuide *)v4->_contentLayoutGuide topAnchor];
    v89 = [v87 constraintEqualToAnchor:v88 constant:*(&v221 + 1)];
    v242[1] = v89;
    v90 = [(UILayoutGuide *)v4->_descriptionTextLayoutGuide topAnchor];
    v91 = [(CLKUIColoringLabel *)v4->_headerLabel lastBaselineAnchor];
    v92 = [v90 constraintEqualToAnchor:v91];
    v242[2] = v92;
    v93 = [MEMORY[0x277CBEA60] arrayWithObjects:v242 count:3];
    withHeaderConstraints = v4->_withHeaderConstraints;
    v4->_withHeaderConstraints = v93;

    v95 = [(CLKUIColoringLabel *)v4->_headerLabel leadingAnchor];
    v96 = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    v97 = [v95 constraintEqualToAnchor:v96];
    v241[0] = v97;
    v98 = [(CLKUIColoringLabel *)v4->_headerLabel trailingAnchor];
    v99 = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    v100 = [v98 constraintEqualToAnchor:v99];
    v241[1] = v100;
    v101 = [MEMORY[0x277CBEA60] arrayWithObjects:v241 count:2];
    headerWithNoImageConstraints = v4->_headerWithNoImageConstraints;
    v4->_headerWithNoImageConstraints = v101;

    v103 = [(NTKUpNextImageView *)v4->_headerImage leadingAnchor];
    v104 = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    v105 = [v103 constraintEqualToAnchor:v104];
    v240[0] = v105;
    v106 = [(CLKUIColoringLabel *)v4->_headerLabel leadingAnchor];
    v107 = [(NTKUpNextImageView *)v4->_headerImage trailingAnchor];
    v108 = *&v223;
    v109 = [v106 constraintEqualToAnchor:v107 constant:*&v223];
    v240[1] = v109;
    v110 = [(CLKUIColoringLabel *)v4->_headerLabel trailingAnchor];
    v111 = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    v112 = [v110 constraintEqualToAnchor:v111];
    v240[2] = v112;
    v113 = [MEMORY[0x277CBEA60] arrayWithObjects:v240 count:3];
    headerWithLeftImageConstraints = v4->_headerWithLeftImageConstraints;
    v4->_headerWithLeftImageConstraints = v113;

    v115 = [(CLKUIColoringLabel *)v4->_headerLabel leadingAnchor];
    v116 = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    v117 = [v115 constraintEqualToAnchor:v116];
    v239[0] = v117;
    v118 = [(CLKUIColoringLabel *)v4->_headerLabel trailingAnchor];
    v119 = [(NTKUpNextImageView *)v4->_headerImage leadingAnchor];
    v120 = [v118 constraintEqualToAnchor:v119 constant:-v108];
    v239[1] = v120;
    v121 = [(NTKUpNextImageView *)v4->_headerImage trailingAnchor];
    v122 = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    v123 = [v121 constraintEqualToAnchor:v122];
    v239[2] = v123;
    v124 = [MEMORY[0x277CBEA60] arrayWithObjects:v239 count:3];
    headerWithRightImageConstraints = v4->_headerWithRightImageConstraints;
    v4->_headerWithRightImageConstraints = v124;

    v220 = [(CLKUIColoringLabel *)v4->_descriptionLine2Label firstBaselineAnchor];
    v126 = [(CLKUIColoringLabel *)v4->_descriptionLine1Label lastBaselineAnchor];
    v127 = [v220 constraintEqualToAnchor:v126 constant:*(&v222 + 1) + *&v224];
    v238[0] = v127;
    v128 = [(CLKUIColoringLabel *)v4->_descriptionLine2Label lastBaselineAnchor];
    v129 = [(UILayoutGuide *)v4->_descriptionTextLayoutGuide bottomAnchor];
    v130 = [v128 constraintEqualToAnchor:v129];
    v238[1] = v130;
    v131 = [(UILayoutGuide *)v4->_bodyImageSizingLayoutGuide bottomAnchor];
    v132 = [(CLKUIColoringLabel *)v4->_descriptionLine2Label lastBaselineAnchor];
    v133 = *(&v227 + 1);
    v134 = [v131 constraintEqualToAnchor:v132 constant:*(&v227 + 1)];
    v238[2] = v134;
    v135 = [MEMORY[0x277CBEA60] arrayWithObjects:v238 count:3];
    withDescription2Constraints = v4->_withDescription2Constraints;
    v4->_withDescription2Constraints = v135;

    v137 = [(CLKUIColoringLabel *)v4->_descriptionLine1Label lastBaselineAnchor];
    v138 = [(UILayoutGuide *)v4->_descriptionTextLayoutGuide bottomAnchor];
    v139 = [v137 constraintLessThanOrEqualToAnchor:v138];
    v237[0] = v139;
    v140 = [(UILayoutGuide *)v4->_bodyImageSizingLayoutGuide bottomAnchor];
    v141 = [(CLKUIColoringLabel *)v4->_descriptionLine1Label lastBaselineAnchor];
    v142 = [v140 constraintEqualToAnchor:v141 constant:v133];
    v237[1] = v142;
    v143 = [MEMORY[0x277CBEA60] arrayWithObjects:v237 count:2];
    withoutDescription2Constraints = v4->_withoutDescription2Constraints;
    v4->_withoutDescription2Constraints = v143;

    v145 = [(CLKUIColoringLabel *)v4->_descriptionLine2Label leadingAnchor];
    v146 = [(UILayoutGuide *)v4->_descriptionTextLayoutGuide leadingAnchor];
    v147 = [v145 constraintEqualToAnchor:v146];
    v236 = v147;
    v148 = [MEMORY[0x277CBEA60] arrayWithObjects:&v236 count:1];
    withoutAccessoryConstraints = v4->_withoutAccessoryConstraints;
    v4->_withoutAccessoryConstraints = v148;

    v150 = [(NTKUpNextImageView *)v4->_descriptionImageView heightAnchor];
    v151 = [v150 constraintEqualToConstant:*&v227];
    v235[0] = v151;
    v152 = [(NTKUpNextImageView *)v4->_descriptionImageView bottomAnchor];
    v153 = [(UILayoutGuide *)v4->_contentLayoutGuide bottomAnchor];
    v154 = [v152 constraintEqualToAnchor:v153 constant:-(*(&v224 + 1) - *&v228)];
    v235[1] = v154;
    v155 = [(UILayoutGuide *)v4->_descriptionTextLayoutGuide leadingAnchor];
    v156 = [(NTKUpNextImageView *)v4->_descriptionImageView trailingAnchor];
    v157 = *(&v225 + 1);
    v158 = [v155 constraintEqualToAnchor:v156 constant:*(&v225 + 1)];
    v235[2] = v158;
    v159 = [MEMORY[0x277CBEA60] arrayWithObjects:v235 count:3];
    withDescriptionImageViewConstraints = v4->_withDescriptionImageViewConstraints;
    v4->_withDescriptionImageViewConstraints = v159;

    v211 = [(NTKUpNextImageView *)v4->_descriptionImageView topAnchor];
    v161 = [(UILayoutGuide *)v4->_bodyImageSizingLayoutGuide topAnchor];
    v162 = [v211 constraintEqualToAnchor:v161];
    v234[0] = v162;
    v163 = [(NTKUpNextImageView *)v4->_descriptionImageView bottomAnchor];
    v164 = [(UILayoutGuide *)v4->_bodyImageSizingLayoutGuide bottomAnchor];
    v165 = [v163 constraintEqualToAnchor:v164];
    v234[1] = v165;
    v166 = [(UILayoutGuide *)v4->_descriptionTextLayoutGuide leadingAnchor];
    v167 = [(NTKUpNextImageView *)v4->_descriptionImageView trailingAnchor];
    v168 = [v166 constraintEqualToAnchor:v167 constant:v157];
    v234[2] = v168;
    v169 = [MEMORY[0x277CBEA60] arrayWithObjects:v234 count:3];
    withStretchableDescriptionImageViewConstraints = v4->_withStretchableDescriptionImageViewConstraints;
    v4->_withStretchableDescriptionImageViewConstraints = v169;

    v171 = [(UILayoutGuide *)v4->_descriptionTextLayoutGuide leadingAnchor];
    v172 = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    v173 = [v171 constraintEqualToAnchor:v172];
    v233 = v173;
    v174 = [MEMORY[0x277CBEA60] arrayWithObjects:&v233 count:1];
    withoutDescriptionImageViewConstraints = v4->_withoutDescriptionImageViewConstraints;
    v4->_withoutDescriptionImageViewConstraints = v174;

    [MEMORY[0x277CCAAD0] activateConstraints:v4->_withHeaderConstraints];
    [MEMORY[0x277CCAAD0] activateConstraints:v4->_headerWithNoImageConstraints];
    [MEMORY[0x277CCAAD0] activateConstraints:v4->_withoutDescription2Constraints];
    [MEMORY[0x277CCAAD0] activateConstraints:v4->_withoutAccessoryConstraints];
    [MEMORY[0x277CCAAD0] activateConstraints:v4->_withoutDescriptionImageViewConstraints];
    v4->_showingHeader = 1;
    v4->_headerImageEdge = 0;
    [(CLKUIColoringLabel *)v4->_descriptionLine2Label setHidden:1];
    [(NTKUpNextImageView *)v4->_descriptionImageView setHidden:1];
    [MEMORY[0x277CCAAD0] activateConstraints:v216];
    [(CLKUIColoringLabel *)v4->_headerLabel setNumberOfLines:2];
    [(CLKUIColoringLabel *)v4->_descriptionLine1Label setNumberOfLines:2];
  }

  return v4;
}

id __40__NTKUpNextMultilineCell_initWithFrame___block_invoke()
{
  v0 = [off_27877BEF8 alloc];
  v1 = [v0 initWithFrame:4 options:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 setLineBreakMode:4];
  [v1 _setUseShortcutIntrinsicContentSize:1];
  [v1 setNowProvider:&__block_literal_global_4_0];

  return v1;
}

- (void)updateConstraints
{
  v114[3] = *MEMORY[0x277D85DE8];
  v112 = 0.0;
  v110 = 0u;
  v111 = 0u;
  memset(v109, 0, sizeof(v109));
  v3 = [(NTKUpNextBaseCell *)self device];
  ___LayoutConstants_block_invoke_21(v3, v109);

  v4 = [(NTKUpNextBaseCell *)self content];
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [v4 description2TextProvider];
  v8 = v7 != 0;

  if (self->_showingThirdLine != v8)
  {
    self->_showingThirdLine = v8;
    [(CLKUIColoringLabel *)self->_descriptionLine2Label setHidden:v7 == 0];
    if (self->_showingThirdLine)
    {
      v9 = &OBJC_IVAR___NTKUpNextMultilineCell__withoutDescription2Constraints;
    }

    else
    {
      v9 = &OBJC_IVAR___NTKUpNextMultilineCell__withDescription2Constraints;
    }

    if (self->_showingThirdLine)
    {
      v10 = &OBJC_IVAR___NTKUpNextMultilineCell__withDescription2Constraints;
    }

    else
    {
      v10 = &OBJC_IVAR___NTKUpNextMultilineCell__withoutDescription2Constraints;
    }

    [v6 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + *v9)];
    [v5 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + *v10)];
  }

  v11 = [v4 headerTextProvider];
  v12 = v11 != 0;

  if (self->_showingHeader != v12)
  {
    self->_showingHeader = v12;
    [(CLKUIColoringLabel *)self->_headerLabel setHidden:v11 == 0];
    if (self->_showingHeader)
    {
      v13 = &OBJC_IVAR___NTKUpNextMultilineCell__withoutHeaderConstraints;
    }

    else
    {
      v13 = &OBJC_IVAR___NTKUpNextMultilineCell__withHeaderConstraints;
    }

    if (self->_showingHeader)
    {
      v14 = &OBJC_IVAR___NTKUpNextMultilineCell__withHeaderConstraints;
    }

    else
    {
      v14 = &OBJC_IVAR___NTKUpNextMultilineCell__withoutHeaderConstraints;
    }

    [v6 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + *v13)];
    [v5 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + *v14)];
  }

  v15 = [v4 headerImageProvider];
  if (!v15)
  {
    v16 = [v4 overrideHeaderImage];
    if (v16)
    {
      v17 = v11 == 0;
    }

    else
    {
      v17 = 1;
    }

    v12 = !v17;
  }

  v18 = [v4 headerImageEdge];
  if (self->_showingHeaderImage != v12 || v18 != self->_headerImageEdge)
  {
    self->_showingHeaderImage = v12;
    self->_headerImageEdge = v18;
    headerImage = self->_headerImage;
    if (v12)
    {
      v20 = &OBJC_IVAR___NTKUpNextMultilineCell__headerWithRightImageConstraints;
      [(NTKUpNextImageView *)headerImage setHidden:0];
      [v6 addObjectsFromArray:self->_headerWithNoImageConstraints];
      v21 = [v4 headerImageEdge];
      if (v21 == 2)
      {
        v22 = &OBJC_IVAR___NTKUpNextMultilineCell__headerWithLeftImageConstraints;
      }

      else
      {
        v22 = &OBJC_IVAR___NTKUpNextMultilineCell__headerWithRightImageConstraints;
      }

      if (v21 != 2)
      {
        v20 = &OBJC_IVAR___NTKUpNextMultilineCell__headerWithLeftImageConstraints;
      }
    }

    else
    {
      [(NTKUpNextImageView *)headerImage setHidden:1];
      [v6 addObjectsFromArray:self->_headerWithLeftImageConstraints];
      v20 = &OBJC_IVAR___NTKUpNextMultilineCell__headerWithNoImageConstraints;
      v22 = &OBJC_IVAR___NTKUpNextMultilineCell__headerWithRightImageConstraints;
    }

    [v6 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + *v22)];
    [v5 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + *v20)];
  }

  if (objc_opt_respondsToSelector())
  {
    v23 = [v4 imageAccessory];
  }

  else
  {
    v23 = 0;
  }

  v24 = [v4 descriptionAccessory];
  if (v24)
  {
    v25 = v23 == 0;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;

  v106 = v5;
  if (v23)
  {
    v27 = [v4 descriptionAccessory];
    v28 = v27 == 0;
  }

  else
  {
    v28 = 0;
  }

  v29 = &OBJC_IVAR____NTKPhotosPhotoFaceUpgradeContext__bottomComplication;
  v107 = v23;
  v98 = v26;
  if (self->_showingDescriptionAccessory == v26)
  {
    v30 = 0;
    v31 = self->_showingImageAccessory != v28;
LABEL_54:
    v100 = v31;
    goto LABEL_55;
  }

  self->_showingDescriptionAccessory = v26;
  if (!v26)
  {
    v30 = 0;
    v31 = 1;
    goto LABEL_54;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = 0;
    v100 = 1;
  }

  else
  {
    if (self->_withAccessoryConstraints)
    {
      [v6 addObjectsFromArray:?];
      withAccessoryConstraints = self->_withAccessoryConstraints;
      self->_withAccessoryConstraints = 0;
    }

    [(UIView *)self->_accessoryView removeFromSuperview];
    accessoryView = self->_accessoryView;
    self->_accessoryView = 0;

    v38 = [NTKUpNextAccessoryView alloc];
    v30 = [(NTKUpNextAccessoryView *)v38 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(NTKUpNextAccessoryView *)v30 setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeStrong(&self->_accessoryView, v30);
    v104 = [(CLKUIColoringLabel *)self->_descriptionLine2Label leadingAnchor];
    v101 = [(UIView *)self->_accessoryView trailingAnchor];
    v96 = [v104 constraintEqualToAnchor:v101 constant:*v109];
    v114[0] = v96;
    v94 = [(UIView *)self->_accessoryView leadingAnchor];
    v92 = [(UILayoutGuide *)self->_descriptionTextLayoutGuide leadingAnchor];
    v39 = [v94 constraintEqualToAnchor:v92];
    v114[1] = v39;
    v40 = [(UIView *)self->_accessoryView firstBaselineAnchor];
    v41 = [(CLKUIColoringLabel *)self->_descriptionLine2Label firstBaselineAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];
    v114[2] = v42;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v114 count:3];
    v44 = self->_withAccessoryConstraints;
    self->_withAccessoryConstraints = v43;

    v100 = 1;
    v23 = v107;
    v29 = &OBJC_IVAR____NTKPhotosPhotoFaceUpgradeContext__bottomComplication;
  }

LABEL_55:
  v32 = [v4 descriptionAccessory];
  v103 = v30;
  [(NTKUpNextAccessoryView *)v30 configureWithDescription:v32];

  v33 = v29[902];
  v105 = v6;
  if (*(&self->super.super.super.super.super.super.isa + v33) == v28 || (*(&self->super.super.super.super.super.super.isa + v33) = v28) == 0)
  {
    v34 = 0;
    v35 = v106;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = 0;
      v35 = v106;
    }

    else
    {
      if (self->_withAccessoryConstraints)
      {
        [v6 addObjectsFromArray:?];
        v45 = self->_withAccessoryConstraints;
        self->_withAccessoryConstraints = 0;
      }

      [(UIView *)self->_accessoryView removeFromSuperview];
      v46 = self->_accessoryView;
      self->_accessoryView = 0;

      v47 = objc_alloc(MEMORY[0x277D755E8]);
      v34 = [v47 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      [v34 setContentMode:1];
      [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
      objc_storeStrong(&self->_accessoryView, v34);
      [(CLKFont *)self->_italicFont capHeight];
      v48 = [(NTKUpNextBaseCell *)self device];
      CLKRoundForDevice();
      v50 = v49;

      v89 = [(CLKUIColoringLabel *)self->_descriptionLine2Label leadingAnchor];
      v97 = [(UIView *)self->_accessoryView trailingAnchor];
      v95 = [v89 constraintEqualToAnchor:v97 constant:*v109];
      v113[0] = v95;
      v93 = [(UIView *)self->_accessoryView centerYAnchor];
      v91 = [(CLKUIColoringLabel *)self->_descriptionLine2Label firstBaselineAnchor];
      v90 = [v93 constraintEqualToAnchor:v91 constant:-v50];
      v113[1] = v90;
      v87 = [(UIView *)self->_accessoryView leadingAnchor];
      v88 = [(NTKUpNextMultilineCell *)self contentView];
      v86 = [v88 leadingAnchor];
      v85 = [v87 constraintEqualToAnchor:v86 constant:*&v110];
      v113[2] = v85;
      v84 = [(UIView *)self->_accessoryView widthAnchor];
      v51 = [v84 constraintLessThanOrEqualToConstant:*(&v111 + 1)];
      v113[3] = v51;
      v52 = [(UIView *)self->_accessoryView heightAnchor];
      v53 = v112;
      v54 = [v52 constraintLessThanOrEqualToConstant:v112];
      v113[4] = v54;
      v55 = [(UIView *)self->_accessoryView widthAnchor];
      v56 = [v55 constraintGreaterThanOrEqualToConstant:v53];
      v113[5] = v56;
      v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v113 count:6];
      v58 = self->_withAccessoryConstraints;
      self->_withAccessoryConstraints = v57;

      v35 = v106;
    }

    v23 = v107;
  }

  v59 = v98 || v28;
  v60 = [v23 image];
  v61 = [v60 image];

  v99 = v61;
  [v34 setImage:v61];
  v102 = v34;
  if (v100)
  {
    if (v59)
    {
      v62 = [(NTKUpNextMultilineCell *)self contentView];
      [v62 addSubview:self->_accessoryView];

      [v35 addObjectsFromArray:self->_withAccessoryConstraints];
      v63 = v105;
      [v105 addObjectsFromArray:self->_withoutAccessoryConstraints];
      v64 = 0;
      goto LABEL_77;
    }

    [v105 addObjectsFromArray:self->_withAccessoryConstraints];
    [v35 addObjectsFromArray:self->_withoutAccessoryConstraints];
    [(UIView *)self->_accessoryView removeFromSuperview];
  }

  else if (v59)
  {
    v64 = 0;
    v63 = v105;
    goto LABEL_77;
  }

  v65 = [v4 bodyImageProvider];
  if (v65)
  {
    v64 = 1;
  }

  else
  {
    v66 = [v4 overrideBodyImage];
    v64 = v66 != 0;
  }

  v63 = v105;

LABEL_77:
  v67 = [v4 bodyImageShouldStretch];
  v68 = v67;
  if (self->_showingDescriptionImage != v64 || self->_usingStretchableImage != v67)
  {
    self->_showingDescriptionImage = v64;
    self->_usingStretchableImage = v67;
    showingDescriptionImage = self->_showingDescriptionImage;
    if (showingDescriptionImage)
    {
      [v63 addObjectsFromArray:self->_withoutDescriptionImageViewConstraints];
      v71 = v68 == 0;
      if (v68)
      {
        v72 = 250.0;
      }

      else
      {
        v72 = 1000.0;
      }

      if (v68)
      {
        v73 = 0;
      }

      else
      {
        v73 = 6;
      }

      if (v68)
      {
        v74 = &OBJC_IVAR___NTKUpNextMultilineCell__withDescriptionImageViewConstraints;
      }

      else
      {
        v74 = &OBJC_IVAR___NTKUpNextMultilineCell__withStretchableDescriptionImageViewConstraints;
      }

      if (v71)
      {
        v75 = &OBJC_IVAR___NTKUpNextMultilineCell__withDescriptionImageViewConstraints;
      }

      else
      {
        v75 = &OBJC_IVAR___NTKUpNextMultilineCell__withStretchableDescriptionImageViewConstraints;
      }

      *&v70 = v72;
      [(NTKUpNextImageView *)self->_descriptionImageView setContentHuggingPriority:1 forAxis:v70];
      *&v76 = v72;
      [(NTKUpNextImageView *)self->_descriptionImageView setContentCompressionResistancePriority:1 forAxis:v76];
      [(NTKUpNextImageView *)self->_descriptionImageView setContentMode:v73];
      [v63 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + *v74)];
      v77 = *v75;
      v35 = v106;
      [v106 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + v77)];
    }

    else
    {
      [v63 addObjectsFromArray:self->_withDescriptionImageViewConstraints];
      [v63 addObjectsFromArray:self->_withStretchableDescriptionImageViewConstraints];
      [v35 addObjectsFromArray:self->_withoutDescriptionImageViewConstraints];
    }

    [(NTKUpNextImageView *)self->_descriptionImageView setHidden:!showingDescriptionImage];
  }

  [MEMORY[0x277CCAAD0] deactivateConstraints:v63];
  [MEMORY[0x277CCAAD0] activateConstraints:v35];
  if (!self->_showingThirdLine)
  {
    v79 = v107;
    if (self->_showingHeaderImage || self->_showingDescriptionImage)
    {
      headerLabel = self->_headerLabel;
      v81 = 1;
    }

    else
    {
      if (!self->_showingHeader)
      {
        descriptionLine1Label = self->_descriptionLine1Label;
        v83 = 3;
        goto LABEL_104;
      }

      headerLabel = self->_headerLabel;
      v81 = 2;
    }

    [(CLKUIColoringLabel *)headerLabel setNumberOfLines:v81];
    descriptionLine1Label = self->_descriptionLine1Label;
    v83 = 2;
LABEL_104:
    [(CLKUIColoringLabel *)descriptionLine1Label setNumberOfLines:v83];
    goto LABEL_105;
  }

  [(CLKUIColoringLabel *)self->_headerLabel setNumberOfLines:1];
  if (self->_showingHeader)
  {
    v78 = 1;
  }

  else
  {
    v78 = 2;
  }

  [(CLKUIColoringLabel *)self->_descriptionLine1Label setNumberOfLines:v78];
  v79 = v107;
LABEL_105:
  v108.receiver = self;
  v108.super_class = NTKUpNextMultilineCell;
  [(NTKUpNextMultilineCell *)&v108 updateConstraints];
}

- (void)configureWithContent:(id)a3
{
  v28.receiver = self;
  v28.super_class = NTKUpNextMultilineCell;
  v4 = a3;
  [(NTKUpNextBaseCell *)&v28 configureWithContent:v4];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__NTKUpNextMultilineCell_configureWithContent___block_invoke;
  aBlock[3] = &unk_278781428;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v5[2](v5, self->_descriptionLine1Label, [v4 description1FontStyle]);
  v5[2](v5, self->_descriptionLine2Label, [v4 description2FontStyle]);
  headerImage = self->_headerImage;
  v7 = [v4 tintColor];
  [(NTKUpNextImageView *)headerImage setFallbackTintColor:v7];

  v8 = self->_headerImage;
  v9 = [v4 overrideHeaderImage];
  v10 = [v4 headerImageProvider];
  [(NTKUpNextImageView *)v8 setFullColorImage:v9 tintableImageProvider:v10];

  descriptionImageView = self->_descriptionImageView;
  v12 = [v4 tintColor];
  [(NTKUpNextImageView *)descriptionImageView setFallbackTintColor:v12];

  v13 = self->_descriptionImageView;
  v14 = [v4 overrideBodyImage];
  v15 = [v4 bodyImageProvider];
  [(NTKUpNextImageView *)v13 setFullColorImage:v14 tintableImageProvider:v15];

  v16 = self->_descriptionImageView;
  v17 = [v4 bodyImageCompositingFilter];
  [(NTKUpNextImageView *)v16 setCompositingFilter:v17];

  headerLabel = self->_headerLabel;
  v19 = [v4 headerTextProvider];
  __47__NTKUpNextMultilineCell_configureWithContent___block_invoke_2(v19, headerLabel, v19);

  descriptionLine1Label = self->_descriptionLine1Label;
  v21 = [v4 description1TextProvider];
  __47__NTKUpNextMultilineCell_configureWithContent___block_invoke_2(v21, descriptionLine1Label, v21);

  descriptionLine2Label = self->_descriptionLine2Label;
  v23 = [v4 description2TextProvider];
  __47__NTKUpNextMultilineCell_configureWithContent___block_invoke_2(v23, descriptionLine2Label, v23);

  v24 = [v4 headerTextProvider];
  [v24 setPaused:{-[NTKUpNextBaseCell isPaused](self, "isPaused")}];

  v25 = [v4 description1TextProvider];
  [v25 setPaused:{-[NTKUpNextBaseCell isPaused](self, "isPaused")}];

  v26 = [v4 description2TextProvider];

  [v26 setPaused:{-[NTKUpNextBaseCell isPaused](self, "isPaused")}];
  [(NTKUpNextMultilineCell *)self setNeedsUpdateConstraints];
}

void __47__NTKUpNextMultilineCell_configureWithContent___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = 0.0;
  v8 = v5;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v7 = &OBJC_IVAR___NTKUpNextMultilineCell__boldFont;
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_12;
      }

      v7 = &OBJC_IVAR___NTKUpNextMultilineCell__standardFont;
      v6 = 0.8;
    }
  }

  else
  {
    v7 = &OBJC_IVAR___NTKUpNextMultilineCell__standardFont;
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_12;
      }

      if (!CLKIsCurrentLocaleNonLatin())
      {
        v7 = &OBJC_IVAR___NTKUpNextMultilineCell__italicFont;
      }
    }
  }

  [v8 setFont:*(*(a1 + 32) + *v7)];
  v5 = v8;
LABEL_12:
  [v5 setMinimumScaleFactor:v6];
  [v8 setAdjustsFontSizeToFitWidth:v6 != 0.0];
}

void __47__NTKUpNextMultilineCell_configureWithContent___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 text];
  if ([v7 length])
  {
    v8 = [v6 shortText];
    v9 = [v8 length];

    if (!v9)
    {
      [v11 setTextProvider:0];
      v10 = [v6 text];
      [v11 setText:v10];

      goto LABEL_9;
    }
  }

  else
  {
  }

  [NTKUpNextBaseCell clearLabel:v11];
  [v11 setTextProvider:v4];
LABEL_9:
}

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = NTKUpNextMultilineCell;
  [(NTKUpNextBaseCell *)&v8 setPaused:?];
  v5 = [(CLKUIColoringLabel *)self->_headerLabel textProvider];
  [v5 setPaused:v3];

  v6 = [(CLKUIColoringLabel *)self->_descriptionLine1Label textProvider];
  [v6 setPaused:v3];

  v7 = [(CLKUIColoringLabel *)self->_descriptionLine2Label textProvider];
  [v7 setPaused:v3];
}

- (id)filtersForView:(id)a3 style:(int64_t)a4 fraction:(double)a5
{
  v8 = a3;
  if (self->_descriptionImageView == v8)
  {
    CLKUIAssociatedNonAccentStyle();
  }

  v9 = [(NTKUpNextBaseCell *)self filterProvider];
  v10 = [v9 filtersForView:v8 style:a4 fraction:a5];

  return v10;
}

- (id)filtersForView:(id)a3 style:(int64_t)a4
{
  v6 = a3;
  if (self->_descriptionImageView == v6)
  {
    CLKUIAssociatedNonAccentStyle();
  }

  v7 = [(NTKUpNextBaseCell *)self filterProvider];
  v8 = [v7 filtersForView:v6 style:a4];

  return v8;
}

- (id)filterForView:(id)a3 style:(int64_t)a4 fraction:(double)a5
{
  v8 = a3;
  if (self->_descriptionImageView == v8)
  {
    CLKUIAssociatedNonAccentStyle();
  }

  v9 = [(NTKUpNextBaseCell *)self filterProvider];
  v10 = [v9 filterForView:v8 style:a4 fraction:a5];

  return v10;
}

- (id)filterForView:(id)a3 style:(int64_t)a4
{
  v6 = a3;
  if (self->_descriptionImageView == v6)
  {
    CLKUIAssociatedNonAccentStyle();
  }

  v7 = [(NTKUpNextBaseCell *)self filterProvider];
  v8 = [v7 filterForView:v6 style:a4];

  return v8;
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
  v5.receiver = self;
  v5.super_class = NTKUpNextMultilineCell;
  [(NTKUpNextBaseCell *)&v5 prepareForReuse];
  [(NTKUpNextImageView *)self->_headerImage transitionToMonochromeWithFraction:0.0];
  [(NTKUpNextImageView *)self->_descriptionImageView transitionToMonochromeWithFraction:0.0];
  v3 = [(CLKUIColoringLabel *)self->_headerLabel layer];
  [v3 setFilters:0];

  v4 = [(UIView *)self->_accessoryView layer];
  [v4 setFilters:0];
}

- (void)setFilterProvider:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKUpNextMultilineCell;
  v4 = a3;
  [(NTKUpNextBaseCell *)&v5 setFilterProvider:v4];
  [(NTKUpNextImageView *)self->_headerImage setFilterProvider:v4, v5.receiver, v5.super_class];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  [(NTKUpNextImageView *)self->_headerImage transitionToMonochromeWithFraction:?];
  [(NTKUpNextImageView *)self->_descriptionImageView transitionToMonochromeWithFraction:a3];
  if (fabs(a3) >= 0.00000011920929)
  {
    v6 = [(NTKUpNextBaseCell *)self filterProvider];
    v11 = [v6 filtersForView:self style:2 fraction:a3];

    if (v11)
    {
      v7 = [(CLKUIColoringLabel *)self->_headerLabel layer];
      [v7 setFilters:v11];
    }

    v8 = [(NTKUpNextBaseCell *)self filterProvider];
    v9 = [v8 filtersForView:self style:1 fraction:a3];

    if (v9)
    {
      v10 = [(UIView *)self->_accessoryView layer];
      [v10 setFilters:v9];
    }
  }

  else
  {
    v5 = [(CLKUIColoringLabel *)self->_headerLabel layer];
    [v5 setFilters:0];

    v11 = [(UIView *)self->_accessoryView layer];
    [v11 setFilters:0];
  }
}

- (void)updateMonochromeColor
{
  [(NTKUpNextImageView *)self->_headerImage updateMonochromeColor];
  [(NTKUpNextImageView *)self->_descriptionImageView updateMonochromeColor];
  v3 = [(NTKUpNextBaseCell *)self filterProvider];
  v8 = [v3 filtersForView:self style:2];

  if (v8)
  {
    v4 = [(CLKUIColoringLabel *)self->_headerLabel layer];
    [v4 setFilters:v8];
  }

  v5 = [(NTKUpNextBaseCell *)self filterProvider];
  v6 = [v5 filtersForView:self style:1];

  if (v6)
  {
    v7 = [(UIView *)self->_accessoryView layer];
    [v7 setFilters:v6];
  }
}

@end