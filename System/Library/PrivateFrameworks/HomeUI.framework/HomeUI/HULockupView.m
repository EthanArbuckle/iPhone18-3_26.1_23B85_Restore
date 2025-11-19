@interface HULockupView
- (HULockupInternalResizingDelegate)internalViewResizingDelegate;
- (HULockupView)initWithFrame:(CGRect)a3;
- (HULockupViewDelegate)delegate;
- (double)_maxPossibleTitleLengthForDownloadControl;
- (id)initializeIconViewWithSize:(unint64_t)a3;
- (void)_buttonTapped:(id)a3;
- (void)expandableTextViewDidCollapse:(id)a3;
- (void)expandableTextViewDidExpand:(id)a3;
- (void)resetDownloadControlVerticalConstraint;
- (void)updateDescriptionExpandableTextView:(id)a3 animate:(BOOL)a4;
- (void)updateIconView:(id)a3 animate:(BOOL)a4;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HULockupView

- (HULockupView)initWithFrame:(CGRect)a3
{
  v186[3] = *MEMORY[0x277D85DE8];
  v180.receiver = self;
  v180.super_class = HULockupView;
  v3 = [(HULockupView *)&v180 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(HULockupView *)v3 setIconSize:4];
    v5 = [(HULockupView *)v4 initializeIconViewWithSize:[(HULockupView *)v4 iconSize]];
    [(HULockupView *)v4 setIconView:v5];

    v6 = [(HULockupView *)v4 iconView];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [MEMORY[0x277D75348] systemExtraLightGrayColor];
    v9 = [v8 CGColor];
    v10 = [v7 layer];
    [v10 setBorderColor:v9];

    v11 = [v7 layer];
    [v11 setBorderWidth:1.0];

    v12 = [v7 layer];
    [v12 setCornerRadius:10.0];

    v13 = [(HULockupView *)v4 iconView];
    [v7 addSubview:v13];

    v14 = objc_alloc(MEMORY[0x277D756B8]);
    v15 = *MEMORY[0x277CBF3A0];
    v16 = *(MEMORY[0x277CBF3A0] + 8);
    v17 = *(MEMORY[0x277CBF3A0] + 16);
    v18 = *(MEMORY[0x277CBF3A0] + 24);
    v19 = [v14 initWithFrame:{*MEMORY[0x277CBF3A0], v16, v17, v18}];
    [(HULockupView *)v4 setTitleLabel:v19];

    v20 = [(HULockupView *)v4 titleLabel];
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

    v21 = [(HULockupView *)v4 titleLabel];
    [v21 setAdjustsFontSizeToFitWidth:1];

    v22 = [(HULockupView *)v4 titleLabel];
    [v22 setMinimumScaleFactor:0.75];

    v23 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v24 = [(HULockupView *)v4 titleLabel];
    [v24 setFont:v23];

    v25 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v15, v16, v17, v18}];
    [(HULockupView *)v4 setDetailLabel:v25];

    v26 = [(HULockupView *)v4 detailLabel];
    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

    v27 = *MEMORY[0x277D76938];
    v28 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
    v29 = [(HULockupView *)v4 detailLabel];
    [v29 setFont:v28];

    v30 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v15, v16, v17, v18}];
    [(HULockupView *)v4 setSecondaryDetailLabel:v30];

    v31 = [(HULockupView *)v4 secondaryDetailLabel];
    [v31 setTranslatesAutoresizingMaskIntoConstraints:0];

    v32 = [MEMORY[0x277D74300] preferredFontForTextStyle:v27];
    v33 = [(HULockupView *)v4 secondaryDetailLabel];
    [v33 setFont:v32];

    v34 = [MEMORY[0x277D75348] systemGrayColor];
    v35 = [(HULockupView *)v4 secondaryDetailLabel];
    [v35 setTextColor:v34];

    v36 = objc_alloc(MEMORY[0x277D75A68]);
    v37 = [(HULockupView *)v4 titleLabel];
    v186[0] = v37;
    v38 = [(HULockupView *)v4 detailLabel];
    v186[1] = v38;
    v39 = [(HULockupView *)v4 secondaryDetailLabel];
    v186[2] = v39;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v186 count:3];
    v41 = [v36 initWithArrangedSubviews:v40];
    [(HULockupView *)v4 setLabelStackView:v41];

    v42 = [(HULockupView *)v4 labelStackView];
    [v42 setSpacing:2.0];

    v43 = [(HULockupView *)v4 labelStackView];
    [v43 setAxis:1];

    v44 = [(HULockupView *)v4 labelStackView];
    [v44 setTranslatesAutoresizingMaskIntoConstraints:0];

    v45 = objc_alloc_init(HUDownloadControl);
    [(HULockupView *)v4 setDownloadControl:v45];

    v46 = [(HULockupView *)v4 downloadControl];
    [v46 setTranslatesAutoresizingMaskIntoConstraints:0];

    v47 = [(HULockupView *)v4 downloadControl];
    [v47 setAllowsAddImage:0];

    v48 = [(HULockupView *)v4 downloadControl];
    [v48 setDisplayStyle:1];

    v49 = [MEMORY[0x277D75348] hf_keyColor];
    v50 = [(HULockupView *)v4 downloadControl];
    [v50 setFilledTintColor:v49];

    v51 = [MEMORY[0x277D75348] systemFillColor];
    v52 = [(HULockupView *)v4 downloadControl];
    [v52 setTintColor:v51];

    v53 = [(HULockupView *)v4 downloadControl];
    [v53 addTarget:v4 action:sel__buttonTapped_ forControlEvents:64];

    v54 = [(HULockupView *)v4 downloadControl];
    [v54 setControlStatus:1 animated:{0x3FF0000000000000, 0}];

    v55 = [(HULockupView *)v4 downloadControl];
    v56 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateControlTitle_Update", @"HUSoftwareUpdateControlTitle_Update", 1);
    [v55 setTitle:v56 forControlStatusType:1];

    [(HULockupView *)v4 _maxPossibleTitleLengthForDownloadControl];
    v58 = v57;
    v59 = [(HULockupView *)v4 downloadControl];
    [v59 setMinTitleLength:v58];

    v60 = [(HULockupView *)v4 downloadControl];
    [v60 sizeToFit];

    v61 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v15, v16, v17, v18}];
    [v61 addSubview:v7];
    v62 = [(HULockupView *)v4 labelStackView];
    [v61 addSubview:v62];

    v63 = [(HULockupView *)v4 downloadControl];
    [v61 addSubview:v63];

    v182 = *MEMORY[0x277D740A8];
    v64 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76920]];
    v185[0] = v64;
    v183 = *MEMORY[0x277D740C0];
    v65 = v183;
    v66 = [MEMORY[0x277D75348] labelColor];
    v185[1] = v66;
    v184 = *MEMORY[0x277D74118];
    v67 = [MEMORY[0x277D74248] defaultParagraphStyle];
    v185[2] = v67;
    v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v185 forKeys:&v182 count:3];

    v179 = v68;
    v69 = [v68 mutableCopy];
    v70 = [MEMORY[0x277D75348] hf_keyColor];
    [v69 setObject:v70 forKeyedSubscript:v65];

    v71 = [[HUExpandableTextView alloc] initWithFrame:v15, v16, v17, v18];
    [(HULockupView *)v4 setDescriptionExpandableTextView:v71];

    v72 = [(HULockupView *)v4 descriptionExpandableTextView];
    [v72 setTextAttributes:v68];

    v73 = [(HULockupView *)v4 descriptionExpandableTextView];
    [v73 setDelegate:v4];

    v74 = [(HULockupView *)v4 descriptionExpandableTextView];
    [v74 setTranslatesAutoresizingMaskIntoConstraints:0];

    v75 = +[HUFadeInButton button];
    v76 = [(HULockupView *)v4 descriptionExpandableTextView];
    [v76 setMoreButton:v75];

    v77 = objc_alloc(MEMORY[0x277CCA898]);
    v78 = _HULocalizedStringWithDefaultValue(@"HUMoreButtonTitle", @"HUMoreButtonTitle", 1);
    v178 = [v77 initWithString:v78 attributes:v69];

    v79 = [(HULockupView *)v4 descriptionExpandableTextView];
    v80 = [v79 moreButton];
    [v80 setAttributedTitle:v178 forState:0];

    v81 = [(HULockupView *)v4 descriptionExpandableTextView];
    [v81 setAlwaysShowMoreButtonUnlessExpanded:1];

    v82 = [(HULockupView *)v4 descriptionExpandableTextView];
    v83 = [v82 moreButton];
    [v83 sizeToFit];

    v84 = objc_alloc(MEMORY[0x277D75A68]);
    v181[0] = v61;
    v85 = [(HULockupView *)v4 descriptionExpandableTextView];
    v181[1] = v85;
    v86 = [MEMORY[0x277CBEA60] arrayWithObjects:v181 count:2];
    v87 = [v84 initWithArrangedSubviews:v86];
    [(HULockupView *)v4 setStackView:v87];

    v88 = [(HULockupView *)v4 stackView];
    [v88 setSpacing:16.0];

    v89 = [(HULockupView *)v4 stackView];
    [v89 setAxis:1];

    v90 = [(HULockupView *)v4 stackView];
    [v90 setTranslatesAutoresizingMaskIntoConstraints:0];

    v91 = [(HULockupView *)v4 stackView];
    [(HULockupView *)v4 addSubview:v91];

    v92 = [MEMORY[0x277CBEB18] array];
    [(HULockupView *)v4 iconSize];
    HUDefaultSizeForIconSize();
    v94 = v93;
    v96 = v95;
    v97 = [v7 widthAnchor];
    v98 = [v97 constraintEqualToConstant:v94 + 10.0];
    [v92 addObject:v98];

    v99 = [v7 heightAnchor];
    v100 = [v99 constraintEqualToConstant:v96 + 10.0];
    [v92 addObject:v100];

    v101 = [v7 leadingAnchor];
    v102 = [(HULockupView *)v4 leadingAnchor];
    v103 = [v101 constraintEqualToAnchor:v102];
    [v92 addObject:v103];

    v104 = [v7 centerYAnchor];
    v105 = [(HULockupView *)v4 labelStackView];
    v106 = [v105 centerYAnchor];
    v107 = [v104 constraintEqualToAnchor:v106];
    [v92 addObject:v107];

    v108 = [(HULockupView *)v4 iconView];
    v109 = [v108 widthAnchor];
    v110 = [v109 constraintEqualToConstant:v94 + -15.0];
    [v92 addObject:v110];

    v111 = [(HULockupView *)v4 iconView];
    v112 = [v111 heightAnchor];
    v113 = [v112 constraintEqualToConstant:v96 + -15.0];
    [v92 addObject:v113];

    v114 = [(HULockupView *)v4 iconView];
    v115 = [v114 centerXAnchor];
    v116 = [v7 centerXAnchor];
    v117 = [v115 constraintEqualToAnchor:v116];
    [v92 addObject:v117];

    v118 = [(HULockupView *)v4 iconView];
    v119 = [v118 centerYAnchor];
    v120 = [v7 centerYAnchor];
    v121 = [v119 constraintEqualToAnchor:v120];
    [v92 addObject:v121];

    v122 = [(HULockupView *)v4 labelStackView];
    v123 = [v122 topAnchor];
    v124 = [v61 layoutMarginsGuide];
    v125 = [v124 topAnchor];
    v126 = [v123 constraintEqualToAnchor:v125];
    [v92 addObject:v126];

    v127 = [(HULockupView *)v4 labelStackView];
    v128 = [v127 leadingAnchor];
    v129 = [v7 trailingAnchor];
    v130 = [v128 constraintEqualToAnchor:v129 constant:12.0];
    [v92 addObject:v130];

    v131 = [(HULockupView *)v4 labelStackView];
    v132 = [v131 bottomAnchor];
    v133 = [v61 bottomAnchor];
    v134 = [v132 constraintEqualToAnchor:v133];
    [v92 addObject:v134];

    v135 = [(HULockupView *)v4 downloadControl];
    v136 = [v135 topAnchor];
    v137 = [v7 topAnchor];
    v138 = [v136 constraintEqualToAnchor:v137];
    [(HULockupView *)v4 setDownloadControlTopConstraint:v138];

    v139 = [(HULockupView *)v4 downloadControl];
    v140 = [v139 centerYAnchor];
    v141 = [(HULockupView *)v4 labelStackView];
    v142 = [v141 centerYAnchor];
    v143 = [v140 constraintEqualToAnchor:v142];
    [(HULockupView *)v4 setDownloadControlCenterYConstraint:v143];

    v144 = [(HULockupView *)v4 downloadControlCenterYConstraint];
    [v92 addObject:v144];

    v145 = [(HULockupView *)v4 downloadControl];
    v146 = [v145 leadingAnchor];
    v147 = [(HULockupView *)v4 labelStackView];
    v148 = [v147 trailingAnchor];
    v149 = [v146 constraintGreaterThanOrEqualToAnchor:v148 constant:12.0];
    [v92 addObject:v149];

    v150 = [(HULockupView *)v4 downloadControl];
    v151 = [v150 trailingAnchor];
    v152 = [v61 safeAreaLayoutGuide];
    v153 = [v152 trailingAnchor];
    v154 = [v151 constraintEqualToAnchor:v153];
    [v92 addObject:v154];

    v155 = [(HULockupView *)v4 downloadControl];
    v156 = [v155 widthAnchor];
    v157 = [(HULockupView *)v4 downloadControl];
    [v157 intrinsicContentSize];
    v158 = [v156 constraintEqualToConstant:?];
    [(HULockupView *)v4 setDownloadControlWidthConstraint:v158];

    v159 = [(HULockupView *)v4 downloadControlWidthConstraint];
    [v92 addObject:v159];

    v160 = [(HULockupView *)v4 stackView];
    v161 = [v160 topAnchor];
    v162 = [(HULockupView *)v4 topAnchor];
    v163 = [v161 constraintEqualToAnchor:v162];
    [v92 addObject:v163];

    v164 = [(HULockupView *)v4 stackView];
    v165 = [v164 leadingAnchor];
    v166 = [(HULockupView *)v4 leadingAnchor];
    v167 = [v165 constraintEqualToAnchor:v166];
    [v92 addObject:v167];

    v168 = [(HULockupView *)v4 stackView];
    v169 = [v168 trailingAnchor];
    v170 = [(HULockupView *)v4 trailingAnchor];
    v171 = [v169 constraintEqualToAnchor:v170];
    [v92 addObject:v171];

    v172 = [(HULockupView *)v4 stackView];
    v173 = [v172 bottomAnchor];
    v174 = [(HULockupView *)v4 layoutMarginsGuide];
    v175 = [v174 bottomAnchor];
    v176 = [v173 constraintEqualToAnchor:v175];
    [v92 addObject:v176];

    [MEMORY[0x277CCAAD0] activateConstraints:v92];
  }

  return v4;
}

- (id)initializeIconViewWithSize:(unint64_t)a3
{
  v3 = objc_alloc_init(MEMORY[0x277D755E8]);

  return v3;
}

- (void)updateIconView:(id)a3 animate:(BOOL)a4
{
  v5 = a3;
  v8 = [(HULockupView *)self item];
  v6 = [v8 latestResults];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13E98]];
  [v5 setImage:v7];
}

- (void)updateDescriptionExpandableTextView:(id)a3 animate:(BOOL)a4
{
  v8 = a3;
  v5 = [(HULockupView *)self item];
  v6 = [v5 latestResults];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13E20]];

  if (v7)
  {
    [v8 setStringGenerator:v7];
  }
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v3 = a3;
  v5 = [(HULockupView *)self item];
  v62 = [v5 latestResults];

  v6 = [(HULockupView *)self iconView];
  [(HULockupView *)self updateIconView:v6 animate:v3];

  v7 = [v62 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  v8 = [(HULockupView *)self titleLabel];
  [v8 setText:v7];

  v9 = [v62 objectForKeyedSubscript:*MEMORY[0x277D13E30]];
  v10 = [(HULockupView *)self detailLabel];
  [v10 setText:v9];

  v11 = [v62 objectForKeyedSubscript:*MEMORY[0x277D13EF8]];
  v12 = [(HULockupView *)self secondaryDetailLabel];
  [v12 setText:v11];

  v13 = [v62 objectForKeyedSubscript:*MEMORY[0x277D140F0]];
  v14 = [v13 BOOLValue];

  v15 = [v62 objectForKeyedSubscript:*MEMORY[0x277D14100]];
  v16 = [v15 BOOLValue];

  v17 = [v62 objectForKeyedSubscript:*MEMORY[0x277D14110]];
  v18 = [v17 BOOLValue];

  if (v14)
  {
    if (v18)
    {
      v19 = [MEMORY[0x277D75348] systemFillColor];
      v20 = [(HULockupView *)self downloadControl];
      [v20 setTintColor:v19];

      v21 = [MEMORY[0x277D75348] systemGrayColor];
      v22 = [(HULockupView *)self downloadControl];
      [v22 setFilledTintColor:v21];

      v23 = 1.0;
      v24 = 1;
      v25 = 1;
    }

    else
    {
      v29 = [v62 objectForKeyedSubscript:*MEMORY[0x277D14108]];
      if (v29)
      {
        v21 = v29;
        [v29 floatValue];
        v31 = v30;
        v32 = [MEMORY[0x277D75348] systemFillColor];
        v33 = [(HULockupView *)self downloadControl];
        [v33 setFilledTintColor:v32];

        v34 = [MEMORY[0x277D75348] hf_keyColor];
        v35 = [(HULockupView *)self downloadControl];
        [v35 setTintColor:v34];

        v24 = 0;
        v23 = v31;
        v25 = 4;
      }

      else
      {
        v36 = [MEMORY[0x277D75348] systemFillColor];
        v37 = [(HULockupView *)self downloadControl];
        [v37 setFilledTintColor:v36];

        v38 = [MEMORY[0x277D75348] systemFillColor];
        v39 = [(HULockupView *)self downloadControl];
        [v39 setTintColor:v38];

        v21 = 0;
        v24 = 0;
        v23 = 1.0;
        v25 = 3;
      }
    }
  }

  else
  {
    v26 = [MEMORY[0x277D75348] hf_keyColor];
    v27 = [(HULockupView *)self downloadControl];
    [v27 setFilledTintColor:v26];

    v21 = [MEMORY[0x277D75348] systemFillColor];
    v28 = [(HULockupView *)self downloadControl];
    [v28 setTintColor:v21];

    v23 = 1.0;
    v25 = 1;
    v24 = 1;
  }

  v40 = [(HULockupView *)self downloadControl];
  v41 = [v40 controlStatus];

  v42 = [(HULockupView *)self downloadControl];
  [v42 setControlStatus:v25 animated:{*&v23, v3}];

  v43 = [(HULockupView *)self downloadControl];
  v44 = [v62 objectForKeyedSubscript:*MEMORY[0x277D13DE8]];
  [v43 setTitle:v44 forControlStatusType:1];

  v45 = [(HULockupView *)self downloadControl];
  [v45 setHidden:v16];

  v46 = [(HULockupView *)self downloadControl];
  [v46 setEnabled:v24 & (v18 ^ 1u)];

  if (v41 != v25)
  {
    v47 = [(HULockupView *)self downloadControl];
    [v47 intrinsicContentSize];
    v49 = v48;
    v50 = [(HULockupView *)self downloadControlWidthConstraint];
    [v50 setConstant:v49];
  }

  v51 = [(HULockupView *)self descriptionExpandableTextView];
  [(HULockupView *)self updateDescriptionExpandableTextView:v51 animate:v3];

  v52 = [(HULockupView *)self descriptionExpandableTextView];
  v53 = [v52 text];
  v54 = [v53 length] == 0;
  v55 = [(HULockupView *)self descriptionExpandableTextView];
  [v55 setHidden:v54];

  v56 = [(HULockupView *)self descriptionExpandableTextView];
  v57 = [v56 text];
  v58 = [v57 length];

  if (!v58)
  {
    v59 = [(HULockupView *)self descriptionExpandableTextView];
    [v59 setDelegate:0];

    v60 = [(HULockupView *)self descriptionExpandableTextView];
    [v60 setExpanded:1];

    v61 = [(HULockupView *)self descriptionExpandableTextView];
    [v61 setDelegate:self];
  }

  [(HULockupView *)self resetDownloadControlVerticalConstraint];
}

- (void)_buttonTapped:(id)a3
{
  v7 = a3;
  v4 = [(HULockupView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(HULockupView *)self delegate];
    [v6 lockupView:self downloadControlTapped:v7];
  }

  [(HULockupView *)self resetDownloadControlVerticalConstraint];
}

- (void)resetDownloadControlVerticalConstraint
{
  v3 = [(HULockupView *)self downloadControl];
  v4 = [v3 controlStatus];

  v5 = [(HULockupView *)self downloadControlTopConstraint];
  [v5 setActive:(v4 - 3) < 2];

  v6 = [(HULockupView *)self downloadControlCenterYConstraint];
  [v6 setActive:(v4 - 3) > 1];
}

- (double)_maxPossibleTitleLengthForDownloadControl
{
  v14[4] = *MEMORY[0x277D85DE8];
  v2 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateControlTitle_Update", @"HUSoftwareUpdateControlTitle_Update", 1);
  v14[0] = v2;
  v3 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateControlTitle_Requested", @"HUSoftwareUpdateControlTitle_Requested", 1);
  v14[1] = v3;
  v4 = _HULocalizedStringWithDefaultValue(@"HUDownloadButtonTitle_Open", @"HUDownloadButtonTitle_Open", 1);
  v14[2] = v4;
  v5 = _HULocalizedStringWithDefaultValue(@"HUDownloadButtonTitle_View", @"HUDownloadButtonTitle_View", 1);
  v14[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:4];

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__HULockupView__maxPossibleTitleLengthForDownloadControl__block_invoke;
  v9[3] = &unk_277DC4BE8;
  v9[4] = &v10;
  [v6 na_each:v9];
  v7 = v11[3];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __57__HULockupView__maxPossibleTitleLengthForDownloadControl__block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = *MEMORY[0x277D740A8];
  v3 = a2;
  v4 = [HUDownloadControl controlTitleFontForControlStatusType:1];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v3 sizeWithAttributes:v5];
  v7 = v6;

  v8 = *(*(a1 + 32) + 8);
  if (v7 > *(v8 + 24))
  {
    *(v8 + 24) = v7;
  }
}

- (void)expandableTextViewDidExpand:(id)a3
{
  v4 = [(HULockupView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v7 = [(HULockupView *)self delegate];
    v6 = [(HULockupView *)self descriptionExpandableTextView];
    [v7 lockupView:self expandableTextViewDidExpand:v6];
  }
}

- (void)expandableTextViewDidCollapse:(id)a3
{
  v4 = [(HULockupView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v7 = [(HULockupView *)self delegate];
    v6 = [(HULockupView *)self descriptionExpandableTextView];
    [v7 lockupView:self expandableTextViewDidCollapse:v6];
  }
}

- (HULockupViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HULockupInternalResizingDelegate)internalViewResizingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_internalViewResizingDelegate);

  return WeakRetained;
}

@end