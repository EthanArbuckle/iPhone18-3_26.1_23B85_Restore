@interface HUIHeadphoneLevelView
- (HACCContentModuleDelegate)delegate;
- (HUIHeadphoneLevelView)init;
- (id)_accessibilityUserTestingChildren;
- (id)accessibilityValue;
- (id)formatLevel:(id)level baseFont:(id)font;
- (id)formatLevelRating:(id)rating threshold:(unint64_t)threshold;
- (unint64_t)accessibilityTraits;
- (void)dealloc;
- (void)layoutSubviews;
- (void)updateConstraints;
- (void)updateViewsWithSlowLeq:(double)leq fastLeq:(double)fastLeq andThreshold:(unint64_t)threshold;
@end

@implementation HUIHeadphoneLevelView

- (HUIHeadphoneLevelView)init
{
  v106[4] = *MEMORY[0x277D85DE8];
  v105.receiver = self;
  v105.super_class = HUIHeadphoneLevelView;
  v2 = [(HUIHeadphoneLevelView *)&v105 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_updateConstraints name:*MEMORY[0x277D76810] object:0];

    [(HUIHeadphoneLevelView *)v2 setClipsToBounds:1];
    [(HUIHeadphoneLevelView *)v2 _setContinuousCornerRadius:37.0];
    v2->_isRTL = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[HUIHeadphoneLevelView semanticContentAttribute](v2, "semanticContentAttribute")}] == 1;
    v4 = objc_opt_new();
    dbFormatter = v2->_dbFormatter;
    v2->_dbFormatter = v4;

    [(NSNumberFormatter *)v2->_dbFormatter setNumberStyle:1];
    [(NSNumberFormatter *)v2->_dbFormatter setMaximumFractionDigits:0];
    v6 = v2->_dbFormatter;
    v7 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v8 = [(NSNumberFormatter *)v6 stringFromNumber:v7];
    [(NSNumberFormatter *)v6 setNotANumberSymbol:v8];

    v9 = HUICCBackgroundMaterialView();
    backgroundView = v2->_backgroundView;
    v2->_backgroundView = v9;

    [(UIView *)v2->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v2->_backgroundView setUserInteractionEnabled:1];
    [(HUIHeadphoneLevelView *)v2 insertSubview:v2->_backgroundView atIndex:0];
    v99 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(UIView *)v2->_backgroundView leadingAnchor];
    leadingAnchor2 = [(HUIHeadphoneLevelView *)v2 leadingAnchor];
    v101 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v106[0] = v101;
    trailingAnchor = [(UIView *)v2->_backgroundView trailingAnchor];
    trailingAnchor2 = [(HUIHeadphoneLevelView *)v2 trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v106[1] = v12;
    topAnchor = [(UIView *)v2->_backgroundView topAnchor];
    topAnchor2 = [(HUIHeadphoneLevelView *)v2 topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v106[2] = v15;
    bottomAnchor = [(UIView *)v2->_backgroundView bottomAnchor];
    bottomAnchor2 = [(HUIHeadphoneLevelView *)v2 bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v106[3] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v106 count:4];
    [v99 activateConstraints:v19];

    v20 = objc_opt_new();
    centerContainer = v2->_centerContainer;
    v2->_centerContainer = v20;

    [(UIView *)v2->_centerContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUIHeadphoneLevelView *)v2 addSubview:v2->_centerContainer];
    v22 = objc_alloc(MEMORY[0x277D75D68]);
    controlCenterSecondaryVibrancyEffect = [MEMORY[0x277D75D00] controlCenterSecondaryVibrancyEffect];
    v24 = [v22 initWithEffect:controlCenterSecondaryVibrancyEffect];
    titleContainer = v2->_titleContainer;
    v2->_titleContainer = v24;

    [(UIVisualEffectView *)v2->_titleContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v2->_centerContainer addSubview:v2->_titleContainer];
    v26 = objc_opt_new();
    subtitleContainer = v2->_subtitleContainer;
    v2->_subtitleContainer = v26;

    [(UIView *)v2->_subtitleContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v2->_centerContainer addSubview:v2->_subtitleContainer];
    v28 = objc_opt_new();
    titleLabel = v2->_titleLabel;
    v2->_titleLabel = v28;

    v30 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769C0] addingSymbolicTraits:32770 options:0];
    v31 = v2->_titleLabel;
    v32 = MEMORY[0x277D74300];
    [v30 pointSize];
    v33 = [v32 fontWithDescriptor:v30 size:?];
    [(UILabel *)v31 setFont:v33];

    v34 = v2->_titleLabel;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v34 setTextColor:whiteColor];

    [(UILabel *)v2->_titleLabel setNumberOfLines:0];
    [(UILabel *)v2->_titleLabel setTextAlignment:4];
    v36 = v2->_titleLabel;
    v37 = hearingLocString();
    [(UILabel *)v36 setText:v37];

    [(UILabel *)v2->_titleLabel setBaselineAdjustment:0];
    [(UILabel *)v2->_titleLabel setClipsToBounds:0];
    [(UILabel *)v2->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(UIVisualEffectView *)v2->_titleContainer contentView];
    [contentView addSubview:v2->_titleLabel];

    v39 = objc_opt_new();
    subtitleLeftLabel = v2->_subtitleLeftLabel;
    v2->_subtitleLeftLabel = v39;

    v41 = *MEMORY[0x277D76918];
    v42 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] addingSymbolicTraits:2 options:0];

    v43 = v2->_subtitleLeftLabel;
    v44 = MEMORY[0x277D74300];
    [v42 pointSize];
    v45 = [v44 fontWithDescriptor:v42 size:?];
    [(UILabel *)v43 setFont:v45];

    v46 = v2->_subtitleLeftLabel;
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v46 setTextColor:whiteColor2];

    [(UILabel *)v2->_subtitleLeftLabel setNumberOfLines:0];
    [(UILabel *)v2->_subtitleLeftLabel setTextAlignment:4];
    v48 = v2->_subtitleLeftLabel;
    v49 = hearingLocString();
    [(UILabel *)v48 setText:v49];

    [(UILabel *)v2->_subtitleLeftLabel setClipsToBounds:0];
    [(UILabel *)v2->_subtitleLeftLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v2->_subtitleContainer addSubview:v2->_subtitleLeftLabel];
    v50 = objc_opt_new();
    subtitleRightLabel = v2->_subtitleRightLabel;
    v2->_subtitleRightLabel = v50;

    v104 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:v41 addingSymbolicTraits:2 options:0];

    v52 = v2->_subtitleRightLabel;
    v53 = MEMORY[0x277D74300];
    [v104 pointSize];
    v54 = [v53 fontWithDescriptor:v104 size:?];
    [(UILabel *)v52 setFont:v54];

    v55 = v2->_subtitleRightLabel;
    whiteColor3 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v55 setTextColor:whiteColor3];

    [(UILabel *)v2->_subtitleRightLabel setNumberOfLines:0];
    v57 = v2->_subtitleRightLabel;
    if ([(HUIHeadphoneLevelView *)v2 isRTL])
    {
      v58 = 0;
    }

    else
    {
      v58 = 2;
    }

    [(UILabel *)v57 setTextAlignment:v58];
    [(UILabel *)v2->_subtitleRightLabel setClipsToBounds:0];
    [(UILabel *)v2->_subtitleRightLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v2->_subtitleContainer addSubview:v2->_subtitleRightLabel];
    v59 = objc_alloc(MEMORY[0x277D75D68]);
    controlCenterSecondaryVibrancyEffect2 = [MEMORY[0x277D75D00] controlCenterSecondaryVibrancyEffect];
    v61 = [v59 initWithEffect:controlCenterSecondaryVibrancyEffect2];
    labelContainer = v2->_labelContainer;
    v2->_labelContainer = v61;

    [(UIVisualEffectView *)v2->_labelContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v2->_centerContainer addSubview:v2->_labelContainer];
    v63 = objc_opt_new();
    minLabel = v2->_minLabel;
    v2->_minLabel = v63;

    v65 = v2->_minLabel;
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v65 setTextColor:systemGrayColor];

    v67 = v2->_minLabel;
    dbFormatter = [(HUIHeadphoneLevelView *)v2 dbFormatter];
    v69 = [dbFormatter stringFromNumber:&unk_286465810];
    [(UILabel *)v67 setText:v69];

    v70 = v2->_minLabel;
    v71 = *MEMORY[0x277D76938];
    v72 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76938] variant:0];
    [(UILabel *)v70 setFont:v72];

    [(UILabel *)v2->_minLabel setNumberOfLines:0];
    [(UILabel *)v2->_minLabel setTextAlignment:4];
    [(UILabel *)v2->_minLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(UIVisualEffectView *)v2->_labelContainer contentView];
    [contentView2 addSubview:v2->_minLabel];

    v74 = objc_opt_new();
    thresholdLabel = v2->_thresholdLabel;
    v2->_thresholdLabel = v74;

    v76 = v2->_thresholdLabel;
    systemGrayColor2 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v76 setTextColor:systemGrayColor2];

    v78 = v2->_thresholdLabel;
    dbFormatter2 = [(HUIHeadphoneLevelView *)v2 dbFormatter];
    v80 = [dbFormatter2 stringFromNumber:&unk_286465828];
    [(UILabel *)v78 setText:v80];

    v81 = v2->_thresholdLabel;
    v82 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v71 variant:0];
    [(UILabel *)v81 setFont:v82];

    [(UILabel *)v2->_thresholdLabel setNumberOfLines:0];
    [(UILabel *)v2->_thresholdLabel setTextAlignment:1];
    [(UILabel *)v2->_thresholdLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView3 = [(UIVisualEffectView *)v2->_labelContainer contentView];
    [contentView3 addSubview:v2->_thresholdLabel];

    v84 = objc_opt_new();
    maxLabel = v2->_maxLabel;
    v2->_maxLabel = v84;

    v86 = v2->_maxLabel;
    systemGrayColor3 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v86 setTextColor:systemGrayColor3];

    v88 = v2->_maxLabel;
    dbFormatter3 = [(HUIHeadphoneLevelView *)v2 dbFormatter];
    v90 = [dbFormatter3 stringFromNumber:&unk_286465840];
    [(UILabel *)v88 setText:v90];

    v91 = v2->_maxLabel;
    v92 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v71 variant:0];
    [(UILabel *)v91 setFont:v92];

    [(UILabel *)v2->_maxLabel setNumberOfLines:0];
    v93 = v2->_maxLabel;
    if ([(HUIHeadphoneLevelView *)v2 isRTL])
    {
      v94 = 0;
    }

    else
    {
      v94 = 2;
    }

    [(UILabel *)v93 setTextAlignment:v94];
    [(UILabel *)v2->_maxLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView4 = [(UIVisualEffectView *)v2->_labelContainer contentView];
    [contentView4 addSubview:v2->_maxLabel];

    v96 = objc_opt_new();
    levelGroup = v2->_levelGroup;
    v2->_levelGroup = v96;

    [(HUIHeadphoneLevelGroup *)v2->_levelGroup setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v2->_centerContainer addSubview:v2->_levelGroup];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = HUIHeadphoneLevelView;
  [(HUIHeadphoneLevelView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v14 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = HUIHeadphoneLevelView;
  [(HUIHeadphoneLevelView *)&v9 layoutSubviews];
  layoutViewSize = [(HUIHeadphoneLevelView *)self layoutViewSize];
  if (layoutViewSize != Layout)
  {
    v4 = HCLogSoundMeter();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      layoutViewSize2 = [(HUIHeadphoneLevelView *)self layoutViewSize];
      *buf = 67109376;
      v11 = layoutViewSize2;
      v12 = 1024;
      v13 = Layout;
      _os_log_impl(&dword_252166000, v4, OS_LOG_TYPE_INFO, "Headphone level layout size doesn't match anymore %i -> %i. Rebuilding constraints", buf, 0xEu);
    }

    [(HUIHeadphoneLevelView *)self setLayoutViewSize:Layout];
    v6 = MEMORY[0x277CCAAD0];
    viewConstraints = [(HUIHeadphoneLevelView *)self viewConstraints];
    [v6 deactivateConstraints:viewConstraints];

    [(HUIHeadphoneLevelView *)self setViewConstraints:0];
    [(HUIHeadphoneLevelView *)self setNeedsUpdateConstraints];
    levelGroup = [(HUIHeadphoneLevelView *)self levelGroup];
    [levelGroup setNeedsLayout];
  }
}

- (void)updateConstraints
{
  v167[15] = *MEMORY[0x277D85DE8];
  viewConstraints = [(HUIHeadphoneLevelView *)self viewConstraints];

  if (!viewConstraints)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];

    array = [MEMORY[0x277CBEB18] array];
    centerYAnchor = [(UIView *)self->_centerContainer centerYAnchor];
    centerYAnchor2 = [(HUIHeadphoneLevelView *)self centerYAnchor];
    v150 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v167[0] = v150;
    topAnchor = [(UIView *)self->_centerContainer topAnchor];
    topAnchor2 = [(HUIHeadphoneLevelView *)self topAnchor];
    v138 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
    v167[1] = v138;
    bottomAnchor = [(UIView *)self->_centerContainer bottomAnchor];
    bottomAnchor2 = [(HUIHeadphoneLevelView *)self bottomAnchor];
    v126 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
    v167[2] = v126;
    leadingAnchor = [(UIView *)self->_centerContainer leadingAnchor];
    leadingAnchor2 = [(HUIHeadphoneLevelView *)self leadingAnchor];
    v120 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
    v167[3] = v120;
    trailingAnchor = [(UIView *)self->_centerContainer trailingAnchor];
    trailingAnchor2 = [(HUIHeadphoneLevelView *)self trailingAnchor];
    v114 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
    v167[4] = v114;
    topAnchor3 = [(UIVisualEffectView *)self->_titleContainer topAnchor];
    topAnchor4 = [(UIView *)self->_centerContainer topAnchor];
    v108 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v167[5] = v108;
    leadingAnchor3 = [(UIVisualEffectView *)self->_titleContainer leadingAnchor];
    leadingAnchor4 = [(UIView *)self->_centerContainer leadingAnchor];
    v101 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v167[6] = v101;
    trailingAnchor3 = [(UIVisualEffectView *)self->_titleContainer trailingAnchor];
    trailingAnchor4 = [(UIView *)self->_centerContainer trailingAnchor];
    v95 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v167[7] = v95;
    topAnchor5 = [(UIView *)self->_subtitleContainer topAnchor];
    bottomAnchor3 = [(UIVisualEffectView *)self->_titleContainer bottomAnchor];
    v88 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3];
    v167[8] = v88;
    leadingAnchor5 = [(UIView *)self->_subtitleContainer leadingAnchor];
    leadingAnchor6 = [(UIVisualEffectView *)self->_titleContainer leadingAnchor];
    v83 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v167[9] = v83;
    trailingAnchor5 = [(UIView *)self->_subtitleContainer trailingAnchor];
    trailingAnchor6 = [(UIVisualEffectView *)self->_titleContainer trailingAnchor];
    v77 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v167[10] = v77;
    topAnchor6 = [(UIVisualEffectView *)self->_labelContainer topAnchor];
    bottomAnchor4 = [(HUIHeadphoneLevelGroup *)self->_levelGroup bottomAnchor];
    v71 = [topAnchor6 constraintEqualToAnchor:bottomAnchor4];
    v167[11] = v71;
    bottomAnchor5 = [(UIVisualEffectView *)self->_labelContainer bottomAnchor];
    bottomAnchor6 = [(UIView *)self->_centerContainer bottomAnchor];
    v6 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    v167[12] = v6;
    leadingAnchor7 = [(UIVisualEffectView *)self->_labelContainer leadingAnchor];
    leadingAnchor8 = [(HUIHeadphoneLevelGroup *)self->_levelGroup leadingAnchor];
    v9 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v167[13] = v9;
    trailingAnchor7 = [(UIVisualEffectView *)self->_labelContainer trailingAnchor];
    trailingAnchor8 = [(HUIHeadphoneLevelGroup *)self->_levelGroup trailingAnchor];
    v12 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    v167[14] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v167 count:15];
    [array addObjectsFromArray:v13];

    LODWORD(trailingAnchor7) = [(HUIHeadphoneLevelView *)self isRTL];
    topAnchor7 = [(HUIHeadphoneLevelGroup *)self->_levelGroup topAnchor];
    bottomAnchor7 = [(UIView *)self->_subtitleContainer bottomAnchor];
    v147 = [topAnchor7 constraintEqualToAnchor:bottomAnchor7];
    v166[0] = v147;
    leadingAnchor9 = [(HUIHeadphoneLevelGroup *)self->_levelGroup leadingAnchor];
    leadingAnchor10 = [(UIView *)self->_subtitleContainer leadingAnchor];
    v135 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
    v166[1] = v135;
    trailingAnchor9 = [(HUIHeadphoneLevelGroup *)self->_levelGroup trailingAnchor];
    trailingAnchor10 = [(UIView *)self->_subtitleContainer trailingAnchor];
    v125 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
    v166[2] = v125;
    topAnchor8 = [(UILabel *)self->_titleLabel topAnchor];
    topAnchor9 = [(UIVisualEffectView *)self->_titleContainer topAnchor];
    v119 = [topAnchor8 constraintEqualToAnchor:topAnchor9];
    v166[3] = v119;
    bottomAnchor8 = [(UILabel *)self->_titleLabel bottomAnchor];
    bottomAnchor9 = [(UIVisualEffectView *)self->_titleContainer bottomAnchor];
    v113 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9];
    v166[4] = v113;
    leadingAnchor11 = [(UILabel *)self->_titleLabel leadingAnchor];
    leadingAnchor12 = [(UIVisualEffectView *)self->_titleContainer leadingAnchor];
    v107 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
    v166[5] = v107;
    trailingAnchor11 = [(UILabel *)self->_titleLabel trailingAnchor];
    trailingAnchor12 = [(UIVisualEffectView *)self->_titleContainer trailingAnchor];
    v102 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
    v166[6] = v102;
    topAnchor10 = [(UILabel *)self->_subtitleLeftLabel topAnchor];
    topAnchor11 = [(UIView *)self->_subtitleContainer topAnchor];
    v96 = [topAnchor10 constraintEqualToAnchor:topAnchor11];
    v166[7] = v96;
    leadingAnchor13 = [(UILabel *)self->_subtitleLeftLabel leadingAnchor];
    leadingAnchor14 = [(UIView *)self->_subtitleContainer leadingAnchor];
    v90 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14];
    v166[8] = v90;
    leadingAnchor15 = [(UILabel *)self->_minLabel leadingAnchor];
    contentView = [(UIVisualEffectView *)self->_labelContainer contentView];
    leadingAnchor16 = [contentView leadingAnchor];
    v82 = [leadingAnchor15 constraintEqualToAnchor:leadingAnchor16];
    v166[9] = v82;
    topAnchor12 = [(UILabel *)self->_minLabel topAnchor];
    contentView2 = [(UIVisualEffectView *)self->_labelContainer contentView];
    topAnchor13 = [contentView2 topAnchor];
    v74 = [topAnchor12 constraintEqualToAnchor:topAnchor13];
    v166[10] = v74;
    bottomAnchor10 = [(UILabel *)self->_minLabel bottomAnchor];
    contentView3 = [(UIVisualEffectView *)self->_labelContainer contentView];
    bottomAnchor11 = [contentView3 bottomAnchor];
    v67 = [bottomAnchor10 constraintEqualToAnchor:bottomAnchor11];
    v166[11] = v67;
    v14 = MEMORY[0x277CCAAD0];
    thresholdLabel = self->_thresholdLabel;
    contentView4 = [(UIVisualEffectView *)self->_labelContainer contentView];
    v66 = contentView4;
    v17 = 1.38888884;
    if (trailingAnchor7)
    {
      v17 = 0.611111104;
    }

    v65 = [v14 constraintWithItem:thresholdLabel attribute:9 relatedBy:0 toItem:contentView4 attribute:9 multiplier:v17 constant:0.0];
    v166[12] = v65;
    widthAnchor = [(UILabel *)self->_thresholdLabel widthAnchor];
    contentView5 = [(UIVisualEffectView *)self->_labelContainer contentView];
    widthAnchor2 = [contentView5 widthAnchor];
    v61 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v166[13] = v61;
    topAnchor14 = [(UILabel *)self->_thresholdLabel topAnchor];
    contentView6 = [(UIVisualEffectView *)self->_labelContainer contentView];
    topAnchor15 = [contentView6 topAnchor];
    v57 = [topAnchor14 constraintEqualToAnchor:topAnchor15];
    v166[14] = v57;
    bottomAnchor12 = [(UILabel *)self->_thresholdLabel bottomAnchor];
    contentView7 = [(UIVisualEffectView *)self->_labelContainer contentView];
    bottomAnchor13 = [contentView7 bottomAnchor];
    v53 = [bottomAnchor12 constraintEqualToAnchor:bottomAnchor13];
    v166[15] = v53;
    trailingAnchor13 = [(UILabel *)self->_maxLabel trailingAnchor];
    contentView8 = [(UIVisualEffectView *)self->_labelContainer contentView];
    trailingAnchor14 = [contentView8 trailingAnchor];
    v49 = [trailingAnchor13 constraintEqualToAnchor:trailingAnchor14];
    v166[16] = v49;
    topAnchor16 = [(UILabel *)self->_maxLabel topAnchor];
    contentView9 = [(UIVisualEffectView *)self->_labelContainer contentView];
    topAnchor17 = [contentView9 topAnchor];
    v21 = [topAnchor16 constraintEqualToAnchor:topAnchor17];
    v166[17] = v21;
    bottomAnchor14 = [(UILabel *)self->_maxLabel bottomAnchor];
    contentView10 = [(UIVisualEffectView *)self->_labelContainer contentView];
    bottomAnchor15 = [contentView10 bottomAnchor];
    v25 = [bottomAnchor14 constraintEqualToAnchor:bottomAnchor15];
    v166[18] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v166 count:19];
    [array addObjectsFromArray:v26];

    v27 = *MEMORY[0x277D767F8];
    v28 = [preferredContentSizeCategory isEqualToString:*MEMORY[0x277D767F8]];
    v29 = MEMORY[0x277D767F0];
    if (v28 & 1) != 0 || ([preferredContentSizeCategory isEqualToString:*MEMORY[0x277D767F0]])
    {
      v30 = 1;
    }

    else
    {
      v30 = [preferredContentSizeCategory isEqualToString:*MEMORY[0x277D767E8]];
    }

    [(UILabel *)self->_maxLabel setHidden:v30];
    if (([preferredContentSizeCategory isEqualToString:v27] & 1) != 0 || (objc_msgSend(preferredContentSizeCategory, "isEqualToString:", *v29) & 1) != 0 || objc_msgSend(preferredContentSizeCategory, "isEqualToString:", *MEMORY[0x277D767E8]))
    {
      bottomAnchor16 = [(UILabel *)self->_subtitleLeftLabel bottomAnchor];
      topAnchor18 = [(UILabel *)self->_subtitleRightLabel topAnchor];
      v148 = [bottomAnchor16 constraintEqualToAnchor:topAnchor18];
      v165[0] = v148;
      trailingAnchor15 = [(UILabel *)self->_subtitleLeftLabel trailingAnchor];
      trailingAnchor16 = [(UILabel *)self->_subtitleRightLabel trailingAnchor];
      v140 = [trailingAnchor15 constraintEqualToAnchor:trailingAnchor16];
      v165[1] = v140;
      bottomAnchor17 = [(UILabel *)self->_subtitleRightLabel bottomAnchor];
      bottomAnchor18 = [(UIView *)self->_subtitleContainer bottomAnchor];
      v128 = [bottomAnchor17 constraintEqualToAnchor:bottomAnchor18];
      v165[2] = v128;
      leadingAnchor17 = [(UILabel *)self->_subtitleRightLabel leadingAnchor];
      leadingAnchor18 = [(UIView *)self->_subtitleContainer leadingAnchor];
      v33 = [leadingAnchor17 constraintEqualToAnchor:leadingAnchor18];
      v165[3] = v33;
      trailingAnchor17 = [(UILabel *)self->_subtitleRightLabel trailingAnchor];
      trailingAnchor18 = [(UIView *)self->_subtitleContainer trailingAnchor];
      v36 = [trailingAnchor17 constraintEqualToAnchor:trailingAnchor18];
      v165[4] = v36;
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v165 count:5];
      v38 = array;
      [array addObjectsFromArray:v37];

      subtitleRightLabel = self->_subtitleRightLabel;
      v40 = 4;
    }

    else
    {
      bottomAnchor19 = [(UILabel *)self->_subtitleLeftLabel bottomAnchor];
      bottomAnchor20 = [(UIView *)self->_subtitleContainer bottomAnchor];
      v149 = [bottomAnchor19 constraintEqualToAnchor:bottomAnchor20];
      v164[0] = v149;
      trailingAnchor19 = [(UILabel *)self->_subtitleLeftLabel trailingAnchor];
      leadingAnchor19 = [(UILabel *)self->_subtitleRightLabel leadingAnchor];
      v141 = [trailingAnchor19 constraintEqualToAnchor:leadingAnchor19 constant:-12.0];
      v164[1] = v141;
      topAnchor19 = [(UILabel *)self->_subtitleRightLabel topAnchor];
      topAnchor20 = [(UIView *)self->_subtitleContainer topAnchor];
      v129 = [topAnchor19 constraintEqualToAnchor:topAnchor20];
      v164[2] = v129;
      bottomAnchor21 = [(UILabel *)self->_subtitleRightLabel bottomAnchor];
      bottomAnchor22 = [(UIView *)self->_subtitleContainer bottomAnchor];
      v43 = [bottomAnchor21 constraintEqualToAnchor:bottomAnchor22];
      v164[3] = v43;
      trailingAnchor20 = [(UILabel *)self->_subtitleRightLabel trailingAnchor];
      trailingAnchor21 = [(UIView *)self->_subtitleContainer trailingAnchor];
      v46 = [trailingAnchor20 constraintEqualToAnchor:trailingAnchor21];
      v164[4] = v46;
      v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v164 count:5];
      v38 = array;
      [array addObjectsFromArray:v47];

      v48 = self->_subtitleRightLabel;
      if ([(HUIHeadphoneLevelView *)self isRTL])
      {
        v40 = 0;
      }

      else
      {
        v40 = 2;
      }

      subtitleRightLabel = v48;
    }

    [(UILabel *)subtitleRightLabel setTextAlignment:v40];
    [(HUIHeadphoneLevelView *)self setViewConstraints:v38];
    [MEMORY[0x277CCAAD0] activateConstraints:v38];
  }

  v163.receiver = self;
  v163.super_class = HUIHeadphoneLevelView;
  [(HUIHeadphoneLevelView *)&v163 updateConstraints];
}

- (void)updateViewsWithSlowLeq:(double)leq fastLeq:(double)fastLeq andThreshold:(unint64_t)threshold
{
  objc_initWeak(&location, self);
  objc_copyWeak(v8, &location);
  v8[1] = *&leq;
  v8[2] = threshold;
  v8[3] = *&fastLeq;
  AXPerformBlockOnMainThread();
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

void __69__HUIHeadphoneLevelView_updateViewsWithSlowLeq_fastLeq_andThreshold___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained dbFormatter];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:round(*(a1 + 40))];
  v17 = [v3 stringFromNumber:v4];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 subtitleLeftLabel];
  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 formatLevelRating:v17 threshold:*(a1 + 48)];
  [v6 setAttributedText:v8];

  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 subtitleRightLabel];
  v11 = objc_loadWeakRetained((a1 + 32));
  v12 = [v11 subtitleRightLabel];
  v13 = [v12 font];
  v14 = [v11 formatLevel:v17 baseFont:v13];
  [v10 setAttributedText:v14];

  v15 = objc_loadWeakRetained((a1 + 32));
  v16 = [v15 levelGroup];
  [v16 updateWithExposure:*(a1 + 48) withThreshold:*(a1 + 56)];
}

- (id)formatLevelRating:(id)rating threshold:(unint64_t)threshold
{
  v5 = colorForThreshold(threshold);
  if (!threshold)
  {
    v6 = @"checkmark.circle.fill";
    goto LABEL_6;
  }

  if (threshold == 100 || threshold == 80)
  {
    v6 = @"exclamationmark.triangle.fill";
LABEL_6:
    v7 = hearingLocString();
    goto LABEL_8;
  }

  v6 = 0;
  v7 = 0;
LABEL_8:
  v8 = attributedStringWithImage(v6, v5, v7, *MEMORY[0x277D76A28], 0);

  return v8;
}

- (id)formatLevel:(id)level baseFont:(id)font
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCACA8];
  fontCopy = font;
  levelCopy = level;
  v8 = hearingLocString();
  levelCopy = [v5 stringWithFormat:v8, levelCopy];

  v10 = [levelCopy rangeOfString:levelCopy options:0];
  v12 = v11;

  v13 = *MEMORY[0x277D74388];
  v18[0] = *MEMORY[0x277D74398];
  v18[1] = v13;
  v19[0] = &unk_286465858;
  v19[1] = &unk_286465870;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v20[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];

  v16 = attributedStringWithFeatureSettings(levelCopy, fontCopy, v15, v10, v12);

  return v16;
}

- (id)accessibilityValue
{
  v3 = MEMORY[0x277CCACA8];
  accessibilityLabel = [(UILabel *)self->_subtitleLeftLabel accessibilityLabel];
  accessibilityLabel2 = [(UILabel *)self->_subtitleRightLabel accessibilityLabel];
  v6 = [v3 stringWithFormat:@"%@ %@", accessibilityLabel, accessibilityLabel2];

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = HUIHeadphoneLevelView;
  return *MEMORY[0x277D765D0] | [(HUIHeadphoneLevelView *)&v3 accessibilityTraits];
}

- (id)_accessibilityUserTestingChildren
{
  v5[1] = *MEMORY[0x277D85DE8];
  centerContainer = [(HUIHeadphoneLevelView *)self centerContainer];
  v5[0] = centerContainer;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (HACCContentModuleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end