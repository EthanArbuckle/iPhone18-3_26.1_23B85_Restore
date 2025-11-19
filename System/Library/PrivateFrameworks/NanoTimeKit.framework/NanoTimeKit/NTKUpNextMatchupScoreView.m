@interface NTKUpNextMatchupScoreView
+ (id)_timeStringForFetchDate:(id)a3;
- (CLKMonochromeFilterProvider)filterProvider;
- (NTKUpNextMatchupScoreView)initWithFrame:(CGRect)a3;
- (void)configureWithMatchup:(id)a3;
- (void)setPaused:(BOOL)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
- (void)updateTimeLabel;
@end

@implementation NTKUpNextMatchupScoreView

- (NTKUpNextMatchupScoreView)initWithFrame:(CGRect)a3
{
  v196[2] = *MEMORY[0x277D85DE8];
  v193.receiver = self;
  v193.super_class = NTKUpNextMatchupScoreView;
  v3 = [(NTKUpNextMatchupScoreView *)&v193 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
    v5 = [v4 device];

    v191 = 0u;
    v192 = 0u;
    v189 = 0u;
    v190 = 0u;
    v172 = v5;
    ___LayoutConstants_block_invoke_0(v5, &v189);
    v6 = *(&v189 + 1);
    v7 = [MEMORY[0x277CBBB08] systemFontOfSize:*(&v189 + 1) weight:*MEMORY[0x277D74410]];
    v8 = [v7 fontDescriptor];

    v171 = v8;
    if (CLKIsCurrentLocaleNonLatin())
    {
      v9 = v8;
    }

    else
    {
      v9 = [v8 fontDescriptorWithSymbolicTraits:1];
    }

    v170 = v9;
    v10 = [MEMORY[0x277CBBB08] fontWithDescriptor:v9 size:v6];
    objc_storeStrong(&v3->_statusFont, v10);
    v11 = *&v189;
    v12 = [MEMORY[0x277CBBB08] systemFontOfSize:*&v189 weight:*MEMORY[0x277D74418]];
    regularMatchupFont = v3->_regularMatchupFont;
    v3->_regularMatchupFont = v12;
    v178 = v12;

    v14 = [MEMORY[0x277CBBB08] systemFontOfSize:v11 weight:*MEMORY[0x277D743F8]];
    objc_storeStrong(&v3->_boldMatchupFont, v14);
    v15 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.6];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __43__NTKUpNextMatchupScoreView_initWithFrame___block_invoke;
    aBlock[3] = &unk_27877E388;
    v186 = v15;
    v187 = v10;
    v16 = v3;
    v188 = v16;
    v169 = v10;
    v168 = v15;
    v17 = _Block_copy(aBlock);
    v18 = v17 + 2;
    v19 = v17;
    v167 = v17;
    v20 = (v17[2])();
    statusLabel = v16->_statusLabel;
    v16->_statusLabel = v20;

    v22 = (*v18)(v19);
    timeLabel = v16->_timeLabel;
    v16->_timeLabel = v22;
    v137 = v16;

    v182[0] = MEMORY[0x277D85DD0];
    v182[1] = 3221225472;
    v182[2] = __43__NTKUpNextMatchupScoreView_initWithFrame___block_invoke_2;
    v182[3] = &unk_27877E3B0;
    v183 = v14;
    v24 = v16;
    v184 = v24;
    v166 = v14;
    v25 = _Block_copy(v182);
    v26 = v25 + 2;
    v27 = v25;
    v28 = (v25[2])();
    v29 = v24[52];
    v24[52] = v28;

    LODWORD(v30) = 1132068864;
    [v24[52] setContentCompressionResistancePriority:0 forAxis:v30];
    LODWORD(v31) = 1132068864;
    [v24[52] setContentHuggingPriority:0 forAxis:v31];
    v32 = (*v26)(v27);
    v33 = v24[53];
    v24[53] = v32;

    LODWORD(v34) = 1148846080;
    [v24[53] setContentCompressionResistancePriority:0 forAxis:v34];
    LODWORD(v35) = 1148846080;
    [v24[53] setContentHuggingPriority:0 forAxis:v35];
    v165 = v27;
    v36 = (*v26)(v27);
    v37 = v24[55];
    v24[55] = v36;

    LODWORD(v38) = 1132068864;
    [v24[55] setContentCompressionResistancePriority:0 forAxis:v38];
    LODWORD(v39) = 1132068864;
    [v24[55] setContentHuggingPriority:0 forAxis:v39];
    v40 = (*v26)(v27);
    v41 = v24[56];
    v24[56] = v40;

    LODWORD(v42) = 1148846080;
    [v24[56] setContentCompressionResistancePriority:0 forAxis:v42];
    LODWORD(v43) = 1148846080;
    [v24[56] setContentHuggingPriority:0 forAxis:v43];
    v180[0] = MEMORY[0x277D85DD0];
    v180[1] = 3221225472;
    v180[2] = __43__NTKUpNextMatchupScoreView_initWithFrame___block_invoke_3;
    v180[3] = &unk_27877E3D8;
    v44 = v24;
    v181 = v44;
    v45 = _Block_copy(v180);
    v46 = v45 + 2;
    v47 = v45;
    v164 = v45;
    v48 = (v45[2])();
    v49 = v44[51];
    v44[51] = v48;

    v50 = (*v46)(v47);
    v51 = v44[54];
    v44[54] = v50;

    v52 = objc_alloc_init(MEMORY[0x277D756D0]);
    v53 = v44[63];
    v44[63] = v52;

    [v44 addLayoutGuide:v44[63]];
    [v44[63] setIdentifier:@"UpNextMatchupLogoLayoutGuide"];
    v54 = objc_alloc_init(MEMORY[0x277D756D0]);
    v55 = v44[64];
    v44[64] = v54;

    [v44 addLayoutGuide:v44[64]];
    [v44[64] setIdentifier:@"UpNextMatchupDescriptionLayoutGuide"];
    v56 = [v24[52] leadingAnchor];
    v57 = [v44[63] trailingAnchor];
    v58 = *&v191;
    [v56 constraintEqualToAnchor:v57 constant:*&v191];
    v59 = v173 = v3;
    v196[0] = v59;
    v60 = [v24[55] leadingAnchor];
    v61 = [v44[63] trailingAnchor];
    v62 = [v60 constraintEqualToAnchor:v61 constant:v58];
    v196[1] = v62;
    v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v196 count:2];
    v64 = v44[65];
    v44[65] = v63;

    v65 = [v24[53] firstBaselineAnchor];
    v66 = [v44 topAnchor];
    v67 = [v65 constraintEqualToAnchor:v66 constant:*&v190 + *(&v190 + 1)];
    v195 = v67;
    v68 = [MEMORY[0x277CBEA60] arrayWithObjects:&v195 count:1];
    v69 = v44[66];
    v44[66] = v68;

    v70 = [v44[64] leadingAnchor];
    v71 = [v24[53] leadingAnchor];
    v179 = [v70 constraintLessThanOrEqualToAnchor:v71];

    LODWORD(v72) = 1148846080;
    [v179 setPriority:v72];
    v73 = [v44[64] leadingAnchor];
    v74 = [v24[56] leadingAnchor];
    v177 = [v73 constraintLessThanOrEqualToAnchor:v74];

    LODWORD(v75) = 1148846080;
    [v177 setPriority:v75];
    v76 = [v44[64] leadingAnchor];
    v77 = [v24[53] leadingAnchor];
    v78 = [v76 constraintEqualToAnchor:v77];

    v163 = v78;
    LODWORD(v79) = 1144750080;
    [v78 setPriority:v79];
    v80 = [v44[64] leadingAnchor];
    v81 = [v24[56] leadingAnchor];
    v82 = [v80 constraintEqualToAnchor:v81];

    v161 = v82;
    LODWORD(v83) = 1144750080;
    [v82 setPriority:v83];
    LODWORD(v84) = 1148846080;
    [(CLKUIColoringLabel *)v137->_timeLabel setContentCompressionResistancePriority:0 forAxis:v84];
    LODWORD(v85) = 1144750080;
    [(CLKUIColoringLabel *)v137->_statusLabel setContentCompressionResistancePriority:0 forAxis:v85];
    v162 = [v24[53] trailingAnchor];
    v160 = [v44[64] trailingAnchor];
    v159 = [v162 constraintEqualToAnchor:v160];
    v194[0] = v159;
    v158 = [v24[56] trailingAnchor];
    v157 = [v44[64] trailingAnchor];
    v156 = [v158 constraintEqualToAnchor:v157];
    v194[1] = v156;
    v194[2] = v179;
    v194[3] = v177;
    v194[4] = v78;
    v194[5] = v82;
    v155 = [v24[52] trailingAnchor];
    v154 = [v44[64] leadingAnchor];
    v86 = -*(&v191 + 1);
    v153 = [v155 constraintEqualToAnchor:v154 constant:-*(&v191 + 1)];
    v194[6] = v153;
    v152 = [v24[55] trailingAnchor];
    v151 = [v44[64] leadingAnchor];
    v150 = [v152 constraintEqualToAnchor:v151 constant:v86];
    v194[7] = v150;
    v149 = [(CLKUIColoringLabel *)v137->_statusLabel trailingAnchor];
    v148 = [(CLKUIColoringLabel *)v137->_timeLabel leadingAnchor];
    v147 = [v149 constraintEqualToAnchor:v148 constant:v86];
    v194[8] = v147;
    v146 = [v44[51] centerXAnchor];
    v145 = [v44[63] centerXAnchor];
    v144 = [v146 constraintEqualToAnchor:v145];
    v194[9] = v144;
    v143 = [v44[51] centerYAnchor];
    v142 = [v24[53] firstBaselineAnchor];
    [(CLKFont *)v178 capHeight];
    v141 = [v143 constraintEqualToAnchor:v142 constant:v87 * -0.5];
    v194[10] = v141;
    v139 = [v44[51] widthAnchor];
    v88 = *&v192;
    v138 = [v139 constraintLessThanOrEqualToConstant:*&v192];
    v194[11] = v138;
    v136 = [v44[51] heightAnchor];
    v89 = *(&v192 + 1);
    v135 = [v136 constraintLessThanOrEqualToConstant:*(&v192 + 1)];
    v194[12] = v135;
    v134 = [v44[54] centerXAnchor];
    v133 = [v44[63] centerXAnchor];
    v132 = [v134 constraintEqualToAnchor:v133];
    v194[13] = v132;
    v131 = [v44[54] centerYAnchor];
    v130 = [v24[56] firstBaselineAnchor];
    [(CLKFont *)v178 capHeight];
    v129 = [v131 constraintEqualToAnchor:v130 constant:v90 * -0.5];
    v194[14] = v129;
    v128 = [v44[54] widthAnchor];
    v127 = [v128 constraintLessThanOrEqualToConstant:v88];
    v194[15] = v127;
    v140 = [v44[54] heightAnchor];
    v126 = [v140 constraintLessThanOrEqualToConstant:v89];
    v194[16] = v126;
    v124 = [v44[63] topAnchor];
    v123 = [v44 topAnchor];
    v122 = [v124 constraintEqualToAnchor:v123];
    v194[17] = v122;
    v121 = [v44[63] leadingAnchor];
    v120 = [v44 leadingAnchor];
    v119 = [v121 constraintEqualToAnchor:v120];
    v194[18] = v119;
    v118 = [v44[63] bottomAnchor];
    v117 = [v44 bottomAnchor];
    v116 = [v118 constraintEqualToAnchor:v117];
    v194[19] = v116;
    v125 = [v44[63] widthAnchor];
    v115 = [v125 constraintEqualToConstant:v88];
    v194[20] = v115;
    v114 = [v44[64] trailingAnchor];
    v113 = [v44 trailingAnchor];
    v112 = [v114 constraintEqualToAnchor:v113];
    v194[21] = v112;
    v111 = [(CLKUIColoringLabel *)v137->_timeLabel trailingAnchor];
    v110 = [v44 trailingAnchor];
    v109 = [v111 constraintEqualToAnchor:v110];
    v194[22] = v109;
    v108 = [v24[53] firstBaselineAnchor];
    v175 = [v24[52] firstBaselineAnchor];
    v107 = [v108 constraintEqualToAnchor:v175];
    v194[23] = v107;
    v106 = [v24[56] firstBaselineAnchor];
    v174 = [v24[55] firstBaselineAnchor];
    v105 = [v106 constraintEqualToAnchor:v174];
    v194[24] = v105;
    v176 = [(CLKUIColoringLabel *)v137->_timeLabel firstBaselineAnchor];
    v104 = [(CLKUIColoringLabel *)v137->_statusLabel firstBaselineAnchor];
    v103 = [v176 constraintEqualToAnchor:v104];
    v194[25] = v103;
    v102 = [(CLKUIColoringLabel *)v137->_statusLabel leadingAnchor];
    v91 = [v44 leadingAnchor];
    v92 = [v102 constraintEqualToAnchor:v91];
    v194[26] = v92;
    v93 = [v24[56] firstBaselineAnchor];
    v94 = [v24[53] firstBaselineAnchor];
    v95 = *&v190;
    v96 = [v93 constraintEqualToAnchor:v94 constant:*&v190];
    v194[27] = v96;
    v97 = [(CLKUIColoringLabel *)v137->_statusLabel firstBaselineAnchor];
    v98 = [v24[56] firstBaselineAnchor];
    v99 = [v97 constraintEqualToAnchor:v98 constant:v95];
    v194[28] = v99;
    v100 = [MEMORY[0x277CBEA60] arrayWithObjects:v194 count:29];

    v3 = v173;
    [v44 addConstraints:v100];
    [v44 addConstraints:v44[65]];
    [v44 addConstraints:v44[66]];
  }

  return v3;
}

id __43__NTKUpNextMatchupScoreView_initWithFrame___block_invoke(uint64_t a1)
{
  v2 = [off_27877BEF8 alloc];
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setTextColor:*(a1 + 32)];
  [v3 setFont:*(a1 + 40)];
  [*(a1 + 48) addSubview:v3];

  return v3;
}

id __43__NTKUpNextMatchupScoreView_initWithFrame___block_invoke_2(uint64_t a1)
{
  v2 = [off_27877BEF8 alloc];
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [MEMORY[0x277D75348] whiteColor];
  [v3 setTextColor:v4];

  [v3 setFont:*(a1 + 32)];
  [*(a1 + 40) addSubview:v3];

  return v3;
}

id __43__NTKUpNextMatchupScoreView_initWithFrame___block_invoke_3(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D755E8]);
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setContentMode:1];
  [*(a1 + 32) addSubview:v3];

  return v3;
}

- (void)configureWithMatchup:(id)a3
{
  v61 = a3;
  homeLogoImageView = self->_homeLogoImageView;
  v5 = [v61 homeTeamImage];
  v6 = [v5 image];
  [(UIImageView *)homeLogoImageView setImage:v6];

  awayLogoIamgeView = self->_awayLogoIamgeView;
  v8 = [v61 awayTeamImage];
  v9 = [v8 image];
  [(UIImageView *)awayLogoIamgeView setImage:v9];

  homeNameLabel = self->_homeNameLabel;
  v11 = [v61 homeTeamName];
  [(CLKUIColoringLabel *)homeNameLabel setText:v11];

  homeDescriptionLabel = self->_homeDescriptionLabel;
  v13 = [v61 homeTeamDetail];
  [(CLKUIColoringLabel *)homeDescriptionLabel setText:v13];

  awayNameLabel = self->_awayNameLabel;
  v15 = [v61 awayTeamName];
  [(CLKUIColoringLabel *)awayNameLabel setText:v15];

  awayDescriptionLabel = self->_awayDescriptionLabel;
  v17 = [v61 awayTeamDetail];
  [(CLKUIColoringLabel *)awayDescriptionLabel setText:v17];

  timeForLabel = self->_timeForLabel;
  self->_timeForLabel = 0;

  v19 = [v61 status];
  if (v19 > 3)
  {
    if (v19 > 5)
    {
      if (v19 == 6)
      {
        v23 = 480;
        [(CLKUIColoringLabel *)self->_homeNameLabel setFont:self->_boldMatchupFont];
        v24 = self->_awayNameLabel;
        v25 = 488;
      }

      else
      {
        if (v19 != 7)
        {
          goto LABEL_20;
        }

        v23 = 488;
        [(CLKUIColoringLabel *)self->_homeNameLabel setFont:self->_regularMatchupFont];
        v24 = self->_awayNameLabel;
        v25 = 480;
      }

      [(CLKUIColoringLabel *)v24 setFont:*(&self->super.super.super.isa + v25)];
      [(CLKUIColoringLabel *)self->_homeDescriptionLabel setFont:*(&self->super.super.super.isa + v23)];
      v21 = self->_awayDescriptionLabel;
      boldMatchupFont = *(&self->super.super.super.isa + v25);
    }

    else
    {
      if (v19 == 4)
      {
        [(CLKUIColoringLabel *)self->_homeNameLabel setFont:self->_regularMatchupFont];
        [(CLKUIColoringLabel *)self->_awayNameLabel setFont:self->_regularMatchupFont];
        v20 = self->_homeDescriptionLabel;
        goto LABEL_14;
      }

      [(CLKUIColoringLabel *)self->_homeNameLabel setFont:self->_boldMatchupFont];
      [(CLKUIColoringLabel *)self->_awayNameLabel setFont:self->_boldMatchupFont];
      [(CLKUIColoringLabel *)self->_homeDescriptionLabel setFont:self->_boldMatchupFont];
      v21 = self->_awayDescriptionLabel;
      boldMatchupFont = self->_boldMatchupFont;
    }

    [(CLKUIColoringLabel *)v21 setFont:boldMatchupFont];
    v41 = self->_homeDescriptionLabel;
    v42 = [(CLKUIColoringLabel *)self->_homeNameLabel textColor];
    [(CLKUIColoringLabel *)v41 setTextColor:v42];

    v43 = self->_awayDescriptionLabel;
    v44 = [(CLKUIColoringLabel *)self->_awayNameLabel textColor];
    [(CLKUIColoringLabel *)v43 setTextColor:v44];

    v45 = MEMORY[0x277CBBB88];
    v46 = [v61 matchupProgress];
    v32 = [v45 textProviderWithText:v46];

    goto LABEL_18;
  }

  if (v19 < 2)
  {
    [(CLKUIColoringLabel *)self->_homeNameLabel setFont:self->_regularMatchupFont];
    [(CLKUIColoringLabel *)self->_awayNameLabel setFont:self->_regularMatchupFont];
    [(CLKUIColoringLabel *)self->_homeDescriptionLabel setFont:self->_regularMatchupFont];
    [(CLKUIColoringLabel *)self->_awayDescriptionLabel setFont:self->_regularMatchupFont];
    v26 = self->_homeDescriptionLabel;
    v27 = [(CLKUIColoringLabel *)self->_statusLabel textColor];
    [(CLKUIColoringLabel *)v26 setTextColor:v27];

    v28 = self->_awayDescriptionLabel;
    v29 = [(CLKUIColoringLabel *)self->_statusLabel textColor];
    [(CLKUIColoringLabel *)v28 setTextColor:v29];

    v30 = MEMORY[0x277CBBBB8];
    v31 = [v61 matchupStartDate];
    v32 = [v30 textProviderWithDate:v31];

    v33 = NTKClockFaceLocalizedString(@"UP_NEXT_MATCHUP_FORMAT", @"7:15PM Game");
    v34 = [MEMORY[0x277CBBBA0] textProviderWithFormat:v33, v32];
    [v34 finalize];
    [(CLKUIColoringLabel *)self->_statusLabel setTextProvider:v34];
    [NTKUpNextBaseCell clearLabel:self->_timeLabel];

LABEL_19:
    goto LABEL_20;
  }

  if (v19 == 2)
  {
    [(CLKUIColoringLabel *)self->_homeNameLabel setFont:self->_boldMatchupFont];
    [(CLKUIColoringLabel *)self->_awayNameLabel setFont:self->_boldMatchupFont];
    [(CLKUIColoringLabel *)self->_homeDescriptionLabel setFont:self->_regularMatchupFont];
    [(CLKUIColoringLabel *)self->_awayDescriptionLabel setFont:self->_regularMatchupFont];
    v49 = self->_homeDescriptionLabel;
    v50 = [(CLKUIColoringLabel *)self->_homeNameLabel textColor];
    [(CLKUIColoringLabel *)v49 setTextColor:v50];

    v51 = self->_awayDescriptionLabel;
    v52 = [(CLKUIColoringLabel *)self->_awayNameLabel textColor];
    [(CLKUIColoringLabel *)v51 setTextColor:v52];

    v53 = [v61 matchupDateFetched];
    v54 = self->_timeForLabel;
    self->_timeForLabel = v53;

    [(NTKUpNextMatchupScoreView *)self updateTimeLabel];
    statusLabel = self->_statusLabel;
    v56 = MEMORY[0x277CBBB88];
    v57 = [v61 matchupProgress];
    v58 = v57;
    if (v57)
    {
      v59 = v57;
    }

    else
    {
      v59 = &stru_284110E98;
    }

    v60 = [v56 textProviderWithText:v59];
    [(CLKUIColoringLabel *)statusLabel setTextProvider:v60];

    goto LABEL_20;
  }

  if (v19 == 3)
  {
    [(CLKUIColoringLabel *)self->_homeNameLabel setFont:self->_boldMatchupFont];
    [(CLKUIColoringLabel *)self->_awayNameLabel setFont:self->_boldMatchupFont];
    v20 = self->_homeDescriptionLabel;
LABEL_14:
    [(CLKUIColoringLabel *)v20 setFont:self->_regularMatchupFont];
    [(CLKUIColoringLabel *)self->_awayDescriptionLabel setFont:self->_regularMatchupFont];
    v35 = self->_homeDescriptionLabel;
    v36 = [(CLKUIColoringLabel *)self->_statusLabel textColor];
    [(CLKUIColoringLabel *)v35 setTextColor:v36];

    v37 = self->_awayDescriptionLabel;
    v38 = [(CLKUIColoringLabel *)self->_statusLabel textColor];
    [(CLKUIColoringLabel *)v37 setTextColor:v38];

    v39 = MEMORY[0x277CBBB88];
    v40 = [v61 matchupProgress];
    v32 = [v39 textProviderWithText:v40];

LABEL_18:
    [(CLKUIColoringLabel *)self->_statusLabel setTextProvider:v32];
    [NTKUpNextBaseCell clearLabel:self->_timeLabel];
    goto LABEL_19;
  }

LABEL_20:
  v47 = [(CLKUIColoringLabel *)self->_statusLabel textProvider];
  [v47 setPaused:{-[NTKUpNextMatchupScoreView isPaused](self, "isPaused")}];

  v48 = [(CLKUIColoringLabel *)self->_timeLabel textProvider];
  [v48 setPaused:{-[NTKUpNextMatchupScoreView isPaused](self, "isPaused")}];
}

- (void)updateTimeLabel
{
  if (self->_timeForLabel)
  {
    v3 = [objc_opt_class() _timeStringForFetchDate:self->_timeForLabel];
    v4 = v3;
    v5 = &stru_284110E98;
    if (v3)
    {
      v5 = v3;
    }

    v6 = v5;

    timeLabel = self->_timeLabel;
    v8 = [MEMORY[0x277CBBB88] textProviderWithText:v6];

    [(CLKUIColoringLabel *)timeLabel setTextProvider:v8];
  }
}

+ (id)_timeStringForFetchDate:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v5 components:126 fromDate:v6];
  v8 = [v5 components:126 fromDate:v4];

  v9 = [v5 components:96 fromDateComponents:v7 toDateComponents:v8 options:0];
  v10 = [v9 hour];
  v11 = [v9 minute];
  v12 = v11;
  if (v10 < 0 || v11 < 0)
  {
    if (v10)
    {
      if (v10 >= 0)
      {
        v14 = v10;
      }

      else
      {
        v14 = -v10;
      }

      v15 = NTKClockFaceLocalizedString(@"COUNTDOWN_HOUR_SHORT", @"H");
      v16 = [v15 localizedLowercaseString];

      v10 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%d%@", v14, v16];
    }

    if (v12)
    {
      v17 = NTKClockFaceLocalizedString(@"COUNTDOWN_MINUTE_SHORT", @"M");
      v18 = [v17 localizedLowercaseString];

      if (v12 >= 0)
      {
        v19 = v12;
      }

      else
      {
        v19 = -v12;
      }

      v20 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%ld%@", v19, v18];
      if ([v10 length])
      {
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v10, v20];
      }

      else
      {
        v21 = v20;
      }

      v22 = v21;

      v10 = v22;
    }

    v23 = MEMORY[0x277CCACA8];
    v24 = NTKClockFaceLocalizedString(@"UP_NEXT_SPORTS_TIME_SINCE", @"%@ ago");
    v13 = [v23 stringWithFormat:v24, v10];
  }

  else
  {
    v13 = NTKClockFaceLocalizedString(@"COUNTDOWN_NOW", @"now");
  }

  return v13;
}

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  v5 = [(CLKUIColoringLabel *)self->_statusLabel textProvider];
  [v5 setPaused:v3];

  v6 = [(CLKUIColoringLabel *)self->_timeLabel textProvider];
  [v6 setPaused:v3];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v5 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.6];
  v19 = v5;
  if (fabs(a3) >= 0.00000011920929)
  {
    v10 = [MEMORY[0x277D75348] whiteColor];
    v9 = NTKInterpolateBetweenColors();

    [(CLKUIColoringLabel *)self->_statusLabel setTextColor:v9];
    [(CLKUIColoringLabel *)self->_timeLabel setTextColor:v9];
    v11 = [(NTKUpNextMatchupScoreView *)self filterProvider];
    v12 = [v11 filtersForView:self style:2 fraction:a3];

    if (v12)
    {
      v13 = [(CLKUIColoringLabel *)self->_homeNameLabel layer];
      [v13 setFilters:v12];

      v14 = [(CLKUIColoringLabel *)self->_awayNameLabel layer];
      [v14 setFilters:v12];
    }

    v15 = [(NTKUpNextMatchupScoreView *)self filterProvider];
    v16 = [v15 filtersForView:self style:1 fraction:a3];

    if (v16)
    {
      v17 = [(UIImageView *)self->_homeLogoImageView layer];
      [v17 setFilters:v16];

      v18 = [(UIImageView *)self->_awayLogoIamgeView layer];
      [v18 setFilters:v16];
    }
  }

  else
  {
    [(CLKUIColoringLabel *)self->_timeLabel setTextColor:v5];
    [(CLKUIColoringLabel *)self->_statusLabel setTextColor:v19];
    homeNameLabel = self->_homeNameLabel;
    v7 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)homeNameLabel setTextColor:v7];

    awayNameLabel = self->_awayNameLabel;
    v9 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)awayNameLabel setTextColor:v9];
  }
}

- (void)updateMonochromeColor
{
  statusLabel = self->_statusLabel;
  v4 = [MEMORY[0x277D75348] whiteColor];
  [(CLKUIColoringLabel *)statusLabel setTextColor:v4];

  timeLabel = self->_timeLabel;
  v6 = [MEMORY[0x277D75348] whiteColor];
  [(CLKUIColoringLabel *)timeLabel setTextColor:v6];

  homeNameLabel = self->_homeNameLabel;
  v8 = [MEMORY[0x277D75348] whiteColor];
  [(CLKUIColoringLabel *)homeNameLabel setTextColor:v8];

  awayNameLabel = self->_awayNameLabel;
  v10 = [MEMORY[0x277D75348] whiteColor];
  [(CLKUIColoringLabel *)awayNameLabel setTextColor:v10];

  v11 = [(NTKUpNextMatchupScoreView *)self filterProvider];
  v18 = [v11 filtersForView:self style:2];

  if (v18)
  {
    v12 = [(CLKUIColoringLabel *)self->_homeNameLabel layer];
    [v12 setFilters:v18];

    v13 = [(CLKUIColoringLabel *)self->_awayNameLabel layer];
    [v13 setFilters:v18];
  }

  v14 = [(NTKUpNextMatchupScoreView *)self filterProvider];
  v15 = [v14 filtersForView:self style:1];

  if (v15)
  {
    v16 = [(UIImageView *)self->_homeLogoImageView layer];
    [v16 setFilters:v15];

    v17 = [(UIImageView *)self->_awayLogoIamgeView layer];
    [v17 setFilters:v15];
  }
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end