@interface HUIHeadphoneLevelView
- (HACCContentModuleDelegate)delegate;
- (HUIHeadphoneLevelView)init;
- (id)_accessibilityUserTestingChildren;
- (id)accessibilityValue;
- (id)formatLevel:(id)a3 baseFont:(id)a4;
- (id)formatLevelRating:(id)a3 threshold:(unint64_t)a4;
- (unint64_t)accessibilityTraits;
- (void)dealloc;
- (void)layoutSubviews;
- (void)updateConstraints;
- (void)updateViewsWithSlowLeq:(double)a3 fastLeq:(double)a4 andThreshold:(unint64_t)a5;
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
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel_updateConstraints name:*MEMORY[0x277D76810] object:0];

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
    v103 = [(UIView *)v2->_backgroundView leadingAnchor];
    v102 = [(HUIHeadphoneLevelView *)v2 leadingAnchor];
    v101 = [v103 constraintEqualToAnchor:v102];
    v106[0] = v101;
    v100 = [(UIView *)v2->_backgroundView trailingAnchor];
    v11 = [(HUIHeadphoneLevelView *)v2 trailingAnchor];
    v12 = [v100 constraintEqualToAnchor:v11];
    v106[1] = v12;
    v13 = [(UIView *)v2->_backgroundView topAnchor];
    v14 = [(HUIHeadphoneLevelView *)v2 topAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v106[2] = v15;
    v16 = [(UIView *)v2->_backgroundView bottomAnchor];
    v17 = [(HUIHeadphoneLevelView *)v2 bottomAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v106[3] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v106 count:4];
    [v99 activateConstraints:v19];

    v20 = objc_opt_new();
    centerContainer = v2->_centerContainer;
    v2->_centerContainer = v20;

    [(UIView *)v2->_centerContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUIHeadphoneLevelView *)v2 addSubview:v2->_centerContainer];
    v22 = objc_alloc(MEMORY[0x277D75D68]);
    v23 = [MEMORY[0x277D75D00] controlCenterSecondaryVibrancyEffect];
    v24 = [v22 initWithEffect:v23];
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
    v35 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v34 setTextColor:v35];

    [(UILabel *)v2->_titleLabel setNumberOfLines:0];
    [(UILabel *)v2->_titleLabel setTextAlignment:4];
    v36 = v2->_titleLabel;
    v37 = hearingLocString();
    [(UILabel *)v36 setText:v37];

    [(UILabel *)v2->_titleLabel setBaselineAdjustment:0];
    [(UILabel *)v2->_titleLabel setClipsToBounds:0];
    [(UILabel *)v2->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v38 = [(UIVisualEffectView *)v2->_titleContainer contentView];
    [v38 addSubview:v2->_titleLabel];

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
    v47 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v46 setTextColor:v47];

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
    v56 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v55 setTextColor:v56];

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
    v60 = [MEMORY[0x277D75D00] controlCenterSecondaryVibrancyEffect];
    v61 = [v59 initWithEffect:v60];
    labelContainer = v2->_labelContainer;
    v2->_labelContainer = v61;

    [(UIVisualEffectView *)v2->_labelContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v2->_centerContainer addSubview:v2->_labelContainer];
    v63 = objc_opt_new();
    minLabel = v2->_minLabel;
    v2->_minLabel = v63;

    v65 = v2->_minLabel;
    v66 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v65 setTextColor:v66];

    v67 = v2->_minLabel;
    v68 = [(HUIHeadphoneLevelView *)v2 dbFormatter];
    v69 = [v68 stringFromNumber:&unk_286465810];
    [(UILabel *)v67 setText:v69];

    v70 = v2->_minLabel;
    v71 = *MEMORY[0x277D76938];
    v72 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76938] variant:0];
    [(UILabel *)v70 setFont:v72];

    [(UILabel *)v2->_minLabel setNumberOfLines:0];
    [(UILabel *)v2->_minLabel setTextAlignment:4];
    [(UILabel *)v2->_minLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v73 = [(UIVisualEffectView *)v2->_labelContainer contentView];
    [v73 addSubview:v2->_minLabel];

    v74 = objc_opt_new();
    thresholdLabel = v2->_thresholdLabel;
    v2->_thresholdLabel = v74;

    v76 = v2->_thresholdLabel;
    v77 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v76 setTextColor:v77];

    v78 = v2->_thresholdLabel;
    v79 = [(HUIHeadphoneLevelView *)v2 dbFormatter];
    v80 = [v79 stringFromNumber:&unk_286465828];
    [(UILabel *)v78 setText:v80];

    v81 = v2->_thresholdLabel;
    v82 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v71 variant:0];
    [(UILabel *)v81 setFont:v82];

    [(UILabel *)v2->_thresholdLabel setNumberOfLines:0];
    [(UILabel *)v2->_thresholdLabel setTextAlignment:1];
    [(UILabel *)v2->_thresholdLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v83 = [(UIVisualEffectView *)v2->_labelContainer contentView];
    [v83 addSubview:v2->_thresholdLabel];

    v84 = objc_opt_new();
    maxLabel = v2->_maxLabel;
    v2->_maxLabel = v84;

    v86 = v2->_maxLabel;
    v87 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v86 setTextColor:v87];

    v88 = v2->_maxLabel;
    v89 = [(HUIHeadphoneLevelView *)v2 dbFormatter];
    v90 = [v89 stringFromNumber:&unk_286465840];
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
    v95 = [(UIVisualEffectView *)v2->_labelContainer contentView];
    [v95 addSubview:v2->_maxLabel];

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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

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
  v3 = [(HUIHeadphoneLevelView *)self layoutViewSize];
  if (v3 != Layout)
  {
    v4 = HCLogSoundMeter();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [(HUIHeadphoneLevelView *)self layoutViewSize];
      *buf = 67109376;
      v11 = v5;
      v12 = 1024;
      v13 = Layout;
      _os_log_impl(&dword_252166000, v4, OS_LOG_TYPE_INFO, "Headphone level layout size doesn't match anymore %i -> %i. Rebuilding constraints", buf, 0xEu);
    }

    [(HUIHeadphoneLevelView *)self setLayoutViewSize:Layout];
    v6 = MEMORY[0x277CCAAD0];
    v7 = [(HUIHeadphoneLevelView *)self viewConstraints];
    [v6 deactivateConstraints:v7];

    [(HUIHeadphoneLevelView *)self setViewConstraints:0];
    [(HUIHeadphoneLevelView *)self setNeedsUpdateConstraints];
    v8 = [(HUIHeadphoneLevelView *)self levelGroup];
    [v8 setNeedsLayout];
  }
}

- (void)updateConstraints
{
  v167[15] = *MEMORY[0x277D85DE8];
  v3 = [(HUIHeadphoneLevelView *)self viewConstraints];

  if (!v3)
  {
    v4 = [MEMORY[0x277D75128] sharedApplication];
    v161 = [v4 preferredContentSizeCategory];

    v162 = [MEMORY[0x277CBEB18] array];
    v158 = [(UIView *)self->_centerContainer centerYAnchor];
    v154 = [(HUIHeadphoneLevelView *)self centerYAnchor];
    v150 = [v158 constraintEqualToAnchor:v154];
    v167[0] = v150;
    v146 = [(UIView *)self->_centerContainer topAnchor];
    v142 = [(HUIHeadphoneLevelView *)self topAnchor];
    v138 = [v146 constraintEqualToAnchor:v142 constant:10.0];
    v167[1] = v138;
    v134 = [(UIView *)self->_centerContainer bottomAnchor];
    v130 = [(HUIHeadphoneLevelView *)self bottomAnchor];
    v126 = [v134 constraintEqualToAnchor:v130 constant:-10.0];
    v167[2] = v126;
    v124 = [(UIView *)self->_centerContainer leadingAnchor];
    v122 = [(HUIHeadphoneLevelView *)self leadingAnchor];
    v120 = [v124 constraintEqualToAnchor:v122 constant:20.0];
    v167[3] = v120;
    v118 = [(UIView *)self->_centerContainer trailingAnchor];
    v116 = [(HUIHeadphoneLevelView *)self trailingAnchor];
    v114 = [v118 constraintEqualToAnchor:v116 constant:-20.0];
    v167[4] = v114;
    v112 = [(UIVisualEffectView *)self->_titleContainer topAnchor];
    v110 = [(UIView *)self->_centerContainer topAnchor];
    v108 = [v112 constraintEqualToAnchor:v110];
    v167[5] = v108;
    v106 = [(UIVisualEffectView *)self->_titleContainer leadingAnchor];
    v104 = [(UIView *)self->_centerContainer leadingAnchor];
    v101 = [v106 constraintEqualToAnchor:v104];
    v167[6] = v101;
    v99 = [(UIVisualEffectView *)self->_titleContainer trailingAnchor];
    v97 = [(UIView *)self->_centerContainer trailingAnchor];
    v95 = [v99 constraintEqualToAnchor:v97];
    v167[7] = v95;
    v93 = [(UIView *)self->_subtitleContainer topAnchor];
    v91 = [(UIVisualEffectView *)self->_titleContainer bottomAnchor];
    v88 = [v93 constraintEqualToAnchor:v91];
    v167[8] = v88;
    v86 = [(UIView *)self->_subtitleContainer leadingAnchor];
    v84 = [(UIVisualEffectView *)self->_titleContainer leadingAnchor];
    v83 = [v86 constraintEqualToAnchor:v84];
    v167[9] = v83;
    v81 = [(UIView *)self->_subtitleContainer trailingAnchor];
    v79 = [(UIVisualEffectView *)self->_titleContainer trailingAnchor];
    v77 = [v81 constraintEqualToAnchor:v79];
    v167[10] = v77;
    v75 = [(UIVisualEffectView *)self->_labelContainer topAnchor];
    v73 = [(HUIHeadphoneLevelGroup *)self->_levelGroup bottomAnchor];
    v71 = [v75 constraintEqualToAnchor:v73];
    v167[11] = v71;
    v69 = [(UIVisualEffectView *)self->_labelContainer bottomAnchor];
    v5 = [(UIView *)self->_centerContainer bottomAnchor];
    v6 = [v69 constraintEqualToAnchor:v5];
    v167[12] = v6;
    v7 = [(UIVisualEffectView *)self->_labelContainer leadingAnchor];
    v8 = [(HUIHeadphoneLevelGroup *)self->_levelGroup leadingAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    v167[13] = v9;
    v10 = [(UIVisualEffectView *)self->_labelContainer trailingAnchor];
    v11 = [(HUIHeadphoneLevelGroup *)self->_levelGroup trailingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v167[14] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v167 count:15];
    [v162 addObjectsFromArray:v13];

    LODWORD(v10) = [(HUIHeadphoneLevelView *)self isRTL];
    v155 = [(HUIHeadphoneLevelGroup *)self->_levelGroup topAnchor];
    v151 = [(UIView *)self->_subtitleContainer bottomAnchor];
    v147 = [v155 constraintEqualToAnchor:v151];
    v166[0] = v147;
    v143 = [(HUIHeadphoneLevelGroup *)self->_levelGroup leadingAnchor];
    v139 = [(UIView *)self->_subtitleContainer leadingAnchor];
    v135 = [v143 constraintEqualToAnchor:v139];
    v166[1] = v135;
    v131 = [(HUIHeadphoneLevelGroup *)self->_levelGroup trailingAnchor];
    v127 = [(UIView *)self->_subtitleContainer trailingAnchor];
    v125 = [v131 constraintEqualToAnchor:v127];
    v166[2] = v125;
    v123 = [(UILabel *)self->_titleLabel topAnchor];
    v121 = [(UIVisualEffectView *)self->_titleContainer topAnchor];
    v119 = [v123 constraintEqualToAnchor:v121];
    v166[3] = v119;
    v117 = [(UILabel *)self->_titleLabel bottomAnchor];
    v115 = [(UIVisualEffectView *)self->_titleContainer bottomAnchor];
    v113 = [v117 constraintEqualToAnchor:v115];
    v166[4] = v113;
    v111 = [(UILabel *)self->_titleLabel leadingAnchor];
    v109 = [(UIVisualEffectView *)self->_titleContainer leadingAnchor];
    v107 = [v111 constraintEqualToAnchor:v109];
    v166[5] = v107;
    v105 = [(UILabel *)self->_titleLabel trailingAnchor];
    v103 = [(UIVisualEffectView *)self->_titleContainer trailingAnchor];
    v102 = [v105 constraintEqualToAnchor:v103];
    v166[6] = v102;
    v100 = [(UILabel *)self->_subtitleLeftLabel topAnchor];
    v98 = [(UIView *)self->_subtitleContainer topAnchor];
    v96 = [v100 constraintEqualToAnchor:v98];
    v166[7] = v96;
    v94 = [(UILabel *)self->_subtitleLeftLabel leadingAnchor];
    v92 = [(UIView *)self->_subtitleContainer leadingAnchor];
    v90 = [v94 constraintEqualToAnchor:v92];
    v166[8] = v90;
    v87 = [(UILabel *)self->_minLabel leadingAnchor];
    v89 = [(UIVisualEffectView *)self->_labelContainer contentView];
    v85 = [v89 leadingAnchor];
    v82 = [v87 constraintEqualToAnchor:v85];
    v166[9] = v82;
    v78 = [(UILabel *)self->_minLabel topAnchor];
    v80 = [(UIVisualEffectView *)self->_labelContainer contentView];
    v76 = [v80 topAnchor];
    v74 = [v78 constraintEqualToAnchor:v76];
    v166[10] = v74;
    v70 = [(UILabel *)self->_minLabel bottomAnchor];
    v72 = [(UIVisualEffectView *)self->_labelContainer contentView];
    v68 = [v72 bottomAnchor];
    v67 = [v70 constraintEqualToAnchor:v68];
    v166[11] = v67;
    v14 = MEMORY[0x277CCAAD0];
    thresholdLabel = self->_thresholdLabel;
    v16 = [(UIVisualEffectView *)self->_labelContainer contentView];
    v66 = v16;
    v17 = 1.38888884;
    if (v10)
    {
      v17 = 0.611111104;
    }

    v65 = [v14 constraintWithItem:thresholdLabel attribute:9 relatedBy:0 toItem:v16 attribute:9 multiplier:v17 constant:0.0];
    v166[12] = v65;
    v63 = [(UILabel *)self->_thresholdLabel widthAnchor];
    v64 = [(UIVisualEffectView *)self->_labelContainer contentView];
    v62 = [v64 widthAnchor];
    v61 = [v63 constraintEqualToAnchor:v62];
    v166[13] = v61;
    v59 = [(UILabel *)self->_thresholdLabel topAnchor];
    v60 = [(UIVisualEffectView *)self->_labelContainer contentView];
    v58 = [v60 topAnchor];
    v57 = [v59 constraintEqualToAnchor:v58];
    v166[14] = v57;
    v55 = [(UILabel *)self->_thresholdLabel bottomAnchor];
    v56 = [(UIVisualEffectView *)self->_labelContainer contentView];
    v54 = [v56 bottomAnchor];
    v53 = [v55 constraintEqualToAnchor:v54];
    v166[15] = v53;
    v51 = [(UILabel *)self->_maxLabel trailingAnchor];
    v52 = [(UIVisualEffectView *)self->_labelContainer contentView];
    v50 = [v52 trailingAnchor];
    v49 = [v51 constraintEqualToAnchor:v50];
    v166[16] = v49;
    v18 = [(UILabel *)self->_maxLabel topAnchor];
    v19 = [(UIVisualEffectView *)self->_labelContainer contentView];
    v20 = [v19 topAnchor];
    v21 = [v18 constraintEqualToAnchor:v20];
    v166[17] = v21;
    v22 = [(UILabel *)self->_maxLabel bottomAnchor];
    v23 = [(UIVisualEffectView *)self->_labelContainer contentView];
    v24 = [v23 bottomAnchor];
    v25 = [v22 constraintEqualToAnchor:v24];
    v166[18] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v166 count:19];
    [v162 addObjectsFromArray:v26];

    v27 = *MEMORY[0x277D767F8];
    v28 = [v161 isEqualToString:*MEMORY[0x277D767F8]];
    v29 = MEMORY[0x277D767F0];
    if (v28 & 1) != 0 || ([v161 isEqualToString:*MEMORY[0x277D767F0]])
    {
      v30 = 1;
    }

    else
    {
      v30 = [v161 isEqualToString:*MEMORY[0x277D767E8]];
    }

    [(UILabel *)self->_maxLabel setHidden:v30];
    if (([v161 isEqualToString:v27] & 1) != 0 || (objc_msgSend(v161, "isEqualToString:", *v29) & 1) != 0 || objc_msgSend(v161, "isEqualToString:", *MEMORY[0x277D767E8]))
    {
      v156 = [(UILabel *)self->_subtitleLeftLabel bottomAnchor];
      v152 = [(UILabel *)self->_subtitleRightLabel topAnchor];
      v148 = [v156 constraintEqualToAnchor:v152];
      v165[0] = v148;
      v159 = [(UILabel *)self->_subtitleLeftLabel trailingAnchor];
      v144 = [(UILabel *)self->_subtitleRightLabel trailingAnchor];
      v140 = [v159 constraintEqualToAnchor:v144];
      v165[1] = v140;
      v136 = [(UILabel *)self->_subtitleRightLabel bottomAnchor];
      v132 = [(UIView *)self->_subtitleContainer bottomAnchor];
      v128 = [v136 constraintEqualToAnchor:v132];
      v165[2] = v128;
      v31 = [(UILabel *)self->_subtitleRightLabel leadingAnchor];
      v32 = [(UIView *)self->_subtitleContainer leadingAnchor];
      v33 = [v31 constraintEqualToAnchor:v32];
      v165[3] = v33;
      v34 = [(UILabel *)self->_subtitleRightLabel trailingAnchor];
      v35 = [(UIView *)self->_subtitleContainer trailingAnchor];
      v36 = [v34 constraintEqualToAnchor:v35];
      v165[4] = v36;
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v165 count:5];
      v38 = v162;
      [v162 addObjectsFromArray:v37];

      subtitleRightLabel = self->_subtitleRightLabel;
      v40 = 4;
    }

    else
    {
      v157 = [(UILabel *)self->_subtitleLeftLabel bottomAnchor];
      v153 = [(UIView *)self->_subtitleContainer bottomAnchor];
      v149 = [v157 constraintEqualToAnchor:v153];
      v164[0] = v149;
      v160 = [(UILabel *)self->_subtitleLeftLabel trailingAnchor];
      v145 = [(UILabel *)self->_subtitleRightLabel leadingAnchor];
      v141 = [v160 constraintEqualToAnchor:v145 constant:-12.0];
      v164[1] = v141;
      v137 = [(UILabel *)self->_subtitleRightLabel topAnchor];
      v133 = [(UIView *)self->_subtitleContainer topAnchor];
      v129 = [v137 constraintEqualToAnchor:v133];
      v164[2] = v129;
      v41 = [(UILabel *)self->_subtitleRightLabel bottomAnchor];
      v42 = [(UIView *)self->_subtitleContainer bottomAnchor];
      v43 = [v41 constraintEqualToAnchor:v42];
      v164[3] = v43;
      v44 = [(UILabel *)self->_subtitleRightLabel trailingAnchor];
      v45 = [(UIView *)self->_subtitleContainer trailingAnchor];
      v46 = [v44 constraintEqualToAnchor:v45];
      v164[4] = v46;
      v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v164 count:5];
      v38 = v162;
      [v162 addObjectsFromArray:v47];

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

- (void)updateViewsWithSlowLeq:(double)a3 fastLeq:(double)a4 andThreshold:(unint64_t)a5
{
  objc_initWeak(&location, self);
  objc_copyWeak(v8, &location);
  v8[1] = *&a3;
  v8[2] = a5;
  v8[3] = *&a4;
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

- (id)formatLevelRating:(id)a3 threshold:(unint64_t)a4
{
  v5 = colorForThreshold(a4);
  if (!a4)
  {
    v6 = @"checkmark.circle.fill";
    goto LABEL_6;
  }

  if (a4 == 100 || a4 == 80)
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

- (id)formatLevel:(id)a3 baseFont:(id)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCACA8];
  v6 = a4;
  v7 = a3;
  v8 = hearingLocString();
  v9 = [v5 stringWithFormat:v8, v7];

  v10 = [v9 rangeOfString:v7 options:0];
  v12 = v11;

  v13 = *MEMORY[0x277D74388];
  v18[0] = *MEMORY[0x277D74398];
  v18[1] = v13;
  v19[0] = &unk_286465858;
  v19[1] = &unk_286465870;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v20[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];

  v16 = attributedStringWithFeatureSettings(v9, v6, v15, v10, v12);

  return v16;
}

- (id)accessibilityValue
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(UILabel *)self->_subtitleLeftLabel accessibilityLabel];
  v5 = [(UILabel *)self->_subtitleRightLabel accessibilityLabel];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

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
  v2 = [(HUIHeadphoneLevelView *)self centerContainer];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (HACCContentModuleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end