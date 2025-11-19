@interface NTKUpNextMatchupUpcomingView
- (CLKMonochromeFilterProvider)filterProvider;
- (NTKUpNextMatchupUpcomingView)initWithFrame:(CGRect)a3;
- (void)configureWithMatchup:(id)a3;
- (void)setPaused:(BOOL)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKUpNextMatchupUpcomingView

- (NTKUpNextMatchupUpcomingView)initWithFrame:(CGRect)a3
{
  v96[20] = *MEMORY[0x277D85DE8];
  v95.receiver = self;
  v95.super_class = NTKUpNextMatchupUpcomingView;
  v3 = [(NTKUpNextMatchupUpcomingView *)&v95 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
    v91 = [v4 device];

    v94 = 0.0;
    v92 = 0u;
    v93 = 0u;
    ___LayoutConstants_block_invoke_20(v91, &v92);
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
    v17 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v16 setTextColor:v17];

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
    v85 = [(UILayoutGuide *)v3->_homeLogoLayoutGuide leadingAnchor];
    v84 = [(NTKUpNextMatchupUpcomingView *)v3 leadingAnchor];
    v83 = [v85 constraintEqualToAnchor:v84];
    v96[0] = v83;
    v82 = [(UILayoutGuide *)v3->_homeLogoLayoutGuide widthAnchor];
    v23 = *(&v93 + 1);
    v81 = [v82 constraintEqualToConstant:*(&v93 + 1)];
    v96[1] = v81;
    v80 = [(UILayoutGuide *)v3->_homeLogoLayoutGuide heightAnchor];
    v24 = v94;
    v79 = [v80 constraintEqualToConstant:v94];
    v96[2] = v79;
    v78 = [(UILayoutGuide *)v3->_homeLogoLayoutGuide centerYAnchor];
    v77 = [(CLKUIColoringLabel *)v3->_versusLabel centerYAnchor];
    v75 = [v78 constraintEqualToAnchor:v77];
    v96[3] = v75;
    v74 = [(UILayoutGuide *)v3->_awayLogoLayoutGuide trailingAnchor];
    v73 = [(NTKUpNextMatchupUpcomingView *)v3 trailingAnchor];
    v72 = [v74 constraintEqualToAnchor:v73];
    v96[4] = v72;
    v71 = [(UILayoutGuide *)v3->_awayLogoLayoutGuide widthAnchor];
    v70 = [v71 constraintEqualToConstant:v23];
    v96[5] = v70;
    v69 = [(UILayoutGuide *)v3->_awayLogoLayoutGuide heightAnchor];
    v67 = [v69 constraintEqualToConstant:v24];
    v96[6] = v67;
    v66 = [(UILayoutGuide *)v3->_awayLogoLayoutGuide centerYAnchor];
    v65 = [(CLKUIColoringLabel *)v3->_versusLabel centerYAnchor];
    v64 = [v66 constraintEqualToAnchor:v65];
    v96[7] = v64;
    v63 = [(UIImageView *)v3->_homeLogoImageView centerXAnchor];
    v62 = [(UILayoutGuide *)v3->_homeLogoLayoutGuide centerXAnchor];
    v61 = [v63 constraintEqualToAnchor:v62];
    v96[8] = v61;
    v60 = [(UIImageView *)v3->_homeLogoImageView centerYAnchor];
    v59 = [(UILayoutGuide *)v3->_homeLogoLayoutGuide centerYAnchor];
    v58 = [v60 constraintEqualToAnchor:v59];
    v96[9] = v58;
    v57 = [(UIImageView *)v3->_homeLogoImageView widthAnchor];
    v56 = [(UILayoutGuide *)v3->_homeLogoLayoutGuide widthAnchor];
    v55 = [v57 constraintEqualToAnchor:v56];
    v96[10] = v55;
    v54 = [(UIImageView *)v3->_homeLogoImageView heightAnchor];
    v53 = [(UILayoutGuide *)v3->_homeLogoLayoutGuide heightAnchor];
    v52 = [v54 constraintEqualToAnchor:v53];
    v96[11] = v52;
    v51 = [(UIImageView *)v3->_awayLogoImageView centerXAnchor];
    v50 = [(UILayoutGuide *)v3->_awayLogoLayoutGuide centerXAnchor];
    v49 = [v51 constraintEqualToAnchor:v50];
    v96[12] = v49;
    v48 = [(UIImageView *)v3->_awayLogoImageView centerYAnchor];
    v47 = [(UILayoutGuide *)v3->_awayLogoLayoutGuide centerYAnchor];
    v45 = [v48 constraintEqualToAnchor:v47];
    v96[13] = v45;
    v44 = [(UIImageView *)v3->_awayLogoImageView widthAnchor];
    v43 = [(UILayoutGuide *)v3->_awayLogoLayoutGuide widthAnchor];
    v42 = [v44 constraintEqualToAnchor:v43];
    v96[14] = v42;
    v41 = [(UIImageView *)v3->_awayLogoImageView heightAnchor];
    v40 = [(UILayoutGuide *)v3->_awayLogoLayoutGuide heightAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v96[15] = v39;
    v38 = [(CLKUIColoringLabel *)v3->_versusLabel centerXAnchor];
    v37 = [(NTKUpNextMatchupUpcomingView *)v3 centerXAnchor];
    v36 = [v38 constraintEqualToAnchor:v37];
    v96[16] = v36;
    v35 = [(CLKUIColoringLabel *)v3->_versusLabel centerYAnchor];
    v25 = [(NTKUpNextMatchupUpcomingView *)v3 centerYAnchor];
    v26 = [(CLKUIColoringLabel *)v3->_descriptionLabel font];
    [v26 lineHeight];
    CLKRoundForDevice();
    v27 = [v35 constraintEqualToAnchor:v25 constant:?];
    v96[17] = v27;
    v28 = [(CLKUIColoringLabel *)v3->_descriptionLabel centerXAnchor];
    v29 = [(NTKUpNextMatchupUpcomingView *)v3 centerXAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    v96[18] = v30;
    v31 = [(CLKUIColoringLabel *)v3->_descriptionLabel lastBaselineAnchor];
    v32 = [(CLKUIColoringLabel *)v3->_versusLabel lastBaselineAnchor];
    v33 = [v31 constraintEqualToAnchor:v32 constant:*&v93];
    v96[19] = v33;
    v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:20];

    [(NTKUpNextMatchupUpcomingView *)v3 addConstraints:v46];
  }

  return v3;
}

- (void)configureWithMatchup:(id)a3
{
  v23 = a3;
  v4 = [v23 homeTeamImage];
  v5 = [v4 image];

  [(UIImageView *)self->_homeLogoImageView setImage:v5];
  v6 = [v23 awayTeamImage];
  v7 = [v6 image];

  [(UIImageView *)self->_awayLogoImageView setImage:v7];
  v8 = [v23 matchupStartDate];
  v9 = [v23 status];
  if (v9 == 4 || v9 == 3)
  {
    v17 = MEMORY[0x277CBBB88];
    v10 = [v23 matchupProgress];
    v16 = [v17 textProviderWithText:v10];
  }

  else
  {
    if (v9 != 1)
    {
      v16 = 0;
      goto LABEL_11;
    }

    v10 = [MEMORY[0x277CBBBB8] textProviderWithDate:v8];
    v11 = [MEMORY[0x277CBEAA8] date];
    v12 = NTKStartOfDayForDate(v11);
    v13 = NTKStartOfNextDayForDate(v11);
    v14 = NTKEndOfDayForDate(v13);

    v15 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v12 endDate:v14];
    if ([v15 containsDate:v8])
    {
      v16 = v10;
    }

    else
    {
      [MEMORY[0x277CBBAE0] textProviderWithDate:v8 units:24];
      v18 = v22 = v12;
      NTKClockFaceLocalizedString(@"UP_NEXT_MATCHUP_TIME_FORMAT", @"%@, %@");
      v19 = v21 = v14;
      v16 = [MEMORY[0x277CBBBA0] textProviderWithFormat:v19, v10, v18];

      v14 = v21;
      v12 = v22;
    }
  }

LABEL_11:
  [(CLKUIColoringLabel *)self->_descriptionLabel setTextProvider:0];
  [(CLKUIColoringLabel *)self->_descriptionLabel setText:0];
  [v16 finalize];
  [(CLKUIColoringLabel *)self->_descriptionLabel setTextProvider:v16];
  v20 = [(CLKUIColoringLabel *)self->_descriptionLabel textProvider];
  [v20 setPaused:{-[NTKUpNextMatchupUpcomingView isPaused](self, "isPaused")}];
}

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  v4 = [(CLKUIColoringLabel *)self->_descriptionLabel textProvider];
  [v4 setPaused:v3];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v5 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.6];
  v16 = v5;
  if (fabs(a3) >= 0.00000011920929)
  {
    v8 = [MEMORY[0x277D75348] whiteColor];
    v7 = NTKInterpolateBetweenColors();

    [(CLKUIColoringLabel *)self->_versusLabel setTextColor:v7];
    v9 = [(NTKUpNextMatchupUpcomingView *)self filterProvider];
    v10 = [v9 filtersForView:self style:2 fraction:a3];

    if (v10)
    {
      v11 = [(CLKUIColoringLabel *)self->_descriptionLabel layer];
      [v11 setFilters:v10];
    }

    v12 = [(NTKUpNextMatchupUpcomingView *)self filterProvider];
    v13 = [v12 filtersForView:self style:1 fraction:a3];

    if (v13)
    {
      v14 = [(UIImageView *)self->_awayLogoImageView layer];
      [v14 setFilters:v13];

      v15 = [(UIImageView *)self->_homeLogoImageView layer];
      [v15 setFilters:v13];
    }
  }

  else
  {
    [(CLKUIColoringLabel *)self->_versusLabel setTextColor:v5];
    descriptionLabel = self->_descriptionLabel;
    v7 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)descriptionLabel setTextColor:v7];
  }
}

- (void)updateMonochromeColor
{
  versusLabel = self->_versusLabel;
  v4 = [MEMORY[0x277D75348] whiteColor];
  [(CLKUIColoringLabel *)versusLabel setTextColor:v4];

  descriptionLabel = self->_descriptionLabel;
  v6 = [MEMORY[0x277D75348] whiteColor];
  [(CLKUIColoringLabel *)descriptionLabel setTextColor:v6];

  v7 = [(NTKUpNextMatchupUpcomingView *)self filterProvider];
  v13 = [v7 filtersForView:self style:2];

  if (v13)
  {
    v8 = [(CLKUIColoringLabel *)self->_descriptionLabel layer];
    [v8 setFilters:v13];
  }

  v9 = [(NTKUpNextMatchupUpcomingView *)self filterProvider];
  v10 = [v9 filtersForView:self style:1];

  if (v10)
  {
    v11 = [(UIImageView *)self->_awayLogoImageView layer];
    [v11 setFilters:v10];

    v12 = [(UIImageView *)self->_homeLogoImageView layer];
    [v12 setFilters:v10];
  }
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end