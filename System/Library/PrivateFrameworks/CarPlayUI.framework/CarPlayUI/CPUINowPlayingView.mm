@interface CPUINowPlayingView
- (CPUINowPlayingView)initWithFrame:(CGRect)a3;
- (CPUINowPlayingViewVideoDelegate)videoDelegate;
- (id)_constraintsForNowPlayingLayout:(id)a3;
- (id)_equalHeightVerticalSpacers:(unint64_t)a3 minimumPadding:(double)a4 maximumPadding:(double)a5;
- (void)_handleShowVideo;
- (void)_stopGameTimer;
- (void)_updateGameTimer;
- (void)recalculateLayout:(BOOL)a3 allowsAlbumArt:(BOOL)a4 viewArea:(CGRect)a5 safeArea:(CGRect)a6 rightHandDrive:(BOOL)a7 sports:(BOOL)a8;
- (void)setBadgeAnnotationView:(id)a3;
- (void)setSportsData:(id)a3;
- (void)willMoveToSuperview:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation CPUINowPlayingView

- (CPUINowPlayingView)initWithFrame:(CGRect)a3
{
  v84.receiver = self;
  v84.super_class = CPUINowPlayingView;
  v3 = [(CPUINowPlayingView *)&v84 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    [(CPUINowPlayingView *)v3 setBackgroundColor:v4];

    [(CPUINowPlayingView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [(CPUINowPlayingView *)v3 layer];
    [v5 setAllowsGroupOpacity:0];

    v6 = [(CPUINowPlayingView *)v3 layer];
    [v6 setAllowsGroupBlending:0];

    v7 = objc_alloc_init(_TtC9CarPlayUI15CPUIArtworkView);
    artworkViewBrick = v3->_artworkViewBrick;
    v3->_artworkViewBrick = v7;

    [(CPUIArtworkView *)v3->_artworkViewBrick setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_initWeak(&location, v3);
    v78 = MEMORY[0x277D85DD0];
    v79 = 3221225472;
    v80 = __36__CPUINowPlayingView_initWithFrame___block_invoke;
    v81 = &unk_278D9C7E8;
    objc_copyWeak(&v82, &location);
    [(CPUIArtworkView *)v3->_artworkViewBrick setShowVideoHandler:&v78];
    [(CPUINowPlayingView *)v3 addSubview:v3->_artworkViewBrick, v78, v79, v80, v81];
    v9 = objc_alloc(MEMORY[0x277D75A68]);
    v10 = *MEMORY[0x277CBF3A0];
    v11 = *(MEMORY[0x277CBF3A0] + 8);
    v12 = *(MEMORY[0x277CBF3A0] + 16);
    v13 = *(MEMORY[0x277CBF3A0] + 24);
    v14 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], v11, v12, v13}];
    titleStackView = v3->_titleStackView;
    v3->_titleStackView = v14;

    [(UIStackView *)v3->_titleStackView setAxis:1];
    [(UIStackView *)v3->_titleStackView setDistribution:0];
    [(UIStackView *)v3->_titleStackView setAlignment:0];
    [(UIStackView *)v3->_titleStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v3->_titleStackView setSpacing:0.0];
    [(CPUINowPlayingView *)v3 addSubview:v3->_titleStackView];
    v16 = objc_alloc_init(MEMORY[0x277D755E8]);
    leftTeamArtwork = v3->_leftTeamArtwork;
    v3->_leftTeamArtwork = v16;

    [(UIImageView *)v3->_leftTeamArtwork setContentMode:1];
    [(UIImageView *)v3->_leftTeamArtwork setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v18) = 1148846080;
    [(UIImageView *)v3->_leftTeamArtwork setContentCompressionResistancePriority:1 forAxis:v18];
    [(CPUINowPlayingView *)v3 addSubview:v3->_leftTeamArtwork];
    v19 = objc_alloc_init(MEMORY[0x277D755E8]);
    rightTeamArtwork = v3->_rightTeamArtwork;
    v3->_rightTeamArtwork = v19;

    [(UIImageView *)v3->_rightTeamArtwork setContentMode:1];
    [(UIImageView *)v3->_rightTeamArtwork setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v21) = 1148846080;
    [(UIImageView *)v3->_rightTeamArtwork setContentHuggingPriority:1 forAxis:v21];
    [(CPUINowPlayingView *)v3 addSubview:v3->_rightTeamArtwork];
    v22 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v10, v11, v12, v13}];
    leftScoreLabel = v3->_leftScoreLabel;
    v3->_leftScoreLabel = v22;

    [(UILabel *)v3->_leftScoreLabel setTextAlignment:1];
    v24 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v3->_leftScoreLabel setTextColor:v24];

    [(UILabel *)v3->_leftScoreLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v3->_leftScoreLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPUINowPlayingView *)v3 addSubview:v3->_leftScoreLabel];
    v25 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v10, v11, v12, v13}];
    rightScoreLabel = v3->_rightScoreLabel;
    v3->_rightScoreLabel = v25;

    [(UILabel *)v3->_rightScoreLabel setTextAlignment:1];
    v27 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v3->_rightScoreLabel setTextColor:v27];

    [(UILabel *)v3->_rightScoreLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v3->_rightScoreLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPUINowPlayingView *)v3 addSubview:v3->_rightScoreLabel];
    v28 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v10, v11, v12, v13}];
    leftTeamNameLabel = v3->_leftTeamNameLabel;
    v3->_leftTeamNameLabel = v28;

    v30 = *MEMORY[0x277D76938];
    v31 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
    [(UILabel *)v3->_leftTeamNameLabel setFont:v31];

    v32 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v3->_leftTeamNameLabel setTextColor:v32];

    [(UILabel *)v3->_leftTeamNameLabel setTextAlignment:1];
    [(UILabel *)v3->_leftTeamNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPUINowPlayingView *)v3 addSubview:v3->_leftTeamNameLabel];
    v33 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v10, v11, v12, v13}];
    rightTeamNameLabel = v3->_rightTeamNameLabel;
    v3->_rightTeamNameLabel = v33;

    v35 = [MEMORY[0x277D74300] preferredFontForTextStyle:v30];
    [(UILabel *)v3->_rightTeamNameLabel setFont:v35];

    v36 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v3->_rightTeamNameLabel setTextColor:v36];

    [(UILabel *)v3->_rightTeamNameLabel setTextAlignment:1];
    [(UILabel *)v3->_rightTeamNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPUINowPlayingView *)v3 addSubview:v3->_rightTeamNameLabel];
    v37 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v10, v11, v12, v13}];
    leftTeamStandingLabel = v3->_leftTeamStandingLabel;
    v3->_leftTeamStandingLabel = v37;

    v39 = [MEMORY[0x277D74300] preferredFontForTextStyle:v30];
    [(UILabel *)v3->_leftTeamStandingLabel setFont:v39];

    v40 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v3->_leftTeamStandingLabel setTextColor:v40];

    [(UILabel *)v3->_leftTeamStandingLabel setTextAlignment:1];
    [(UILabel *)v3->_leftTeamStandingLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPUINowPlayingView *)v3 addSubview:v3->_leftTeamStandingLabel];
    v41 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v10, v11, v12, v13}];
    rightTeamStandingLabel = v3->_rightTeamStandingLabel;
    v3->_rightTeamStandingLabel = v41;

    v43 = [MEMORY[0x277D74300] preferredFontForTextStyle:v30];
    [(UILabel *)v3->_rightTeamStandingLabel setFont:v43];

    v44 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v3->_rightTeamStandingLabel setTextColor:v44];

    [(UILabel *)v3->_rightTeamStandingLabel setTextAlignment:1];
    [(UILabel *)v3->_rightTeamStandingLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPUINowPlayingView *)v3 addSubview:v3->_rightTeamStandingLabel];
    v45 = objc_alloc(MEMORY[0x277D755E8]);
    v46 = [MEMORY[0x277D755B8] systemImageNamed:@"star.fill"];
    v47 = [v46 imageWithRenderingMode:2];
    v48 = [v45 initWithImage:v47];
    leftFavoriteStar = v3->_leftFavoriteStar;
    v3->_leftFavoriteStar = v48;

    [(UIImageView *)v3->_leftFavoriteStar setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_leftFavoriteStar setContentMode:1];
    v50 = [MEMORY[0x277D75348] systemOrangeColor];
    [(UIImageView *)v3->_leftFavoriteStar setTintColor:v50];

    [(UIImageView *)v3->_leftFavoriteStar setHidden:1];
    [(CPUINowPlayingView *)v3 addSubview:v3->_leftFavoriteStar];
    v51 = objc_alloc(MEMORY[0x277D755E8]);
    v52 = [MEMORY[0x277D755B8] systemImageNamed:@"star.fill"];
    v53 = [v52 imageWithRenderingMode:2];
    v54 = [v51 initWithImage:v53];
    rightFavoriteStar = v3->_rightFavoriteStar;
    v3->_rightFavoriteStar = v54;

    [(UIImageView *)v3->_rightFavoriteStar setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_rightFavoriteStar setContentMode:1];
    v56 = [MEMORY[0x277D75348] systemOrangeColor];
    [(UIImageView *)v3->_rightFavoriteStar setTintColor:v56];

    [(UIImageView *)v3->_rightFavoriteStar setHidden:1];
    [(CPUINowPlayingView *)v3 addSubview:v3->_rightFavoriteStar];
    v57 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v10, v11, v12, v13}];
    possessionIndicator = v3->_possessionIndicator;
    v3->_possessionIndicator = v57;

    [(UIImageView *)v3->_possessionIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_possessionIndicator setContentMode:1];
    v59 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UIImageView *)v3->_possessionIndicator setTintColor:v59];

    [(CPUINowPlayingView *)v3 addSubview:v3->_possessionIndicator];
    v60 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v10, v11, v12, v13}];
    gameStatusImage = v3->_gameStatusImage;
    v3->_gameStatusImage = v60;

    [(UIImageView *)v3->_gameStatusImage setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_gameStatusImage setContentMode:1];
    v62 = [MEMORY[0x277D75348] labelColor];
    [(UIImageView *)v3->_gameStatusImage setTintColor:v62];

    [(CPUINowPlayingView *)v3 addSubview:v3->_gameStatusImage];
    v63 = [[CPUISongDetailsView alloc] initWithFrame:v10, v11, v12, v13];
    songDetailsView = v3->_songDetailsView;
    v3->_songDetailsView = v63;

    [(CPUISongDetailsView *)v3->_songDetailsView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPUINowPlayingView *)v3 addSubview:v3->_songDetailsView];
    v65 = [[CPUITransportControlView alloc] initWithFrame:v10, v11, v12, v13];
    transportControlView = v3->_transportControlView;
    v3->_transportControlView = v65;

    [(CPUITransportControlView *)v3->_transportControlView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPUINowPlayingView *)v3 addSubview:v3->_transportControlView];
    v67 = [[CPUIProgressView alloc] initWithFrame:v10, v11, v12, v13];
    progressView = v3->_progressView;
    v3->_progressView = v67;

    [(CPUIProgressView *)v3->_progressView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPUINowPlayingView *)v3 addSubview:v3->_progressView];
    v69 = [[CPUIPlayModeControlView alloc] initWithFrame:v10, v11, v12, v13];
    playModeControlView = v3->_playModeControlView;
    v3->_playModeControlView = v69;

    [(CPUIPlayModeControlView *)v3->_playModeControlView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPUINowPlayingView *)v3 addSubview:v3->_playModeControlView];
    v71 = objc_alloc_init(MEMORY[0x277D754F8]);
    controlsFocusContainerGuide = v3->_controlsFocusContainerGuide;
    v3->_controlsFocusContainerGuide = v71;

    v73 = [(CPUINowPlayingView *)v3 controlsFocusContainerGuide];
    [(CPUINowPlayingView *)v3 addLayoutGuide:v73];

    v74 = objc_alloc_init(MEMORY[0x277D754F8]);
    bottomRegionFocusContainerGuide = v3->_bottomRegionFocusContainerGuide;
    v3->_bottomRegionFocusContainerGuide = v74;

    v76 = [(CPUINowPlayingView *)v3 bottomRegionFocusContainerGuide];
    [(CPUINowPlayingView *)v3 addLayoutGuide:v76];

    objc_destroyWeak(&v82);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __36__CPUINowPlayingView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleShowVideo];
}

- (void)_stopGameTimer
{
  [(NSTimer *)self->_gameTimer invalidate];
  gameTimer = self->_gameTimer;
  self->_gameTimer = 0;
}

- (void)setSportsData:(id)a3
{
  v117 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![(CPUINowPlayingSportsData *)self->_sportsData isEqual:v5])
  {
    objc_storeStrong(&self->_sportsData, a3);
    v6 = [(CPUINowPlayingView *)self sportsData];

    if (v6)
    {
      v7 = [(CPUINowPlayingView *)self artworkViewBrick];
      [v7 setHidden:1];

      v8 = [(CPUINowPlayingView *)self songDetailsView];
      [v8 setHidden:1];

      v9 = [(CPUINowPlayingView *)self titleStackView];
      [v9 setHidden:0];

      v10 = [(CPUINowPlayingView *)self leftTeamArtwork];
      [v10 setHidden:0];

      v11 = [(CPUINowPlayingView *)self rightTeamArtwork];
      [v11 setHidden:0];

      v12 = [(CPUINowPlayingView *)self leftScoreLabel];
      [v12 setHidden:0];

      v13 = [(CPUINowPlayingView *)self rightScoreLabel];
      [v13 setHidden:0];

      v14 = [(CPUINowPlayingView *)self leftTeamNameLabel];
      [v14 setHidden:0];

      v15 = [(CPUINowPlayingView *)self rightTeamNameLabel];
      [v15 setHidden:0];

      v16 = [(CPUINowPlayingView *)self leftTeamStandingLabel];
      [v16 setHidden:0];

      v17 = [(CPUINowPlayingView *)self rightTeamStandingLabel];
      [v17 setHidden:0];

      v18 = [v5 leftTeamLogo];
      v19 = [v18 imageWithAlignmentRectInsets:{-6.0, -6.0, -6.0, -6.0}];
      [(UIImageView *)self->_leftTeamArtwork setImage:v19];

      v20 = [v5 rightTeamLogo];
      v21 = [v20 imageWithAlignmentRectInsets:{-6.0, -6.0, -6.0, -6.0}];
      [(UIImageView *)self->_rightTeamArtwork setImage:v21];

      -[UIImageView setHidden:](self->_leftFavoriteStar, "setHidden:", [v5 leftTeamFavorite] ^ 1);
      v22 = MEMORY[0x277D74300];
      [(CPUINowPlayingLayoutProtocol *)self->_nowPlayingLayout sportsScoreTextSize];
      v23 = [v22 systemFontOfSize:? weight:? width:?];
      [(UILabel *)self->_leftScoreLabel setFont:v23];

      v24 = [v5 leftTeamScore];
      [(UILabel *)self->_leftScoreLabel setText:v24];

      -[UIImageView setHidden:](self->_rightFavoriteStar, "setHidden:", [v5 rightTeamFavorite] ^ 1);
      v25 = [(UILabel *)self->_leftScoreLabel font];
      [(UILabel *)self->_rightScoreLabel setFont:v25];

      v26 = [v5 rightTeamScore];
      [(UILabel *)self->_rightScoreLabel setText:v26];

      v27 = [v5 leftTeamName];
      [(UILabel *)self->_leftTeamNameLabel setText:v27];

      v28 = [v5 rightTeamName];
      [(UILabel *)self->_rightTeamNameLabel setText:v28];

      v29 = [v5 leftTeamStanding];
      [(UILabel *)self->_leftTeamStandingLabel setText:v29];

      v30 = [v5 rightTeamStanding];
      [(UILabel *)self->_rightTeamStandingLabel setText:v30];

      v31 = [v5 eventStatusImage];
      [(UIImageView *)self->_gameStatusImage setImage:v31];

      v32 = [v5 leftPossessionIndicator];
      v33 = v32;
      if (!v32)
      {
        v33 = [v5 rightPossessionIndicator];
      }

      v34 = [v33 imageWithRenderingMode:2];
      [(UIImageView *)self->_possessionIndicator setImage:v34];

      if (!v32)
      {
      }

      v35 = [(UIImageView *)self->_possessionIndicator image];
      [(UIImageView *)self->_possessionIndicator setHidden:v35 == 0];

      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v36 = [(CPUINowPlayingView *)self titleStackView];
      v37 = [v36 arrangedSubviews];
      v38 = [v37 copy];

      v39 = [v38 countByEnumeratingWithState:&v111 objects:v116 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v112;
        do
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v112 != v41)
            {
              objc_enumerationMutation(v38);
            }

            v43 = *(*(&v111 + 1) + 8 * i);
            v44 = [(CPUINowPlayingView *)self titleStackView];
            [v44 removeArrangedSubview:v43];

            [v43 removeFromSuperview];
          }

          v40 = [v38 countByEnumeratingWithState:&v111 objects:v116 count:16];
        }

        while (v40);
      }

      v45 = [(UIImageView *)self->_gameStatusImage image];

      if (v45)
      {
        v46 = [(CPUINowPlayingView *)self titleStackView];
        [v46 addArrangedSubview:self->_gameStatusImage];
      }

      v47 = objc_alloc(MEMORY[0x277D756B8]);
      v48 = *MEMORY[0x277CBF3A0];
      v49 = *(MEMORY[0x277CBF3A0] + 8);
      v50 = *(MEMORY[0x277CBF3A0] + 16);
      v51 = *(MEMORY[0x277CBF3A0] + 24);
      v52 = [v47 initWithFrame:{*MEMORY[0x277CBF3A0], v49, v50, v51}];
      v53 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76920] weight:*MEMORY[0x277D743F8]];
      [v52 setFont:v53];

      v54 = [MEMORY[0x277D75348] labelColor];
      [v52 setTextColor:v54];

      v55 = [v5 eventStatusText];
      v56 = [v55 firstObject];
      v57 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v58 = [v56 stringByTrimmingCharactersInSet:v57];
      [v52 setText:v58];

      LODWORD(v59) = 1132068864;
      [v52 setContentCompressionResistancePriority:0 forAxis:v59];
      LODWORD(v60) = 1148846080;
      [v52 setContentHuggingPriority:0 forAxis:v60];
      [v5 timer];
      if (v61 <= 0.0)
      {
        [(CPUINowPlayingView *)self _stopGameTimer];
        [v52 setTextAlignment:1];
        v71 = [(CPUINowPlayingView *)self titleStackView];
        [v71 addArrangedSubview:v52];
      }

      else
      {
        [v52 setTextAlignment:2];
        if (!self->_gameTimerLabel)
        {
          v62 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v48, v49, v50, v51}];
          gameTimerLabel = self->_gameTimerLabel;
          self->_gameTimerLabel = v62;

          v64 = [v52 font];
          [(UILabel *)self->_gameTimerLabel setFont:v64];

          v65 = [v52 textColor];
          [(UILabel *)self->_gameTimerLabel setTextColor:v65];

          [(UILabel *)self->_gameTimerLabel setTranslatesAutoresizingMaskIntoConstraints:0];
          [(UILabel *)self->_gameTimerLabel setTextAlignment:4];
          LODWORD(v66) = 1148846080;
          [(UILabel *)self->_gameTimerLabel setContentCompressionResistancePriority:0 forAxis:v66];
          LODWORD(v67) = 1148846080;
          [(UILabel *)self->_gameTimerLabel setContentHuggingPriority:0 forAxis:v67];
        }

        v68 = objc_alloc(MEMORY[0x277D75A68]);
        v69 = self->_gameTimerLabel;
        v115[0] = v52;
        v115[1] = v69;
        v70 = [MEMORY[0x277CBEA60] arrayWithObjects:v115 count:2];
        v71 = [v68 initWithArrangedSubviews:v70];

        [v71 setAxis:0];
        [v71 setDistribution:2];
        [v71 setAlignment:0];
        [v71 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v71 setSpacing:4.0];
        v72 = [(CPUINowPlayingView *)self titleStackView];
        [v72 addArrangedSubview:v71];

        [v5 timer];
        self->_gameTime = v73;
        if ([v5 timerPaused])
        {
          [(CPUINowPlayingView *)self _stopGameTimer];
        }

        else if (!self->_gameTimer)
        {
          v90 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__gameTimerTick_ selector:0 userInfo:1 repeats:1.0];
          gameTimer = self->_gameTimer;
          self->_gameTimer = v90;
        }

        [(CPUINowPlayingView *)self _updateGameTimer];
      }

      v92 = [v5 eventStatusText];
      v93 = [v92 count];

      if (v93 >= 2)
      {
        v94 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v48, v49, v50, v51}];
        v95 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
        [v94 setFont:v95];

        v96 = [MEMORY[0x277D75348] labelColor];
        [v94 setTextColor:v96];

        [v94 setTextAlignment:1];
        v97 = [v5 eventStatusText];
        v98 = [v97 objectAtIndexedSubscript:1];
        [v94 setText:v98];

        [v94 setTranslatesAutoresizingMaskIntoConstraints:0];
        v99 = [(CPUINowPlayingView *)self titleStackView];
        [v99 addArrangedSubview:v94];
      }

      v100 = [v5 eventStatusText];
      v101 = [v100 count];

      if (v101 >= 3)
      {
        v102 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v48, v49, v50, v51}];
        v103 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
        [v102 setFont:v103];

        v104 = [MEMORY[0x277D75348] secondaryLabelColor];
        [v102 setTextColor:v104];

        [v102 setTextAlignment:1];
        v105 = [v5 eventStatusText];
        v106 = [v105 objectAtIndexedSubscript:2];
        [v102 setText:v106];

        v107 = [v102 layer];
        [v107 setAllowsGroupBlending:0];

        v108 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5E8]];
        v109 = [v102 layer];
        [v109 setCompositingFilter:v108];

        [v102 setTranslatesAutoresizingMaskIntoConstraints:0];
        v110 = [(CPUINowPlayingView *)self titleStackView];
        [v110 addArrangedSubview:v102];
      }
    }

    else
    {
      [(CPUINowPlayingView *)self _stopGameTimer];
      v74 = [(CPUINowPlayingView *)self nowPlayingLayout];
      v75 = [v74 showsArtwork];
      v76 = [(CPUINowPlayingView *)self artworkViewBrick];
      [v76 setHidden:v75 ^ 1u];

      v77 = [(CPUINowPlayingView *)self songDetailsView];
      [v77 setHidden:0];

      v78 = [(CPUINowPlayingView *)self titleStackView];
      [v78 setHidden:1];

      v79 = [(CPUINowPlayingView *)self leftFavoriteStar];
      [v79 setHidden:1];

      v80 = [(CPUINowPlayingView *)self rightFavoriteStar];
      [v80 setHidden:1];

      v81 = [(CPUINowPlayingView *)self leftTeamArtwork];
      [v81 setHidden:1];

      v82 = [(CPUINowPlayingView *)self rightTeamArtwork];
      [v82 setHidden:1];

      v83 = [(CPUINowPlayingView *)self leftScoreLabel];
      [v83 setHidden:1];

      v84 = [(CPUINowPlayingView *)self rightScoreLabel];
      [v84 setHidden:1];

      v85 = [(CPUINowPlayingView *)self leftTeamNameLabel];
      [v85 setHidden:1];

      v86 = [(CPUINowPlayingView *)self rightTeamNameLabel];
      [v86 setHidden:1];

      v87 = [(CPUINowPlayingView *)self leftTeamStandingLabel];
      [v87 setHidden:1];

      v88 = [(CPUINowPlayingView *)self rightTeamStandingLabel];
      [v88 setHidden:1];

      v89 = [(CPUINowPlayingView *)self possessionIndicator];
      [v89 setHidden:1];
    }
  }
}

- (void)_updateGameTimer
{
  if (_updateGameTimer_onceToken != -1)
  {
    [CPUINowPlayingView _updateGameTimer];
  }

  v3 = [(CPUINowPlayingView *)self sportsData];
  v4 = [v3 countsUp];

  v5 = -1.0;
  if (v4)
  {
    v5 = 1.0;
  }

  v6 = self->_gameTime + v5;
  self->_gameTime = v6;
  if (v6 <= 3600.0)
  {
    v7 = 192;
  }

  else
  {
    v7 = 224;
  }

  [_updateGameTimer___formatter setAllowedUnits:v7];
  self->_gameTime = fmax(self->_gameTime, 0.0);
  v8 = [_updateGameTimer___formatter stringFromTimeInterval:?];
  v9 = v8;
  gameTime = self->_gameTime;
  if (gameTime >= 600.0)
  {
    if (gameTime >= 60.0)
    {
      goto LABEL_16;
    }

    v14 = v8;
    v12 = [v8 stringByReplacingOccurrencesOfString:@"00:" withString:@"0:"];
    v11 = v14;
    goto LABEL_14;
  }

  v13 = v8;
  v11 = [v8 stringByReplacingOccurrencesOfString:@"00:" withString:@":"];

  if ([v11 hasPrefix:@"0"] && objc_msgSend(v11, "length") >= 2)
  {
    v12 = [v11 substringFromIndex:1];
LABEL_14:

    v9 = v12;
    goto LABEL_16;
  }

  v9 = v11;
LABEL_16:
  v15 = v9;
  [(UILabel *)self->_gameTimerLabel setText:v9];
}

uint64_t __38__CPUINowPlayingView__updateGameTimer__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA958]);
  v1 = _updateGameTimer___formatter;
  _updateGameTimer___formatter = v0;

  [_updateGameTimer___formatter setUnitsStyle:0];
  v2 = _updateGameTimer___formatter;

  return [v2 setZeroFormattingBehavior:0x10000];
}

- (void)willMoveToWindow:(id)a3
{
  if (!a3)
  {
    [(CPUINowPlayingView *)self _stopGameTimer];
  }
}

- (void)willMoveToSuperview:(id)a3
{
  if (!a3)
  {
    [(CPUINowPlayingView *)self _stopGameTimer];
  }
}

- (void)recalculateLayout:(BOOL)a3 allowsAlbumArt:(BOOL)a4 viewArea:(CGRect)a5 safeArea:(CGRect)a6 rightHandDrive:(BOOL)a7 sports:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v14 = a5.size.height;
  v15 = a5.size.width;
  v16 = a5.origin.y;
  v17 = a5.origin.x;
  v18 = a4;
  v41 = [(CPUINowPlayingView *)self nowPlayingLayout];
  v21 = [(CPUINowPlayingView *)self traitCollection];
  [v21 displayScale];
  v28 = CPUINowPlayingLayoutForSafeAreaFrameScaleArtworkSports(v18, x, y, width, height, v17, v16, v15, v14, v9, v8, v22, v23, v24, v25, v26, v27);

  if (a3 || ([v41 isEqual:v28] & 1) == 0)
  {
    objc_storeStrong(&self->_nowPlayingLayout, v28);
    -[CPUIPlayModeControlView setShowsArtwork:](self->_playModeControlView, "setShowsArtwork:", [v28 showsArtwork]);
    -[CPUISongDetailsView setFontStyle:](self->_songDetailsView, "setFontStyle:", [v28 trackInfoFontStyle]);
    [v28 maximumTitleViewSize];
    [(CPUISongDetailsView *)self->_songDetailsView setMaximumTitleViewSize:?];
    [v28 transportControlButtonHeight];
    [(CPUITransportControlView *)self->_transportControlView setButtonHeight:?];
    [v28 transportControlButtonSpacing];
    [(CPUITransportControlView *)self->_transportControlView setButtonSpacing:?];
    v29 = [(CPUIArtworkView *)self->_artworkViewBrick videoPlaybackState];
    v30 = 0;
    if (!v29 && !v8)
    {
      v30 = [v28 showsArtwork] ^ 1;
    }

    [(CPUIArtworkView *)self->_artworkViewBrick setHidden:v30];
    [v28 playModeControlButtonWidth];
    [(CPUIPlayModeControlView *)self->_playModeControlView setButtonWidth:?];
    [v28 playModeControlButtonSpacing];
    [(CPUIPlayModeControlView *)self->_playModeControlView setButtonSpacing:?];
    v31 = MEMORY[0x277CCAAD0];
    v32 = [(CPUINowPlayingView *)self activeConstraints];
    [v31 deactivateConstraints:v32];

    v33 = [(CPUINowPlayingView *)self _constraintsForNowPlayingLayout:v28];
    [(CPUINowPlayingView *)self setActiveConstraints:v33];

    v34 = MEMORY[0x277CCAAD0];
    v35 = [(CPUINowPlayingView *)self activeConstraints];
    [v34 activateConstraints:v35];
  }

  if (([v41 artworkPosition] == 3 || objc_msgSend(v41, "artworkPosition") == 2) && objc_msgSend(v41, "playModeControlButtonsFullWidth"))
  {
    v36 = [(CPUINowPlayingView *)self songDetailsView];
    v37 = [v36 artistLabel];
    v38 = *MEMORY[0x277D76828];
    [v37 setMaximumContentSizeCategory:*MEMORY[0x277D76828]];

    v39 = [(CPUINowPlayingView *)self songDetailsView];
    v40 = [v39 albumArtistLabelButton];
    [v40 setMaximumContentSizeCategory:v38];
  }
}

- (id)_equalHeightVerticalSpacers:(unint64_t)a3 minimumPadding:(double)a4 maximumPadding:(double)a5
{
  v9 = [MEMORY[0x277CBEB18] array];
  if (a3)
  {
    v10 = -1;
    do
    {
      v11 = objc_opt_new();
      [(CPUINowPlayingView *)self addLayoutGuide:v11];
      [v9 addObject:v11];
      if (a4 > 0.0)
      {
        v12 = [v11 heightAnchor];
        v13 = [v12 constraintGreaterThanOrEqualToConstant:a4];

        [v13 setActive:1];
      }

      if (a5 > 0.0)
      {
        v14 = [v11 heightAnchor];
        v15 = [v14 constraintLessThanOrEqualToConstant:a5];

        [v15 setActive:1];
      }

      v16 = v10 + 1;
      if (v10 != -1)
      {
        v17 = [v11 heightAnchor];
        v18 = [v9 objectAtIndexedSubscript:v10];
        v19 = [v18 heightAnchor];
        v20 = [v17 constraintEqualToAnchor:v19];

        [v20 setActive:1];
      }

      v10 = v16;
      --a3;
    }

    while (a3);
  }

  return v9;
}

- (id)_constraintsForNowPlayingLayout:(id)a3
{
  v710[10] = *MEMORY[0x277D85DE8];
  v685 = objc_opt_new();
  v682 = [(CPUINowPlayingView *)self nowPlayingLayout];
  [v682 layoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(CPUINowPlayingView *)self safeAreaLayoutGuide];
  v13 = [(CPUINowPlayingView *)self verticalSpacerLayoutGuides];
  v14 = [v13 count];

  if (v14)
  {
    v15 = [(CPUINowPlayingView *)self verticalSpacerLayoutGuides];
    v686[0] = MEMORY[0x277D85DD0];
    v686[1] = 3221225472;
    v686[2] = __54__CPUINowPlayingView__constraintsForNowPlayingLayout___block_invoke;
    v686[3] = &unk_278D9C810;
    v686[4] = self;
    [v15 enumerateObjectsUsingBlock:v686];
  }

  v680 = [MEMORY[0x277CBEB18] array];
  v668 = [(UIFocusContainerGuide *)self->_controlsFocusContainerGuide topAnchor];
  v655 = [(CPUIProgressView *)v12 topAnchor];
  v642 = [v668 constraintEqualToAnchor:v655];
  v710[0] = v642;
  v629 = [(UIFocusContainerGuide *)self->_controlsFocusContainerGuide bottomAnchor];
  v614 = [(CPUIProgressView *)v12 bottomAnchor];
  v599 = [v629 constraintEqualToAnchor:v614];
  v710[1] = v599;
  v584 = [(UIFocusContainerGuide *)self->_controlsFocusContainerGuide leadingAnchor];
  v569 = [(CPUIProgressView *)v12 leadingAnchor];
  v554 = [v584 constraintEqualToAnchor:v569];
  v710[2] = v554;
  v539 = [(UIFocusContainerGuide *)self->_controlsFocusContainerGuide trailingAnchor];
  v525 = [(CPUIProgressView *)v12 trailingAnchor];
  v511 = [v539 constraintEqualToAnchor:v525];
  v710[3] = v511;
  v497 = [(CPUIProgressView *)self->_progressView heightAnchor];
  v483 = [v497 constraintEqualToConstant:14.0];
  v710[4] = v483;
  v469 = [(CPUIPlayModeControlView *)self->_playModeControlView heightAnchor];
  v455 = [v469 constraintEqualToConstant:28.0];
  v710[5] = v455;
  v441 = [(UIFocusContainerGuide *)self->_bottomRegionFocusContainerGuide leadingAnchor];
  v429 = [(CPUIProgressView *)v12 leadingAnchor];
  v16 = [v441 constraintEqualToAnchor:v429];
  v710[6] = v16;
  v17 = [(UIFocusContainerGuide *)self->_bottomRegionFocusContainerGuide trailingAnchor];
  v18 = [(CPUIProgressView *)v12 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  v710[7] = v19;
  v20 = [(UIFocusContainerGuide *)self->_bottomRegionFocusContainerGuide bottomAnchor];
  v683 = v12;
  v21 = [(CPUIProgressView *)v12 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  v710[8] = v22;
  v23 = [(UIFocusContainerGuide *)self->_bottomRegionFocusContainerGuide heightAnchor];
  v24 = [v23 constraintEqualToConstant:28.0];
  v710[9] = v24;
  [MEMORY[0x277CBEA60] arrayWithObjects:v710 count:10];
  v25 = v684 = self;
  [v685 addObjectsFromArray:v25];

  v26 = v684;
  v27 = v682;
  if (([v682 isSportsLayout] & 1) == 0)
  {
    +[CPUISongDetailsView maximumHeightForTrackInfoFontStyle:](CPUISongDetailsView, "maximumHeightForTrackInfoFontStyle:", [v682 trackInfoFontStyle]);
    v29 = v28;
    [v682 maximumTitleViewSize];
    if (v29 >= v30)
    {
      v29 = v30;
    }

    v31 = [(CPUISongDetailsView *)v684->_songDetailsView heightAnchor];
    v32 = [v31 constraintLessThanOrEqualToConstant:v29];
    [v685 addObject:v32];
  }

  if ([v682 isSportsLayout])
  {
    v33 = [v682 artworkPosition];
    v34 = [(UIImageView *)v684->_leftTeamArtwork leftAnchor];
    v35 = [(CPUIProgressView *)v683 leftAnchor];
    v669 = v35;
    v630 = v34;
    if (v33 == 1)
    {
      v615 = [v34 constraintEqualToAnchor:v35 constant:v7 + 14.0];
      v709[0] = v615;
      v600 = [(UIImageView *)v684->_rightTeamArtwork rightAnchor];
      v585 = [(CPUIProgressView *)v683 rightAnchor];
      v570 = [v600 constraintEqualToAnchor:v585 constant:-(v11 + 14.0)];
      v709[1] = v570;
      v555 = [(UIImageView *)v684->_rightTeamArtwork centerYAnchor];
      v540 = [(UIImageView *)v684->_leftTeamArtwork centerYAnchor];
      v526 = [v555 constraintEqualToAnchor:v540];
      v709[2] = v526;
      v512 = [(UILabel *)v684->_leftScoreLabel centerXAnchor];
      v498 = [(UIImageView *)v684->_leftTeamArtwork centerXAnchor];
      v484 = [v512 constraintEqualToAnchor:v498];
      v709[3] = v484;
      v470 = [(UILabel *)v684->_rightScoreLabel centerXAnchor];
      v456 = [(UIImageView *)v684->_rightTeamArtwork centerXAnchor];
      v442 = [v470 constraintEqualToAnchor:v456];
      v709[4] = v442;
      v430 = [(UIImageView *)v684->_leftFavoriteStar centerYAnchor];
      v418 = [(UIImageView *)v684->_leftTeamArtwork centerYAnchor];
      v407 = [v430 constraintEqualToAnchor:v418];
      v709[5] = v407;
      v36 = [(UIImageView *)v684->_leftFavoriteStar rightAnchor];
      v37 = [(UIImageView *)v684->_leftTeamArtwork leftAnchor];
      v38 = [v36 constraintEqualToAnchor:v37];
      v709[6] = v38;
      v39 = [(UIImageView *)v684->_rightFavoriteStar centerYAnchor];
      v40 = [(UIImageView *)v684->_rightTeamArtwork centerYAnchor];
      v41 = [v39 constraintEqualToAnchor:v40];
      v709[7] = v41;
      v42 = [(UIImageView *)v684->_rightFavoriteStar leftAnchor];
      v43 = [(UIImageView *)v684->_rightTeamArtwork rightAnchor];
      v44 = [v42 constraintEqualToAnchor:v43];
      v709[8] = v44;
      v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v709 count:9];
      [v685 addObjectsFromArray:v45];

      p_isa = &v684->super.super.super.isa;
      v47 = [(CPUINowPlayingView *)v684 sportsData];
      v48 = [v47 leftPossessionIndicator];

      v49 = [(UIImageView *)v684->_possessionIndicator centerYAnchor];
      if (v48)
      {
        v50 = [(UILabel *)v684->_leftScoreLabel centerYAnchor];
        v51 = [v49 constraintEqualToAnchor:v50];
        v708[0] = v51;
        v52 = [(UIImageView *)v684->_possessionIndicator rightAnchor];
        v53 = [(UILabel *)v684->_leftScoreLabel leftAnchor];
        v54 = [v52 constraintEqualToAnchor:v53 constant:-2.0];
        v708[1] = v54;
        v55 = v708;
      }

      else
      {
        v50 = [(UILabel *)v684->_rightScoreLabel centerYAnchor];
        v51 = [v49 constraintEqualToAnchor:v50];
        v707[0] = v51;
        v52 = [(UIImageView *)v684->_possessionIndicator leftAnchor];
        v53 = [(UILabel *)v684->_rightScoreLabel rightAnchor];
        v54 = [v52 constraintEqualToAnchor:v53 constant:2.0];
        v707[1] = v54;
        v55 = v707;
      }
    }

    else
    {
      v617 = [v34 constraintEqualToAnchor:v35 constant:v7];
      v706[0] = v617;
      v602 = [(UIImageView *)v684->_leftTeamArtwork topAnchor];
      v587 = [(CPUIProgressView *)v683 topAnchor];
      v572 = [v602 constraintEqualToAnchor:v587 constant:v5];
      v706[1] = v572;
      v557 = [(UIImageView *)v684->_rightTeamArtwork topAnchor];
      v542 = [(UIImageView *)v684->_leftTeamArtwork topAnchor];
      v528 = [v557 constraintEqualToAnchor:v542];
      v706[2] = v528;
      v514 = [(UIImageView *)v684->_rightTeamArtwork rightAnchor];
      v500 = [(CPUIProgressView *)v683 rightAnchor];
      v486 = [v514 constraintEqualToAnchor:v500 constant:-v11];
      v706[3] = v486;
      v458 = [(UILabel *)v684->_leftScoreLabel leftAnchor];
      v472 = [(CPUITransportControlView *)v684->_transportControlView leftButton];
      v444 = [v472 leftAnchor];
      v432 = [v458 constraintEqualToAnchor:v444];
      v706[4] = v432;
      v409 = [(UILabel *)v684->_leftScoreLabel rightAnchor];
      v420 = [(CPUITransportControlView *)v684->_transportControlView leftButton];
      v399 = [v420 rightAnchor];
      v395 = [v409 constraintEqualToAnchor:v399];
      v706[5] = v395;
      v388 = [(UILabel *)v684->_leftScoreLabel topAnchor];
      v381 = [(UIImageView *)v684->_leftTeamArtwork topAnchor];
      v375 = [v388 constraintEqualToAnchor:v381];
      v706[6] = v375;
      v364 = [(UILabel *)v684->_rightScoreLabel leftAnchor];
      v369 = [(CPUITransportControlView *)v684->_transportControlView fastForwardButton];
      v359 = [v369 leftAnchor];
      v354 = [v364 constraintEqualToAnchor:v359];
      v706[7] = v354;
      v344 = [(UILabel *)v684->_rightScoreLabel rightAnchor];
      v349 = [(CPUITransportControlView *)v684->_transportControlView fastForwardButton];
      v339 = [v349 rightAnchor];
      v334 = [v344 constraintEqualToAnchor:v339];
      v706[8] = v334;
      v330 = [(UIImageView *)v684->_leftFavoriteStar rightAnchor];
      v327 = [(UIImageView *)v684->_leftTeamArtwork leftAnchor];
      v324 = [v330 constraintEqualToAnchor:v327 constant:4.0];
      v706[9] = v324;
      v68 = [(UIImageView *)v684->_leftFavoriteStar centerYAnchor];
      v69 = [(UIImageView *)v684->_leftTeamArtwork centerYAnchor];
      v70 = [v68 constraintEqualToAnchor:v69];
      v706[10] = v70;
      v71 = [(UIImageView *)v684->_rightFavoriteStar leftAnchor];
      v72 = [(UIImageView *)v684->_rightTeamArtwork rightAnchor];
      v73 = [v71 constraintEqualToAnchor:v72 constant:-4.0];
      v706[11] = v73;
      v74 = [(UIImageView *)v684->_rightFavoriteStar centerYAnchor];
      v75 = [(UIImageView *)v684->_rightTeamArtwork centerYAnchor];
      v76 = [v74 constraintEqualToAnchor:v75];
      v706[12] = v76;
      v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v706 count:13];
      [v685 addObjectsFromArray:v77];

      p_isa = &v684->super.super.super.isa;
      v78 = [(CPUINowPlayingView *)v684 sportsData];
      v79 = [v78 leftPossessionIndicator];

      v49 = [(UIImageView *)v684->_possessionIndicator centerXAnchor];
      if (v79)
      {
        v50 = [(UILabel *)v684->_leftScoreLabel centerXAnchor];
        v51 = [v49 constraintEqualToAnchor:v50];
        v705[0] = v51;
        v52 = [(UIImageView *)v684->_possessionIndicator topAnchor];
        v53 = [(UILabel *)v684->_leftScoreLabel bottomAnchor];
        v54 = [v52 constraintEqualToAnchor:v53 constant:-6.0];
        v705[1] = v54;
        v55 = v705;
      }

      else
      {
        v50 = [(UILabel *)v684->_rightScoreLabel centerXAnchor];
        v51 = [v49 constraintEqualToAnchor:v50];
        v704[0] = v51;
        v52 = [(UIImageView *)v684->_possessionIndicator topAnchor];
        v53 = [(UILabel *)v684->_rightScoreLabel bottomAnchor];
        v54 = [v52 constraintEqualToAnchor:v53 constant:-6.0];
        v704[1] = v54;
        v55 = v704;
      }
    }

    v80 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
    [v685 addObjectsFromArray:v80];

    v671 = [p_isa[67] widthAnchor];
    v632 = [p_isa widthAnchor];
    [v682 albumArtWidthMultiplier];
    v618 = [v671 constraintEqualToAnchor:v632 multiplier:?];
    v703[0] = v618;
    v603 = [p_isa[67] heightAnchor];
    v588 = [p_isa[67] widthAnchor];
    v573 = [v603 constraintEqualToAnchor:v588];
    v703[1] = v573;
    v558 = [p_isa[68] widthAnchor];
    v543 = [p_isa widthAnchor];
    [v682 albumArtWidthMultiplier];
    v529 = [v558 constraintEqualToAnchor:v543 multiplier:?];
    v703[2] = v529;
    v515 = [p_isa[68] heightAnchor];
    v501 = [p_isa[68] widthAnchor];
    v487 = [v515 constraintEqualToAnchor:v501];
    v703[3] = v487;
    v473 = [p_isa[72] centerYAnchor];
    v459 = [p_isa[71] centerYAnchor];
    v445 = [v473 constraintEqualToAnchor:v459];
    v703[4] = v445;
    v433 = [p_isa[55] bottomAnchor];
    v421 = [(CPUIProgressView *)v683 bottomAnchor];
    v410 = [v433 constraintEqualToAnchor:v421 constant:-v9];
    v703[5] = v410;
    v400 = [p_isa[69] heightAnchor];
    v394 = [v400 constraintEqualToConstant:15.0];
    v703[6] = v394;
    v389 = [p_isa[69] widthAnchor];
    v382 = [p_isa[69] heightAnchor];
    v376 = [v389 constraintEqualToAnchor:v382];
    v703[7] = v376;
    v370 = [p_isa[70] heightAnchor];
    v365 = [v370 constraintEqualToConstant:15.0];
    v703[8] = v365;
    v360 = [p_isa[70] widthAnchor];
    v644 = [p_isa[70] heightAnchor];
    v355 = [v360 constraintEqualToAnchor:v644];
    v703[9] = v355;
    v350 = [p_isa[73] leftAnchor];
    v345 = [p_isa[67] leftAnchor];
    v340 = [v350 constraintEqualToAnchor:v345];
    v703[10] = v340;
    v335 = [p_isa[73] rightAnchor];
    v331 = [p_isa[67] rightAnchor];
    v328 = [v335 constraintEqualToAnchor:v331];
    v703[11] = v328;
    v325 = [p_isa[73] topAnchor];
    v657 = [p_isa[67] bottomAnchor];
    v322 = [v325 constraintEqualToAnchor:v657 constant:6.0];
    v703[12] = v322;
    v320 = [p_isa[75] leftAnchor];
    v318 = [p_isa[73] leftAnchor];
    v316 = [v320 constraintEqualToAnchor:v318];
    v703[13] = v316;
    v314 = [p_isa[75] rightAnchor];
    v313 = [p_isa[73] rightAnchor];
    v312 = [v314 constraintEqualToAnchor:v313];
    v703[14] = v312;
    v311 = [p_isa[75] topAnchor];
    v310 = [p_isa[73] bottomAnchor];
    v309 = [v311 constraintEqualToAnchor:v310];
    v703[15] = v309;
    v308 = [p_isa[74] leftAnchor];
    v307 = [p_isa[68] leftAnchor];
    v306 = [v308 constraintEqualToAnchor:v307];
    v703[16] = v306;
    v305 = [p_isa[74] rightAnchor];
    v304 = [p_isa[68] rightAnchor];
    v303 = [v305 constraintEqualToAnchor:v304];
    v703[17] = v303;
    v302 = [p_isa[74] topAnchor];
    v301 = [p_isa[68] bottomAnchor];
    v300 = [v302 constraintEqualToAnchor:v301 constant:6.0];
    v703[18] = v300;
    v299 = [p_isa[76] leftAnchor];
    v298 = [p_isa[74] leftAnchor];
    v297 = [v299 constraintEqualToAnchor:v298];
    v703[19] = v297;
    v296 = [p_isa[76] rightAnchor];
    v295 = [p_isa[74] rightAnchor];
    v294 = [v296 constraintEqualToAnchor:v295];
    v703[20] = v294;
    v293 = [p_isa[76] topAnchor];
    v292 = [p_isa[74] bottomAnchor];
    [v293 constraintEqualToAnchor:v292];
    v82 = v81 = p_isa;
    v703[21] = v82;
    v83 = [v81[77] widthAnchor];
    v84 = [v83 constraintEqualToConstant:12.0];
    v703[22] = v84;
    v85 = [v81[77] heightAnchor];
    v86 = [v85 constraintEqualToConstant:12.0];
    v703[23] = v86;
    v87 = [v81[78] widthAnchor];
    v88 = [v87 constraintLessThanOrEqualToConstant:20.0];
    v703[24] = v88;
    v89 = [v81[78] heightAnchor];
    v90 = [v89 constraintLessThanOrEqualToConstant:20.0];
    v703[25] = v90;
    v91 = [MEMORY[0x277CBEA60] arrayWithObjects:v703 count:26];
    [v685 addObjectsFromArray:v91];

    v58 = v671;
    v92 = v632;
    goto LABEL_22;
  }

  progressView = v683;
  if ([v682 showsArtwork] && objc_msgSend(v682, "artworkPosition") != 1)
  {
    v57 = [v682 verticalCenteringContent];
    if (v57)
    {
      if (v57 != 1)
      {
        if (v57 != 2)
        {
          goto LABEL_24;
        }

        v58 = [(CPUINowPlayingView *)v684 _equalHeightVerticalSpacers:3 minimumPadding:6.0 maximumPadding:0.0];
        v670 = [(CPUIArtworkView *)v684->_artworkViewBrick centerYAnchor];
        v656 = [(CPUIProgressView *)v683 centerYAnchor];
        v643 = [v670 constraintEqualToAnchor:v656 constant:-2.0];
        v702[0] = v643;
        v631 = [(CPUISongDetailsView *)v684->_songDetailsView topAnchor];
        v616 = [(CPUIArtworkView *)v684->_artworkViewBrick topAnchor];
        v601 = [v631 constraintEqualToAnchor:v616];
        v702[1] = v601;
        v586 = [(CPUIPlayModeControlView *)v684->_playModeControlView bottomAnchor];
        v571 = [(CPUIArtworkView *)v684->_artworkViewBrick bottomAnchor];
        v556 = [v586 constraintEqualToAnchor:v571];
        v702[2] = v556;
        v541 = [v58 objectAtIndexedSubscript:0];
        v527 = [v541 topAnchor];
        v513 = [(CPUISongDetailsView *)v684->_songDetailsView bottomAnchor];
        v499 = [v527 constraintEqualToAnchor:v513];
        v702[3] = v499;
        v485 = [v58 objectAtIndexedSubscript:0];
        v471 = [v485 bottomAnchor];
        v457 = [(CPUITransportControlView *)v684->_transportControlView topAnchor];
        v443 = [v471 constraintEqualToAnchor:v457];
        v702[4] = v443;
        v431 = [v58 objectAtIndexedSubscript:1];
        v419 = [v431 topAnchor];
        v408 = [(CPUITransportControlView *)v684->_transportControlView bottomAnchor];
        v398 = [v419 constraintEqualToAnchor:v408];
        v702[5] = v398;
        v394 = [v58 objectAtIndexedSubscript:1];
        v387 = [v394 bottomAnchor];
        v380 = [(CPUIProgressView *)v684->_progressView topAnchor];
        v374 = [v387 constraintEqualToAnchor:v380];
        v702[6] = v374;
        v59 = [v58 objectAtIndexedSubscript:2];
        v60 = [v59 topAnchor];
        v61 = [(CPUIProgressView *)v684->_progressView bottomAnchor];
        v62 = [v60 constraintEqualToAnchor:v61];
        v702[7] = v62;
        v63 = [v58 objectAtIndexedSubscript:2];
        v64 = [v63 bottomAnchor];
        v65 = [(CPUIPlayModeControlView *)v684->_playModeControlView topAnchor];
        v66 = [v64 constraintEqualToAnchor:v65];
        v702[8] = v66;
        v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v702 count:9];
        [v685 addObjectsFromArray:v67];

        [v680 addObjectsFromArray:v58];
        goto LABEL_23;
      }

      v267 = [(CPUINowPlayingView *)v684 _equalHeightVerticalSpacers:2 minimumPadding:0.0 maximumPadding:0.0];
      [v680 addObjectsFromArray:v267];
      v268 = objc_opt_new();
      [(CPUINowPlayingView *)v684 addLayoutGuide:v268];
      [v680 addObject:v268];
      v269 = objc_opt_new();
      [(CPUINowPlayingView *)v684 addLayoutGuide:v269];
      [v680 addObject:v269];
      v666 = [v269 topAnchor];
      v653 = [(CPUIProgressView *)v683 topAnchor];
      [v666 constraintEqualToAnchor:v653];
      v640 = v627 = v269;
      v701[0] = v640;
      v612 = [v269 bottomAnchor];
      v597 = [(CPUIProgressView *)v684->_progressView topAnchor];
      v582 = [v612 constraintEqualToAnchor:v597];
      v701[1] = v582;
      v567 = [(CPUIArtworkView *)v684->_artworkViewBrick centerYAnchor];
      v552 = [v269 centerYAnchor];
      v537 = [v567 constraintEqualToAnchor:v552];
      v701[2] = v537;
      v523 = [v267 objectAtIndexedSubscript:0];
      v509 = [v523 topAnchor];
      v495 = [(CPUIArtworkView *)v684->_artworkViewBrick topAnchor];
      v481 = [v509 constraintEqualToAnchor:v495];
      v701[3] = v481;
      v467 = [v267 objectAtIndexedSubscript:0];
      v453 = [v467 bottomAnchor];
      v439 = [(CPUISongDetailsView *)v684->_songDetailsView topAnchor];
      v427 = [v453 constraintEqualToAnchor:v439];
      v701[4] = v427;
      v678 = v267;
      v416 = [v267 objectAtIndexedSubscript:1];
      v394 = [v416 topAnchor];
      v392 = [(CPUITransportControlView *)v684->_transportControlView bottomAnchor];
      v385 = [v394 constraintEqualToAnchor:v392];
      v701[5] = v385;
      v379 = [v267 objectAtIndexedSubscript:1];
      v373 = [v379 bottomAnchor];
      v368 = [(CPUIArtworkView *)v684->_artworkViewBrick bottomAnchor];
      v363 = [v373 constraintEqualToAnchor:v368];
      v701[6] = v363;
      v358 = [v268 topAnchor];
      v353 = [(CPUISongDetailsView *)v684->_songDetailsView bottomAnchor];
      v348 = [v358 constraintEqualToAnchor:v353];
      v701[7] = v348;
      v405 = v268;
      v343 = [v268 bottomAnchor];
      v338 = [(CPUITransportControlView *)v684->_transportControlView topAnchor];
      v270 = [v343 constraintEqualToAnchor:v338];
      v701[8] = v270;
      v271 = [v268 heightAnchor];
      v272 = [v271 constraintLessThanOrEqualToConstant:12.0];
      v701[9] = v272;
      v273 = [(CPUIPlayModeControlView *)v684->_playModeControlView bottomAnchor];
      v274 = [(CPUIProgressView *)v683 bottomAnchor];
      v275 = [v273 constraintEqualToAnchor:v274 constant:-v9];
      v701[10] = v275;
      v276 = [(CPUIProgressView *)v684->_progressView bottomAnchor];
      v277 = [(CPUIPlayModeControlView *)v684->_playModeControlView topAnchor];
      v278 = [v276 constraintEqualToAnchor:v277 constant:-6.0];
      v701[11] = v278;
      v279 = [MEMORY[0x277CBEA60] arrayWithObjects:v701 count:12];
      [v685 addObjectsFromArray:v279];

      v58 = v678;
      v92 = v405;
    }

    else
    {
      v280 = [(CPUINowPlayingView *)v684 _equalHeightVerticalSpacers:2 minimumPadding:0.0 maximumPadding:0.0];
      [v680 addObjectsFromArray:?];
      v281 = objc_opt_new();
      [(CPUINowPlayingView *)v684 addLayoutGuide:v281];
      [v680 addObject:v281];
      v679 = [(CPUIPlayModeControlView *)v684->_playModeControlView bottomAnchor];
      v667 = [(CPUIProgressView *)v683 bottomAnchor];
      v654 = [v679 constraintEqualToAnchor:v667 constant:-v9];
      v700[0] = v654;
      v641 = [(CPUIProgressView *)v684->_progressView bottomAnchor];
      v628 = [(CPUIPlayModeControlView *)v684->_playModeControlView topAnchor];
      v613 = [v641 constraintEqualToAnchor:v628 constant:-6.0];
      v700[1] = v613;
      v598 = [v281 topAnchor];
      v568 = [(CPUISongDetailsView *)v684->_songDetailsView bottomAnchor];
      v553 = [v598 constraintEqualToAnchor:v568];
      v700[2] = v553;
      v583 = v281;
      v538 = [v281 bottomAnchor];
      v524 = [(CPUIProgressView *)v684->_progressView topAnchor];
      v510 = [v538 constraintEqualToAnchor:v524];
      v700[3] = v510;
      v496 = [(CPUITransportControlView *)v684->_transportControlView centerYAnchor];
      v482 = [v281 centerYAnchor];
      v468 = [v496 constraintEqualToAnchor:v482];
      v700[4] = v468;
      v454 = [v280 objectAtIndexedSubscript:0];
      v440 = [v454 topAnchor];
      v428 = [(CPUIProgressView *)v683 topAnchor];
      v417 = [v440 constraintEqualToAnchor:v428 constant:v5];
      v700[5] = v417;
      v282 = v280;
      v406 = [v280 objectAtIndexedSubscript:0];
      v394 = [v406 bottomAnchor];
      v393 = [(CPUISongDetailsView *)v684->_songDetailsView topAnchor];
      v386 = [v394 constraintEqualToAnchor:v393];
      v700[6] = v386;
      v283 = [v280 objectAtIndexedSubscript:1];
      v284 = [v283 topAnchor];
      v285 = [(CPUIArtworkView *)v684->_artworkViewBrick bottomAnchor];
      v286 = [v284 constraintEqualToAnchor:v285];
      v700[7] = v286;
      v287 = [v280 objectAtIndexedSubscript:1];
      v288 = [v287 bottomAnchor];
      v289 = [(CPUIProgressView *)v684->_progressView topAnchor];
      v290 = [v288 constraintEqualToAnchor:v289];
      v700[8] = v290;
      v291 = [MEMORY[0x277CBEA60] arrayWithObjects:v700 count:9];
      [v685 addObjectsFromArray:v291];

      v58 = v282;
      v92 = v583;
    }

LABEL_22:

LABEL_23:
    v26 = v684;
    v27 = v682;
    progressView = v683;
  }

LABEL_24:
  if ([v27 isSportsLayout])
  {
    goto LABEL_33;
  }

  if ([v27 showsArtwork])
  {
    v93 = [(CPUIArtworkView *)v26->_artworkViewBrick widthAnchor];
    v94 = [(CPUINowPlayingView *)v26 widthAnchor];
    [v27 albumArtWidthMultiplier];
    v95 = [v93 constraintEqualToAnchor:v94 multiplier:?];
    v699[0] = v95;
    v96 = [(CPUIArtworkView *)v26->_artworkViewBrick heightAnchor];
    v97 = [(CPUIArtworkView *)v26->_artworkViewBrick widthAnchor];
    v98 = [v96 constraintEqualToAnchor:v97];
    v699[1] = v98;
    v99 = [MEMORY[0x277CBEA60] arrayWithObjects:v699 count:2];
    [v685 addObjectsFromArray:v99];
LABEL_29:

    progressView = v683;
    goto LABEL_30;
  }

  [(CPUINowPlayingView *)v26 frame];
  v101 = v100;
  [(CPUINowPlayingView *)v26 frame];
  if (v101 < v102)
  {
    v93 = [(CPUINowPlayingView *)v26 _equalHeightVerticalSpacers:2 minimumPadding:6.0 maximumPadding:12.0];
    [v680 addObjectsFromArray:v93];
    v645 = [v93 objectAtIndexedSubscript:0];
    v633 = [v645 topAnchor];
    v589 = [(CPUIProgressView *)progressView topAnchor];
    v559 = [v633 constraintEqualToAnchor:v589];
    v698[0] = v559;
    v98 = [(CPUISongDetailsView *)v26->_songDetailsView topAnchor];
    [v93 objectAtIndexedSubscript:0];
    v99 = v103 = progressView;
    v672 = [v99 bottomAnchor];
    v658 = [v98 constraintEqualToAnchor:v672];
    v698[1] = v658;
    v619 = [(CPUITransportControlView *)v26->_transportControlView topAnchor];
    v604 = [(CPUISongDetailsView *)v26->_songDetailsView bottomAnchor];
    v574 = [v619 constraintEqualToAnchor:v604 constant:6.0];
    v698[2] = v574;
    v544 = [(CPUIProgressView *)v26->_progressView topAnchor];
    v530 = [(CPUITransportControlView *)v26->_transportControlView bottomAnchor];
    v516 = [v544 constraintEqualToAnchor:v530 constant:12.0];
    v698[3] = v516;
    v502 = [(CPUIPlayModeControlView *)v26->_playModeControlView topAnchor];
    v488 = [(CPUIProgressView *)v26->_progressView bottomAnchor];
    v474 = [v502 constraintEqualToAnchor:v488 constant:12.0];
    v698[4] = v474;
    v446 = [(CPUIPlayModeControlView *)v26->_playModeControlView bottomAnchor];
    v460 = [v93 objectAtIndexedSubscript:1];
    v104 = [v460 topAnchor];
    v105 = [v446 constraintEqualToAnchor:v104];
    v698[5] = v105;
    v106 = [v93 objectAtIndexedSubscript:1];
    v107 = [v106 bottomAnchor];
    v108 = [(CPUIProgressView *)v103 bottomAnchor];
    v109 = [v107 constraintEqualToAnchor:v108];
    v698[6] = v109;
    v110 = [MEMORY[0x277CBEA60] arrayWithObjects:v698 count:7];
    [v685 addObjectsFromArray:v110];

    v97 = v559;
    v96 = v589;

    v26 = v684;
    v95 = v633;

    v94 = v645;
    v27 = v682;

    goto LABEL_29;
  }

LABEL_30:
  if ([v27 showsArtwork] && objc_msgSend(v27, "artworkPosition") != 1)
  {
    v111 = [(CPUISongDetailsView *)v26->_songDetailsView topAnchor];
    v112 = [(CPUIArtworkView *)v26->_artworkViewBrick topAnchor];
    v113 = [v111 constraintEqualToAnchor:v112];
    [v685 addObject:v113];
  }

LABEL_33:
  v114 = [v27 artworkPosition];
  if (v114 < 2)
  {
    v134 = [(CPUITransportControlView *)v26->_transportControlView rightAnchor];
    [(CPUIProgressView *)progressView rightAnchor];
    v660 = v135 = -v11;
    v674 = v134;
    v647 = [v134 constraintEqualToAnchor:v135 constant:?];
    v697[0] = v647;
    v136 = [(CPUITransportControlView *)v26->_transportControlView leftAnchor];
    v621 = [(CPUIProgressView *)progressView leftAnchor];
    v635 = v136;
    v606 = [v136 constraintEqualToAnchor:v7 constant:?];
    v697[1] = v606;
    v137 = [(CPUIProgressView *)v26->_progressView rightAnchor];
    v576 = [(CPUIProgressView *)progressView rightAnchor];
    v591 = v137;
    v561 = [v137 constraintEqualToAnchor:v135 constant:?];
    v697[2] = v561;
    v138 = [(CPUIProgressView *)v26->_progressView leftAnchor];
    v139 = [(CPUIProgressView *)progressView leftAnchor];
    v546 = v138;
    v140 = [v138 constraintEqualToAnchor:v139 constant:v7];
    v697[3] = v140;
    v141 = [(CPUIPlayModeControlView *)v26->_playModeControlView leftAnchor];
    v142 = [(CPUIProgressView *)progressView leftAnchor];
    v143 = [v141 constraintEqualToAnchor:v142 constant:v7];
    v697[4] = v143;
    v144 = [(CPUIPlayModeControlView *)v26->_playModeControlView rightAnchor];
    if (([v27 playModeControlButtonsFullWidth] & 1) == 0)
    {
      progressView = v26->_progressView;
    }

    v145 = [(CPUIProgressView *)progressView rightAnchor];
    v27 = v682;
    v146 = [v682 playModeControlButtonsFullWidth];
    v147 = 0.0;
    if (v146)
    {
      v147 = v135;
    }

    v148 = [v144 constraintEqualToAnchor:v145 constant:v147];
    v697[5] = v148;
    v149 = [MEMORY[0x277CBEA60] arrayWithObjects:v697 count:6];
    [v685 addObjectsFromArray:v149];

    if (![v682 isSportsLayout])
    {
      v26 = v684;
      v167 = [(CPUISongDetailsView *)v684->_songDetailsView rightAnchor];
      v168 = [(CPUITransportControlView *)v684->_transportControlView rightAnchor];
      v169 = [v167 constraintEqualToAnchor:v168];
      v695[0] = v169;
      v170 = [(CPUISongDetailsView *)v684->_songDetailsView leftAnchor];
      v171 = [(CPUIProgressView *)v683 leftAnchor];
      v172 = [v170 constraintEqualToAnchor:v171 constant:v7];
      v695[1] = v172;
      v173 = [MEMORY[0x277CBEA60] arrayWithObjects:v695 count:2];
      [v685 addObjectsFromArray:v173];

      if ([v682 showsArtwork])
      {
        v150 = [(CPUIArtworkView *)v684->_artworkViewBrick centerXAnchor];
        progressView = v683;
        v159 = [(CPUIProgressView *)v683 centerXAnchor];
        v158 = [v150 constraintEqualToAnchor:v159];
        v694 = v158;
        v174 = MEMORY[0x277CBEA60];
        v175 = &v694;
      }

      else
      {
        v150 = [(CPUISongDetailsView *)v684->_songDetailsView topAnchor];
        progressView = v683;
        v159 = [(CPUIProgressView *)v683 topAnchor];
        v158 = [v150 constraintEqualToAnchor:v159 constant:v5];
        v693 = v158;
        v174 = MEMORY[0x277CBEA60];
        v175 = &v693;
      }

      v157 = [v174 arrayWithObjects:v175 count:1];
      v115 = v685;
      [v685 addObjectsFromArray:v157];
      goto LABEL_82;
    }

    v26 = v684;
    v150 = [(UIStackView *)v684->_titleStackView centerYAnchor];
    v675 = [(UILabel *)v684->_leftScoreLabel centerYAnchor];
    v661 = [v150 constraintEqualToAnchor:v675];
    v696[0] = v661;
    v648 = [(UIStackView *)v684->_titleStackView leftAnchor];
    v151 = [(UIImageView *)v684->_leftTeamArtwork rightAnchor];
    v152 = [v648 constraintEqualToAnchor:v151];
    v696[1] = v152;
    v153 = [(UIStackView *)v684->_titleStackView rightAnchor];
    v154 = [(UIImageView *)v684->_rightTeamArtwork leftAnchor];
    v155 = [v153 constraintEqualToAnchor:v154];
    v696[2] = v155;
    v156 = [MEMORY[0x277CBEA60] arrayWithObjects:v696 count:3];
    [v685 addObjectsFromArray:v156];

    v157 = v648;
    v158 = v661;

    v159 = v675;
    v115 = v685;
    goto LABEL_81;
  }

  if (v114 != 2)
  {
    v115 = v685;
    if (v114 != 3)
    {
      goto LABEL_83;
    }

    v116 = [(CPUIArtworkView *)v26->_artworkViewBrick leftAnchor];
    [(CPUIProgressView *)progressView leftAnchor];
    v673 = v634 = v116;
    v659 = [v116 constraintEqualToAnchor:v7 constant:?];
    v690[0] = v659;
    v117 = [(CPUISongDetailsView *)v26->_songDetailsView leftAnchor];
    [(CPUIArtworkView *)v26->_artworkViewBrick rightAnchor];
    v620 = v646 = v117;
    v605 = [v117 constraintEqualToAnchor:v7 constant:?];
    v690[1] = v605;
    v118 = [(CPUISongDetailsView *)v26->_songDetailsView rightAnchor];
    v575 = [(CPUIProgressView *)progressView rightAnchor];
    v590 = v118;
    v560 = [v118 constraintEqualToAnchor:-v11 constant:?];
    v690[2] = v560;
    v119 = [(CPUITransportControlView *)v26->_transportControlView leftAnchor];
    v531 = [(CPUIArtworkView *)v26->_artworkViewBrick rightAnchor];
    v545 = v119;
    v517 = [v119 constraintEqualToAnchor:v7 constant:?];
    v690[3] = v517;
    v120 = [(CPUITransportControlView *)v26->_transportControlView rightAnchor];
    v489 = [(CPUIProgressView *)progressView rightAnchor];
    v503 = v120;
    v475 = [v120 constraintEqualToAnchor:-v11 constant:?];
    v690[4] = v475;
    v121 = [(CPUIProgressView *)v26->_progressView rightAnchor];
    v447 = [(CPUITransportControlView *)v26->_transportControlView rightAnchor];
    v461 = v121;
    v434 = [v121 constraintEqualToAnchor:?];
    v690[5] = v434;
    v122 = [(CPUIProgressView *)v26->_progressView leftAnchor];
    if ([v27 progressViewFullWidth])
    {
      v123 = 464;
    }

    else
    {
      v123 = 432;
    }

    v411 = [*(&v26->super.super.super.isa + v123) leftAnchor];
    v422 = v122;
    v124 = [v122 constraintEqualToAnchor:?];
    v690[6] = v124;
    v125 = [(CPUIPlayModeControlView *)v26->_playModeControlView leftAnchor];
    if (([v27 playModeControlButtonsFullWidth] & 1) == 0)
    {
      progressView = v26->_transportControlView;
    }

    v126 = [(CPUIProgressView *)progressView leftAnchor];
    v127 = [v27 playModeControlButtonsFullWidth];
    v128 = 0.0;
    if (v127)
    {
      v128 = v7;
    }

    v129 = [v125 constraintEqualToAnchor:v126 constant:v128];
    v690[7] = v129;
    v130 = [(CPUIPlayModeControlView *)v26->_playModeControlView rightAnchor];
    progressView = v683;
    v131 = [(CPUIProgressView *)v683 rightAnchor];
    v132 = [v130 constraintEqualToAnchor:v131 constant:-v11];
    v690[8] = v132;
    v133 = [MEMORY[0x277CBEA60] arrayWithObjects:v690 count:9];
    [v685 addObjectsFromArray:v133];

    v26 = v684;
    v115 = v685;
    v27 = v682;

    goto LABEL_72;
  }

  if ([v27 isSportsLayout])
  {
    v160 = [(UIStackView *)v26->_titleStackView centerYAnchor];
    v676 = [(UILabel *)v26->_leftScoreLabel centerYAnchor];
    v662 = [v160 constraintEqualToAnchor:?];
    v692[0] = v662;
    v161 = [(UIStackView *)v26->_titleStackView leftAnchor];
    [(UILabel *)v26->_leftScoreLabel rightAnchor];
    v622 = v649 = v161;
    v607 = [v161 constraintEqualToAnchor:2.0 constant:?];
    v692[1] = v607;
    v162 = [(UIStackView *)v26->_titleStackView rightAnchor];
    v577 = [(UILabel *)v26->_rightScoreLabel leftAnchor];
    v592 = v162;
    v562 = [v162 constraintEqualToAnchor:-2.0 constant:?];
    v692[2] = v562;
    v163 = [(CPUITransportControlView *)v26->_transportControlView leftAnchor];
    v532 = [(UIImageView *)v26->_leftTeamArtwork rightAnchor];
    v547 = v163;
    v518 = [v163 constraintEqualToAnchor:6.0 constant:?];
    v692[3] = v518;
    v164 = [(CPUITransportControlView *)v26->_transportControlView rightAnchor];
    v490 = [(UIImageView *)v26->_rightTeamArtwork leftAnchor];
    v504 = v164;
    v476 = [v164 constraintEqualToAnchor:-6.0 constant:?];
    v692[4] = v476;
    v165 = [(CPUIProgressView *)v26->_progressView leftAnchor];
    v448 = [v27 progressViewFullWidth];
    if (v448)
    {
      v166 = [(CPUIProgressView *)progressView leftAnchor];
      v435 = v166;
    }

    else
    {
      v435 = [(CPUITransportControlView *)v26->_transportControlView leftButton];
      v166 = [v435 leftAnchor];
    }

    v182 = [v27 playModeControlButtonsFullWidth];
    v183 = 0.0;
    if (v182)
    {
      v183 = v7;
    }

    v463 = v165;
    v401 = v166;
    v423 = [v165 constraintEqualToAnchor:v166 constant:v183];
    v692[5] = v423;
    v184 = [(CPUIProgressView *)v26->_progressView rightAnchor];
    v185 = [v27 progressViewFullWidth];
    v186 = &v26->super.super.super.isa;
    v187 = v185;
    v636 = v160;
    if (v185)
    {
      [(CPUIProgressView *)progressView rightAnchor];
    }

    else
    {
      v394 = [v186[54] fastForwardButton];
      [v394 rightAnchor];
    }
    v188 = ;
    v205 = [v27 playModeControlButtonsFullWidth];
    v206 = -v11;
    if (!v205)
    {
      v206 = 0.0;
    }

    v413 = v184;
    v207 = [v184 constraintEqualToAnchor:v188 constant:v206];
    v692[6] = v207;
    v208 = [v186[55] leftAnchor];
    v209 = [v186[56] leftAnchor];
    v210 = [v208 constraintEqualToAnchor:v209];
    v692[7] = v210;
    v211 = [v186[55] rightAnchor];
    v212 = [v186[56] rightAnchor];
    v213 = [v211 constraintEqualToAnchor:v212];
    v692[8] = v213;
    v214 = [MEMORY[0x277CBEA60] arrayWithObjects:v692 count:9];
    [v685 addObjectsFromArray:v214];

    if ((v187 & 1) == 0)
    {

      v188 = v394;
    }

    v150 = v636;
    v157 = v649;
    v158 = v662;
    v159 = v676;
    if ((v448 & 1) == 0)
    {
    }

    v115 = v685;
    v26 = v684;
    v27 = v682;
LABEL_81:
    progressView = v683;
    goto LABEL_82;
  }

  v176 = [(CPUIArtworkView *)v26->_artworkViewBrick rightAnchor];
  v673 = [(CPUIProgressView *)progressView rightAnchor];
  v659 = [v176 constraintEqualToAnchor:-v11 constant:?];
  v691[0] = v659;
  v177 = [(CPUITransportControlView *)v26->_transportControlView leftAnchor];
  [(CPUIProgressView *)progressView leftAnchor];
  v623 = v646 = v177;
  v608 = [v177 constraintEqualToAnchor:v7 constant:?];
  v691[1] = v608;
  v178 = [(CPUITransportControlView *)v26->_transportControlView rightAnchor];
  v578 = [(CPUIArtworkView *)v26->_artworkViewBrick leftAnchor];
  v593 = v178;
  v563 = [v178 constraintEqualToAnchor:-v11 constant:?];
  v691[2] = v563;
  v179 = [(CPUIProgressView *)v26->_progressView leftAnchor];
  v533 = [(CPUITransportControlView *)v26->_transportControlView leftButton];
  [v533 leftAnchor];
  v519 = v548 = v179;
  v505 = [v179 constraintEqualToAnchor:?];
  v691[3] = v505;
  v180 = [(CPUIProgressView *)v26->_progressView rightAnchor];
  v477 = [v27 progressViewFullWidth];
  v634 = v176;
  if (v477)
  {
    v181 = [(CPUIArtworkView *)v26->_artworkViewBrick rightAnchor];
    v462 = v181;
  }

  else
  {
    v462 = [(CPUITransportControlView *)v26->_transportControlView fastForwardButton];
    v181 = [v462 rightAnchor];
  }

  v491 = v180;
  v402 = v181;
  v449 = [v180 constraintEqualToAnchor:v181];
  v691[4] = v449;
  v189 = [(CPUISongDetailsView *)v26->_songDetailsView rightAnchor];
  v424 = [(CPUIArtworkView *)v26->_artworkViewBrick leftAnchor];
  v436 = v189;
  v412 = [v189 constraintEqualToAnchor:-v11 constant:?];
  v691[5] = v412;
  v190 = [(CPUISongDetailsView *)v26->_songDetailsView leftAnchor];
  v191 = [(CPUIProgressView *)progressView leftAnchor];
  v192 = [v190 constraintEqualToAnchor:v191 constant:v7];
  v691[6] = v192;
  v193 = [(CPUIPlayModeControlView *)v26->_playModeControlView leftAnchor];
  v194 = [(CPUIProgressView *)progressView leftAnchor];
  v195 = [v193 constraintEqualToAnchor:v194 constant:v7];
  v691[7] = v195;
  [(CPUIPlayModeControlView *)v26->_playModeControlView rightAnchor];
  v197 = v196 = progressView;
  v198 = [v682 playModeControlButtonsFullWidth];
  v199 = v196;
  if ((v198 & 1) == 0)
  {
    v199 = v26->_progressView;
  }

  v200 = [(CPUIProgressView *)v199 rightAnchor];
  v201 = [v682 playModeControlButtonsFullWidth];
  v202 = 0.0;
  if (v201)
  {
    v202 = -v11;
  }

  v203 = [v197 constraintEqualToAnchor:v200 constant:v202];
  v691[8] = v203;
  v204 = [MEMORY[0x277CBEA60] arrayWithObjects:v691 count:9];
  [v685 addObjectsFromArray:v204];

  if ((v477 & 1) == 0)
  {
  }

  v115 = v685;
  v26 = v684;
  v27 = v682;
  progressView = v683;
LABEL_72:
  v150 = v634;
  v157 = v646;
  v158 = v659;
  v159 = v673;
LABEL_82:

LABEL_83:
  v215 = [v27 artworkPosition];
  if (v215 - 2 < 2)
  {
    if (![v27 isSportsLayout])
    {
      goto LABEL_96;
    }

    v231 = [(CPUINowPlayingView *)v26 _equalHeightVerticalSpacers:3 minimumPadding:6.0 maximumPadding:12.0];
    v664 = [v231 objectAtIndexedSubscript:0];
    v651 = [v664 topAnchor];
    v638 = [(UILabel *)v26->_leftScoreLabel bottomAnchor];
    v625 = [v651 constraintEqualToAnchor:v638];
    v687[0] = v625;
    v610 = [v231 objectAtIndexedSubscript:0];
    v595 = [v610 bottomAnchor];
    v580 = [(CPUITransportControlView *)v26->_transportControlView topAnchor];
    v565 = [v595 constraintEqualToAnchor:v580];
    v687[1] = v565;
    v550 = [v231 objectAtIndexedSubscript:1];
    v535 = [v550 topAnchor];
    v521 = [(CPUITransportControlView *)v26->_transportControlView bottomAnchor];
    v507 = [v535 constraintEqualToAnchor:v521];
    v687[2] = v507;
    v493 = [v231 objectAtIndexedSubscript:1];
    v479 = [v493 bottomAnchor];
    v465 = [(CPUIProgressView *)v26->_progressView topAnchor];
    v451 = [v479 constraintEqualToAnchor:v465];
    v687[3] = v451;
    v232 = [v231 objectAtIndexedSubscript:2];
    v233 = [v232 topAnchor];
    v234 = [(CPUIProgressView *)v26->_progressView bottomAnchor];
    [v233 constraintEqualToAnchor:v234];
    v235 = v26;
    v237 = v236 = v115;
    v687[4] = v237;
    v677 = v231;
    v238 = [v231 objectAtIndexedSubscript:2];
    v239 = [v238 bottomAnchor];
    v240 = [(CPUIPlayModeControlView *)v235->_playModeControlView topAnchor];
    v241 = [v239 constraintEqualToAnchor:v240];
    v687[5] = v241;
    v242 = [MEMORY[0x277CBEA60] arrayWithObjects:v687 count:6];
    [v236 addObjectsFromArray:v242];

    v218 = v664;
    v230 = v680;
  }

  else
  {
    if (v215 > 1)
    {
      goto LABEL_96;
    }

    if ([v27 isSportsLayout])
    {
      v216 = [(CPUINowPlayingView *)v26 _equalHeightVerticalSpacers:3 minimumPadding:6.0 maximumPadding:0.0];
      v217 = [(CPUINowPlayingView *)v26 _equalHeightVerticalSpacers:2 minimumPadding:6.0 maximumPadding:12.0];
      v663 = [v216 objectAtIndexedSubscript:0];
      v650 = [v663 topAnchor];
      v637 = [(CPUIProgressView *)progressView topAnchor];
      v624 = [v650 constraintEqualToAnchor:v637];
      v689[0] = v624;
      v609 = [v216 objectAtIndexedSubscript:0];
      v594 = [v609 bottomAnchor];
      v579 = [(UILabel *)v26->_leftScoreLabel topAnchor];
      v564 = [v594 constraintEqualToAnchor:v579];
      v689[1] = v564;
      v549 = [v216 objectAtIndexedSubscript:1];
      v534 = [v549 topAnchor];
      v520 = [(UILabel *)v26->_leftScoreLabel bottomAnchor];
      v506 = [v534 constraintEqualToAnchor:v520];
      v689[2] = v506;
      v492 = [v216 objectAtIndexedSubscript:1];
      v478 = [v492 bottomAnchor];
      v464 = [(UIImageView *)v26->_leftTeamArtwork topAnchor];
      v450 = [v478 constraintEqualToAnchor:v464];
      v689[3] = v450;
      v437 = [v216 objectAtIndexedSubscript:2];
      v425 = [v437 topAnchor];
      v414 = [(UILabel *)v26->_leftTeamStandingLabel bottomAnchor];
      v403 = [v425 constraintEqualToAnchor:v414];
      v689[4] = v403;
      v677 = v216;
      v396 = [v216 objectAtIndexedSubscript:2];
      v390 = [v396 bottomAnchor];
      v383 = [(CPUITransportControlView *)v26->_transportControlView topAnchor];
      v377 = [v390 constraintEqualToAnchor:v383];
      v689[5] = v377;
      v218 = v217;
      v371 = [v217 objectAtIndexedSubscript:0];
      v366 = [v371 topAnchor];
      v361 = [(CPUITransportControlView *)v26->_transportControlView bottomAnchor];
      v356 = [v366 constraintEqualToAnchor:v361];
      v689[6] = v356;
      v351 = [v217 objectAtIndexedSubscript:0];
      v346 = [v351 bottomAnchor];
      v341 = [(CPUIProgressView *)v26->_progressView topAnchor];
      v336 = [v346 constraintEqualToAnchor:v341];
      v689[7] = v336;
      v332 = [v217 objectAtIndexedSubscript:1];
      v219 = [v332 topAnchor];
      [(CPUIProgressView *)v26->_progressView bottomAnchor];
      v221 = v220 = v115;
      v222 = [v219 constraintEqualToAnchor:v221];
      v689[8] = v222;
      v223 = [v218 objectAtIndexedSubscript:1];
      v224 = [v223 bottomAnchor];
      v225 = v26;
      v226 = v224;
      v227 = [(CPUIPlayModeControlView *)v225->_playModeControlView topAnchor];
      v228 = [v226 constraintEqualToAnchor:v227];
      v689[9] = v228;
      v229 = [MEMORY[0x277CBEA60] arrayWithObjects:v689 count:10];
      [v220 addObjectsFromArray:v229];

      v230 = v680;
      [v680 addObjectsFromArray:v218];
    }

    else
    {
      v243 = [(CPUINowPlayingView *)v26 _equalHeightVerticalSpacers:3 minimumPadding:12.0 maximumPadding:12.0];
      v665 = [(CPUINowPlayingView *)v26 _equalHeightVerticalSpacers:1 minimumPadding:6.0 maximumPadding:6.0];
      v244 = [(CPUINowPlayingView *)v26 _equalHeightVerticalSpacers:2 minimumPadding:0.0 maximumPadding:0.0];
      v245 = [v244 objectAtIndexedSubscript:0];
      v246 = [v245 topAnchor];
      v247 = [(CPUIProgressView *)progressView topAnchor];
      v248 = [v246 constraintEqualToAnchor:v247];
      v688[0] = v248;
      v652 = v244;
      v581 = [v244 objectAtIndexedSubscript:0];
      v249 = [v581 bottomAnchor];
      v250 = [v27 showsArtwork];
      v251 = &OBJC_IVAR___CPUINowPlayingView__songDetailsView;
      if (v250)
      {
        v251 = &OBJC_IVAR___CPUINowPlayingView__artworkViewBrick;
      }

      v551 = [*(&v26->super.super.super.isa + *v251) topAnchor];
      v566 = v249;
      v252 = [v249 constraintEqualToAnchor:?];
      v688[1] = v252;
      v522 = [v243 objectAtIndexedSubscript:0];
      v253 = [v522 topAnchor];
      v626 = v246;
      v639 = v245;
      v596 = v248;
      v611 = v247;
      v536 = v252;
      if ([v27 showsArtwork])
      {
        [(CPUIArtworkView *)v26->_artworkViewBrick bottomAnchor];
      }

      else
      {
        [(CPUIProgressView *)progressView topAnchor];
      }
      v494 = ;
      v508 = v253;
      v480 = [v253 constraintEqualToAnchor:v494];
      v688[2] = v480;
      v466 = [v243 objectAtIndexedSubscript:0];
      v452 = [v466 bottomAnchor];
      v438 = [(CPUISongDetailsView *)v26->_songDetailsView topAnchor];
      v426 = [v452 constraintEqualToAnchor:v438];
      v688[3] = v426;
      v415 = [v665 objectAtIndexedSubscript:0];
      v404 = [v415 topAnchor];
      v397 = [(CPUISongDetailsView *)v26->_songDetailsView bottomAnchor];
      v391 = [v404 constraintEqualToAnchor:v397];
      v688[4] = v391;
      v384 = [v665 objectAtIndexedSubscript:0];
      v378 = [v384 bottomAnchor];
      v372 = [(CPUITransportControlView *)v26->_transportControlView topAnchor];
      v367 = [v378 constraintEqualToAnchor:v372];
      v688[5] = v367;
      v362 = [v243 objectAtIndexedSubscript:1];
      v357 = [v362 topAnchor];
      v352 = [(CPUITransportControlView *)v26->_transportControlView bottomAnchor];
      v347 = [v357 constraintEqualToAnchor:v352];
      v688[6] = v347;
      v342 = [v243 objectAtIndexedSubscript:1];
      v337 = [v342 bottomAnchor];
      v333 = [(CPUIProgressView *)v26->_progressView topAnchor];
      v329 = [v337 constraintEqualToAnchor:v333];
      v688[7] = v329;
      v326 = [v243 objectAtIndexedSubscript:2];
      v323 = [v326 topAnchor];
      v681 = [(CPUIProgressView *)v26->_progressView bottomAnchor];
      v321 = [v323 constraintEqualToAnchor:v681];
      v688[8] = v321;
      v319 = [v243 objectAtIndexedSubscript:2];
      v317 = [v319 bottomAnchor];
      v315 = [(CPUIPlayModeControlView *)v26->_playModeControlView topAnchor];
      v254 = [v317 constraintEqualToAnchor:v315];
      v688[9] = v254;
      [v652 objectAtIndexedSubscript:1];
      v255 = v677 = v243;
      v256 = [v255 topAnchor];
      v257 = [(CPUIPlayModeControlView *)v26->_playModeControlView bottomAnchor];
      v258 = [v256 constraintEqualToAnchor:v257];
      v688[10] = v258;
      v259 = [v652 objectAtIndexedSubscript:1];
      v260 = [v259 bottomAnchor];
      v261 = [(CPUIProgressView *)progressView bottomAnchor];
      v262 = [v260 constraintEqualToAnchor:v261 constant:-v9];
      v688[11] = v262;
      v263 = [MEMORY[0x277CBEA60] arrayWithObjects:v688 count:12];
      [v685 addObjectsFromArray:v263];

      v218 = v665;
      v230 = v680;
      [v680 addObjectsFromArray:v665];
      [v680 addObjectsFromArray:v652];
    }
  }

  [v230 addObjectsFromArray:v677];
  v115 = v685;
  v26 = v684;
  v27 = v682;
  progressView = v683;
LABEL_96:
  v264 = [v680 copy];
  verticalSpacerLayoutGuides = v26->_verticalSpacerLayoutGuides;
  v26->_verticalSpacerLayoutGuides = v264;

  return v115;
}

- (void)setBadgeAnnotationView:(id)a3
{
  v19[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  badgeAnnotationView = self->_badgeAnnotationView;
  if (badgeAnnotationView)
  {
    [(UIView *)badgeAnnotationView removeFromSuperview];
  }

  objc_storeStrong(&self->_badgeAnnotationView, a3);
  if (v5)
  {
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPUINowPlayingView *)self addSubview:v5];
    v18 = MEMORY[0x277CCAAD0];
    v7 = [v5 centerXAnchor];
    v8 = [(CPUINowPlayingView *)self sportsData];
    v9 = &OBJC_IVAR___CPUINowPlayingView__titleStackView;
    if (!v8)
    {
      v9 = &OBJC_IVAR___CPUINowPlayingView__songDetailsView;
    }

    v10 = [*(&self->super.super.super.isa + *v9) centerXAnchor];
    v11 = [v7 constraintEqualToAnchor:v10];
    v19[0] = v11;
    v12 = [v5 topAnchor];
    v13 = [(CPUINowPlayingView *)self sportsData];
    if (v13)
    {
      [(UIStackView *)self->_titleStackView bottomAnchor];
    }

    else
    {
      v17 = [(CPUISongDetailsView *)self->_songDetailsView albumArtistLabelButton];
      [v17 bottomAnchor];
    }
    v14 = ;
    v15 = [v12 constraintEqualToAnchor:v14 constant:3.0];
    v19[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    [v18 activateConstraints:v16];

    if (!v13)
    {

      v14 = v17;
    }
  }
}

- (void)_handleShowVideo
{
  v3 = [(CPUINowPlayingView *)self videoDelegate];
  if (v3)
  {
    v4 = v3;
    if (objc_opt_respondsToSelector())
    {
      [v4 nowPlayingViewWantsToShowVideo:self];
    }
  }

  MEMORY[0x2821F9730]();
}

- (CPUINowPlayingViewVideoDelegate)videoDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_videoDelegate);

  return WeakRetained;
}

@end