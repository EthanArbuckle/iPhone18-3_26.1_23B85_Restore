@interface HUInstructionsCell
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (HUInstructionsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUInstructionsCell

- (HUInstructionsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v37.receiver = self;
  v37.super_class = HUInstructionsCell;
  v4 = [(HUInstructionsCell *)&v37 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(HUInstructionsCell *)v4 setSelectionStyle:0];
    v6 = [MEMORY[0x277D75348] clearColor];
    [(HUInstructionsCell *)v5 setBackgroundColor:v6];

    v7 = objc_alloc(MEMORY[0x277D756B8]);
    v8 = *MEMORY[0x277CBF3A0];
    v9 = *(MEMORY[0x277CBF3A0] + 8);
    v10 = *(MEMORY[0x277CBF3A0] + 16);
    v11 = *(MEMORY[0x277CBF3A0] + 24);
    v12 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], v9, v10, v11}];
    [(HUInstructionsCell *)v5 setTitleLabel:v12];

    v13 = [(HUInstructionsCell *)v5 titleLabel];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

    v14 = [(HUInstructionsCell *)v5 titleLabel];
    [v14 setAdjustsFontSizeToFitWidth:1];

    v15 = [(HUInstructionsCell *)v5 contentView];
    v16 = [(HUInstructionsCell *)v5 titleLabel];
    [v15 addSubview:v16];

    v17 = [objc_alloc(MEMORY[0x277D75C40]) initWithFrame:{v8, v9, v10, v11}];
    [(HUInstructionsCell *)v5 setDescriptionView:v17];

    v18 = [MEMORY[0x277D75348] clearColor];
    v19 = [(HUInstructionsCell *)v5 descriptionView];
    [v19 setBackgroundColor:v18];

    v20 = [(HUInstructionsCell *)v5 descriptionView];
    [v20 setDelegate:v5];

    v21 = [(HUInstructionsCell *)v5 descriptionView];
    [v21 setEditable:0];

    v22 = [(HUInstructionsCell *)v5 descriptionView];
    v23 = [v22 textContainer];
    [v23 setLineFragmentPadding:0.0];

    v24 = *MEMORY[0x277D768C8];
    v25 = *(MEMORY[0x277D768C8] + 8);
    v26 = *(MEMORY[0x277D768C8] + 16);
    v27 = *(MEMORY[0x277D768C8] + 24);
    v28 = [(HUInstructionsCell *)v5 descriptionView];
    [v28 setTextContainerInset:{v24, v25, v26, v27}];

    v29 = [(HUInstructionsCell *)v5 descriptionView];
    [v29 setTranslatesAutoresizingMaskIntoConstraints:0];

    v30 = [MEMORY[0x277D75348] secondaryLabelColor];
    v31 = [(HUInstructionsCell *)v5 descriptionView];
    [v31 setTextColor:v30];

    v32 = [(HUInstructionsCell *)v5 descriptionView];
    [v32 setScrollEnabled:0];

    v33 = [(HUInstructionsCell *)v5 descriptionView];
    [v33 _setInteractiveTextSelectionDisabled:1];

    v34 = [(HUInstructionsCell *)v5 contentView];
    v35 = [(HUInstructionsCell *)v5 descriptionView];
    [v34 addSubview:v35];

    [(HUInstructionsCell *)v5 setHidesTopSpacing:0];
    v5->_contentBottomMargin = 14.0;
    [(HUInstructionsCell *)v5 setNeedsUpdateConstraints];
  }

  return v5;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HUInstructionsCell;
  [(HUInstructionsCell *)&v3 prepareForReuse];
  [(HUInstructionsCell *)self setContentBottomMargin:14.0];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = HUInstructionsCell;
  [(HUInstructionsCell *)&v3 layoutSubviews];
  [(UITableViewCell *)self turnOffRounding];
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v4 = [(HUInstructionsCell *)self item];
  v66 = [v4 latestResults];

  v5 = [v66 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  v6 = [v66 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
  v7 = [(HUInstructionsCell *)self titleLabel];
  [v7 setText:v5];

  v8 = [(HUInstructionsCell *)self titleLabel];
  [v8 setHidden:v5 == 0];

  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = [(HUInstructionsCell *)self descriptionView];
  v11 = [v10 font];
  [v9 na_safeSetObject:v11 forKey:*MEMORY[0x277D740A8]];

  v12 = [(HUInstructionsCell *)self descriptionView];
  v13 = [v12 textColor];
  [v9 na_safeSetObject:v13 forKey:*MEMORY[0x277D740C0]];

  v14 = [v6 stringWithAttributes:v9];
  v15 = [(HUInstructionsCell *)self descriptionView];
  [v15 setAttributedText:v14];

  v16 = [(HUInstructionsCell *)self descriptionView];
  [v16 setHidden:v6 == 0];

  v17 = [(HUInstructionsCell *)self item];
  v18 = [v17 latestResults];
  v19 = [v18 objectForKeyedSubscript:@"instructionsStyle"];

  if (!v19)
  {
    NSLog(&cfstr_NoInstructions.isa);
    goto LABEL_18;
  }

  v20 = [v19 integerValue];
  if (v20 <= 2)
  {
    if (!v20)
    {
      v21 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A20]];
      v28 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
      v33 = MEMORY[0x277D74300];
      [v21 pointSize];
      v34 = [v33 systemFontOfSize:? weight:?];
      v35 = [(HUInstructionsCell *)self titleLabel];
      [v35 setFont:v34];

      v36 = [(HUInstructionsCell *)self titleLabel];
      [v36 setTextAlignment:4];

      v37 = [(HUInstructionsCell *)self titleLabel];
      [v37 setNumberOfLines:0];

      v38 = MEMORY[0x277D74300];
      [v28 pointSize];
      v39 = [v38 systemFontOfSize:? weight:?];
      v40 = [(HUInstructionsCell *)self descriptionView];
      [v40 setFont:v39];

      v41 = [(HUInstructionsCell *)self descriptionView];
      [v41 setTextAlignment:4];

LABEL_16:
      goto LABEL_17;
    }

    if (v20 != 1)
    {
      if (v20 != 2)
      {
        goto LABEL_18;
      }

      v21 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
      v22 = MEMORY[0x277D74300];
      [v21 pointSize];
      v23 = [v22 systemFontOfSize:? weight:?];
      v24 = [(HUInstructionsCell *)self titleLabel];
      [v24 setFont:v23];

      v25 = [(HUInstructionsCell *)self titleLabel];
      [v25 setTextAlignment:4];

      v26 = [MEMORY[0x277D75348] systemGrayColor];
      v27 = [(HUInstructionsCell *)self titleLabel];
      [v27 setTextColor:v26];

      v28 = [(HUInstructionsCell *)self titleLabel];
      [v28 setNumberOfLines:1];
      goto LABEL_16;
    }

    v47 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D769D0] traits:32770];
    v48 = [(HUInstructionsCell *)self titleLabel];
    [v48 setFont:v47];

    v49 = [(HUInstructionsCell *)self titleLabel];
    [v49 setTextAlignment:4];

    v50 = [MEMORY[0x277D75348] systemGrayColor];
    v51 = [(HUInstructionsCell *)self titleLabel];
    [v51 setTextColor:v50];

    v52 = [(HUInstructionsCell *)self titleLabel];
    [v52 setNumberOfLines:1];

    v53 = [(HUInstructionsCell *)self titleLabel];
    v54 = [v53 text];
    v55 = [v54 localizedUppercaseString];
    v56 = [(HUInstructionsCell *)self titleLabel];
    [v56 setText:v55];

    v57 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    v58 = [(HUInstructionsCell *)self descriptionView];
    [v58 setFont:v57];

    v59 = [(HUInstructionsCell *)self descriptionView];
    [v59 setTextAlignment:4];

    v32 = MEMORY[0x277D75348];
LABEL_15:
    v21 = [v32 systemGrayColor];
    v28 = [(HUInstructionsCell *)self descriptionView];
    [v28 setTextColor:v21];
    goto LABEL_16;
  }

  if (v20 != 3)
  {
    if (v20 == 4)
    {
      v60 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
      v61 = [(HUInstructionsCell *)self titleLabel];
      [v61 setFont:v60];

      v62 = [(HUInstructionsCell *)self titleLabel];
      [v62 setTextAlignment:4];

      v63 = [MEMORY[0x277D75348] labelColor];
      v64 = [(HUInstructionsCell *)self titleLabel];
      [v64 setTextColor:v63];

      v65 = [(HUInstructionsCell *)self titleLabel];
      [v65 setNumberOfLines:0];

      v21 = [(HUInstructionsCell *)self titleLabel];
      [v21 setLineBreakMode:0];
      goto LABEL_17;
    }

    if (v20 != 5)
    {
      goto LABEL_18;
    }

    v29 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    v30 = [(HUInstructionsCell *)self descriptionView];
    [v30 setFont:v29];

    v31 = [(HUInstructionsCell *)self descriptionView];
    [v31 setTextAlignment:4];

    v32 = MEMORY[0x277D75348];
    goto LABEL_15;
  }

  v42 = [MEMORY[0x277D74300] systemFontOfSize:22.0 weight:*MEMORY[0x277D74420]];
  v43 = [(HUInstructionsCell *)self titleLabel];
  [v43 setFont:v42];

  v44 = [(HUInstructionsCell *)self titleLabel];
  [v44 setTextAlignment:4];

  v45 = [MEMORY[0x277D75348] labelColor];
  v46 = [(HUInstructionsCell *)self titleLabel];
  [v46 setTextColor:v45];

  v21 = [(HUInstructionsCell *)self titleLabel];
  [v21 setNumberOfLines:1];
LABEL_17:

LABEL_18:
  [(HUInstructionsCell *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(HUInstructionsCell *)self item];
  v5 = [v4 latestResults];
  v6 = [v5 objectForKeyedSubscript:@"instructionsStyle"];

  if (v6)
  {
    v7 = [v6 integerValue];
  }

  else
  {
    NSLog(&cfstr_NoInstructions.isa);
    v7 = -1;
  }

  v8 = [(HUInstructionsCell *)self item];
  v9 = [v8 latestResults];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D13F60]];

  v11 = [(HUInstructionsCell *)self item];
  v12 = [v11 latestResults];
  v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277D13E20]];

  v14 = [(HUInstructionsCell *)self titleLabel];
  LODWORD(v15) = 1144766464;
  [v14 setContentCompressionResistancePriority:1 forAxis:v15];

  v16 = [(HUInstructionsCell *)self titleLabel];
  LODWORD(v17) = 1132134400;
  [v16 setContentHuggingPriority:1 forAxis:v17];

  v18 = [(HUInstructionsCell *)self hidesTopSpacing];
  if (v18)
  {
    v19 = 12.0;
  }

  else
  {
    v19 = 20.0;
  }

  if (v18)
  {
    v20 = 12.0;
  }

  else
  {
    v20 = 52.0;
  }

  if (v7 > 1)
  {
    if ((v7 - 2) < 2)
    {
      v66 = 44.0;
      if (v18)
      {
        v66 = 12.0;
      }

      if (v7 == 2)
      {
        v20 = v66;
        v67 = [(HUInstructionsCell *)self titleLabel];
        v68 = [v67 font];
        [v68 _scaledValueForValue:10.0];
        v70 = HURoundToScreenScale(v69);
      }

      else
      {
        [(HUInstructionsCell *)self contentBottomMargin];
        v70 = v108;
      }

      v109 = [(HUInstructionsCell *)self titleLabel];
      v110 = [v109 firstBaselineAnchor];
      v111 = [(HUInstructionsCell *)self contentView];
      v112 = [v111 topAnchor];
      v113 = [v110 constraintEqualToAnchor:v112 constant:v20];
      [v3 addObject:v113];

      v114 = [(HUInstructionsCell *)self titleLabel];
      v115 = [v114 leadingAnchor];
      v116 = [(HUInstructionsCell *)self contentView];
      v117 = [v116 layoutMarginsGuide];
      v118 = [v117 leadingAnchor];
      v119 = [v115 constraintEqualToAnchor:v118];
      [v3 addObject:v119];

      v120 = [(HUInstructionsCell *)self titleLabel];
      v121 = [v120 trailingAnchor];
      v122 = [(HUInstructionsCell *)self contentView];
      v123 = [v122 layoutMarginsGuide];
      v124 = [v123 trailingAnchor];
      v125 = [v121 constraintEqualToAnchor:v124];
      [v3 addObject:v125];

      v39 = [(HUInstructionsCell *)self titleLabel];
      v40 = [v39 bottomAnchor];
      v41 = [(HUInstructionsCell *)self contentView];
      v42 = [v41 bottomAnchor];
      v126 = -v70;
      goto LABEL_33;
    }

    if (v7 != 4)
    {
      if (v7 != 5)
      {
        goto LABEL_35;
      }

      v21 = [(HUInstructionsCell *)self descriptionView];
      v22 = [v21 topAnchor];
      v23 = [(HUInstructionsCell *)self contentView];
      v24 = [v23 layoutMarginsGuide];
      v25 = [v24 topAnchor];
      v26 = [v22 constraintEqualToAnchor:v25];
      [v3 addObject:v26];

      v27 = [(HUInstructionsCell *)self descriptionView];
      v28 = [v27 bottomAnchor];
      v29 = [(HUInstructionsCell *)self contentView];
      v30 = [v29 layoutMarginsGuide];
      v31 = [v30 bottomAnchor];
      v32 = [v28 constraintEqualToAnchor:v31];
      [v3 addObject:v32];

      v33 = [(HUInstructionsCell *)self descriptionView];
      v34 = [v33 leadingAnchor];
      v35 = [(HUInstructionsCell *)self contentView];
      v36 = [v35 layoutMarginsGuide];
      v37 = [v36 leadingAnchor];
      v38 = [v34 constraintEqualToAnchor:v37];
      [v3 addObject:v38];

      v39 = [(HUInstructionsCell *)self descriptionView];
      v40 = [v39 trailingAnchor];
      v41 = [(HUInstructionsCell *)self contentView];
      v42 = [v41 layoutMarginsGuide];
      v43 = [v42 trailingAnchor];
      v44 = [v40 constraintEqualToAnchor:v43];
      [v3 addObject:v44];

      goto LABEL_34;
    }

    v127 = [(HUInstructionsCell *)self titleLabel];
    v128 = [v127 firstBaselineAnchor];
    v129 = [(HUInstructionsCell *)self contentView];
    v130 = [v129 topAnchor];
    v131 = [v128 constraintEqualToAnchor:v130 constant:v20];
    [v3 addObject:v131];

    v132 = [(HUInstructionsCell *)self titleLabel];
    v133 = [v132 leadingAnchor];
    v134 = [(HUInstructionsCell *)self contentView];
    v135 = [v134 layoutMarginsGuide];
    v136 = [v135 leadingAnchor];
    v137 = [v133 constraintEqualToAnchor:v136];
    [v3 addObject:v137];

    v138 = [(HUInstructionsCell *)self titleLabel];
    v139 = [v138 trailingAnchor];
    v140 = [(HUInstructionsCell *)self contentView];
    v141 = [v140 layoutMarginsGuide];
    v142 = [v141 trailingAnchor];
    v143 = [v139 constraintEqualToAnchor:v142];
    [v3 addObject:v143];

    v107 = [(HUInstructionsCell *)self titleLabel];
    goto LABEL_31;
  }

  if (v7)
  {
    if (v7 != 1)
    {
      goto LABEL_35;
    }

    if (v10 && v13)
    {
      v45 = [(HUInstructionsCell *)self titleLabel];
      v46 = [v45 topAnchor];
      v47 = [(HUInstructionsCell *)self contentView];
      v48 = [v47 topAnchor];
      v49 = [v46 constraintEqualToAnchor:v48 constant:v19];
      [v3 addObject:v49];

      v50 = [(HUInstructionsCell *)self titleLabel];
      v51 = [v50 leadingAnchor];
      v52 = [(HUInstructionsCell *)self contentView];
      v53 = [v52 layoutMarginsGuide];
      v54 = [v53 leadingAnchor];
      v55 = [v51 constraintEqualToAnchor:v54];
      [v3 addObject:v55];

      v56 = [(HUInstructionsCell *)self titleLabel];
      v57 = [v56 trailingAnchor];
      v58 = [(HUInstructionsCell *)self contentView];
      v59 = [v58 layoutMarginsGuide];
      v60 = [v59 trailingAnchor];
      v61 = [v57 constraintEqualToAnchor:v60];
      [v3 addObject:v61];

      v62 = [(HUInstructionsCell *)self descriptionView];
      v63 = [v62 font];
      v64 = v63;
      v65 = v19;
LABEL_28:
      [v63 _scaledValueForValue:v65];
      v89 = HURoundToScreenScale(v88);

      v90 = [(HUInstructionsCell *)self descriptionView];
      v91 = [v90 firstBaselineAnchor];
      v92 = [(HUInstructionsCell *)self titleLabel];
      v93 = [v92 lastBaselineAnchor];
      v94 = [v91 constraintEqualToAnchor:v93 constant:v89];
      [v3 addObject:v94];

      v95 = [(HUInstructionsCell *)self descriptionView];
      v96 = [v95 leadingAnchor];
      v97 = [(HUInstructionsCell *)self contentView];
      v98 = [v97 layoutMarginsGuide];
      v99 = [v98 leadingAnchor];
      v100 = [v96 constraintEqualToAnchor:v99];
      [v3 addObject:v100];

      v101 = [(HUInstructionsCell *)self descriptionView];
      v102 = [v101 trailingAnchor];
      v103 = [(HUInstructionsCell *)self contentView];
      v104 = [v103 layoutMarginsGuide];
      v105 = [v104 trailingAnchor];
      v106 = [v102 constraintEqualToAnchor:v105];
      [v3 addObject:v106];

      v107 = [(HUInstructionsCell *)self descriptionView];
LABEL_31:
      v39 = v107;
LABEL_32:
      v40 = [v107 bottomAnchor];
      v41 = [(HUInstructionsCell *)self contentView];
      v42 = [v41 bottomAnchor];
      [(HUInstructionsCell *)self contentBottomMargin];
      v126 = -v144;
LABEL_33:
      v43 = [v40 constraintEqualToAnchor:v42 constant:v126];
      [v3 addObject:v43];
LABEL_34:

      goto LABEL_35;
    }

    if (v10 | v13)
    {
      if (v10)
      {
        [(HUInstructionsCell *)self titleLabel];
      }

      else
      {
        [(HUInstructionsCell *)self descriptionView];
      }
      v39 = ;
      v151 = [v39 topAnchor];
      v152 = [(HUInstructionsCell *)self contentView];
      v153 = [v152 topAnchor];
      v154 = v151;
      v155 = v153;
      v156 = v19;
LABEL_48:
      v157 = [v154 constraintEqualToAnchor:v155 constant:v156];
      [v3 addObject:v157];

      v158 = [v39 leadingAnchor];
      v159 = [(HUInstructionsCell *)self contentView];
      v160 = [v159 layoutMarginsGuide];
      v161 = [v160 leadingAnchor];
      v162 = [v158 constraintEqualToAnchor:v161];
      [v3 addObject:v162];

      v163 = [v39 trailingAnchor];
      v164 = [(HUInstructionsCell *)self contentView];
      v165 = [v164 layoutMarginsGuide];
      v166 = [v165 trailingAnchor];
      v167 = [v163 constraintEqualToAnchor:v166];
      [v3 addObject:v167];

      v107 = v39;
      goto LABEL_32;
    }
  }

  else
  {
    if (v10 && v13)
    {
      v71 = [(HUInstructionsCell *)self titleLabel];
      v72 = [v71 firstBaselineAnchor];
      v73 = [(HUInstructionsCell *)self contentView];
      v74 = [v73 topAnchor];
      v75 = [v72 constraintEqualToAnchor:v74 constant:v20];
      [v3 addObject:v75];

      v76 = [(HUInstructionsCell *)self titleLabel];
      v77 = [v76 leadingAnchor];
      v78 = [(HUInstructionsCell *)self contentView];
      v79 = [v78 layoutMarginsGuide];
      v80 = [v79 leadingAnchor];
      v81 = [v77 constraintEqualToAnchor:v80];
      [v3 addObject:v81];

      v82 = [(HUInstructionsCell *)self titleLabel];
      v83 = [v82 trailingAnchor];
      v84 = [(HUInstructionsCell *)self contentView];
      v85 = [v84 layoutMarginsGuide];
      v86 = [v85 trailingAnchor];
      v87 = [v83 constraintEqualToAnchor:v86];
      [v3 addObject:v87];

      v62 = [(HUInstructionsCell *)self descriptionView];
      v63 = [v62 font];
      v64 = v63;
      v65 = 22.0;
      goto LABEL_28;
    }

    if (v10 | v13)
    {
      if (v10)
      {
        [(HUInstructionsCell *)self titleLabel];
      }

      else
      {
        [(HUInstructionsCell *)self descriptionView];
      }
      v39 = ;
      v151 = [v39 firstBaselineAnchor];
      v152 = [(HUInstructionsCell *)self contentView];
      v153 = [v152 topAnchor];
      v154 = v151;
      v155 = v153;
      v156 = v20;
      goto LABEL_48;
    }
  }

LABEL_35:
  v145 = [(HUInstructionsCell *)self constraints];
  v146 = [v3 isEqualToArray:v145];

  if ((v146 & 1) == 0)
  {
    v147 = MEMORY[0x277CCAAD0];
    v148 = [(HUInstructionsCell *)self constraints];
    [v147 deactivateConstraints:v148];

    [(HUInstructionsCell *)self setConstraints:v3];
    v149 = MEMORY[0x277CCAAD0];
    v150 = [(HUInstructionsCell *)self constraints];
    [v149 activateConstraints:v150];
  }

  v168.receiver = self;
  v168.super_class = HUInstructionsCell;
  [(HUInstructionsCell *)&v168 updateConstraints];
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = self;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v11, 0x16u);
  }

  return (a6 - 3) < 0xFFFFFFFFFFFFFFFELL;
}

@end