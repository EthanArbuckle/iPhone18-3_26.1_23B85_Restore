@interface NTKUpNextMatchupScoreView
+ (id)_timeStringForFetchDate:(id)date;
- (CLKMonochromeFilterProvider)filterProvider;
- (NTKUpNextMatchupScoreView)initWithFrame:(CGRect)frame;
- (void)configureWithMatchup:(id)matchup;
- (void)setPaused:(BOOL)paused;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
- (void)updateTimeLabel;
@end

@implementation NTKUpNextMatchupScoreView

- (NTKUpNextMatchupScoreView)initWithFrame:(CGRect)frame
{
  v196[2] = *MEMORY[0x277D85DE8];
  v193.receiver = self;
  v193.super_class = NTKUpNextMatchupScoreView;
  v3 = [(NTKUpNextMatchupScoreView *)&v193 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
    device = [v4 device];

    v191 = 0u;
    v192 = 0u;
    v189 = 0u;
    v190 = 0u;
    v172 = device;
    ___LayoutConstants_block_invoke_0(device, &v189);
    v6 = *(&v189 + 1);
    v7 = [MEMORY[0x277CBBB08] systemFontOfSize:*(&v189 + 1) weight:*MEMORY[0x277D74410]];
    fontDescriptor = [v7 fontDescriptor];

    v171 = fontDescriptor;
    if (CLKIsCurrentLocaleNonLatin())
    {
      v9 = fontDescriptor;
    }

    else
    {
      v9 = [fontDescriptor fontDescriptorWithSymbolicTraits:1];
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
    leadingAnchor = [v24[52] leadingAnchor];
    trailingAnchor = [v44[63] trailingAnchor];
    v58 = *&v191;
    [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:*&v191];
    v59 = v173 = v3;
    v196[0] = v59;
    leadingAnchor2 = [v24[55] leadingAnchor];
    trailingAnchor2 = [v44[63] trailingAnchor];
    v62 = [leadingAnchor2 constraintEqualToAnchor:trailingAnchor2 constant:v58];
    v196[1] = v62;
    v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v196 count:2];
    v64 = v44[65];
    v44[65] = v63;

    firstBaselineAnchor = [v24[53] firstBaselineAnchor];
    topAnchor = [v44 topAnchor];
    v67 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:*&v190 + *(&v190 + 1)];
    v195 = v67;
    v68 = [MEMORY[0x277CBEA60] arrayWithObjects:&v195 count:1];
    v69 = v44[66];
    v44[66] = v68;

    leadingAnchor3 = [v44[64] leadingAnchor];
    leadingAnchor4 = [v24[53] leadingAnchor];
    v179 = [leadingAnchor3 constraintLessThanOrEqualToAnchor:leadingAnchor4];

    LODWORD(v72) = 1148846080;
    [v179 setPriority:v72];
    leadingAnchor5 = [v44[64] leadingAnchor];
    leadingAnchor6 = [v24[56] leadingAnchor];
    v177 = [leadingAnchor5 constraintLessThanOrEqualToAnchor:leadingAnchor6];

    LODWORD(v75) = 1148846080;
    [v177 setPriority:v75];
    leadingAnchor7 = [v44[64] leadingAnchor];
    leadingAnchor8 = [v24[53] leadingAnchor];
    v78 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];

    v163 = v78;
    LODWORD(v79) = 1144750080;
    [v78 setPriority:v79];
    leadingAnchor9 = [v44[64] leadingAnchor];
    leadingAnchor10 = [v24[56] leadingAnchor];
    v82 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];

    v161 = v82;
    LODWORD(v83) = 1144750080;
    [v82 setPriority:v83];
    LODWORD(v84) = 1148846080;
    [(CLKUIColoringLabel *)v137->_timeLabel setContentCompressionResistancePriority:0 forAxis:v84];
    LODWORD(v85) = 1144750080;
    [(CLKUIColoringLabel *)v137->_statusLabel setContentCompressionResistancePriority:0 forAxis:v85];
    trailingAnchor3 = [v24[53] trailingAnchor];
    trailingAnchor4 = [v44[64] trailingAnchor];
    v159 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v194[0] = v159;
    trailingAnchor5 = [v24[56] trailingAnchor];
    trailingAnchor6 = [v44[64] trailingAnchor];
    v156 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v194[1] = v156;
    v194[2] = v179;
    v194[3] = v177;
    v194[4] = v78;
    v194[5] = v82;
    trailingAnchor7 = [v24[52] trailingAnchor];
    leadingAnchor11 = [v44[64] leadingAnchor];
    v86 = -*(&v191 + 1);
    v153 = [trailingAnchor7 constraintEqualToAnchor:leadingAnchor11 constant:-*(&v191 + 1)];
    v194[6] = v153;
    trailingAnchor8 = [v24[55] trailingAnchor];
    leadingAnchor12 = [v44[64] leadingAnchor];
    v150 = [trailingAnchor8 constraintEqualToAnchor:leadingAnchor12 constant:v86];
    v194[7] = v150;
    trailingAnchor9 = [(CLKUIColoringLabel *)v137->_statusLabel trailingAnchor];
    leadingAnchor13 = [(CLKUIColoringLabel *)v137->_timeLabel leadingAnchor];
    v147 = [trailingAnchor9 constraintEqualToAnchor:leadingAnchor13 constant:v86];
    v194[8] = v147;
    centerXAnchor = [v44[51] centerXAnchor];
    centerXAnchor2 = [v44[63] centerXAnchor];
    v144 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v194[9] = v144;
    centerYAnchor = [v44[51] centerYAnchor];
    firstBaselineAnchor2 = [v24[53] firstBaselineAnchor];
    [(CLKFont *)v178 capHeight];
    v141 = [centerYAnchor constraintEqualToAnchor:firstBaselineAnchor2 constant:v87 * -0.5];
    v194[10] = v141;
    widthAnchor = [v44[51] widthAnchor];
    v88 = *&v192;
    v138 = [widthAnchor constraintLessThanOrEqualToConstant:*&v192];
    v194[11] = v138;
    heightAnchor = [v44[51] heightAnchor];
    v89 = *(&v192 + 1);
    v135 = [heightAnchor constraintLessThanOrEqualToConstant:*(&v192 + 1)];
    v194[12] = v135;
    centerXAnchor3 = [v44[54] centerXAnchor];
    centerXAnchor4 = [v44[63] centerXAnchor];
    v132 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v194[13] = v132;
    centerYAnchor2 = [v44[54] centerYAnchor];
    firstBaselineAnchor3 = [v24[56] firstBaselineAnchor];
    [(CLKFont *)v178 capHeight];
    v129 = [centerYAnchor2 constraintEqualToAnchor:firstBaselineAnchor3 constant:v90 * -0.5];
    v194[14] = v129;
    widthAnchor2 = [v44[54] widthAnchor];
    v127 = [widthAnchor2 constraintLessThanOrEqualToConstant:v88];
    v194[15] = v127;
    heightAnchor2 = [v44[54] heightAnchor];
    v126 = [heightAnchor2 constraintLessThanOrEqualToConstant:v89];
    v194[16] = v126;
    topAnchor2 = [v44[63] topAnchor];
    topAnchor3 = [v44 topAnchor];
    v122 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
    v194[17] = v122;
    leadingAnchor14 = [v44[63] leadingAnchor];
    leadingAnchor15 = [v44 leadingAnchor];
    v119 = [leadingAnchor14 constraintEqualToAnchor:leadingAnchor15];
    v194[18] = v119;
    bottomAnchor = [v44[63] bottomAnchor];
    bottomAnchor2 = [v44 bottomAnchor];
    v116 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v194[19] = v116;
    widthAnchor3 = [v44[63] widthAnchor];
    v115 = [widthAnchor3 constraintEqualToConstant:v88];
    v194[20] = v115;
    trailingAnchor10 = [v44[64] trailingAnchor];
    trailingAnchor11 = [v44 trailingAnchor];
    v112 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11];
    v194[21] = v112;
    trailingAnchor12 = [(CLKUIColoringLabel *)v137->_timeLabel trailingAnchor];
    trailingAnchor13 = [v44 trailingAnchor];
    v109 = [trailingAnchor12 constraintEqualToAnchor:trailingAnchor13];
    v194[22] = v109;
    firstBaselineAnchor4 = [v24[53] firstBaselineAnchor];
    firstBaselineAnchor5 = [v24[52] firstBaselineAnchor];
    v107 = [firstBaselineAnchor4 constraintEqualToAnchor:firstBaselineAnchor5];
    v194[23] = v107;
    firstBaselineAnchor6 = [v24[56] firstBaselineAnchor];
    firstBaselineAnchor7 = [v24[55] firstBaselineAnchor];
    v105 = [firstBaselineAnchor6 constraintEqualToAnchor:firstBaselineAnchor7];
    v194[24] = v105;
    firstBaselineAnchor8 = [(CLKUIColoringLabel *)v137->_timeLabel firstBaselineAnchor];
    firstBaselineAnchor9 = [(CLKUIColoringLabel *)v137->_statusLabel firstBaselineAnchor];
    v103 = [firstBaselineAnchor8 constraintEqualToAnchor:firstBaselineAnchor9];
    v194[25] = v103;
    leadingAnchor16 = [(CLKUIColoringLabel *)v137->_statusLabel leadingAnchor];
    leadingAnchor17 = [v44 leadingAnchor];
    v92 = [leadingAnchor16 constraintEqualToAnchor:leadingAnchor17];
    v194[26] = v92;
    firstBaselineAnchor10 = [v24[56] firstBaselineAnchor];
    firstBaselineAnchor11 = [v24[53] firstBaselineAnchor];
    v95 = *&v190;
    v96 = [firstBaselineAnchor10 constraintEqualToAnchor:firstBaselineAnchor11 constant:*&v190];
    v194[27] = v96;
    firstBaselineAnchor12 = [(CLKUIColoringLabel *)v137->_statusLabel firstBaselineAnchor];
    firstBaselineAnchor13 = [v24[56] firstBaselineAnchor];
    v99 = [firstBaselineAnchor12 constraintEqualToAnchor:firstBaselineAnchor13 constant:v95];
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

- (void)configureWithMatchup:(id)matchup
{
  matchupCopy = matchup;
  homeLogoImageView = self->_homeLogoImageView;
  homeTeamImage = [matchupCopy homeTeamImage];
  image = [homeTeamImage image];
  [(UIImageView *)homeLogoImageView setImage:image];

  awayLogoIamgeView = self->_awayLogoIamgeView;
  awayTeamImage = [matchupCopy awayTeamImage];
  image2 = [awayTeamImage image];
  [(UIImageView *)awayLogoIamgeView setImage:image2];

  homeNameLabel = self->_homeNameLabel;
  homeTeamName = [matchupCopy homeTeamName];
  [(CLKUIColoringLabel *)homeNameLabel setText:homeTeamName];

  homeDescriptionLabel = self->_homeDescriptionLabel;
  homeTeamDetail = [matchupCopy homeTeamDetail];
  [(CLKUIColoringLabel *)homeDescriptionLabel setText:homeTeamDetail];

  awayNameLabel = self->_awayNameLabel;
  awayTeamName = [matchupCopy awayTeamName];
  [(CLKUIColoringLabel *)awayNameLabel setText:awayTeamName];

  awayDescriptionLabel = self->_awayDescriptionLabel;
  awayTeamDetail = [matchupCopy awayTeamDetail];
  [(CLKUIColoringLabel *)awayDescriptionLabel setText:awayTeamDetail];

  timeForLabel = self->_timeForLabel;
  self->_timeForLabel = 0;

  status = [matchupCopy status];
  if (status > 3)
  {
    if (status > 5)
    {
      if (status == 6)
      {
        v23 = 480;
        [(CLKUIColoringLabel *)self->_homeNameLabel setFont:self->_boldMatchupFont];
        v24 = self->_awayNameLabel;
        v25 = 488;
      }

      else
      {
        if (status != 7)
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
      if (status == 4)
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
    textColor = [(CLKUIColoringLabel *)self->_homeNameLabel textColor];
    [(CLKUIColoringLabel *)v41 setTextColor:textColor];

    v43 = self->_awayDescriptionLabel;
    textColor2 = [(CLKUIColoringLabel *)self->_awayNameLabel textColor];
    [(CLKUIColoringLabel *)v43 setTextColor:textColor2];

    v45 = MEMORY[0x277CBBB88];
    matchupProgress = [matchupCopy matchupProgress];
    v32 = [v45 textProviderWithText:matchupProgress];

    goto LABEL_18;
  }

  if (status < 2)
  {
    [(CLKUIColoringLabel *)self->_homeNameLabel setFont:self->_regularMatchupFont];
    [(CLKUIColoringLabel *)self->_awayNameLabel setFont:self->_regularMatchupFont];
    [(CLKUIColoringLabel *)self->_homeDescriptionLabel setFont:self->_regularMatchupFont];
    [(CLKUIColoringLabel *)self->_awayDescriptionLabel setFont:self->_regularMatchupFont];
    v26 = self->_homeDescriptionLabel;
    textColor3 = [(CLKUIColoringLabel *)self->_statusLabel textColor];
    [(CLKUIColoringLabel *)v26 setTextColor:textColor3];

    v28 = self->_awayDescriptionLabel;
    textColor4 = [(CLKUIColoringLabel *)self->_statusLabel textColor];
    [(CLKUIColoringLabel *)v28 setTextColor:textColor4];

    v30 = MEMORY[0x277CBBBB8];
    matchupStartDate = [matchupCopy matchupStartDate];
    v32 = [v30 textProviderWithDate:matchupStartDate];

    v33 = NTKClockFaceLocalizedString(@"UP_NEXT_MATCHUP_FORMAT", @"7:15PM Game");
    v34 = [MEMORY[0x277CBBBA0] textProviderWithFormat:v33, v32];
    [v34 finalize];
    [(CLKUIColoringLabel *)self->_statusLabel setTextProvider:v34];
    [NTKUpNextBaseCell clearLabel:self->_timeLabel];

LABEL_19:
    goto LABEL_20;
  }

  if (status == 2)
  {
    [(CLKUIColoringLabel *)self->_homeNameLabel setFont:self->_boldMatchupFont];
    [(CLKUIColoringLabel *)self->_awayNameLabel setFont:self->_boldMatchupFont];
    [(CLKUIColoringLabel *)self->_homeDescriptionLabel setFont:self->_regularMatchupFont];
    [(CLKUIColoringLabel *)self->_awayDescriptionLabel setFont:self->_regularMatchupFont];
    v49 = self->_homeDescriptionLabel;
    textColor5 = [(CLKUIColoringLabel *)self->_homeNameLabel textColor];
    [(CLKUIColoringLabel *)v49 setTextColor:textColor5];

    v51 = self->_awayDescriptionLabel;
    textColor6 = [(CLKUIColoringLabel *)self->_awayNameLabel textColor];
    [(CLKUIColoringLabel *)v51 setTextColor:textColor6];

    matchupDateFetched = [matchupCopy matchupDateFetched];
    v54 = self->_timeForLabel;
    self->_timeForLabel = matchupDateFetched;

    [(NTKUpNextMatchupScoreView *)self updateTimeLabel];
    statusLabel = self->_statusLabel;
    v56 = MEMORY[0x277CBBB88];
    matchupProgress2 = [matchupCopy matchupProgress];
    v58 = matchupProgress2;
    if (matchupProgress2)
    {
      v59 = matchupProgress2;
    }

    else
    {
      v59 = &stru_284110E98;
    }

    v60 = [v56 textProviderWithText:v59];
    [(CLKUIColoringLabel *)statusLabel setTextProvider:v60];

    goto LABEL_20;
  }

  if (status == 3)
  {
    [(CLKUIColoringLabel *)self->_homeNameLabel setFont:self->_boldMatchupFont];
    [(CLKUIColoringLabel *)self->_awayNameLabel setFont:self->_boldMatchupFont];
    v20 = self->_homeDescriptionLabel;
LABEL_14:
    [(CLKUIColoringLabel *)v20 setFont:self->_regularMatchupFont];
    [(CLKUIColoringLabel *)self->_awayDescriptionLabel setFont:self->_regularMatchupFont];
    v35 = self->_homeDescriptionLabel;
    textColor7 = [(CLKUIColoringLabel *)self->_statusLabel textColor];
    [(CLKUIColoringLabel *)v35 setTextColor:textColor7];

    v37 = self->_awayDescriptionLabel;
    textColor8 = [(CLKUIColoringLabel *)self->_statusLabel textColor];
    [(CLKUIColoringLabel *)v37 setTextColor:textColor8];

    v39 = MEMORY[0x277CBBB88];
    matchupProgress3 = [matchupCopy matchupProgress];
    v32 = [v39 textProviderWithText:matchupProgress3];

LABEL_18:
    [(CLKUIColoringLabel *)self->_statusLabel setTextProvider:v32];
    [NTKUpNextBaseCell clearLabel:self->_timeLabel];
    goto LABEL_19;
  }

LABEL_20:
  textProvider = [(CLKUIColoringLabel *)self->_statusLabel textProvider];
  [textProvider setPaused:{-[NTKUpNextMatchupScoreView isPaused](self, "isPaused")}];

  textProvider2 = [(CLKUIColoringLabel *)self->_timeLabel textProvider];
  [textProvider2 setPaused:{-[NTKUpNextMatchupScoreView isPaused](self, "isPaused")}];
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

+ (id)_timeStringForFetchDate:(id)date
{
  v3 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v3 currentCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  v7 = [currentCalendar components:126 fromDate:date];
  v8 = [currentCalendar components:126 fromDate:dateCopy];

  v9 = [currentCalendar components:96 fromDateComponents:v7 toDateComponents:v8 options:0];
  hour = [v9 hour];
  minute = [v9 minute];
  v12 = minute;
  if (hour < 0 || minute < 0)
  {
    if (hour)
    {
      if (hour >= 0)
      {
        v14 = hour;
      }

      else
      {
        v14 = -hour;
      }

      v15 = NTKClockFaceLocalizedString(@"COUNTDOWN_HOUR_SHORT", @"H");
      localizedLowercaseString = [v15 localizedLowercaseString];

      hour = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%d%@", v14, localizedLowercaseString];
    }

    if (v12)
    {
      v17 = NTKClockFaceLocalizedString(@"COUNTDOWN_MINUTE_SHORT", @"M");
      localizedLowercaseString2 = [v17 localizedLowercaseString];

      if (v12 >= 0)
      {
        v19 = v12;
      }

      else
      {
        v19 = -v12;
      }

      v20 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%ld%@", v19, localizedLowercaseString2];
      if ([hour length])
      {
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", hour, v20];
      }

      else
      {
        v21 = v20;
      }

      v22 = v21;

      hour = v22;
    }

    v23 = MEMORY[0x277CCACA8];
    v24 = NTKClockFaceLocalizedString(@"UP_NEXT_SPORTS_TIME_SINCE", @"%@ ago");
    v13 = [v23 stringWithFormat:v24, hour];
  }

  else
  {
    v13 = NTKClockFaceLocalizedString(@"COUNTDOWN_NOW", @"now");
  }

  return v13;
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  textProvider = [(CLKUIColoringLabel *)self->_statusLabel textProvider];
  [textProvider setPaused:pausedCopy];

  textProvider2 = [(CLKUIColoringLabel *)self->_timeLabel textProvider];
  [textProvider2 setPaused:pausedCopy];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  v5 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.6];
  v19 = v5;
  if (fabs(fraction) >= 0.00000011920929)
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    whiteColor3 = NTKInterpolateBetweenColors();

    [(CLKUIColoringLabel *)self->_statusLabel setTextColor:whiteColor3];
    [(CLKUIColoringLabel *)self->_timeLabel setTextColor:whiteColor3];
    filterProvider = [(NTKUpNextMatchupScoreView *)self filterProvider];
    v12 = [filterProvider filtersForView:self style:2 fraction:fraction];

    if (v12)
    {
      layer = [(CLKUIColoringLabel *)self->_homeNameLabel layer];
      [layer setFilters:v12];

      layer2 = [(CLKUIColoringLabel *)self->_awayNameLabel layer];
      [layer2 setFilters:v12];
    }

    filterProvider2 = [(NTKUpNextMatchupScoreView *)self filterProvider];
    v16 = [filterProvider2 filtersForView:self style:1 fraction:fraction];

    if (v16)
    {
      layer3 = [(UIImageView *)self->_homeLogoImageView layer];
      [layer3 setFilters:v16];

      layer4 = [(UIImageView *)self->_awayLogoIamgeView layer];
      [layer4 setFilters:v16];
    }
  }

  else
  {
    [(CLKUIColoringLabel *)self->_timeLabel setTextColor:v5];
    [(CLKUIColoringLabel *)self->_statusLabel setTextColor:v19];
    homeNameLabel = self->_homeNameLabel;
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)homeNameLabel setTextColor:whiteColor2];

    awayNameLabel = self->_awayNameLabel;
    whiteColor3 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)awayNameLabel setTextColor:whiteColor3];
  }
}

- (void)updateMonochromeColor
{
  statusLabel = self->_statusLabel;
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [(CLKUIColoringLabel *)statusLabel setTextColor:whiteColor];

  timeLabel = self->_timeLabel;
  whiteColor2 = [MEMORY[0x277D75348] whiteColor];
  [(CLKUIColoringLabel *)timeLabel setTextColor:whiteColor2];

  homeNameLabel = self->_homeNameLabel;
  whiteColor3 = [MEMORY[0x277D75348] whiteColor];
  [(CLKUIColoringLabel *)homeNameLabel setTextColor:whiteColor3];

  awayNameLabel = self->_awayNameLabel;
  whiteColor4 = [MEMORY[0x277D75348] whiteColor];
  [(CLKUIColoringLabel *)awayNameLabel setTextColor:whiteColor4];

  filterProvider = [(NTKUpNextMatchupScoreView *)self filterProvider];
  v18 = [filterProvider filtersForView:self style:2];

  if (v18)
  {
    layer = [(CLKUIColoringLabel *)self->_homeNameLabel layer];
    [layer setFilters:v18];

    layer2 = [(CLKUIColoringLabel *)self->_awayNameLabel layer];
    [layer2 setFilters:v18];
  }

  filterProvider2 = [(NTKUpNextMatchupScoreView *)self filterProvider];
  v15 = [filterProvider2 filtersForView:self style:1];

  if (v15)
  {
    layer3 = [(UIImageView *)self->_homeLogoImageView layer];
    [layer3 setFilters:v15];

    layer4 = [(UIImageView *)self->_awayLogoIamgeView layer];
    [layer4 setFilters:v15];
  }
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end