@interface NTKUpNextMultilineCell
+ (CGSize)suggestedBodyImageSizeForDevice:(id)device;
- (NTKUpNextMultilineCell)initWithFrame:(CGRect)frame;
- (id)backgroundColorForView:(id)view;
- (id)colorForView:(id)view accented:(BOOL)accented;
- (id)filterForView:(id)view style:(int64_t)style;
- (id)filterForView:(id)view style:(int64_t)style fraction:(double)fraction;
- (id)filtersForView:(id)view style:(int64_t)style;
- (id)filtersForView:(id)view style:(int64_t)style fraction:(double)fraction;
- (void)configureWithContent:(id)content;
- (void)prepareForReuse;
- (void)setFilterProvider:(id)provider;
- (void)setPaused:(BOOL)paused;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateConstraints;
- (void)updateMonochromeColor;
@end

@implementation NTKUpNextMultilineCell

+ (CGSize)suggestedBodyImageSizeForDevice:(id)device
{
  sizeClass = [device sizeClass];
  if (sizeClass > 1)
  {
    if (sizeClass != 2 && sizeClass != 4)
    {
LABEL_8:
      v4 = 34.0;
      goto LABEL_10;
    }
  }

  else
  {
    if (!sizeClass)
    {
      v4 = 27.0;
      goto LABEL_10;
    }

    if (sizeClass != 1)
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

- (NTKUpNextMultilineCell)initWithFrame:(CGRect)frame
{
  v244[14] = *MEMORY[0x277D85DE8];
  v232.receiver = self;
  v232.super_class = NTKUpNextMultilineCell;
  v3 = [(NTKUpNextBaseCell *)&v232 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    device = [(NTKUpNextBaseCell *)v3 device];
    ___LayoutConstants_block_invoke_21(device, &v221);

    v6 = *(&v223 + 1);
    v7 = [MEMORY[0x277CBBB08] systemFontOfSize:*(&v223 + 1)];
    fontDescriptor = [v7 fontDescriptor];
    v219 = [fontDescriptor fontDescriptorWithSymbolicTraits:1];

    v9 = [MEMORY[0x277CBBB08] systemFontOfSize:v6];
    fontDescriptor2 = [v9 fontDescriptor];
    v218 = [fontDescriptor2 fontDescriptorWithSymbolicTraits:2];

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
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v19 setTextColor:whiteColor];

    v21 = __40__NTKUpNextMultilineCell_initWithFrame___block_invoke();
    descriptionLine1Label = v4->_descriptionLine1Label;
    v4->_descriptionLine1Label = v21;

    v23 = v4->_descriptionLine1Label;
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v23 setTextColor:whiteColor2];

    [(CLKUIColoringLabel *)v4->_descriptionLine1Label setFont:v4->_standardFont];
    nTKHyphenationParagraphStyle = [MEMORY[0x277D74240] NTKHyphenationParagraphStyle];
    [nTKHyphenationParagraphStyle setLineBreakMode:4];
    [nTKHyphenationParagraphStyle lineSpacing];
    [nTKHyphenationParagraphStyle setLineSpacing:v25 + *&v224];
    [(CLKUIColoringLabel *)v4->_descriptionLine1Label setParagraphStyle:nTKHyphenationParagraphStyle];
    LODWORD(v26) = 1148846080;
    [(CLKUIColoringLabel *)v4->_descriptionLine1Label setContentHuggingPriority:1 forAxis:v26];
    v27 = __40__NTKUpNextMultilineCell_initWithFrame___block_invoke();
    descriptionLine2Label = v4->_descriptionLine2Label;
    v4->_descriptionLine2Label = v27;

    v29 = v4->_descriptionLine2Label;
    whiteColor3 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v29 setTextColor:whiteColor3];

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
    contentView = [(NTKUpNextMultilineCell *)v4 contentView];
    [contentView addLayoutGuide:v4->_contentLayoutGuide];

    contentView2 = [(NTKUpNextMultilineCell *)v4 contentView];
    [contentView2 addLayoutGuide:v4->_descriptionTextLayoutGuide];

    contentView3 = [(NTKUpNextMultilineCell *)v4 contentView];
    [contentView3 addLayoutGuide:v4->_bodyImageSizingLayoutGuide];

    contentView4 = [(NTKUpNextMultilineCell *)v4 contentView];
    [contentView4 addSubview:v4->_headerImage];

    contentView5 = [(NTKUpNextMultilineCell *)v4 contentView];
    [contentView5 addSubview:v4->_headerLabel];

    contentView6 = [(NTKUpNextMultilineCell *)v4 contentView];
    [contentView6 addSubview:v4->_descriptionLine1Label];

    contentView7 = [(NTKUpNextMultilineCell *)v4 contentView];
    [contentView7 addSubview:v4->_descriptionLine2Label];

    contentView8 = [(NTKUpNextMultilineCell *)v4 contentView];
    [contentView8 addSubview:v4->_descriptionImageView];

    [(CLKFont *)v4->_boldFont capHeight];
    device2 = [(NTKUpNextBaseCell *)v4 device];
    CLKRoundForDevice();
    v65 = v64;

    topAnchor = [(UILayoutGuide *)v4->_contentLayoutGuide topAnchor];
    contentView9 = [(NTKUpNextMultilineCell *)v4 contentView];
    topAnchor2 = [contentView9 topAnchor];
    v210 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:*(&v228 + 1)];
    v244[0] = v210;
    bottomAnchor = [(UILayoutGuide *)v4->_contentLayoutGuide bottomAnchor];
    contentView10 = [(NTKUpNextMultilineCell *)v4 contentView];
    bottomAnchor2 = [contentView10 bottomAnchor];
    v206 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-*(&v229 + 1)];
    v244[1] = v206;
    leadingAnchor = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    contentView11 = [(NTKUpNextMultilineCell *)v4 contentView];
    leadingAnchor2 = [contentView11 leadingAnchor];
    v202 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:*&v229];
    v244[2] = v202;
    trailingAnchor = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    contentView12 = [(NTKUpNextMultilineCell *)v4 contentView];
    trailingAnchor2 = [contentView12 trailingAnchor];
    v198 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-*&v230];
    v244[3] = v198;
    trailingAnchor3 = [(UILayoutGuide *)v4->_descriptionTextLayoutGuide trailingAnchor];
    trailingAnchor4 = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    v195 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v244[4] = v195;
    bottomAnchor3 = [(UILayoutGuide *)v4->_descriptionTextLayoutGuide bottomAnchor];
    bottomAnchor4 = [(UILayoutGuide *)v4->_contentLayoutGuide bottomAnchor];
    v192 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-*(&v224 + 1)];
    v244[5] = v192;
    centerYAnchor = [(NTKUpNextImageView *)v4->_headerImage centerYAnchor];
    firstBaselineAnchor = [(CLKUIColoringLabel *)v4->_headerLabel firstBaselineAnchor];
    v189 = [centerYAnchor constraintEqualToAnchor:firstBaselineAnchor constant:-v65];
    v244[6] = v189;
    leadingAnchor3 = [(CLKUIColoringLabel *)v4->_descriptionLine1Label leadingAnchor];
    leadingAnchor4 = [(UILayoutGuide *)v4->_descriptionTextLayoutGuide leadingAnchor];
    v186 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v244[7] = v186;
    trailingAnchor5 = [(CLKUIColoringLabel *)v4->_descriptionLine1Label trailingAnchor];
    trailingAnchor6 = [(UILayoutGuide *)v4->_descriptionTextLayoutGuide trailingAnchor];
    v183 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v244[8] = v183;
    trailingAnchor7 = [(CLKUIColoringLabel *)v4->_descriptionLine2Label trailingAnchor];
    trailingAnchor8 = [(UILayoutGuide *)v4->_descriptionTextLayoutGuide trailingAnchor];
    v180 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    v244[9] = v180;
    leadingAnchor5 = [(NTKUpNextImageView *)v4->_descriptionImageView leadingAnchor];
    leadingAnchor6 = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    v177 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:*&v226];
    v244[10] = v177;
    leadingAnchor7 = [(UILayoutGuide *)v4->_bodyImageSizingLayoutGuide leadingAnchor];
    leadingAnchor8 = [(UILayoutGuide *)v4->_descriptionTextLayoutGuide leadingAnchor];
    v68 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v244[11] = v68;
    trailingAnchor9 = [(UILayoutGuide *)v4->_bodyImageSizingLayoutGuide trailingAnchor];
    trailingAnchor10 = [(UILayoutGuide *)v4->_descriptionTextLayoutGuide trailingAnchor];
    v71 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
    v244[12] = v71;
    topAnchor3 = [(UILayoutGuide *)v4->_bodyImageSizingLayoutGuide topAnchor];
    firstBaselineAnchor2 = [(CLKUIColoringLabel *)v4->_descriptionLine1Label firstBaselineAnchor];
    [(CLKFont *)v4->_standardFont capHeight];
    v75 = [topAnchor3 constraintEqualToAnchor:firstBaselineAnchor2 constant:-(v74 + *(&v227 + 1))];
    v244[13] = v75;
    v216 = [MEMORY[0x277CBEA60] arrayWithObjects:v244 count:14];

    firstBaselineAnchor3 = [(CLKUIColoringLabel *)v4->_descriptionLine1Label firstBaselineAnchor];
    topAnchor4 = [(UILayoutGuide *)v4->_contentLayoutGuide topAnchor];
    v78 = *&v222;
    v79 = [firstBaselineAnchor3 constraintEqualToAnchor:topAnchor4 constant:*&v222];
    v243[0] = v79;
    topAnchor5 = [(UILayoutGuide *)v4->_descriptionTextLayoutGuide topAnchor];
    topAnchor6 = [(UILayoutGuide *)v4->_contentLayoutGuide topAnchor];
    v82 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v243[1] = v82;
    v83 = [MEMORY[0x277CBEA60] arrayWithObjects:v243 count:2];
    withoutHeaderConstraints = v4->_withoutHeaderConstraints;
    v4->_withoutHeaderConstraints = v83;

    firstBaselineAnchor4 = [(CLKUIColoringLabel *)v4->_descriptionLine1Label firstBaselineAnchor];
    lastBaselineAnchor = [(CLKUIColoringLabel *)v4->_headerLabel lastBaselineAnchor];
    v86 = [firstBaselineAnchor4 constraintEqualToAnchor:lastBaselineAnchor constant:v78];
    v242[0] = v86;
    firstBaselineAnchor5 = [(CLKUIColoringLabel *)v4->_headerLabel firstBaselineAnchor];
    topAnchor7 = [(UILayoutGuide *)v4->_contentLayoutGuide topAnchor];
    v89 = [firstBaselineAnchor5 constraintEqualToAnchor:topAnchor7 constant:*(&v221 + 1)];
    v242[1] = v89;
    topAnchor8 = [(UILayoutGuide *)v4->_descriptionTextLayoutGuide topAnchor];
    lastBaselineAnchor2 = [(CLKUIColoringLabel *)v4->_headerLabel lastBaselineAnchor];
    v92 = [topAnchor8 constraintEqualToAnchor:lastBaselineAnchor2];
    v242[2] = v92;
    v93 = [MEMORY[0x277CBEA60] arrayWithObjects:v242 count:3];
    withHeaderConstraints = v4->_withHeaderConstraints;
    v4->_withHeaderConstraints = v93;

    leadingAnchor9 = [(CLKUIColoringLabel *)v4->_headerLabel leadingAnchor];
    leadingAnchor10 = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    v97 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
    v241[0] = v97;
    trailingAnchor11 = [(CLKUIColoringLabel *)v4->_headerLabel trailingAnchor];
    trailingAnchor12 = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    v100 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
    v241[1] = v100;
    v101 = [MEMORY[0x277CBEA60] arrayWithObjects:v241 count:2];
    headerWithNoImageConstraints = v4->_headerWithNoImageConstraints;
    v4->_headerWithNoImageConstraints = v101;

    leadingAnchor11 = [(NTKUpNextImageView *)v4->_headerImage leadingAnchor];
    leadingAnchor12 = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    v105 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
    v240[0] = v105;
    leadingAnchor13 = [(CLKUIColoringLabel *)v4->_headerLabel leadingAnchor];
    trailingAnchor13 = [(NTKUpNextImageView *)v4->_headerImage trailingAnchor];
    v108 = *&v223;
    v109 = [leadingAnchor13 constraintEqualToAnchor:trailingAnchor13 constant:*&v223];
    v240[1] = v109;
    trailingAnchor14 = [(CLKUIColoringLabel *)v4->_headerLabel trailingAnchor];
    trailingAnchor15 = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    v112 = [trailingAnchor14 constraintEqualToAnchor:trailingAnchor15];
    v240[2] = v112;
    v113 = [MEMORY[0x277CBEA60] arrayWithObjects:v240 count:3];
    headerWithLeftImageConstraints = v4->_headerWithLeftImageConstraints;
    v4->_headerWithLeftImageConstraints = v113;

    leadingAnchor14 = [(CLKUIColoringLabel *)v4->_headerLabel leadingAnchor];
    leadingAnchor15 = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    v117 = [leadingAnchor14 constraintEqualToAnchor:leadingAnchor15];
    v239[0] = v117;
    trailingAnchor16 = [(CLKUIColoringLabel *)v4->_headerLabel trailingAnchor];
    leadingAnchor16 = [(NTKUpNextImageView *)v4->_headerImage leadingAnchor];
    v120 = [trailingAnchor16 constraintEqualToAnchor:leadingAnchor16 constant:-v108];
    v239[1] = v120;
    trailingAnchor17 = [(NTKUpNextImageView *)v4->_headerImage trailingAnchor];
    trailingAnchor18 = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    v123 = [trailingAnchor17 constraintEqualToAnchor:trailingAnchor18];
    v239[2] = v123;
    v124 = [MEMORY[0x277CBEA60] arrayWithObjects:v239 count:3];
    headerWithRightImageConstraints = v4->_headerWithRightImageConstraints;
    v4->_headerWithRightImageConstraints = v124;

    firstBaselineAnchor6 = [(CLKUIColoringLabel *)v4->_descriptionLine2Label firstBaselineAnchor];
    lastBaselineAnchor3 = [(CLKUIColoringLabel *)v4->_descriptionLine1Label lastBaselineAnchor];
    v127 = [firstBaselineAnchor6 constraintEqualToAnchor:lastBaselineAnchor3 constant:*(&v222 + 1) + *&v224];
    v238[0] = v127;
    lastBaselineAnchor4 = [(CLKUIColoringLabel *)v4->_descriptionLine2Label lastBaselineAnchor];
    bottomAnchor5 = [(UILayoutGuide *)v4->_descriptionTextLayoutGuide bottomAnchor];
    v130 = [lastBaselineAnchor4 constraintEqualToAnchor:bottomAnchor5];
    v238[1] = v130;
    bottomAnchor6 = [(UILayoutGuide *)v4->_bodyImageSizingLayoutGuide bottomAnchor];
    lastBaselineAnchor5 = [(CLKUIColoringLabel *)v4->_descriptionLine2Label lastBaselineAnchor];
    v133 = *(&v227 + 1);
    v134 = [bottomAnchor6 constraintEqualToAnchor:lastBaselineAnchor5 constant:*(&v227 + 1)];
    v238[2] = v134;
    v135 = [MEMORY[0x277CBEA60] arrayWithObjects:v238 count:3];
    withDescription2Constraints = v4->_withDescription2Constraints;
    v4->_withDescription2Constraints = v135;

    lastBaselineAnchor6 = [(CLKUIColoringLabel *)v4->_descriptionLine1Label lastBaselineAnchor];
    bottomAnchor7 = [(UILayoutGuide *)v4->_descriptionTextLayoutGuide bottomAnchor];
    v139 = [lastBaselineAnchor6 constraintLessThanOrEqualToAnchor:bottomAnchor7];
    v237[0] = v139;
    bottomAnchor8 = [(UILayoutGuide *)v4->_bodyImageSizingLayoutGuide bottomAnchor];
    lastBaselineAnchor7 = [(CLKUIColoringLabel *)v4->_descriptionLine1Label lastBaselineAnchor];
    v142 = [bottomAnchor8 constraintEqualToAnchor:lastBaselineAnchor7 constant:v133];
    v237[1] = v142;
    v143 = [MEMORY[0x277CBEA60] arrayWithObjects:v237 count:2];
    withoutDescription2Constraints = v4->_withoutDescription2Constraints;
    v4->_withoutDescription2Constraints = v143;

    leadingAnchor17 = [(CLKUIColoringLabel *)v4->_descriptionLine2Label leadingAnchor];
    leadingAnchor18 = [(UILayoutGuide *)v4->_descriptionTextLayoutGuide leadingAnchor];
    v147 = [leadingAnchor17 constraintEqualToAnchor:leadingAnchor18];
    v236 = v147;
    v148 = [MEMORY[0x277CBEA60] arrayWithObjects:&v236 count:1];
    withoutAccessoryConstraints = v4->_withoutAccessoryConstraints;
    v4->_withoutAccessoryConstraints = v148;

    heightAnchor = [(NTKUpNextImageView *)v4->_descriptionImageView heightAnchor];
    v151 = [heightAnchor constraintEqualToConstant:*&v227];
    v235[0] = v151;
    bottomAnchor9 = [(NTKUpNextImageView *)v4->_descriptionImageView bottomAnchor];
    bottomAnchor10 = [(UILayoutGuide *)v4->_contentLayoutGuide bottomAnchor];
    v154 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10 constant:-(*(&v224 + 1) - *&v228)];
    v235[1] = v154;
    leadingAnchor19 = [(UILayoutGuide *)v4->_descriptionTextLayoutGuide leadingAnchor];
    trailingAnchor19 = [(NTKUpNextImageView *)v4->_descriptionImageView trailingAnchor];
    v157 = *(&v225 + 1);
    v158 = [leadingAnchor19 constraintEqualToAnchor:trailingAnchor19 constant:*(&v225 + 1)];
    v235[2] = v158;
    v159 = [MEMORY[0x277CBEA60] arrayWithObjects:v235 count:3];
    withDescriptionImageViewConstraints = v4->_withDescriptionImageViewConstraints;
    v4->_withDescriptionImageViewConstraints = v159;

    topAnchor9 = [(NTKUpNextImageView *)v4->_descriptionImageView topAnchor];
    topAnchor10 = [(UILayoutGuide *)v4->_bodyImageSizingLayoutGuide topAnchor];
    v162 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
    v234[0] = v162;
    bottomAnchor11 = [(NTKUpNextImageView *)v4->_descriptionImageView bottomAnchor];
    bottomAnchor12 = [(UILayoutGuide *)v4->_bodyImageSizingLayoutGuide bottomAnchor];
    v165 = [bottomAnchor11 constraintEqualToAnchor:bottomAnchor12];
    v234[1] = v165;
    leadingAnchor20 = [(UILayoutGuide *)v4->_descriptionTextLayoutGuide leadingAnchor];
    trailingAnchor20 = [(NTKUpNextImageView *)v4->_descriptionImageView trailingAnchor];
    v168 = [leadingAnchor20 constraintEqualToAnchor:trailingAnchor20 constant:v157];
    v234[2] = v168;
    v169 = [MEMORY[0x277CBEA60] arrayWithObjects:v234 count:3];
    withStretchableDescriptionImageViewConstraints = v4->_withStretchableDescriptionImageViewConstraints;
    v4->_withStretchableDescriptionImageViewConstraints = v169;

    leadingAnchor21 = [(UILayoutGuide *)v4->_descriptionTextLayoutGuide leadingAnchor];
    leadingAnchor22 = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    v173 = [leadingAnchor21 constraintEqualToAnchor:leadingAnchor22];
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
  device = [(NTKUpNextBaseCell *)self device];
  ___LayoutConstants_block_invoke_21(device, v109);

  content = [(NTKUpNextBaseCell *)self content];
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  description2TextProvider = [content description2TextProvider];
  v8 = description2TextProvider != 0;

  if (self->_showingThirdLine != v8)
  {
    self->_showingThirdLine = v8;
    [(CLKUIColoringLabel *)self->_descriptionLine2Label setHidden:description2TextProvider == 0];
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

  headerTextProvider = [content headerTextProvider];
  v12 = headerTextProvider != 0;

  if (self->_showingHeader != v12)
  {
    self->_showingHeader = v12;
    [(CLKUIColoringLabel *)self->_headerLabel setHidden:headerTextProvider == 0];
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

  headerImageProvider = [content headerImageProvider];
  if (!headerImageProvider)
  {
    overrideHeaderImage = [content overrideHeaderImage];
    if (overrideHeaderImage)
    {
      v17 = headerTextProvider == 0;
    }

    else
    {
      v17 = 1;
    }

    v12 = !v17;
  }

  headerImageEdge = [content headerImageEdge];
  if (self->_showingHeaderImage != v12 || headerImageEdge != self->_headerImageEdge)
  {
    self->_showingHeaderImage = v12;
    self->_headerImageEdge = headerImageEdge;
    headerImage = self->_headerImage;
    if (v12)
    {
      v20 = &OBJC_IVAR___NTKUpNextMultilineCell__headerWithRightImageConstraints;
      [(NTKUpNextImageView *)headerImage setHidden:0];
      [v6 addObjectsFromArray:self->_headerWithNoImageConstraints];
      headerImageEdge2 = [content headerImageEdge];
      if (headerImageEdge2 == 2)
      {
        v22 = &OBJC_IVAR___NTKUpNextMultilineCell__headerWithLeftImageConstraints;
      }

      else
      {
        v22 = &OBJC_IVAR___NTKUpNextMultilineCell__headerWithRightImageConstraints;
      }

      if (headerImageEdge2 != 2)
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
    imageAccessory = [content imageAccessory];
  }

  else
  {
    imageAccessory = 0;
  }

  descriptionAccessory = [content descriptionAccessory];
  if (descriptionAccessory)
  {
    v25 = imageAccessory == 0;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;

  v106 = v5;
  if (imageAccessory)
  {
    descriptionAccessory2 = [content descriptionAccessory];
    v28 = descriptionAccessory2 == 0;
  }

  else
  {
    v28 = 0;
  }

  v29 = &OBJC_IVAR____NTKPhotosPhotoFaceUpgradeContext__bottomComplication;
  v107 = imageAccessory;
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
    leadingAnchor = [(CLKUIColoringLabel *)self->_descriptionLine2Label leadingAnchor];
    trailingAnchor = [(UIView *)self->_accessoryView trailingAnchor];
    v96 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:*v109];
    v114[0] = v96;
    leadingAnchor2 = [(UIView *)self->_accessoryView leadingAnchor];
    leadingAnchor3 = [(UILayoutGuide *)self->_descriptionTextLayoutGuide leadingAnchor];
    v39 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
    v114[1] = v39;
    firstBaselineAnchor = [(UIView *)self->_accessoryView firstBaselineAnchor];
    firstBaselineAnchor2 = [(CLKUIColoringLabel *)self->_descriptionLine2Label firstBaselineAnchor];
    v42 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
    v114[2] = v42;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v114 count:3];
    v44 = self->_withAccessoryConstraints;
    self->_withAccessoryConstraints = v43;

    v100 = 1;
    imageAccessory = v107;
    v29 = &OBJC_IVAR____NTKPhotosPhotoFaceUpgradeContext__bottomComplication;
  }

LABEL_55:
  descriptionAccessory3 = [content descriptionAccessory];
  v103 = v30;
  [(NTKUpNextAccessoryView *)v30 configureWithDescription:descriptionAccessory3];

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
      device2 = [(NTKUpNextBaseCell *)self device];
      CLKRoundForDevice();
      v50 = v49;

      leadingAnchor4 = [(CLKUIColoringLabel *)self->_descriptionLine2Label leadingAnchor];
      trailingAnchor2 = [(UIView *)self->_accessoryView trailingAnchor];
      v95 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor2 constant:*v109];
      v113[0] = v95;
      centerYAnchor = [(UIView *)self->_accessoryView centerYAnchor];
      firstBaselineAnchor3 = [(CLKUIColoringLabel *)self->_descriptionLine2Label firstBaselineAnchor];
      v90 = [centerYAnchor constraintEqualToAnchor:firstBaselineAnchor3 constant:-v50];
      v113[1] = v90;
      leadingAnchor5 = [(UIView *)self->_accessoryView leadingAnchor];
      contentView = [(NTKUpNextMultilineCell *)self contentView];
      leadingAnchor6 = [contentView leadingAnchor];
      v85 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:*&v110];
      v113[2] = v85;
      widthAnchor = [(UIView *)self->_accessoryView widthAnchor];
      v51 = [widthAnchor constraintLessThanOrEqualToConstant:*(&v111 + 1)];
      v113[3] = v51;
      heightAnchor = [(UIView *)self->_accessoryView heightAnchor];
      v53 = v112;
      v54 = [heightAnchor constraintLessThanOrEqualToConstant:v112];
      v113[4] = v54;
      widthAnchor2 = [(UIView *)self->_accessoryView widthAnchor];
      v56 = [widthAnchor2 constraintGreaterThanOrEqualToConstant:v53];
      v113[5] = v56;
      v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v113 count:6];
      v58 = self->_withAccessoryConstraints;
      self->_withAccessoryConstraints = v57;

      v35 = v106;
    }

    imageAccessory = v107;
  }

  v59 = v98 || v28;
  image = [imageAccessory image];
  v60Image = [image image];

  v99 = v60Image;
  [v34 setImage:v60Image];
  v102 = v34;
  if (v100)
  {
    if (v59)
    {
      contentView2 = [(NTKUpNextMultilineCell *)self contentView];
      [contentView2 addSubview:self->_accessoryView];

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

  bodyImageProvider = [content bodyImageProvider];
  if (bodyImageProvider)
  {
    v64 = 1;
  }

  else
  {
    overrideBodyImage = [content overrideBodyImage];
    v64 = overrideBodyImage != 0;
  }

  v63 = v105;

LABEL_77:
  bodyImageShouldStretch = [content bodyImageShouldStretch];
  v68 = bodyImageShouldStretch;
  if (self->_showingDescriptionImage != v64 || self->_usingStretchableImage != bodyImageShouldStretch)
  {
    self->_showingDescriptionImage = v64;
    self->_usingStretchableImage = bodyImageShouldStretch;
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

- (void)configureWithContent:(id)content
{
  v28.receiver = self;
  v28.super_class = NTKUpNextMultilineCell;
  contentCopy = content;
  [(NTKUpNextBaseCell *)&v28 configureWithContent:contentCopy];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__NTKUpNextMultilineCell_configureWithContent___block_invoke;
  aBlock[3] = &unk_278781428;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v5[2](v5, self->_descriptionLine1Label, [contentCopy description1FontStyle]);
  v5[2](v5, self->_descriptionLine2Label, [contentCopy description2FontStyle]);
  headerImage = self->_headerImage;
  tintColor = [contentCopy tintColor];
  [(NTKUpNextImageView *)headerImage setFallbackTintColor:tintColor];

  v8 = self->_headerImage;
  overrideHeaderImage = [contentCopy overrideHeaderImage];
  headerImageProvider = [contentCopy headerImageProvider];
  [(NTKUpNextImageView *)v8 setFullColorImage:overrideHeaderImage tintableImageProvider:headerImageProvider];

  descriptionImageView = self->_descriptionImageView;
  tintColor2 = [contentCopy tintColor];
  [(NTKUpNextImageView *)descriptionImageView setFallbackTintColor:tintColor2];

  v13 = self->_descriptionImageView;
  overrideBodyImage = [contentCopy overrideBodyImage];
  bodyImageProvider = [contentCopy bodyImageProvider];
  [(NTKUpNextImageView *)v13 setFullColorImage:overrideBodyImage tintableImageProvider:bodyImageProvider];

  v16 = self->_descriptionImageView;
  bodyImageCompositingFilter = [contentCopy bodyImageCompositingFilter];
  [(NTKUpNextImageView *)v16 setCompositingFilter:bodyImageCompositingFilter];

  headerLabel = self->_headerLabel;
  headerTextProvider = [contentCopy headerTextProvider];
  __47__NTKUpNextMultilineCell_configureWithContent___block_invoke_2(headerTextProvider, headerLabel, headerTextProvider);

  descriptionLine1Label = self->_descriptionLine1Label;
  description1TextProvider = [contentCopy description1TextProvider];
  __47__NTKUpNextMultilineCell_configureWithContent___block_invoke_2(description1TextProvider, descriptionLine1Label, description1TextProvider);

  descriptionLine2Label = self->_descriptionLine2Label;
  description2TextProvider = [contentCopy description2TextProvider];
  __47__NTKUpNextMultilineCell_configureWithContent___block_invoke_2(description2TextProvider, descriptionLine2Label, description2TextProvider);

  headerTextProvider2 = [contentCopy headerTextProvider];
  [headerTextProvider2 setPaused:{-[NTKUpNextBaseCell isPaused](self, "isPaused")}];

  description1TextProvider2 = [contentCopy description1TextProvider];
  [description1TextProvider2 setPaused:{-[NTKUpNextBaseCell isPaused](self, "isPaused")}];

  description2TextProvider2 = [contentCopy description2TextProvider];

  [description2TextProvider2 setPaused:{-[NTKUpNextBaseCell isPaused](self, "isPaused")}];
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

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  v8.receiver = self;
  v8.super_class = NTKUpNextMultilineCell;
  [(NTKUpNextBaseCell *)&v8 setPaused:?];
  textProvider = [(CLKUIColoringLabel *)self->_headerLabel textProvider];
  [textProvider setPaused:pausedCopy];

  textProvider2 = [(CLKUIColoringLabel *)self->_descriptionLine1Label textProvider];
  [textProvider2 setPaused:pausedCopy];

  textProvider3 = [(CLKUIColoringLabel *)self->_descriptionLine2Label textProvider];
  [textProvider3 setPaused:pausedCopy];
}

- (id)filtersForView:(id)view style:(int64_t)style fraction:(double)fraction
{
  viewCopy = view;
  if (self->_descriptionImageView == viewCopy)
  {
    CLKUIAssociatedNonAccentStyle();
  }

  filterProvider = [(NTKUpNextBaseCell *)self filterProvider];
  v10 = [filterProvider filtersForView:viewCopy style:style fraction:fraction];

  return v10;
}

- (id)filtersForView:(id)view style:(int64_t)style
{
  viewCopy = view;
  if (self->_descriptionImageView == viewCopy)
  {
    CLKUIAssociatedNonAccentStyle();
  }

  filterProvider = [(NTKUpNextBaseCell *)self filterProvider];
  v8 = [filterProvider filtersForView:viewCopy style:style];

  return v8;
}

- (id)filterForView:(id)view style:(int64_t)style fraction:(double)fraction
{
  viewCopy = view;
  if (self->_descriptionImageView == viewCopy)
  {
    CLKUIAssociatedNonAccentStyle();
  }

  filterProvider = [(NTKUpNextBaseCell *)self filterProvider];
  v10 = [filterProvider filterForView:viewCopy style:style fraction:fraction];

  return v10;
}

- (id)filterForView:(id)view style:(int64_t)style
{
  viewCopy = view;
  if (self->_descriptionImageView == viewCopy)
  {
    CLKUIAssociatedNonAccentStyle();
  }

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
  v5.super_class = NTKUpNextMultilineCell;
  [(NTKUpNextBaseCell *)&v5 prepareForReuse];
  [(NTKUpNextImageView *)self->_headerImage transitionToMonochromeWithFraction:0.0];
  [(NTKUpNextImageView *)self->_descriptionImageView transitionToMonochromeWithFraction:0.0];
  layer = [(CLKUIColoringLabel *)self->_headerLabel layer];
  [layer setFilters:0];

  layer2 = [(UIView *)self->_accessoryView layer];
  [layer2 setFilters:0];
}

- (void)setFilterProvider:(id)provider
{
  v5.receiver = self;
  v5.super_class = NTKUpNextMultilineCell;
  providerCopy = provider;
  [(NTKUpNextBaseCell *)&v5 setFilterProvider:providerCopy];
  [(NTKUpNextImageView *)self->_headerImage setFilterProvider:providerCopy, v5.receiver, v5.super_class];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  [(NTKUpNextImageView *)self->_headerImage transitionToMonochromeWithFraction:?];
  [(NTKUpNextImageView *)self->_descriptionImageView transitionToMonochromeWithFraction:fraction];
  if (fabs(fraction) >= 0.00000011920929)
  {
    filterProvider = [(NTKUpNextBaseCell *)self filterProvider];
    layer4 = [filterProvider filtersForView:self style:2 fraction:fraction];

    if (layer4)
    {
      layer = [(CLKUIColoringLabel *)self->_headerLabel layer];
      [layer setFilters:layer4];
    }

    filterProvider2 = [(NTKUpNextBaseCell *)self filterProvider];
    v9 = [filterProvider2 filtersForView:self style:1 fraction:fraction];

    if (v9)
    {
      layer2 = [(UIView *)self->_accessoryView layer];
      [layer2 setFilters:v9];
    }
  }

  else
  {
    layer3 = [(CLKUIColoringLabel *)self->_headerLabel layer];
    [layer3 setFilters:0];

    layer4 = [(UIView *)self->_accessoryView layer];
    [layer4 setFilters:0];
  }
}

- (void)updateMonochromeColor
{
  [(NTKUpNextImageView *)self->_headerImage updateMonochromeColor];
  [(NTKUpNextImageView *)self->_descriptionImageView updateMonochromeColor];
  filterProvider = [(NTKUpNextBaseCell *)self filterProvider];
  v8 = [filterProvider filtersForView:self style:2];

  if (v8)
  {
    layer = [(CLKUIColoringLabel *)self->_headerLabel layer];
    [layer setFilters:v8];
  }

  filterProvider2 = [(NTKUpNextBaseCell *)self filterProvider];
  v6 = [filterProvider2 filtersForView:self style:1];

  if (v6)
  {
    layer2 = [(UIView *)self->_accessoryView layer];
    [layer2 setFilters:v6];
  }
}

@end