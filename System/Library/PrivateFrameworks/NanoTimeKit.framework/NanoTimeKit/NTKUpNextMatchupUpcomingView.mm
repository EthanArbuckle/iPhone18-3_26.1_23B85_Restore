@interface NTKUpNextMatchupUpcomingView
- (CLKMonochromeFilterProvider)filterProvider;
- (NTKUpNextMatchupUpcomingView)initWithFrame:(CGRect)frame;
- (void)configureWithMatchup:(id)matchup;
- (void)setPaused:(BOOL)paused;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NTKUpNextMatchupUpcomingView

- (NTKUpNextMatchupUpcomingView)initWithFrame:(CGRect)frame
{
  v96[20] = *MEMORY[0x277D85DE8];
  v95.receiver = self;
  v95.super_class = NTKUpNextMatchupUpcomingView;
  v3 = [(NTKUpNextMatchupUpcomingView *)&v95 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
    device = [v4 device];

    v94 = 0.0;
    v92 = 0u;
    v93 = 0u;
    ___LayoutConstants_block_invoke_20(device, &v92);
    v89 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.6];
    v5 = objc_alloc(MEMORY[0x277D755E8]);
    v6 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v9 = *(MEMORY[0x277CBF3A0] + 24);
    v10 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], v7, v8, v9}];
    homeLogoImageView = v3->_homeLogoImageView;
    v3->_homeLogoImageView = v10;

    [(UIImageView *)v3->_homeLogoImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_homeLogoImageView setContentMode:1];
    [(NTKUpNextMatchupUpcomingView *)v3 addSubview:v3->_homeLogoImageView];
    v12 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v6, v7, v8, v9}];
    awayLogoImageView = v3->_awayLogoImageView;
    v3->_awayLogoImageView = v12;

    [(UIImageView *)v3->_awayLogoImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_awayLogoImageView setContentMode:1];
    [(NTKUpNextMatchupUpcomingView *)v3 addSubview:v3->_awayLogoImageView];
    v90 = NTKClockFaceLocalizedString(@"UP_NEXT_MATCHUP_VERSUS", @"vs");
    v87 = [MEMORY[0x277CBBB88] textProviderWithText:v90];
    [v87 finalize];
    v88 = [MEMORY[0x277CBBB08] systemFontOfSize:*&v92];
    v14 = [[off_27877BEF8 alloc] initWithFrame:{v6, v7, v8, v9}];
    [(CLKUIColoringLabel *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CLKUIColoringLabel *)v14 setTextColor:v89];
    [(CLKUIColoringLabel *)v14 setFont:v88];
    [(CLKUIColoringLabel *)v14 setTextProvider:v87];
    [(NTKUpNextMatchupUpcomingView *)v3 addSubview:v14];
    versusLabel = v3->_versusLabel;
    v3->_versusLabel = v14;
    v76 = v14;

    v86 = [MEMORY[0x277CBBB08] systemFontOfSize:*(&v92 + 1) weight:*MEMORY[0x277D743F8]];
    v16 = [[off_27877BEF8 alloc] initWithFrame:{v6, v7, v8, v9}];
    [(CLKUIColoringLabel *)v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v16 setTextColor:whiteColor];

    [(CLKUIColoringLabel *)v16 setFont:v86];
    [(NTKUpNextMatchupUpcomingView *)v3 addSubview:v16];
    descriptionLabel = v3->_descriptionLabel;
    v3->_descriptionLabel = v16;
    v68 = v16;

    v19 = objc_alloc_init(MEMORY[0x277D756D0]);
    homeLogoLayoutGuide = v3->_homeLogoLayoutGuide;
    v3->_homeLogoLayoutGuide = v19;

    [(UILayoutGuide *)v3->_homeLogoLayoutGuide setIdentifier:@"NTKUpNextUpcomingHomeLogoView"];
    [(NTKUpNextMatchupUpcomingView *)v3 addLayoutGuide:v3->_homeLogoLayoutGuide];
    v21 = objc_alloc_init(MEMORY[0x277D756D0]);
    awayLogoLayoutGuide = v3->_awayLogoLayoutGuide;
    v3->_awayLogoLayoutGuide = v21;

    [(UILayoutGuide *)v3->_awayLogoLayoutGuide setIdentifier:@"NTKUpNextUpcomingAwayLogoView"];
    [(NTKUpNextMatchupUpcomingView *)v3 addLayoutGuide:v3->_awayLogoLayoutGuide];
    leadingAnchor = [(UILayoutGuide *)v3->_homeLogoLayoutGuide leadingAnchor];
    leadingAnchor2 = [(NTKUpNextMatchupUpcomingView *)v3 leadingAnchor];
    v83 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v96[0] = v83;
    widthAnchor = [(UILayoutGuide *)v3->_homeLogoLayoutGuide widthAnchor];
    v23 = *(&v93 + 1);
    v81 = [widthAnchor constraintEqualToConstant:*(&v93 + 1)];
    v96[1] = v81;
    heightAnchor = [(UILayoutGuide *)v3->_homeLogoLayoutGuide heightAnchor];
    v24 = v94;
    v79 = [heightAnchor constraintEqualToConstant:v94];
    v96[2] = v79;
    centerYAnchor = [(UILayoutGuide *)v3->_homeLogoLayoutGuide centerYAnchor];
    centerYAnchor2 = [(CLKUIColoringLabel *)v3->_versusLabel centerYAnchor];
    v75 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v96[3] = v75;
    trailingAnchor = [(UILayoutGuide *)v3->_awayLogoLayoutGuide trailingAnchor];
    trailingAnchor2 = [(NTKUpNextMatchupUpcomingView *)v3 trailingAnchor];
    v72 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v96[4] = v72;
    widthAnchor2 = [(UILayoutGuide *)v3->_awayLogoLayoutGuide widthAnchor];
    v70 = [widthAnchor2 constraintEqualToConstant:v23];
    v96[5] = v70;
    heightAnchor2 = [(UILayoutGuide *)v3->_awayLogoLayoutGuide heightAnchor];
    v67 = [heightAnchor2 constraintEqualToConstant:v24];
    v96[6] = v67;
    centerYAnchor3 = [(UILayoutGuide *)v3->_awayLogoLayoutGuide centerYAnchor];
    centerYAnchor4 = [(CLKUIColoringLabel *)v3->_versusLabel centerYAnchor];
    v64 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v96[7] = v64;
    centerXAnchor = [(UIImageView *)v3->_homeLogoImageView centerXAnchor];
    centerXAnchor2 = [(UILayoutGuide *)v3->_homeLogoLayoutGuide centerXAnchor];
    v61 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v96[8] = v61;
    centerYAnchor5 = [(UIImageView *)v3->_homeLogoImageView centerYAnchor];
    centerYAnchor6 = [(UILayoutGuide *)v3->_homeLogoLayoutGuide centerYAnchor];
    v58 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v96[9] = v58;
    widthAnchor3 = [(UIImageView *)v3->_homeLogoImageView widthAnchor];
    widthAnchor4 = [(UILayoutGuide *)v3->_homeLogoLayoutGuide widthAnchor];
    v55 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
    v96[10] = v55;
    heightAnchor3 = [(UIImageView *)v3->_homeLogoImageView heightAnchor];
    heightAnchor4 = [(UILayoutGuide *)v3->_homeLogoLayoutGuide heightAnchor];
    v52 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
    v96[11] = v52;
    centerXAnchor3 = [(UIImageView *)v3->_awayLogoImageView centerXAnchor];
    centerXAnchor4 = [(UILayoutGuide *)v3->_awayLogoLayoutGuide centerXAnchor];
    v49 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v96[12] = v49;
    centerYAnchor7 = [(UIImageView *)v3->_awayLogoImageView centerYAnchor];
    centerYAnchor8 = [(UILayoutGuide *)v3->_awayLogoLayoutGuide centerYAnchor];
    v45 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
    v96[13] = v45;
    widthAnchor5 = [(UIImageView *)v3->_awayLogoImageView widthAnchor];
    widthAnchor6 = [(UILayoutGuide *)v3->_awayLogoLayoutGuide widthAnchor];
    v42 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6];
    v96[14] = v42;
    heightAnchor5 = [(UIImageView *)v3->_awayLogoImageView heightAnchor];
    heightAnchor6 = [(UILayoutGuide *)v3->_awayLogoLayoutGuide heightAnchor];
    v39 = [heightAnchor5 constraintEqualToAnchor:heightAnchor6];
    v96[15] = v39;
    centerXAnchor5 = [(CLKUIColoringLabel *)v3->_versusLabel centerXAnchor];
    centerXAnchor6 = [(NTKUpNextMatchupUpcomingView *)v3 centerXAnchor];
    v36 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    v96[16] = v36;
    centerYAnchor9 = [(CLKUIColoringLabel *)v3->_versusLabel centerYAnchor];
    centerYAnchor10 = [(NTKUpNextMatchupUpcomingView *)v3 centerYAnchor];
    font = [(CLKUIColoringLabel *)v3->_descriptionLabel font];
    [font lineHeight];
    CLKRoundForDevice();
    v27 = [centerYAnchor9 constraintEqualToAnchor:centerYAnchor10 constant:?];
    v96[17] = v27;
    centerXAnchor7 = [(CLKUIColoringLabel *)v3->_descriptionLabel centerXAnchor];
    centerXAnchor8 = [(NTKUpNextMatchupUpcomingView *)v3 centerXAnchor];
    v30 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
    v96[18] = v30;
    lastBaselineAnchor = [(CLKUIColoringLabel *)v3->_descriptionLabel lastBaselineAnchor];
    lastBaselineAnchor2 = [(CLKUIColoringLabel *)v3->_versusLabel lastBaselineAnchor];
    v33 = [lastBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor2 constant:*&v93];
    v96[19] = v33;
    v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:20];

    [(NTKUpNextMatchupUpcomingView *)v3 addConstraints:v46];
  }

  return v3;
}

- (void)configureWithMatchup:(id)matchup
{
  matchupCopy = matchup;
  homeTeamImage = [matchupCopy homeTeamImage];
  image = [homeTeamImage image];

  [(UIImageView *)self->_homeLogoImageView setImage:image];
  awayTeamImage = [matchupCopy awayTeamImage];
  image2 = [awayTeamImage image];

  [(UIImageView *)self->_awayLogoImageView setImage:image2];
  matchupStartDate = [matchupCopy matchupStartDate];
  status = [matchupCopy status];
  if (status == 4 || status == 3)
  {
    v17 = MEMORY[0x277CBBB88];
    matchupProgress = [matchupCopy matchupProgress];
    v16 = [v17 textProviderWithText:matchupProgress];
  }

  else
  {
    if (status != 1)
    {
      v16 = 0;
      goto LABEL_11;
    }

    matchupProgress = [MEMORY[0x277CBBBB8] textProviderWithDate:matchupStartDate];
    date = [MEMORY[0x277CBEAA8] date];
    v12 = NTKStartOfDayForDate(date);
    v13 = NTKStartOfNextDayForDate(date);
    v14 = NTKEndOfDayForDate(v13);

    v15 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v12 endDate:v14];
    if ([v15 containsDate:matchupStartDate])
    {
      v16 = matchupProgress;
    }

    else
    {
      [MEMORY[0x277CBBAE0] textProviderWithDate:matchupStartDate units:24];
      v18 = v22 = v12;
      NTKClockFaceLocalizedString(@"UP_NEXT_MATCHUP_TIME_FORMAT", @"%@, %@");
      v19 = v21 = v14;
      v16 = [MEMORY[0x277CBBBA0] textProviderWithFormat:v19, matchupProgress, v18];

      v14 = v21;
      v12 = v22;
    }
  }

LABEL_11:
  [(CLKUIColoringLabel *)self->_descriptionLabel setTextProvider:0];
  [(CLKUIColoringLabel *)self->_descriptionLabel setText:0];
  [v16 finalize];
  [(CLKUIColoringLabel *)self->_descriptionLabel setTextProvider:v16];
  textProvider = [(CLKUIColoringLabel *)self->_descriptionLabel textProvider];
  [textProvider setPaused:{-[NTKUpNextMatchupUpcomingView isPaused](self, "isPaused")}];
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  textProvider = [(CLKUIColoringLabel *)self->_descriptionLabel textProvider];
  [textProvider setPaused:pausedCopy];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  v5 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.6];
  v16 = v5;
  if (fabs(fraction) >= 0.00000011920929)
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    whiteColor2 = NTKInterpolateBetweenColors();

    [(CLKUIColoringLabel *)self->_versusLabel setTextColor:whiteColor2];
    filterProvider = [(NTKUpNextMatchupUpcomingView *)self filterProvider];
    v10 = [filterProvider filtersForView:self style:2 fraction:fraction];

    if (v10)
    {
      layer = [(CLKUIColoringLabel *)self->_descriptionLabel layer];
      [layer setFilters:v10];
    }

    filterProvider2 = [(NTKUpNextMatchupUpcomingView *)self filterProvider];
    v13 = [filterProvider2 filtersForView:self style:1 fraction:fraction];

    if (v13)
    {
      layer2 = [(UIImageView *)self->_awayLogoImageView layer];
      [layer2 setFilters:v13];

      layer3 = [(UIImageView *)self->_homeLogoImageView layer];
      [layer3 setFilters:v13];
    }
  }

  else
  {
    [(CLKUIColoringLabel *)self->_versusLabel setTextColor:v5];
    descriptionLabel = self->_descriptionLabel;
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)descriptionLabel setTextColor:whiteColor2];
  }
}

- (void)updateMonochromeColor
{
  versusLabel = self->_versusLabel;
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [(CLKUIColoringLabel *)versusLabel setTextColor:whiteColor];

  descriptionLabel = self->_descriptionLabel;
  whiteColor2 = [MEMORY[0x277D75348] whiteColor];
  [(CLKUIColoringLabel *)descriptionLabel setTextColor:whiteColor2];

  filterProvider = [(NTKUpNextMatchupUpcomingView *)self filterProvider];
  v13 = [filterProvider filtersForView:self style:2];

  if (v13)
  {
    layer = [(CLKUIColoringLabel *)self->_descriptionLabel layer];
    [layer setFilters:v13];
  }

  filterProvider2 = [(NTKUpNextMatchupUpcomingView *)self filterProvider];
  v10 = [filterProvider2 filtersForView:self style:1];

  if (v10)
  {
    layer2 = [(UIImageView *)self->_awayLogoImageView layer];
    [layer2 setFilters:v10];

    layer3 = [(UIImageView *)self->_homeLogoImageView layer];
    [layer3 setFilters:v10];
  }
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end