@interface CPUINowPlayingView
- (CPUINowPlayingView)initWithFrame:(CGRect)frame;
- (CPUINowPlayingViewVideoDelegate)videoDelegate;
- (id)_constraintsForNowPlayingLayout:(id)layout;
- (id)_equalHeightVerticalSpacers:(unint64_t)spacers minimumPadding:(double)padding maximumPadding:(double)maximumPadding;
- (void)_handleShowVideo;
- (void)_stopGameTimer;
- (void)_updateGameTimer;
- (void)recalculateLayout:(BOOL)layout allowsAlbumArt:(BOOL)art viewArea:(CGRect)area safeArea:(CGRect)safeArea rightHandDrive:(BOOL)drive sports:(BOOL)sports;
- (void)setBadgeAnnotationView:(id)view;
- (void)setSportsData:(id)data;
- (void)willMoveToSuperview:(id)superview;
- (void)willMoveToWindow:(id)window;
@end

@implementation CPUINowPlayingView

- (CPUINowPlayingView)initWithFrame:(CGRect)frame
{
  v84.receiver = self;
  v84.super_class = CPUINowPlayingView;
  v3 = [(CPUINowPlayingView *)&v84 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(CPUINowPlayingView *)v3 setBackgroundColor:clearColor];

    [(CPUINowPlayingView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [(CPUINowPlayingView *)v3 layer];
    [layer setAllowsGroupOpacity:0];

    layer2 = [(CPUINowPlayingView *)v3 layer];
    [layer2 setAllowsGroupBlending:0];

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
    labelColor = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v3->_leftScoreLabel setTextColor:labelColor];

    [(UILabel *)v3->_leftScoreLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v3->_leftScoreLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPUINowPlayingView *)v3 addSubview:v3->_leftScoreLabel];
    v25 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v10, v11, v12, v13}];
    rightScoreLabel = v3->_rightScoreLabel;
    v3->_rightScoreLabel = v25;

    [(UILabel *)v3->_rightScoreLabel setTextAlignment:1];
    labelColor2 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v3->_rightScoreLabel setTextColor:labelColor2];

    [(UILabel *)v3->_rightScoreLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v3->_rightScoreLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPUINowPlayingView *)v3 addSubview:v3->_rightScoreLabel];
    v28 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v10, v11, v12, v13}];
    leftTeamNameLabel = v3->_leftTeamNameLabel;
    v3->_leftTeamNameLabel = v28;

    v30 = *MEMORY[0x277D76938];
    v31 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
    [(UILabel *)v3->_leftTeamNameLabel setFont:v31];

    labelColor3 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v3->_leftTeamNameLabel setTextColor:labelColor3];

    [(UILabel *)v3->_leftTeamNameLabel setTextAlignment:1];
    [(UILabel *)v3->_leftTeamNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPUINowPlayingView *)v3 addSubview:v3->_leftTeamNameLabel];
    v33 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v10, v11, v12, v13}];
    rightTeamNameLabel = v3->_rightTeamNameLabel;
    v3->_rightTeamNameLabel = v33;

    v35 = [MEMORY[0x277D74300] preferredFontForTextStyle:v30];
    [(UILabel *)v3->_rightTeamNameLabel setFont:v35];

    labelColor4 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v3->_rightTeamNameLabel setTextColor:labelColor4];

    [(UILabel *)v3->_rightTeamNameLabel setTextAlignment:1];
    [(UILabel *)v3->_rightTeamNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPUINowPlayingView *)v3 addSubview:v3->_rightTeamNameLabel];
    v37 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v10, v11, v12, v13}];
    leftTeamStandingLabel = v3->_leftTeamStandingLabel;
    v3->_leftTeamStandingLabel = v37;

    v39 = [MEMORY[0x277D74300] preferredFontForTextStyle:v30];
    [(UILabel *)v3->_leftTeamStandingLabel setFont:v39];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v3->_leftTeamStandingLabel setTextColor:secondaryLabelColor];

    [(UILabel *)v3->_leftTeamStandingLabel setTextAlignment:1];
    [(UILabel *)v3->_leftTeamStandingLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPUINowPlayingView *)v3 addSubview:v3->_leftTeamStandingLabel];
    v41 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v10, v11, v12, v13}];
    rightTeamStandingLabel = v3->_rightTeamStandingLabel;
    v3->_rightTeamStandingLabel = v41;

    v43 = [MEMORY[0x277D74300] preferredFontForTextStyle:v30];
    [(UILabel *)v3->_rightTeamStandingLabel setFont:v43];

    secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v3->_rightTeamStandingLabel setTextColor:secondaryLabelColor2];

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
    systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
    [(UIImageView *)v3->_leftFavoriteStar setTintColor:systemOrangeColor];

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
    systemOrangeColor2 = [MEMORY[0x277D75348] systemOrangeColor];
    [(UIImageView *)v3->_rightFavoriteStar setTintColor:systemOrangeColor2];

    [(UIImageView *)v3->_rightFavoriteStar setHidden:1];
    [(CPUINowPlayingView *)v3 addSubview:v3->_rightFavoriteStar];
    v57 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v10, v11, v12, v13}];
    possessionIndicator = v3->_possessionIndicator;
    v3->_possessionIndicator = v57;

    [(UIImageView *)v3->_possessionIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_possessionIndicator setContentMode:1];
    secondaryLabelColor3 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UIImageView *)v3->_possessionIndicator setTintColor:secondaryLabelColor3];

    [(CPUINowPlayingView *)v3 addSubview:v3->_possessionIndicator];
    v60 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v10, v11, v12, v13}];
    gameStatusImage = v3->_gameStatusImage;
    v3->_gameStatusImage = v60;

    [(UIImageView *)v3->_gameStatusImage setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_gameStatusImage setContentMode:1];
    labelColor5 = [MEMORY[0x277D75348] labelColor];
    [(UIImageView *)v3->_gameStatusImage setTintColor:labelColor5];

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

    controlsFocusContainerGuide = [(CPUINowPlayingView *)v3 controlsFocusContainerGuide];
    [(CPUINowPlayingView *)v3 addLayoutGuide:controlsFocusContainerGuide];

    v74 = objc_alloc_init(MEMORY[0x277D754F8]);
    bottomRegionFocusContainerGuide = v3->_bottomRegionFocusContainerGuide;
    v3->_bottomRegionFocusContainerGuide = v74;

    bottomRegionFocusContainerGuide = [(CPUINowPlayingView *)v3 bottomRegionFocusContainerGuide];
    [(CPUINowPlayingView *)v3 addLayoutGuide:bottomRegionFocusContainerGuide];

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

- (void)setSportsData:(id)data
{
  v117 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (![(CPUINowPlayingSportsData *)self->_sportsData isEqual:dataCopy])
  {
    objc_storeStrong(&self->_sportsData, data);
    sportsData = [(CPUINowPlayingView *)self sportsData];

    if (sportsData)
    {
      artworkViewBrick = [(CPUINowPlayingView *)self artworkViewBrick];
      [artworkViewBrick setHidden:1];

      songDetailsView = [(CPUINowPlayingView *)self songDetailsView];
      [songDetailsView setHidden:1];

      titleStackView = [(CPUINowPlayingView *)self titleStackView];
      [titleStackView setHidden:0];

      leftTeamArtwork = [(CPUINowPlayingView *)self leftTeamArtwork];
      [leftTeamArtwork setHidden:0];

      rightTeamArtwork = [(CPUINowPlayingView *)self rightTeamArtwork];
      [rightTeamArtwork setHidden:0];

      leftScoreLabel = [(CPUINowPlayingView *)self leftScoreLabel];
      [leftScoreLabel setHidden:0];

      rightScoreLabel = [(CPUINowPlayingView *)self rightScoreLabel];
      [rightScoreLabel setHidden:0];

      leftTeamNameLabel = [(CPUINowPlayingView *)self leftTeamNameLabel];
      [leftTeamNameLabel setHidden:0];

      rightTeamNameLabel = [(CPUINowPlayingView *)self rightTeamNameLabel];
      [rightTeamNameLabel setHidden:0];

      leftTeamStandingLabel = [(CPUINowPlayingView *)self leftTeamStandingLabel];
      [leftTeamStandingLabel setHidden:0];

      rightTeamStandingLabel = [(CPUINowPlayingView *)self rightTeamStandingLabel];
      [rightTeamStandingLabel setHidden:0];

      leftTeamLogo = [dataCopy leftTeamLogo];
      v19 = [leftTeamLogo imageWithAlignmentRectInsets:{-6.0, -6.0, -6.0, -6.0}];
      [(UIImageView *)self->_leftTeamArtwork setImage:v19];

      rightTeamLogo = [dataCopy rightTeamLogo];
      v21 = [rightTeamLogo imageWithAlignmentRectInsets:{-6.0, -6.0, -6.0, -6.0}];
      [(UIImageView *)self->_rightTeamArtwork setImage:v21];

      -[UIImageView setHidden:](self->_leftFavoriteStar, "setHidden:", [dataCopy leftTeamFavorite] ^ 1);
      v22 = MEMORY[0x277D74300];
      [(CPUINowPlayingLayoutProtocol *)self->_nowPlayingLayout sportsScoreTextSize];
      v23 = [v22 systemFontOfSize:? weight:? width:?];
      [(UILabel *)self->_leftScoreLabel setFont:v23];

      leftTeamScore = [dataCopy leftTeamScore];
      [(UILabel *)self->_leftScoreLabel setText:leftTeamScore];

      -[UIImageView setHidden:](self->_rightFavoriteStar, "setHidden:", [dataCopy rightTeamFavorite] ^ 1);
      font = [(UILabel *)self->_leftScoreLabel font];
      [(UILabel *)self->_rightScoreLabel setFont:font];

      rightTeamScore = [dataCopy rightTeamScore];
      [(UILabel *)self->_rightScoreLabel setText:rightTeamScore];

      leftTeamName = [dataCopy leftTeamName];
      [(UILabel *)self->_leftTeamNameLabel setText:leftTeamName];

      rightTeamName = [dataCopy rightTeamName];
      [(UILabel *)self->_rightTeamNameLabel setText:rightTeamName];

      leftTeamStanding = [dataCopy leftTeamStanding];
      [(UILabel *)self->_leftTeamStandingLabel setText:leftTeamStanding];

      rightTeamStanding = [dataCopy rightTeamStanding];
      [(UILabel *)self->_rightTeamStandingLabel setText:rightTeamStanding];

      eventStatusImage = [dataCopy eventStatusImage];
      [(UIImageView *)self->_gameStatusImage setImage:eventStatusImage];

      leftPossessionIndicator = [dataCopy leftPossessionIndicator];
      rightPossessionIndicator = leftPossessionIndicator;
      if (!leftPossessionIndicator)
      {
        rightPossessionIndicator = [dataCopy rightPossessionIndicator];
      }

      v34 = [rightPossessionIndicator imageWithRenderingMode:2];
      [(UIImageView *)self->_possessionIndicator setImage:v34];

      if (!leftPossessionIndicator)
      {
      }

      image = [(UIImageView *)self->_possessionIndicator image];
      [(UIImageView *)self->_possessionIndicator setHidden:image == 0];

      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      titleStackView2 = [(CPUINowPlayingView *)self titleStackView];
      arrangedSubviews = [titleStackView2 arrangedSubviews];
      v38 = [arrangedSubviews copy];

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
            titleStackView3 = [(CPUINowPlayingView *)self titleStackView];
            [titleStackView3 removeArrangedSubview:v43];

            [v43 removeFromSuperview];
          }

          v40 = [v38 countByEnumeratingWithState:&v111 objects:v116 count:16];
        }

        while (v40);
      }

      image2 = [(UIImageView *)self->_gameStatusImage image];

      if (image2)
      {
        titleStackView4 = [(CPUINowPlayingView *)self titleStackView];
        [titleStackView4 addArrangedSubview:self->_gameStatusImage];
      }

      v47 = objc_alloc(MEMORY[0x277D756B8]);
      v48 = *MEMORY[0x277CBF3A0];
      v49 = *(MEMORY[0x277CBF3A0] + 8);
      v50 = *(MEMORY[0x277CBF3A0] + 16);
      v51 = *(MEMORY[0x277CBF3A0] + 24);
      v52 = [v47 initWithFrame:{*MEMORY[0x277CBF3A0], v49, v50, v51}];
      v53 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76920] weight:*MEMORY[0x277D743F8]];
      [v52 setFont:v53];

      labelColor = [MEMORY[0x277D75348] labelColor];
      [v52 setTextColor:labelColor];

      eventStatusText = [dataCopy eventStatusText];
      firstObject = [eventStatusText firstObject];
      whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v58 = [firstObject stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
      [v52 setText:v58];

      LODWORD(v59) = 1132068864;
      [v52 setContentCompressionResistancePriority:0 forAxis:v59];
      LODWORD(v60) = 1148846080;
      [v52 setContentHuggingPriority:0 forAxis:v60];
      [dataCopy timer];
      if (v61 <= 0.0)
      {
        [(CPUINowPlayingView *)self _stopGameTimer];
        [v52 setTextAlignment:1];
        titleStackView5 = [(CPUINowPlayingView *)self titleStackView];
        [titleStackView5 addArrangedSubview:v52];
      }

      else
      {
        [v52 setTextAlignment:2];
        if (!self->_gameTimerLabel)
        {
          v62 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v48, v49, v50, v51}];
          gameTimerLabel = self->_gameTimerLabel;
          self->_gameTimerLabel = v62;

          font2 = [v52 font];
          [(UILabel *)self->_gameTimerLabel setFont:font2];

          textColor = [v52 textColor];
          [(UILabel *)self->_gameTimerLabel setTextColor:textColor];

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
        titleStackView5 = [v68 initWithArrangedSubviews:v70];

        [titleStackView5 setAxis:0];
        [titleStackView5 setDistribution:2];
        [titleStackView5 setAlignment:0];
        [titleStackView5 setTranslatesAutoresizingMaskIntoConstraints:0];
        [titleStackView5 setSpacing:4.0];
        titleStackView6 = [(CPUINowPlayingView *)self titleStackView];
        [titleStackView6 addArrangedSubview:titleStackView5];

        [dataCopy timer];
        self->_gameTime = v73;
        if ([dataCopy timerPaused])
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

      eventStatusText2 = [dataCopy eventStatusText];
      v93 = [eventStatusText2 count];

      if (v93 >= 2)
      {
        v94 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v48, v49, v50, v51}];
        v95 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
        [v94 setFont:v95];

        labelColor2 = [MEMORY[0x277D75348] labelColor];
        [v94 setTextColor:labelColor2];

        [v94 setTextAlignment:1];
        eventStatusText3 = [dataCopy eventStatusText];
        v98 = [eventStatusText3 objectAtIndexedSubscript:1];
        [v94 setText:v98];

        [v94 setTranslatesAutoresizingMaskIntoConstraints:0];
        titleStackView7 = [(CPUINowPlayingView *)self titleStackView];
        [titleStackView7 addArrangedSubview:v94];
      }

      eventStatusText4 = [dataCopy eventStatusText];
      v101 = [eventStatusText4 count];

      if (v101 >= 3)
      {
        v102 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v48, v49, v50, v51}];
        v103 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
        [v102 setFont:v103];

        secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
        [v102 setTextColor:secondaryLabelColor];

        [v102 setTextAlignment:1];
        eventStatusText5 = [dataCopy eventStatusText];
        v106 = [eventStatusText5 objectAtIndexedSubscript:2];
        [v102 setText:v106];

        layer = [v102 layer];
        [layer setAllowsGroupBlending:0];

        v108 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5E8]];
        layer2 = [v102 layer];
        [layer2 setCompositingFilter:v108];

        [v102 setTranslatesAutoresizingMaskIntoConstraints:0];
        titleStackView8 = [(CPUINowPlayingView *)self titleStackView];
        [titleStackView8 addArrangedSubview:v102];
      }
    }

    else
    {
      [(CPUINowPlayingView *)self _stopGameTimer];
      nowPlayingLayout = [(CPUINowPlayingView *)self nowPlayingLayout];
      showsArtwork = [nowPlayingLayout showsArtwork];
      artworkViewBrick2 = [(CPUINowPlayingView *)self artworkViewBrick];
      [artworkViewBrick2 setHidden:showsArtwork ^ 1u];

      songDetailsView2 = [(CPUINowPlayingView *)self songDetailsView];
      [songDetailsView2 setHidden:0];

      titleStackView9 = [(CPUINowPlayingView *)self titleStackView];
      [titleStackView9 setHidden:1];

      leftFavoriteStar = [(CPUINowPlayingView *)self leftFavoriteStar];
      [leftFavoriteStar setHidden:1];

      rightFavoriteStar = [(CPUINowPlayingView *)self rightFavoriteStar];
      [rightFavoriteStar setHidden:1];

      leftTeamArtwork2 = [(CPUINowPlayingView *)self leftTeamArtwork];
      [leftTeamArtwork2 setHidden:1];

      rightTeamArtwork2 = [(CPUINowPlayingView *)self rightTeamArtwork];
      [rightTeamArtwork2 setHidden:1];

      leftScoreLabel2 = [(CPUINowPlayingView *)self leftScoreLabel];
      [leftScoreLabel2 setHidden:1];

      rightScoreLabel2 = [(CPUINowPlayingView *)self rightScoreLabel];
      [rightScoreLabel2 setHidden:1];

      leftTeamNameLabel2 = [(CPUINowPlayingView *)self leftTeamNameLabel];
      [leftTeamNameLabel2 setHidden:1];

      rightTeamNameLabel2 = [(CPUINowPlayingView *)self rightTeamNameLabel];
      [rightTeamNameLabel2 setHidden:1];

      leftTeamStandingLabel2 = [(CPUINowPlayingView *)self leftTeamStandingLabel];
      [leftTeamStandingLabel2 setHidden:1];

      rightTeamStandingLabel2 = [(CPUINowPlayingView *)self rightTeamStandingLabel];
      [rightTeamStandingLabel2 setHidden:1];

      possessionIndicator = [(CPUINowPlayingView *)self possessionIndicator];
      [possessionIndicator setHidden:1];
    }
  }
}

- (void)_updateGameTimer
{
  if (_updateGameTimer_onceToken != -1)
  {
    [CPUINowPlayingView _updateGameTimer];
  }

  sportsData = [(CPUINowPlayingView *)self sportsData];
  countsUp = [sportsData countsUp];

  v5 = -1.0;
  if (countsUp)
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

- (void)willMoveToWindow:(id)window
{
  if (!window)
  {
    [(CPUINowPlayingView *)self _stopGameTimer];
  }
}

- (void)willMoveToSuperview:(id)superview
{
  if (!superview)
  {
    [(CPUINowPlayingView *)self _stopGameTimer];
  }
}

- (void)recalculateLayout:(BOOL)layout allowsAlbumArt:(BOOL)art viewArea:(CGRect)area safeArea:(CGRect)safeArea rightHandDrive:(BOOL)drive sports:(BOOL)sports
{
  sportsCopy = sports;
  driveCopy = drive;
  height = safeArea.size.height;
  width = safeArea.size.width;
  y = safeArea.origin.y;
  x = safeArea.origin.x;
  v14 = area.size.height;
  v15 = area.size.width;
  v16 = area.origin.y;
  v17 = area.origin.x;
  artCopy = art;
  nowPlayingLayout = [(CPUINowPlayingView *)self nowPlayingLayout];
  traitCollection = [(CPUINowPlayingView *)self traitCollection];
  [traitCollection displayScale];
  v28 = CPUINowPlayingLayoutForSafeAreaFrameScaleArtworkSports(artCopy, x, y, width, height, v17, v16, v15, v14, driveCopy, sportsCopy, v22, v23, v24, v25, v26, v27);

  if (layout || ([nowPlayingLayout isEqual:v28] & 1) == 0)
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
    videoPlaybackState = [(CPUIArtworkView *)self->_artworkViewBrick videoPlaybackState];
    v30 = 0;
    if (!videoPlaybackState && !sportsCopy)
    {
      v30 = [v28 showsArtwork] ^ 1;
    }

    [(CPUIArtworkView *)self->_artworkViewBrick setHidden:v30];
    [v28 playModeControlButtonWidth];
    [(CPUIPlayModeControlView *)self->_playModeControlView setButtonWidth:?];
    [v28 playModeControlButtonSpacing];
    [(CPUIPlayModeControlView *)self->_playModeControlView setButtonSpacing:?];
    v31 = MEMORY[0x277CCAAD0];
    activeConstraints = [(CPUINowPlayingView *)self activeConstraints];
    [v31 deactivateConstraints:activeConstraints];

    v33 = [(CPUINowPlayingView *)self _constraintsForNowPlayingLayout:v28];
    [(CPUINowPlayingView *)self setActiveConstraints:v33];

    v34 = MEMORY[0x277CCAAD0];
    activeConstraints2 = [(CPUINowPlayingView *)self activeConstraints];
    [v34 activateConstraints:activeConstraints2];
  }

  if (([nowPlayingLayout artworkPosition] == 3 || objc_msgSend(nowPlayingLayout, "artworkPosition") == 2) && objc_msgSend(nowPlayingLayout, "playModeControlButtonsFullWidth"))
  {
    songDetailsView = [(CPUINowPlayingView *)self songDetailsView];
    artistLabel = [songDetailsView artistLabel];
    v38 = *MEMORY[0x277D76828];
    [artistLabel setMaximumContentSizeCategory:*MEMORY[0x277D76828]];

    songDetailsView2 = [(CPUINowPlayingView *)self songDetailsView];
    albumArtistLabelButton = [songDetailsView2 albumArtistLabelButton];
    [albumArtistLabelButton setMaximumContentSizeCategory:v38];
  }
}

- (id)_equalHeightVerticalSpacers:(unint64_t)spacers minimumPadding:(double)padding maximumPadding:(double)maximumPadding
{
  array = [MEMORY[0x277CBEB18] array];
  if (spacers)
  {
    v10 = -1;
    do
    {
      v11 = objc_opt_new();
      [(CPUINowPlayingView *)self addLayoutGuide:v11];
      [array addObject:v11];
      if (padding > 0.0)
      {
        heightAnchor = [v11 heightAnchor];
        v13 = [heightAnchor constraintGreaterThanOrEqualToConstant:padding];

        [v13 setActive:1];
      }

      if (maximumPadding > 0.0)
      {
        heightAnchor2 = [v11 heightAnchor];
        v15 = [heightAnchor2 constraintLessThanOrEqualToConstant:maximumPadding];

        [v15 setActive:1];
      }

      v16 = v10 + 1;
      if (v10 != -1)
      {
        heightAnchor3 = [v11 heightAnchor];
        v18 = [array objectAtIndexedSubscript:v10];
        heightAnchor4 = [v18 heightAnchor];
        v20 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];

        [v20 setActive:1];
      }

      v10 = v16;
      --spacers;
    }

    while (spacers);
  }

  return array;
}

- (id)_constraintsForNowPlayingLayout:(id)layout
{
  v710[10] = *MEMORY[0x277D85DE8];
  v685 = objc_opt_new();
  nowPlayingLayout = [(CPUINowPlayingView *)self nowPlayingLayout];
  [nowPlayingLayout layoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  safeAreaLayoutGuide = [(CPUINowPlayingView *)self safeAreaLayoutGuide];
  verticalSpacerLayoutGuides = [(CPUINowPlayingView *)self verticalSpacerLayoutGuides];
  v14 = [verticalSpacerLayoutGuides count];

  if (v14)
  {
    verticalSpacerLayoutGuides2 = [(CPUINowPlayingView *)self verticalSpacerLayoutGuides];
    v686[0] = MEMORY[0x277D85DD0];
    v686[1] = 3221225472;
    v686[2] = __54__CPUINowPlayingView__constraintsForNowPlayingLayout___block_invoke;
    v686[3] = &unk_278D9C810;
    v686[4] = self;
    [verticalSpacerLayoutGuides2 enumerateObjectsUsingBlock:v686];
  }

  array = [MEMORY[0x277CBEB18] array];
  topAnchor = [(UIFocusContainerGuide *)self->_controlsFocusContainerGuide topAnchor];
  topAnchor2 = [(CPUIProgressView *)safeAreaLayoutGuide topAnchor];
  v642 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v710[0] = v642;
  bottomAnchor = [(UIFocusContainerGuide *)self->_controlsFocusContainerGuide bottomAnchor];
  bottomAnchor2 = [(CPUIProgressView *)safeAreaLayoutGuide bottomAnchor];
  v599 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v710[1] = v599;
  leadingAnchor = [(UIFocusContainerGuide *)self->_controlsFocusContainerGuide leadingAnchor];
  leadingAnchor2 = [(CPUIProgressView *)safeAreaLayoutGuide leadingAnchor];
  v554 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v710[2] = v554;
  trailingAnchor = [(UIFocusContainerGuide *)self->_controlsFocusContainerGuide trailingAnchor];
  trailingAnchor2 = [(CPUIProgressView *)safeAreaLayoutGuide trailingAnchor];
  v511 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v710[3] = v511;
  heightAnchor = [(CPUIProgressView *)self->_progressView heightAnchor];
  v483 = [heightAnchor constraintEqualToConstant:14.0];
  v710[4] = v483;
  heightAnchor2 = [(CPUIPlayModeControlView *)self->_playModeControlView heightAnchor];
  v455 = [heightAnchor2 constraintEqualToConstant:28.0];
  v710[5] = v455;
  leadingAnchor3 = [(UIFocusContainerGuide *)self->_bottomRegionFocusContainerGuide leadingAnchor];
  leadingAnchor4 = [(CPUIProgressView *)safeAreaLayoutGuide leadingAnchor];
  v16 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v710[6] = v16;
  trailingAnchor3 = [(UIFocusContainerGuide *)self->_bottomRegionFocusContainerGuide trailingAnchor];
  trailingAnchor4 = [(CPUIProgressView *)safeAreaLayoutGuide trailingAnchor];
  v19 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v710[7] = v19;
  bottomAnchor3 = [(UIFocusContainerGuide *)self->_bottomRegionFocusContainerGuide bottomAnchor];
  v683 = safeAreaLayoutGuide;
  bottomAnchor4 = [(CPUIProgressView *)safeAreaLayoutGuide bottomAnchor];
  v22 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v710[8] = v22;
  heightAnchor3 = [(UIFocusContainerGuide *)self->_bottomRegionFocusContainerGuide heightAnchor];
  v24 = [heightAnchor3 constraintEqualToConstant:28.0];
  v710[9] = v24;
  [MEMORY[0x277CBEA60] arrayWithObjects:v710 count:10];
  v25 = v684 = self;
  [v685 addObjectsFromArray:v25];

  v26 = v684;
  v27 = nowPlayingLayout;
  if (([nowPlayingLayout isSportsLayout] & 1) == 0)
  {
    +[CPUISongDetailsView maximumHeightForTrackInfoFontStyle:](CPUISongDetailsView, "maximumHeightForTrackInfoFontStyle:", [nowPlayingLayout trackInfoFontStyle]);
    v29 = v28;
    [nowPlayingLayout maximumTitleViewSize];
    if (v29 >= v30)
    {
      v29 = v30;
    }

    heightAnchor4 = [(CPUISongDetailsView *)v684->_songDetailsView heightAnchor];
    v32 = [heightAnchor4 constraintLessThanOrEqualToConstant:v29];
    [v685 addObject:v32];
  }

  if ([nowPlayingLayout isSportsLayout])
  {
    artworkPosition = [nowPlayingLayout artworkPosition];
    leftAnchor = [(UIImageView *)v684->_leftTeamArtwork leftAnchor];
    leftAnchor2 = [(CPUIProgressView *)v683 leftAnchor];
    v669 = leftAnchor2;
    v630 = leftAnchor;
    if (artworkPosition == 1)
    {
      v615 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:v7 + 14.0];
      v709[0] = v615;
      rightAnchor = [(UIImageView *)v684->_rightTeamArtwork rightAnchor];
      rightAnchor2 = [(CPUIProgressView *)v683 rightAnchor];
      v570 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-(v11 + 14.0)];
      v709[1] = v570;
      centerYAnchor = [(UIImageView *)v684->_rightTeamArtwork centerYAnchor];
      centerYAnchor2 = [(UIImageView *)v684->_leftTeamArtwork centerYAnchor];
      v526 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v709[2] = v526;
      centerXAnchor = [(UILabel *)v684->_leftScoreLabel centerXAnchor];
      centerXAnchor2 = [(UIImageView *)v684->_leftTeamArtwork centerXAnchor];
      v484 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v709[3] = v484;
      centerXAnchor3 = [(UILabel *)v684->_rightScoreLabel centerXAnchor];
      centerXAnchor4 = [(UIImageView *)v684->_rightTeamArtwork centerXAnchor];
      v442 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
      v709[4] = v442;
      centerYAnchor3 = [(UIImageView *)v684->_leftFavoriteStar centerYAnchor];
      centerYAnchor4 = [(UIImageView *)v684->_leftTeamArtwork centerYAnchor];
      v407 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
      v709[5] = v407;
      rightAnchor3 = [(UIImageView *)v684->_leftFavoriteStar rightAnchor];
      leftAnchor3 = [(UIImageView *)v684->_leftTeamArtwork leftAnchor];
      v38 = [rightAnchor3 constraintEqualToAnchor:leftAnchor3];
      v709[6] = v38;
      centerYAnchor5 = [(UIImageView *)v684->_rightFavoriteStar centerYAnchor];
      centerYAnchor6 = [(UIImageView *)v684->_rightTeamArtwork centerYAnchor];
      v41 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
      v709[7] = v41;
      leftAnchor4 = [(UIImageView *)v684->_rightFavoriteStar leftAnchor];
      rightAnchor4 = [(UIImageView *)v684->_rightTeamArtwork rightAnchor];
      v44 = [leftAnchor4 constraintEqualToAnchor:rightAnchor4];
      v709[8] = v44;
      v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v709 count:9];
      [v685 addObjectsFromArray:v45];

      p_isa = &v684->super.super.super.isa;
      sportsData = [(CPUINowPlayingView *)v684 sportsData];
      leftPossessionIndicator = [sportsData leftPossessionIndicator];

      centerYAnchor7 = [(UIImageView *)v684->_possessionIndicator centerYAnchor];
      if (leftPossessionIndicator)
      {
        centerYAnchor8 = [(UILabel *)v684->_leftScoreLabel centerYAnchor];
        v51 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
        v708[0] = v51;
        rightAnchor5 = [(UIImageView *)v684->_possessionIndicator rightAnchor];
        leftAnchor5 = [(UILabel *)v684->_leftScoreLabel leftAnchor];
        v54 = [rightAnchor5 constraintEqualToAnchor:leftAnchor5 constant:-2.0];
        v708[1] = v54;
        v55 = v708;
      }

      else
      {
        centerYAnchor8 = [(UILabel *)v684->_rightScoreLabel centerYAnchor];
        v51 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
        v707[0] = v51;
        rightAnchor5 = [(UIImageView *)v684->_possessionIndicator leftAnchor];
        leftAnchor5 = [(UILabel *)v684->_rightScoreLabel rightAnchor];
        v54 = [rightAnchor5 constraintEqualToAnchor:leftAnchor5 constant:2.0];
        v707[1] = v54;
        v55 = v707;
      }
    }

    else
    {
      v617 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:v7];
      v706[0] = v617;
      topAnchor3 = [(UIImageView *)v684->_leftTeamArtwork topAnchor];
      topAnchor4 = [(CPUIProgressView *)v683 topAnchor];
      v572 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:v5];
      v706[1] = v572;
      topAnchor5 = [(UIImageView *)v684->_rightTeamArtwork topAnchor];
      topAnchor6 = [(UIImageView *)v684->_leftTeamArtwork topAnchor];
      v528 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
      v706[2] = v528;
      rightAnchor6 = [(UIImageView *)v684->_rightTeamArtwork rightAnchor];
      rightAnchor7 = [(CPUIProgressView *)v683 rightAnchor];
      v486 = [rightAnchor6 constraintEqualToAnchor:rightAnchor7 constant:-v11];
      v706[3] = v486;
      leftAnchor6 = [(UILabel *)v684->_leftScoreLabel leftAnchor];
      leftButton = [(CPUITransportControlView *)v684->_transportControlView leftButton];
      leftAnchor7 = [leftButton leftAnchor];
      v432 = [leftAnchor6 constraintEqualToAnchor:leftAnchor7];
      v706[4] = v432;
      rightAnchor8 = [(UILabel *)v684->_leftScoreLabel rightAnchor];
      leftButton2 = [(CPUITransportControlView *)v684->_transportControlView leftButton];
      rightAnchor9 = [leftButton2 rightAnchor];
      v395 = [rightAnchor8 constraintEqualToAnchor:rightAnchor9];
      v706[5] = v395;
      topAnchor7 = [(UILabel *)v684->_leftScoreLabel topAnchor];
      topAnchor8 = [(UIImageView *)v684->_leftTeamArtwork topAnchor];
      v375 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
      v706[6] = v375;
      leftAnchor8 = [(UILabel *)v684->_rightScoreLabel leftAnchor];
      fastForwardButton = [(CPUITransportControlView *)v684->_transportControlView fastForwardButton];
      leftAnchor9 = [fastForwardButton leftAnchor];
      v354 = [leftAnchor8 constraintEqualToAnchor:leftAnchor9];
      v706[7] = v354;
      rightAnchor10 = [(UILabel *)v684->_rightScoreLabel rightAnchor];
      fastForwardButton2 = [(CPUITransportControlView *)v684->_transportControlView fastForwardButton];
      rightAnchor11 = [fastForwardButton2 rightAnchor];
      v334 = [rightAnchor10 constraintEqualToAnchor:rightAnchor11];
      v706[8] = v334;
      rightAnchor12 = [(UIImageView *)v684->_leftFavoriteStar rightAnchor];
      leftAnchor10 = [(UIImageView *)v684->_leftTeamArtwork leftAnchor];
      v324 = [rightAnchor12 constraintEqualToAnchor:leftAnchor10 constant:4.0];
      v706[9] = v324;
      centerYAnchor9 = [(UIImageView *)v684->_leftFavoriteStar centerYAnchor];
      centerYAnchor10 = [(UIImageView *)v684->_leftTeamArtwork centerYAnchor];
      v70 = [centerYAnchor9 constraintEqualToAnchor:centerYAnchor10];
      v706[10] = v70;
      leftAnchor11 = [(UIImageView *)v684->_rightFavoriteStar leftAnchor];
      rightAnchor13 = [(UIImageView *)v684->_rightTeamArtwork rightAnchor];
      v73 = [leftAnchor11 constraintEqualToAnchor:rightAnchor13 constant:-4.0];
      v706[11] = v73;
      centerYAnchor11 = [(UIImageView *)v684->_rightFavoriteStar centerYAnchor];
      centerYAnchor12 = [(UIImageView *)v684->_rightTeamArtwork centerYAnchor];
      v76 = [centerYAnchor11 constraintEqualToAnchor:centerYAnchor12];
      v706[12] = v76;
      v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v706 count:13];
      [v685 addObjectsFromArray:v77];

      p_isa = &v684->super.super.super.isa;
      sportsData2 = [(CPUINowPlayingView *)v684 sportsData];
      leftPossessionIndicator2 = [sportsData2 leftPossessionIndicator];

      centerYAnchor7 = [(UIImageView *)v684->_possessionIndicator centerXAnchor];
      if (leftPossessionIndicator2)
      {
        centerYAnchor8 = [(UILabel *)v684->_leftScoreLabel centerXAnchor];
        v51 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
        v705[0] = v51;
        rightAnchor5 = [(UIImageView *)v684->_possessionIndicator topAnchor];
        leftAnchor5 = [(UILabel *)v684->_leftScoreLabel bottomAnchor];
        v54 = [rightAnchor5 constraintEqualToAnchor:leftAnchor5 constant:-6.0];
        v705[1] = v54;
        v55 = v705;
      }

      else
      {
        centerYAnchor8 = [(UILabel *)v684->_rightScoreLabel centerXAnchor];
        v51 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
        v704[0] = v51;
        rightAnchor5 = [(UIImageView *)v684->_possessionIndicator topAnchor];
        leftAnchor5 = [(UILabel *)v684->_rightScoreLabel bottomAnchor];
        v54 = [rightAnchor5 constraintEqualToAnchor:leftAnchor5 constant:-6.0];
        v704[1] = v54;
        v55 = v704;
      }
    }

    v80 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
    [v685 addObjectsFromArray:v80];

    widthAnchor = [p_isa[67] widthAnchor];
    widthAnchor2 = [p_isa widthAnchor];
    [nowPlayingLayout albumArtWidthMultiplier];
    v618 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:?];
    v703[0] = v618;
    heightAnchor5 = [p_isa[67] heightAnchor];
    widthAnchor3 = [p_isa[67] widthAnchor];
    v573 = [heightAnchor5 constraintEqualToAnchor:widthAnchor3];
    v703[1] = v573;
    widthAnchor4 = [p_isa[68] widthAnchor];
    widthAnchor5 = [p_isa widthAnchor];
    [nowPlayingLayout albumArtWidthMultiplier];
    v529 = [widthAnchor4 constraintEqualToAnchor:widthAnchor5 multiplier:?];
    v703[2] = v529;
    heightAnchor6 = [p_isa[68] heightAnchor];
    widthAnchor6 = [p_isa[68] widthAnchor];
    v487 = [heightAnchor6 constraintEqualToAnchor:widthAnchor6];
    v703[3] = v487;
    centerYAnchor13 = [p_isa[72] centerYAnchor];
    centerYAnchor14 = [p_isa[71] centerYAnchor];
    v445 = [centerYAnchor13 constraintEqualToAnchor:centerYAnchor14];
    v703[4] = v445;
    bottomAnchor5 = [p_isa[55] bottomAnchor];
    bottomAnchor6 = [(CPUIProgressView *)v683 bottomAnchor];
    v410 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-v9];
    v703[5] = v410;
    heightAnchor7 = [p_isa[69] heightAnchor];
    topAnchor27 = [heightAnchor7 constraintEqualToConstant:15.0];
    v703[6] = topAnchor27;
    widthAnchor7 = [p_isa[69] widthAnchor];
    heightAnchor8 = [p_isa[69] heightAnchor];
    v376 = [widthAnchor7 constraintEqualToAnchor:heightAnchor8];
    v703[7] = v376;
    heightAnchor9 = [p_isa[70] heightAnchor];
    v365 = [heightAnchor9 constraintEqualToConstant:15.0];
    v703[8] = v365;
    widthAnchor8 = [p_isa[70] widthAnchor];
    heightAnchor10 = [p_isa[70] heightAnchor];
    v355 = [widthAnchor8 constraintEqualToAnchor:heightAnchor10];
    v703[9] = v355;
    leftAnchor12 = [p_isa[73] leftAnchor];
    leftAnchor13 = [p_isa[67] leftAnchor];
    v340 = [leftAnchor12 constraintEqualToAnchor:leftAnchor13];
    v703[10] = v340;
    rightAnchor14 = [p_isa[73] rightAnchor];
    rightAnchor15 = [p_isa[67] rightAnchor];
    v328 = [rightAnchor14 constraintEqualToAnchor:rightAnchor15];
    v703[11] = v328;
    topAnchor9 = [p_isa[73] topAnchor];
    bottomAnchor7 = [p_isa[67] bottomAnchor];
    v322 = [topAnchor9 constraintEqualToAnchor:bottomAnchor7 constant:6.0];
    v703[12] = v322;
    leftAnchor14 = [p_isa[75] leftAnchor];
    leftAnchor15 = [p_isa[73] leftAnchor];
    v316 = [leftAnchor14 constraintEqualToAnchor:leftAnchor15];
    v703[13] = v316;
    rightAnchor16 = [p_isa[75] rightAnchor];
    rightAnchor17 = [p_isa[73] rightAnchor];
    v312 = [rightAnchor16 constraintEqualToAnchor:rightAnchor17];
    v703[14] = v312;
    topAnchor10 = [p_isa[75] topAnchor];
    bottomAnchor8 = [p_isa[73] bottomAnchor];
    v309 = [topAnchor10 constraintEqualToAnchor:bottomAnchor8];
    v703[15] = v309;
    leftAnchor16 = [p_isa[74] leftAnchor];
    leftAnchor17 = [p_isa[68] leftAnchor];
    v306 = [leftAnchor16 constraintEqualToAnchor:leftAnchor17];
    v703[16] = v306;
    rightAnchor18 = [p_isa[74] rightAnchor];
    rightAnchor19 = [p_isa[68] rightAnchor];
    v303 = [rightAnchor18 constraintEqualToAnchor:rightAnchor19];
    v703[17] = v303;
    topAnchor11 = [p_isa[74] topAnchor];
    bottomAnchor9 = [p_isa[68] bottomAnchor];
    v300 = [topAnchor11 constraintEqualToAnchor:bottomAnchor9 constant:6.0];
    v703[18] = v300;
    leftAnchor18 = [p_isa[76] leftAnchor];
    leftAnchor19 = [p_isa[74] leftAnchor];
    v297 = [leftAnchor18 constraintEqualToAnchor:leftAnchor19];
    v703[19] = v297;
    rightAnchor20 = [p_isa[76] rightAnchor];
    rightAnchor21 = [p_isa[74] rightAnchor];
    v294 = [rightAnchor20 constraintEqualToAnchor:rightAnchor21];
    v703[20] = v294;
    topAnchor12 = [p_isa[76] topAnchor];
    bottomAnchor10 = [p_isa[74] bottomAnchor];
    [topAnchor12 constraintEqualToAnchor:bottomAnchor10];
    v82 = v81 = p_isa;
    v703[21] = v82;
    widthAnchor9 = [v81[77] widthAnchor];
    v84 = [widthAnchor9 constraintEqualToConstant:12.0];
    v703[22] = v84;
    heightAnchor11 = [v81[77] heightAnchor];
    v86 = [heightAnchor11 constraintEqualToConstant:12.0];
    v703[23] = v86;
    widthAnchor10 = [v81[78] widthAnchor];
    v88 = [widthAnchor10 constraintLessThanOrEqualToConstant:20.0];
    v703[24] = v88;
    heightAnchor12 = [v81[78] heightAnchor];
    v90 = [heightAnchor12 constraintLessThanOrEqualToConstant:20.0];
    v703[25] = v90;
    v91 = [MEMORY[0x277CBEA60] arrayWithObjects:v703 count:26];
    [v685 addObjectsFromArray:v91];

    v58 = widthAnchor;
    v92 = widthAnchor2;
    goto LABEL_22;
  }

  progressView = v683;
  if ([nowPlayingLayout showsArtwork] && objc_msgSend(nowPlayingLayout, "artworkPosition") != 1)
  {
    verticalCenteringContent = [nowPlayingLayout verticalCenteringContent];
    if (verticalCenteringContent)
    {
      if (verticalCenteringContent != 1)
      {
        if (verticalCenteringContent != 2)
        {
          goto LABEL_24;
        }

        v58 = [(CPUINowPlayingView *)v684 _equalHeightVerticalSpacers:3 minimumPadding:6.0 maximumPadding:0.0];
        centerYAnchor15 = [(CPUIArtworkView *)v684->_artworkViewBrick centerYAnchor];
        centerYAnchor16 = [(CPUIProgressView *)v683 centerYAnchor];
        v643 = [centerYAnchor15 constraintEqualToAnchor:centerYAnchor16 constant:-2.0];
        v702[0] = v643;
        topAnchor13 = [(CPUISongDetailsView *)v684->_songDetailsView topAnchor];
        topAnchor14 = [(CPUIArtworkView *)v684->_artworkViewBrick topAnchor];
        v601 = [topAnchor13 constraintEqualToAnchor:topAnchor14];
        v702[1] = v601;
        bottomAnchor11 = [(CPUIPlayModeControlView *)v684->_playModeControlView bottomAnchor];
        bottomAnchor12 = [(CPUIArtworkView *)v684->_artworkViewBrick bottomAnchor];
        v556 = [bottomAnchor11 constraintEqualToAnchor:bottomAnchor12];
        v702[2] = v556;
        v541 = [v58 objectAtIndexedSubscript:0];
        topAnchor15 = [v541 topAnchor];
        bottomAnchor13 = [(CPUISongDetailsView *)v684->_songDetailsView bottomAnchor];
        v499 = [topAnchor15 constraintEqualToAnchor:bottomAnchor13];
        v702[3] = v499;
        v485 = [v58 objectAtIndexedSubscript:0];
        bottomAnchor14 = [v485 bottomAnchor];
        topAnchor16 = [(CPUITransportControlView *)v684->_transportControlView topAnchor];
        v443 = [bottomAnchor14 constraintEqualToAnchor:topAnchor16];
        v702[4] = v443;
        v431 = [v58 objectAtIndexedSubscript:1];
        topAnchor17 = [v431 topAnchor];
        bottomAnchor15 = [(CPUITransportControlView *)v684->_transportControlView bottomAnchor];
        v398 = [topAnchor17 constraintEqualToAnchor:bottomAnchor15];
        v702[5] = v398;
        topAnchor27 = [v58 objectAtIndexedSubscript:1];
        bottomAnchor16 = [topAnchor27 bottomAnchor];
        topAnchor18 = [(CPUIProgressView *)v684->_progressView topAnchor];
        v374 = [bottomAnchor16 constraintEqualToAnchor:topAnchor18];
        v702[6] = v374;
        v59 = [v58 objectAtIndexedSubscript:2];
        topAnchor19 = [v59 topAnchor];
        bottomAnchor17 = [(CPUIProgressView *)v684->_progressView bottomAnchor];
        v62 = [topAnchor19 constraintEqualToAnchor:bottomAnchor17];
        v702[7] = v62;
        v63 = [v58 objectAtIndexedSubscript:2];
        bottomAnchor18 = [v63 bottomAnchor];
        topAnchor20 = [(CPUIPlayModeControlView *)v684->_playModeControlView topAnchor];
        v66 = [bottomAnchor18 constraintEqualToAnchor:topAnchor20];
        v702[8] = v66;
        v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v702 count:9];
        [v685 addObjectsFromArray:v67];

        [array addObjectsFromArray:v58];
        goto LABEL_23;
      }

      v267 = [(CPUINowPlayingView *)v684 _equalHeightVerticalSpacers:2 minimumPadding:0.0 maximumPadding:0.0];
      [array addObjectsFromArray:v267];
      v268 = objc_opt_new();
      [(CPUINowPlayingView *)v684 addLayoutGuide:v268];
      [array addObject:v268];
      v269 = objc_opt_new();
      [(CPUINowPlayingView *)v684 addLayoutGuide:v269];
      [array addObject:v269];
      topAnchor21 = [v269 topAnchor];
      topAnchor22 = [(CPUIProgressView *)v683 topAnchor];
      [topAnchor21 constraintEqualToAnchor:topAnchor22];
      v640 = v627 = v269;
      v701[0] = v640;
      bottomAnchor19 = [v269 bottomAnchor];
      topAnchor23 = [(CPUIProgressView *)v684->_progressView topAnchor];
      v582 = [bottomAnchor19 constraintEqualToAnchor:topAnchor23];
      v701[1] = v582;
      centerYAnchor17 = [(CPUIArtworkView *)v684->_artworkViewBrick centerYAnchor];
      centerYAnchor18 = [v269 centerYAnchor];
      v537 = [centerYAnchor17 constraintEqualToAnchor:centerYAnchor18];
      v701[2] = v537;
      v523 = [v267 objectAtIndexedSubscript:0];
      topAnchor24 = [v523 topAnchor];
      topAnchor25 = [(CPUIArtworkView *)v684->_artworkViewBrick topAnchor];
      v481 = [topAnchor24 constraintEqualToAnchor:topAnchor25];
      v701[3] = v481;
      v467 = [v267 objectAtIndexedSubscript:0];
      bottomAnchor20 = [v467 bottomAnchor];
      topAnchor26 = [(CPUISongDetailsView *)v684->_songDetailsView topAnchor];
      v427 = [bottomAnchor20 constraintEqualToAnchor:topAnchor26];
      v701[4] = v427;
      v678 = v267;
      v416 = [v267 objectAtIndexedSubscript:1];
      topAnchor27 = [v416 topAnchor];
      bottomAnchor21 = [(CPUITransportControlView *)v684->_transportControlView bottomAnchor];
      v385 = [topAnchor27 constraintEqualToAnchor:bottomAnchor21];
      v701[5] = v385;
      v379 = [v267 objectAtIndexedSubscript:1];
      bottomAnchor22 = [v379 bottomAnchor];
      bottomAnchor23 = [(CPUIArtworkView *)v684->_artworkViewBrick bottomAnchor];
      v363 = [bottomAnchor22 constraintEqualToAnchor:bottomAnchor23];
      v701[6] = v363;
      topAnchor28 = [v268 topAnchor];
      bottomAnchor24 = [(CPUISongDetailsView *)v684->_songDetailsView bottomAnchor];
      v348 = [topAnchor28 constraintEqualToAnchor:bottomAnchor24];
      v701[7] = v348;
      v405 = v268;
      bottomAnchor25 = [v268 bottomAnchor];
      topAnchor29 = [(CPUITransportControlView *)v684->_transportControlView topAnchor];
      v270 = [bottomAnchor25 constraintEqualToAnchor:topAnchor29];
      v701[8] = v270;
      heightAnchor13 = [v268 heightAnchor];
      v272 = [heightAnchor13 constraintLessThanOrEqualToConstant:12.0];
      v701[9] = v272;
      bottomAnchor26 = [(CPUIPlayModeControlView *)v684->_playModeControlView bottomAnchor];
      bottomAnchor27 = [(CPUIProgressView *)v683 bottomAnchor];
      v275 = [bottomAnchor26 constraintEqualToAnchor:bottomAnchor27 constant:-v9];
      v701[10] = v275;
      bottomAnchor28 = [(CPUIProgressView *)v684->_progressView bottomAnchor];
      topAnchor30 = [(CPUIPlayModeControlView *)v684->_playModeControlView topAnchor];
      v278 = [bottomAnchor28 constraintEqualToAnchor:topAnchor30 constant:-6.0];
      v701[11] = v278;
      v279 = [MEMORY[0x277CBEA60] arrayWithObjects:v701 count:12];
      [v685 addObjectsFromArray:v279];

      v58 = v678;
      v92 = v405;
    }

    else
    {
      v280 = [(CPUINowPlayingView *)v684 _equalHeightVerticalSpacers:2 minimumPadding:0.0 maximumPadding:0.0];
      [array addObjectsFromArray:?];
      v281 = objc_opt_new();
      [(CPUINowPlayingView *)v684 addLayoutGuide:v281];
      [array addObject:v281];
      bottomAnchor29 = [(CPUIPlayModeControlView *)v684->_playModeControlView bottomAnchor];
      bottomAnchor30 = [(CPUIProgressView *)v683 bottomAnchor];
      v654 = [bottomAnchor29 constraintEqualToAnchor:bottomAnchor30 constant:-v9];
      v700[0] = v654;
      bottomAnchor31 = [(CPUIProgressView *)v684->_progressView bottomAnchor];
      topAnchor31 = [(CPUIPlayModeControlView *)v684->_playModeControlView topAnchor];
      v613 = [bottomAnchor31 constraintEqualToAnchor:topAnchor31 constant:-6.0];
      v700[1] = v613;
      topAnchor32 = [v281 topAnchor];
      bottomAnchor32 = [(CPUISongDetailsView *)v684->_songDetailsView bottomAnchor];
      v553 = [topAnchor32 constraintEqualToAnchor:bottomAnchor32];
      v700[2] = v553;
      v583 = v281;
      bottomAnchor33 = [v281 bottomAnchor];
      topAnchor33 = [(CPUIProgressView *)v684->_progressView topAnchor];
      v510 = [bottomAnchor33 constraintEqualToAnchor:topAnchor33];
      v700[3] = v510;
      centerYAnchor19 = [(CPUITransportControlView *)v684->_transportControlView centerYAnchor];
      centerYAnchor20 = [v281 centerYAnchor];
      v468 = [centerYAnchor19 constraintEqualToAnchor:centerYAnchor20];
      v700[4] = v468;
      v454 = [v280 objectAtIndexedSubscript:0];
      topAnchor34 = [v454 topAnchor];
      topAnchor35 = [(CPUIProgressView *)v683 topAnchor];
      v417 = [topAnchor34 constraintEqualToAnchor:topAnchor35 constant:v5];
      v700[5] = v417;
      v282 = v280;
      v406 = [v280 objectAtIndexedSubscript:0];
      topAnchor27 = [v406 bottomAnchor];
      topAnchor36 = [(CPUISongDetailsView *)v684->_songDetailsView topAnchor];
      v386 = [topAnchor27 constraintEqualToAnchor:topAnchor36];
      v700[6] = v386;
      v283 = [v280 objectAtIndexedSubscript:1];
      topAnchor37 = [v283 topAnchor];
      bottomAnchor34 = [(CPUIArtworkView *)v684->_artworkViewBrick bottomAnchor];
      v286 = [topAnchor37 constraintEqualToAnchor:bottomAnchor34];
      v700[7] = v286;
      v287 = [v280 objectAtIndexedSubscript:1];
      bottomAnchor35 = [v287 bottomAnchor];
      topAnchor38 = [(CPUIProgressView *)v684->_progressView topAnchor];
      v290 = [bottomAnchor35 constraintEqualToAnchor:topAnchor38];
      v700[8] = v290;
      v291 = [MEMORY[0x277CBEA60] arrayWithObjects:v700 count:9];
      [v685 addObjectsFromArray:v291];

      v58 = v282;
      v92 = v583;
    }

LABEL_22:

LABEL_23:
    v26 = v684;
    v27 = nowPlayingLayout;
    progressView = v683;
  }

LABEL_24:
  if ([v27 isSportsLayout])
  {
    goto LABEL_33;
  }

  if ([v27 showsArtwork])
  {
    widthAnchor11 = [(CPUIArtworkView *)v26->_artworkViewBrick widthAnchor];
    widthAnchor12 = [(CPUINowPlayingView *)v26 widthAnchor];
    [v27 albumArtWidthMultiplier];
    v95 = [widthAnchor11 constraintEqualToAnchor:widthAnchor12 multiplier:?];
    v699[0] = v95;
    heightAnchor14 = [(CPUIArtworkView *)v26->_artworkViewBrick heightAnchor];
    widthAnchor13 = [(CPUIArtworkView *)v26->_artworkViewBrick widthAnchor];
    topAnchor41 = [heightAnchor14 constraintEqualToAnchor:widthAnchor13];
    v699[1] = topAnchor41;
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
    widthAnchor11 = [(CPUINowPlayingView *)v26 _equalHeightVerticalSpacers:2 minimumPadding:6.0 maximumPadding:12.0];
    [array addObjectsFromArray:widthAnchor11];
    v645 = [widthAnchor11 objectAtIndexedSubscript:0];
    topAnchor39 = [v645 topAnchor];
    topAnchor40 = [(CPUIProgressView *)progressView topAnchor];
    v559 = [topAnchor39 constraintEqualToAnchor:topAnchor40];
    v698[0] = v559;
    topAnchor41 = [(CPUISongDetailsView *)v26->_songDetailsView topAnchor];
    [widthAnchor11 objectAtIndexedSubscript:0];
    v99 = v103 = progressView;
    bottomAnchor36 = [v99 bottomAnchor];
    v658 = [topAnchor41 constraintEqualToAnchor:bottomAnchor36];
    v698[1] = v658;
    topAnchor42 = [(CPUITransportControlView *)v26->_transportControlView topAnchor];
    bottomAnchor37 = [(CPUISongDetailsView *)v26->_songDetailsView bottomAnchor];
    v574 = [topAnchor42 constraintEqualToAnchor:bottomAnchor37 constant:6.0];
    v698[2] = v574;
    topAnchor43 = [(CPUIProgressView *)v26->_progressView topAnchor];
    bottomAnchor38 = [(CPUITransportControlView *)v26->_transportControlView bottomAnchor];
    v516 = [topAnchor43 constraintEqualToAnchor:bottomAnchor38 constant:12.0];
    v698[3] = v516;
    topAnchor44 = [(CPUIPlayModeControlView *)v26->_playModeControlView topAnchor];
    bottomAnchor39 = [(CPUIProgressView *)v26->_progressView bottomAnchor];
    v474 = [topAnchor44 constraintEqualToAnchor:bottomAnchor39 constant:12.0];
    v698[4] = v474;
    bottomAnchor40 = [(CPUIPlayModeControlView *)v26->_playModeControlView bottomAnchor];
    v460 = [widthAnchor11 objectAtIndexedSubscript:1];
    topAnchor45 = [v460 topAnchor];
    v105 = [bottomAnchor40 constraintEqualToAnchor:topAnchor45];
    v698[5] = v105;
    v106 = [widthAnchor11 objectAtIndexedSubscript:1];
    bottomAnchor41 = [v106 bottomAnchor];
    bottomAnchor42 = [(CPUIProgressView *)v103 bottomAnchor];
    v109 = [bottomAnchor41 constraintEqualToAnchor:bottomAnchor42];
    v698[6] = v109;
    v110 = [MEMORY[0x277CBEA60] arrayWithObjects:v698 count:7];
    [v685 addObjectsFromArray:v110];

    widthAnchor13 = v559;
    heightAnchor14 = topAnchor40;

    v26 = v684;
    v95 = topAnchor39;

    widthAnchor12 = v645;
    v27 = nowPlayingLayout;

    goto LABEL_29;
  }

LABEL_30:
  if ([v27 showsArtwork] && objc_msgSend(v27, "artworkPosition") != 1)
  {
    topAnchor46 = [(CPUISongDetailsView *)v26->_songDetailsView topAnchor];
    topAnchor47 = [(CPUIArtworkView *)v26->_artworkViewBrick topAnchor];
    v113 = [topAnchor46 constraintEqualToAnchor:topAnchor47];
    [v685 addObject:v113];
  }

LABEL_33:
  artworkPosition2 = [v27 artworkPosition];
  if (artworkPosition2 < 2)
  {
    rightAnchor22 = [(CPUITransportControlView *)v26->_transportControlView rightAnchor];
    [(CPUIProgressView *)progressView rightAnchor];
    v660 = v135 = -v11;
    v674 = rightAnchor22;
    v647 = [rightAnchor22 constraintEqualToAnchor:v135 constant:?];
    v697[0] = v647;
    leftAnchor20 = [(CPUITransportControlView *)v26->_transportControlView leftAnchor];
    leftAnchor21 = [(CPUIProgressView *)progressView leftAnchor];
    v635 = leftAnchor20;
    v606 = [leftAnchor20 constraintEqualToAnchor:v7 constant:?];
    v697[1] = v606;
    rightAnchor23 = [(CPUIProgressView *)v26->_progressView rightAnchor];
    rightAnchor24 = [(CPUIProgressView *)progressView rightAnchor];
    v591 = rightAnchor23;
    v561 = [rightAnchor23 constraintEqualToAnchor:v135 constant:?];
    v697[2] = v561;
    leftAnchor22 = [(CPUIProgressView *)v26->_progressView leftAnchor];
    leftAnchor23 = [(CPUIProgressView *)progressView leftAnchor];
    v546 = leftAnchor22;
    v140 = [leftAnchor22 constraintEqualToAnchor:leftAnchor23 constant:v7];
    v697[3] = v140;
    leftAnchor24 = [(CPUIPlayModeControlView *)v26->_playModeControlView leftAnchor];
    leftAnchor25 = [(CPUIProgressView *)progressView leftAnchor];
    v143 = [leftAnchor24 constraintEqualToAnchor:leftAnchor25 constant:v7];
    v697[4] = v143;
    rightAnchor25 = [(CPUIPlayModeControlView *)v26->_playModeControlView rightAnchor];
    if (([v27 playModeControlButtonsFullWidth] & 1) == 0)
    {
      progressView = v26->_progressView;
    }

    rightAnchor26 = [(CPUIProgressView *)progressView rightAnchor];
    v27 = nowPlayingLayout;
    playModeControlButtonsFullWidth = [nowPlayingLayout playModeControlButtonsFullWidth];
    v147 = 0.0;
    if (playModeControlButtonsFullWidth)
    {
      v147 = v135;
    }

    v148 = [rightAnchor25 constraintEqualToAnchor:rightAnchor26 constant:v147];
    v697[5] = v148;
    v149 = [MEMORY[0x277CBEA60] arrayWithObjects:v697 count:6];
    [v685 addObjectsFromArray:v149];

    if (![nowPlayingLayout isSportsLayout])
    {
      v26 = v684;
      rightAnchor27 = [(CPUISongDetailsView *)v684->_songDetailsView rightAnchor];
      rightAnchor28 = [(CPUITransportControlView *)v684->_transportControlView rightAnchor];
      v169 = [rightAnchor27 constraintEqualToAnchor:rightAnchor28];
      v695[0] = v169;
      leftAnchor26 = [(CPUISongDetailsView *)v684->_songDetailsView leftAnchor];
      leftAnchor27 = [(CPUIProgressView *)v683 leftAnchor];
      v172 = [leftAnchor26 constraintEqualToAnchor:leftAnchor27 constant:v7];
      v695[1] = v172;
      v173 = [MEMORY[0x277CBEA60] arrayWithObjects:v695 count:2];
      [v685 addObjectsFromArray:v173];

      if ([nowPlayingLayout showsArtwork])
      {
        centerXAnchor5 = [(CPUIArtworkView *)v684->_artworkViewBrick centerXAnchor];
        progressView = v683;
        centerXAnchor6 = [(CPUIProgressView *)v683 centerXAnchor];
        v158 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
        v694 = v158;
        v174 = MEMORY[0x277CBEA60];
        v175 = &v694;
      }

      else
      {
        centerXAnchor5 = [(CPUISongDetailsView *)v684->_songDetailsView topAnchor];
        progressView = v683;
        centerXAnchor6 = [(CPUIProgressView *)v683 topAnchor];
        v158 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6 constant:v5];
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
    centerXAnchor5 = [(UIStackView *)v684->_titleStackView centerYAnchor];
    centerYAnchor21 = [(UILabel *)v684->_leftScoreLabel centerYAnchor];
    v661 = [centerXAnchor5 constraintEqualToAnchor:centerYAnchor21];
    v696[0] = v661;
    leftAnchor28 = [(UIStackView *)v684->_titleStackView leftAnchor];
    rightAnchor29 = [(UIImageView *)v684->_leftTeamArtwork rightAnchor];
    v152 = [leftAnchor28 constraintEqualToAnchor:rightAnchor29];
    v696[1] = v152;
    rightAnchor30 = [(UIStackView *)v684->_titleStackView rightAnchor];
    leftAnchor29 = [(UIImageView *)v684->_rightTeamArtwork leftAnchor];
    v155 = [rightAnchor30 constraintEqualToAnchor:leftAnchor29];
    v696[2] = v155;
    v156 = [MEMORY[0x277CBEA60] arrayWithObjects:v696 count:3];
    [v685 addObjectsFromArray:v156];

    v157 = leftAnchor28;
    v158 = v661;

    centerXAnchor6 = centerYAnchor21;
    v115 = v685;
    goto LABEL_81;
  }

  if (artworkPosition2 != 2)
  {
    v115 = v685;
    if (artworkPosition2 != 3)
    {
      goto LABEL_83;
    }

    leftAnchor30 = [(CPUIArtworkView *)v26->_artworkViewBrick leftAnchor];
    [(CPUIProgressView *)progressView leftAnchor];
    rightAnchor47 = v634 = leftAnchor30;
    v659 = [leftAnchor30 constraintEqualToAnchor:v7 constant:?];
    v690[0] = v659;
    leftAnchor31 = [(CPUISongDetailsView *)v26->_songDetailsView leftAnchor];
    [(CPUIArtworkView *)v26->_artworkViewBrick rightAnchor];
    v620 = v646 = leftAnchor31;
    v605 = [leftAnchor31 constraintEqualToAnchor:v7 constant:?];
    v690[1] = v605;
    rightAnchor31 = [(CPUISongDetailsView *)v26->_songDetailsView rightAnchor];
    rightAnchor32 = [(CPUIProgressView *)progressView rightAnchor];
    v590 = rightAnchor31;
    v560 = [rightAnchor31 constraintEqualToAnchor:-v11 constant:?];
    v690[2] = v560;
    leftAnchor32 = [(CPUITransportControlView *)v26->_transportControlView leftAnchor];
    rightAnchor33 = [(CPUIArtworkView *)v26->_artworkViewBrick rightAnchor];
    v545 = leftAnchor32;
    v517 = [leftAnchor32 constraintEqualToAnchor:v7 constant:?];
    v690[3] = v517;
    rightAnchor34 = [(CPUITransportControlView *)v26->_transportControlView rightAnchor];
    rightAnchor35 = [(CPUIProgressView *)progressView rightAnchor];
    v503 = rightAnchor34;
    v475 = [rightAnchor34 constraintEqualToAnchor:-v11 constant:?];
    v690[4] = v475;
    rightAnchor36 = [(CPUIProgressView *)v26->_progressView rightAnchor];
    rightAnchor37 = [(CPUITransportControlView *)v26->_transportControlView rightAnchor];
    v461 = rightAnchor36;
    v434 = [rightAnchor36 constraintEqualToAnchor:?];
    v690[5] = v434;
    leftAnchor33 = [(CPUIProgressView *)v26->_progressView leftAnchor];
    if ([v27 progressViewFullWidth])
    {
      v123 = 464;
    }

    else
    {
      v123 = 432;
    }

    leftAnchor34 = [*(&v26->super.super.super.isa + v123) leftAnchor];
    v422 = leftAnchor33;
    v124 = [leftAnchor33 constraintEqualToAnchor:?];
    v690[6] = v124;
    leftAnchor35 = [(CPUIPlayModeControlView *)v26->_playModeControlView leftAnchor];
    if (([v27 playModeControlButtonsFullWidth] & 1) == 0)
    {
      progressView = v26->_transportControlView;
    }

    leftAnchor36 = [(CPUIProgressView *)progressView leftAnchor];
    playModeControlButtonsFullWidth2 = [v27 playModeControlButtonsFullWidth];
    v128 = 0.0;
    if (playModeControlButtonsFullWidth2)
    {
      v128 = v7;
    }

    v129 = [leftAnchor35 constraintEqualToAnchor:leftAnchor36 constant:v128];
    v690[7] = v129;
    rightAnchor38 = [(CPUIPlayModeControlView *)v26->_playModeControlView rightAnchor];
    progressView = v683;
    rightAnchor39 = [(CPUIProgressView *)v683 rightAnchor];
    v132 = [rightAnchor38 constraintEqualToAnchor:rightAnchor39 constant:-v11];
    v690[8] = v132;
    v133 = [MEMORY[0x277CBEA60] arrayWithObjects:v690 count:9];
    [v685 addObjectsFromArray:v133];

    v26 = v684;
    v115 = v685;
    v27 = nowPlayingLayout;

    goto LABEL_72;
  }

  if ([v27 isSportsLayout])
  {
    centerYAnchor22 = [(UIStackView *)v26->_titleStackView centerYAnchor];
    centerYAnchor23 = [(UILabel *)v26->_leftScoreLabel centerYAnchor];
    v662 = [centerYAnchor22 constraintEqualToAnchor:?];
    v692[0] = v662;
    leftAnchor37 = [(UIStackView *)v26->_titleStackView leftAnchor];
    [(UILabel *)v26->_leftScoreLabel rightAnchor];
    v622 = v649 = leftAnchor37;
    v607 = [leftAnchor37 constraintEqualToAnchor:2.0 constant:?];
    v692[1] = v607;
    rightAnchor40 = [(UIStackView *)v26->_titleStackView rightAnchor];
    leftAnchor38 = [(UILabel *)v26->_rightScoreLabel leftAnchor];
    v592 = rightAnchor40;
    v562 = [rightAnchor40 constraintEqualToAnchor:-2.0 constant:?];
    v692[2] = v562;
    leftAnchor39 = [(CPUITransportControlView *)v26->_transportControlView leftAnchor];
    rightAnchor41 = [(UIImageView *)v26->_leftTeamArtwork rightAnchor];
    v547 = leftAnchor39;
    v518 = [leftAnchor39 constraintEqualToAnchor:6.0 constant:?];
    v692[3] = v518;
    rightAnchor42 = [(CPUITransportControlView *)v26->_transportControlView rightAnchor];
    leftAnchor40 = [(UIImageView *)v26->_rightTeamArtwork leftAnchor];
    v504 = rightAnchor42;
    v476 = [rightAnchor42 constraintEqualToAnchor:-6.0 constant:?];
    v692[4] = v476;
    leftAnchor41 = [(CPUIProgressView *)v26->_progressView leftAnchor];
    progressViewFullWidth = [v27 progressViewFullWidth];
    if (progressViewFullWidth)
    {
      leftAnchor42 = [(CPUIProgressView *)progressView leftAnchor];
      leftButton3 = leftAnchor42;
    }

    else
    {
      leftButton3 = [(CPUITransportControlView *)v26->_transportControlView leftButton];
      leftAnchor42 = [leftButton3 leftAnchor];
    }

    playModeControlButtonsFullWidth3 = [v27 playModeControlButtonsFullWidth];
    v183 = 0.0;
    if (playModeControlButtonsFullWidth3)
    {
      v183 = v7;
    }

    v463 = leftAnchor41;
    v401 = leftAnchor42;
    v423 = [leftAnchor41 constraintEqualToAnchor:leftAnchor42 constant:v183];
    v692[5] = v423;
    rightAnchor43 = [(CPUIProgressView *)v26->_progressView rightAnchor];
    progressViewFullWidth2 = [v27 progressViewFullWidth];
    v186 = &v26->super.super.super.isa;
    v187 = progressViewFullWidth2;
    v636 = centerYAnchor22;
    if (progressViewFullWidth2)
    {
      [(CPUIProgressView *)progressView rightAnchor];
    }

    else
    {
      topAnchor27 = [v186[54] fastForwardButton];
      [topAnchor27 rightAnchor];
    }
    v188 = ;
    playModeControlButtonsFullWidth4 = [v27 playModeControlButtonsFullWidth];
    v206 = -v11;
    if (!playModeControlButtonsFullWidth4)
    {
      v206 = 0.0;
    }

    v413 = rightAnchor43;
    v207 = [rightAnchor43 constraintEqualToAnchor:v188 constant:v206];
    v692[6] = v207;
    leftAnchor43 = [v186[55] leftAnchor];
    leftAnchor44 = [v186[56] leftAnchor];
    v210 = [leftAnchor43 constraintEqualToAnchor:leftAnchor44];
    v692[7] = v210;
    rightAnchor44 = [v186[55] rightAnchor];
    rightAnchor45 = [v186[56] rightAnchor];
    v213 = [rightAnchor44 constraintEqualToAnchor:rightAnchor45];
    v692[8] = v213;
    v214 = [MEMORY[0x277CBEA60] arrayWithObjects:v692 count:9];
    [v685 addObjectsFromArray:v214];

    if ((v187 & 1) == 0)
    {

      v188 = topAnchor27;
    }

    centerXAnchor5 = v636;
    v157 = v649;
    v158 = v662;
    centerXAnchor6 = centerYAnchor23;
    if ((progressViewFullWidth & 1) == 0)
    {
    }

    v115 = v685;
    v26 = v684;
    v27 = nowPlayingLayout;
LABEL_81:
    progressView = v683;
    goto LABEL_82;
  }

  rightAnchor46 = [(CPUIArtworkView *)v26->_artworkViewBrick rightAnchor];
  rightAnchor47 = [(CPUIProgressView *)progressView rightAnchor];
  v659 = [rightAnchor46 constraintEqualToAnchor:-v11 constant:?];
  v691[0] = v659;
  leftAnchor45 = [(CPUITransportControlView *)v26->_transportControlView leftAnchor];
  [(CPUIProgressView *)progressView leftAnchor];
  v623 = v646 = leftAnchor45;
  v608 = [leftAnchor45 constraintEqualToAnchor:v7 constant:?];
  v691[1] = v608;
  rightAnchor48 = [(CPUITransportControlView *)v26->_transportControlView rightAnchor];
  leftAnchor46 = [(CPUIArtworkView *)v26->_artworkViewBrick leftAnchor];
  v593 = rightAnchor48;
  v563 = [rightAnchor48 constraintEqualToAnchor:-v11 constant:?];
  v691[2] = v563;
  leftAnchor47 = [(CPUIProgressView *)v26->_progressView leftAnchor];
  leftButton4 = [(CPUITransportControlView *)v26->_transportControlView leftButton];
  [leftButton4 leftAnchor];
  v519 = v548 = leftAnchor47;
  v505 = [leftAnchor47 constraintEqualToAnchor:?];
  v691[3] = v505;
  rightAnchor49 = [(CPUIProgressView *)v26->_progressView rightAnchor];
  progressViewFullWidth3 = [v27 progressViewFullWidth];
  v634 = rightAnchor46;
  if (progressViewFullWidth3)
  {
    rightAnchor50 = [(CPUIArtworkView *)v26->_artworkViewBrick rightAnchor];
    fastForwardButton3 = rightAnchor50;
  }

  else
  {
    fastForwardButton3 = [(CPUITransportControlView *)v26->_transportControlView fastForwardButton];
    rightAnchor50 = [fastForwardButton3 rightAnchor];
  }

  v491 = rightAnchor49;
  v402 = rightAnchor50;
  v449 = [rightAnchor49 constraintEqualToAnchor:rightAnchor50];
  v691[4] = v449;
  rightAnchor51 = [(CPUISongDetailsView *)v26->_songDetailsView rightAnchor];
  leftAnchor48 = [(CPUIArtworkView *)v26->_artworkViewBrick leftAnchor];
  v436 = rightAnchor51;
  v412 = [rightAnchor51 constraintEqualToAnchor:-v11 constant:?];
  v691[5] = v412;
  leftAnchor49 = [(CPUISongDetailsView *)v26->_songDetailsView leftAnchor];
  leftAnchor50 = [(CPUIProgressView *)progressView leftAnchor];
  v192 = [leftAnchor49 constraintEqualToAnchor:leftAnchor50 constant:v7];
  v691[6] = v192;
  leftAnchor51 = [(CPUIPlayModeControlView *)v26->_playModeControlView leftAnchor];
  leftAnchor52 = [(CPUIProgressView *)progressView leftAnchor];
  v195 = [leftAnchor51 constraintEqualToAnchor:leftAnchor52 constant:v7];
  v691[7] = v195;
  [(CPUIPlayModeControlView *)v26->_playModeControlView rightAnchor];
  v197 = v196 = progressView;
  playModeControlButtonsFullWidth5 = [nowPlayingLayout playModeControlButtonsFullWidth];
  v199 = v196;
  if ((playModeControlButtonsFullWidth5 & 1) == 0)
  {
    v199 = v26->_progressView;
  }

  rightAnchor52 = [(CPUIProgressView *)v199 rightAnchor];
  playModeControlButtonsFullWidth6 = [nowPlayingLayout playModeControlButtonsFullWidth];
  v202 = 0.0;
  if (playModeControlButtonsFullWidth6)
  {
    v202 = -v11;
  }

  v203 = [v197 constraintEqualToAnchor:rightAnchor52 constant:v202];
  v691[8] = v203;
  v204 = [MEMORY[0x277CBEA60] arrayWithObjects:v691 count:9];
  [v685 addObjectsFromArray:v204];

  if ((progressViewFullWidth3 & 1) == 0)
  {
  }

  v115 = v685;
  v26 = v684;
  v27 = nowPlayingLayout;
  progressView = v683;
LABEL_72:
  centerXAnchor5 = v634;
  v157 = v646;
  v158 = v659;
  centerXAnchor6 = rightAnchor47;
LABEL_82:

LABEL_83:
  artworkPosition3 = [v27 artworkPosition];
  if (artworkPosition3 - 2 < 2)
  {
    if (![v27 isSportsLayout])
    {
      goto LABEL_96;
    }

    v231 = [(CPUINowPlayingView *)v26 _equalHeightVerticalSpacers:3 minimumPadding:6.0 maximumPadding:12.0];
    v664 = [v231 objectAtIndexedSubscript:0];
    topAnchor48 = [v664 topAnchor];
    bottomAnchor43 = [(UILabel *)v26->_leftScoreLabel bottomAnchor];
    v625 = [topAnchor48 constraintEqualToAnchor:bottomAnchor43];
    v687[0] = v625;
    v610 = [v231 objectAtIndexedSubscript:0];
    bottomAnchor44 = [v610 bottomAnchor];
    topAnchor49 = [(CPUITransportControlView *)v26->_transportControlView topAnchor];
    v565 = [bottomAnchor44 constraintEqualToAnchor:topAnchor49];
    v687[1] = v565;
    v550 = [v231 objectAtIndexedSubscript:1];
    topAnchor50 = [v550 topAnchor];
    bottomAnchor45 = [(CPUITransportControlView *)v26->_transportControlView bottomAnchor];
    v507 = [topAnchor50 constraintEqualToAnchor:bottomAnchor45];
    v687[2] = v507;
    v493 = [v231 objectAtIndexedSubscript:1];
    bottomAnchor46 = [v493 bottomAnchor];
    topAnchor51 = [(CPUIProgressView *)v26->_progressView topAnchor];
    v451 = [bottomAnchor46 constraintEqualToAnchor:topAnchor51];
    v687[3] = v451;
    v232 = [v231 objectAtIndexedSubscript:2];
    topAnchor52 = [v232 topAnchor];
    bottomAnchor47 = [(CPUIProgressView *)v26->_progressView bottomAnchor];
    [topAnchor52 constraintEqualToAnchor:bottomAnchor47];
    v235 = v26;
    v237 = v236 = v115;
    v687[4] = v237;
    v677 = v231;
    v238 = [v231 objectAtIndexedSubscript:2];
    bottomAnchor48 = [v238 bottomAnchor];
    topAnchor53 = [(CPUIPlayModeControlView *)v235->_playModeControlView topAnchor];
    v241 = [bottomAnchor48 constraintEqualToAnchor:topAnchor53];
    v687[5] = v241;
    v242 = [MEMORY[0x277CBEA60] arrayWithObjects:v687 count:6];
    [v236 addObjectsFromArray:v242];

    v218 = v664;
    v230 = array;
  }

  else
  {
    if (artworkPosition3 > 1)
    {
      goto LABEL_96;
    }

    if ([v27 isSportsLayout])
    {
      v216 = [(CPUINowPlayingView *)v26 _equalHeightVerticalSpacers:3 minimumPadding:6.0 maximumPadding:0.0];
      v217 = [(CPUINowPlayingView *)v26 _equalHeightVerticalSpacers:2 minimumPadding:6.0 maximumPadding:12.0];
      v663 = [v216 objectAtIndexedSubscript:0];
      topAnchor54 = [v663 topAnchor];
      topAnchor55 = [(CPUIProgressView *)progressView topAnchor];
      v624 = [topAnchor54 constraintEqualToAnchor:topAnchor55];
      v689[0] = v624;
      v609 = [v216 objectAtIndexedSubscript:0];
      bottomAnchor49 = [v609 bottomAnchor];
      topAnchor56 = [(UILabel *)v26->_leftScoreLabel topAnchor];
      v564 = [bottomAnchor49 constraintEqualToAnchor:topAnchor56];
      v689[1] = v564;
      v549 = [v216 objectAtIndexedSubscript:1];
      topAnchor57 = [v549 topAnchor];
      bottomAnchor50 = [(UILabel *)v26->_leftScoreLabel bottomAnchor];
      v506 = [topAnchor57 constraintEqualToAnchor:bottomAnchor50];
      v689[2] = v506;
      v492 = [v216 objectAtIndexedSubscript:1];
      bottomAnchor51 = [v492 bottomAnchor];
      topAnchor58 = [(UIImageView *)v26->_leftTeamArtwork topAnchor];
      v450 = [bottomAnchor51 constraintEqualToAnchor:topAnchor58];
      v689[3] = v450;
      v437 = [v216 objectAtIndexedSubscript:2];
      topAnchor59 = [v437 topAnchor];
      bottomAnchor52 = [(UILabel *)v26->_leftTeamStandingLabel bottomAnchor];
      v403 = [topAnchor59 constraintEqualToAnchor:bottomAnchor52];
      v689[4] = v403;
      v677 = v216;
      v396 = [v216 objectAtIndexedSubscript:2];
      bottomAnchor53 = [v396 bottomAnchor];
      topAnchor60 = [(CPUITransportControlView *)v26->_transportControlView topAnchor];
      v377 = [bottomAnchor53 constraintEqualToAnchor:topAnchor60];
      v689[5] = v377;
      v218 = v217;
      v371 = [v217 objectAtIndexedSubscript:0];
      topAnchor61 = [v371 topAnchor];
      bottomAnchor54 = [(CPUITransportControlView *)v26->_transportControlView bottomAnchor];
      v356 = [topAnchor61 constraintEqualToAnchor:bottomAnchor54];
      v689[6] = v356;
      v351 = [v217 objectAtIndexedSubscript:0];
      bottomAnchor55 = [v351 bottomAnchor];
      topAnchor62 = [(CPUIProgressView *)v26->_progressView topAnchor];
      v336 = [bottomAnchor55 constraintEqualToAnchor:topAnchor62];
      v689[7] = v336;
      v332 = [v217 objectAtIndexedSubscript:1];
      topAnchor63 = [v332 topAnchor];
      [(CPUIProgressView *)v26->_progressView bottomAnchor];
      v221 = v220 = v115;
      v222 = [topAnchor63 constraintEqualToAnchor:v221];
      v689[8] = v222;
      v223 = [v218 objectAtIndexedSubscript:1];
      bottomAnchor56 = [v223 bottomAnchor];
      v225 = v26;
      v226 = bottomAnchor56;
      topAnchor64 = [(CPUIPlayModeControlView *)v225->_playModeControlView topAnchor];
      v228 = [v226 constraintEqualToAnchor:topAnchor64];
      v689[9] = v228;
      v229 = [MEMORY[0x277CBEA60] arrayWithObjects:v689 count:10];
      [v220 addObjectsFromArray:v229];

      v230 = array;
      [array addObjectsFromArray:v218];
    }

    else
    {
      v243 = [(CPUINowPlayingView *)v26 _equalHeightVerticalSpacers:3 minimumPadding:12.0 maximumPadding:12.0];
      v665 = [(CPUINowPlayingView *)v26 _equalHeightVerticalSpacers:1 minimumPadding:6.0 maximumPadding:6.0];
      v244 = [(CPUINowPlayingView *)v26 _equalHeightVerticalSpacers:2 minimumPadding:0.0 maximumPadding:0.0];
      v245 = [v244 objectAtIndexedSubscript:0];
      topAnchor65 = [v245 topAnchor];
      topAnchor66 = [(CPUIProgressView *)progressView topAnchor];
      v248 = [topAnchor65 constraintEqualToAnchor:topAnchor66];
      v688[0] = v248;
      v652 = v244;
      v581 = [v244 objectAtIndexedSubscript:0];
      bottomAnchor57 = [v581 bottomAnchor];
      showsArtwork = [v27 showsArtwork];
      v251 = &OBJC_IVAR___CPUINowPlayingView__songDetailsView;
      if (showsArtwork)
      {
        v251 = &OBJC_IVAR___CPUINowPlayingView__artworkViewBrick;
      }

      topAnchor67 = [*(&v26->super.super.super.isa + *v251) topAnchor];
      v566 = bottomAnchor57;
      v252 = [bottomAnchor57 constraintEqualToAnchor:?];
      v688[1] = v252;
      v522 = [v243 objectAtIndexedSubscript:0];
      topAnchor68 = [v522 topAnchor];
      v626 = topAnchor65;
      v639 = v245;
      v596 = v248;
      v611 = topAnchor66;
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
      v508 = topAnchor68;
      v480 = [topAnchor68 constraintEqualToAnchor:v494];
      v688[2] = v480;
      v466 = [v243 objectAtIndexedSubscript:0];
      bottomAnchor58 = [v466 bottomAnchor];
      topAnchor69 = [(CPUISongDetailsView *)v26->_songDetailsView topAnchor];
      v426 = [bottomAnchor58 constraintEqualToAnchor:topAnchor69];
      v688[3] = v426;
      v415 = [v665 objectAtIndexedSubscript:0];
      topAnchor70 = [v415 topAnchor];
      bottomAnchor59 = [(CPUISongDetailsView *)v26->_songDetailsView bottomAnchor];
      v391 = [topAnchor70 constraintEqualToAnchor:bottomAnchor59];
      v688[4] = v391;
      v384 = [v665 objectAtIndexedSubscript:0];
      bottomAnchor60 = [v384 bottomAnchor];
      topAnchor71 = [(CPUITransportControlView *)v26->_transportControlView topAnchor];
      v367 = [bottomAnchor60 constraintEqualToAnchor:topAnchor71];
      v688[5] = v367;
      v362 = [v243 objectAtIndexedSubscript:1];
      topAnchor72 = [v362 topAnchor];
      bottomAnchor61 = [(CPUITransportControlView *)v26->_transportControlView bottomAnchor];
      v347 = [topAnchor72 constraintEqualToAnchor:bottomAnchor61];
      v688[6] = v347;
      v342 = [v243 objectAtIndexedSubscript:1];
      bottomAnchor62 = [v342 bottomAnchor];
      topAnchor73 = [(CPUIProgressView *)v26->_progressView topAnchor];
      v329 = [bottomAnchor62 constraintEqualToAnchor:topAnchor73];
      v688[7] = v329;
      v326 = [v243 objectAtIndexedSubscript:2];
      topAnchor74 = [v326 topAnchor];
      bottomAnchor63 = [(CPUIProgressView *)v26->_progressView bottomAnchor];
      v321 = [topAnchor74 constraintEqualToAnchor:bottomAnchor63];
      v688[8] = v321;
      v319 = [v243 objectAtIndexedSubscript:2];
      bottomAnchor64 = [v319 bottomAnchor];
      topAnchor75 = [(CPUIPlayModeControlView *)v26->_playModeControlView topAnchor];
      v254 = [bottomAnchor64 constraintEqualToAnchor:topAnchor75];
      v688[9] = v254;
      [v652 objectAtIndexedSubscript:1];
      v255 = v677 = v243;
      topAnchor76 = [v255 topAnchor];
      bottomAnchor65 = [(CPUIPlayModeControlView *)v26->_playModeControlView bottomAnchor];
      v258 = [topAnchor76 constraintEqualToAnchor:bottomAnchor65];
      v688[10] = v258;
      v259 = [v652 objectAtIndexedSubscript:1];
      bottomAnchor66 = [v259 bottomAnchor];
      bottomAnchor67 = [(CPUIProgressView *)progressView bottomAnchor];
      v262 = [bottomAnchor66 constraintEqualToAnchor:bottomAnchor67 constant:-v9];
      v688[11] = v262;
      v263 = [MEMORY[0x277CBEA60] arrayWithObjects:v688 count:12];
      [v685 addObjectsFromArray:v263];

      v218 = v665;
      v230 = array;
      [array addObjectsFromArray:v665];
      [array addObjectsFromArray:v652];
    }
  }

  [v230 addObjectsFromArray:v677];
  v115 = v685;
  v26 = v684;
  v27 = nowPlayingLayout;
  progressView = v683;
LABEL_96:
  v264 = [array copy];
  verticalSpacerLayoutGuides = v26->_verticalSpacerLayoutGuides;
  v26->_verticalSpacerLayoutGuides = v264;

  return v115;
}

- (void)setBadgeAnnotationView:(id)view
{
  v19[2] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  badgeAnnotationView = self->_badgeAnnotationView;
  if (badgeAnnotationView)
  {
    [(UIView *)badgeAnnotationView removeFromSuperview];
  }

  objc_storeStrong(&self->_badgeAnnotationView, view);
  if (viewCopy)
  {
    [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPUINowPlayingView *)self addSubview:viewCopy];
    v18 = MEMORY[0x277CCAAD0];
    centerXAnchor = [viewCopy centerXAnchor];
    sportsData = [(CPUINowPlayingView *)self sportsData];
    v9 = &OBJC_IVAR___CPUINowPlayingView__titleStackView;
    if (!sportsData)
    {
      v9 = &OBJC_IVAR___CPUINowPlayingView__songDetailsView;
    }

    centerXAnchor2 = [*(&self->super.super.super.isa + *v9) centerXAnchor];
    v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v19[0] = v11;
    topAnchor = [viewCopy topAnchor];
    sportsData2 = [(CPUINowPlayingView *)self sportsData];
    if (sportsData2)
    {
      [(UIStackView *)self->_titleStackView bottomAnchor];
    }

    else
    {
      albumArtistLabelButton = [(CPUISongDetailsView *)self->_songDetailsView albumArtistLabelButton];
      [albumArtistLabelButton bottomAnchor];
    }
    v14 = ;
    v15 = [topAnchor constraintEqualToAnchor:v14 constant:3.0];
    v19[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    [v18 activateConstraints:v16];

    if (!sportsData2)
    {

      v14 = albumArtistLabelButton;
    }
  }
}

- (void)_handleShowVideo
{
  videoDelegate = [(CPUINowPlayingView *)self videoDelegate];
  if (videoDelegate)
  {
    v4 = videoDelegate;
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