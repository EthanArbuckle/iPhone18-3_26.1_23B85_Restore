@interface CPUITransportControlView
- (CPUITransportControlView)initWithFrame:(CGRect)a3;
- (void)_updatePlayPauseButton;
- (void)layoutSubviews;
- (void)setPauseButtonImageName:(id)a3;
- (void)setPlayButtonImageName:(id)a3;
- (void)setProgressActive:(BOOL)a3;
- (void)setupConstraints;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
@end

@implementation CPUITransportControlView

- (CPUITransportControlView)initWithFrame:(CGRect)a3
{
  v48[4] = *MEMORY[0x277D85DE8];
  v46.receiver = self;
  v46.super_class = CPUITransportControlView;
  v3 = [(CPUITransportControlView *)&v46 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    playPauseButton = v3->_playPauseButton;
    v3->_playPauseButton = v4;

    [(CPUIModernButton *)v3->_playPauseButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPUIModernButton *)v3->_playPauseButton setContentMode:1];
    v6 = [(CPUIModernButton *)v3->_playPauseButton imageView];
    [v6 setContentMode:1];

    [(CPUIModernButton *)v3->_playPauseButton _setContinuousCornerRadius:14.0];
    [(CPUIModernButton *)v3->_playPauseButton setPrefersWhiteInDefaultState:1];
    [(CPUIModernButton *)v3->_playPauseButton setAccessibilityIdentifier:@"CPNowPlayingPlayPauseStopButton"];
    [(CPUITransportControlView *)v3 addSubview:v3->_playPauseButton];
    v7 = objc_opt_new();
    leftButton = v3->_leftButton;
    v3->_leftButton = v7;

    [(CPUIModernButton *)v3->_leftButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPUIModernButton *)v3->_leftButton setContentMode:1];
    v9 = [(CPUIModernButton *)v3->_leftButton imageView];
    [v9 setContentMode:1];

    [(CPUIModernButton *)v3->_leftButton _setContinuousCornerRadius:14.0];
    [(CPUIModernButton *)v3->_leftButton setPrefersWhiteInDefaultState:1];
    [(CPUIModernButton *)v3->_leftButton setAccessibilityIdentifier:@"CPNowPlayingTransportLeftButton"];
    v10 = CPUILocalizedStringForKey(@"REWIND");
    [(CPUIModernButton *)v3->_leftButton setAccessibilityLabel:v10];

    v11 = CPUILocalizedStringForKey(@"REWIND");
    v48[0] = v11;
    v12 = CPUILocalizedStringForKey(@"PREVIOUS_SONG");
    v48[1] = v12;
    v13 = CPUILocalizedStringForKey(@"PREVIOUS_TRACK");
    v48[2] = v13;
    v14 = CPUILocalizedStringForKey(@"JUMP_BACK");
    v48[3] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:4];
    [(CPUIModernButton *)v3->_leftButton setAccessibilityUserInputLabels:v15];

    [(CPUITransportControlView *)v3 addSubview:v3->_leftButton];
    v16 = objc_opt_new();
    fastForwardButton = v3->_fastForwardButton;
    v3->_fastForwardButton = v16;

    [(CPUIModernButton *)v3->_fastForwardButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPUIModernButton *)v3->_fastForwardButton setContentMode:1];
    v18 = [(CPUIModernButton *)v3->_fastForwardButton imageView];
    [v18 setContentMode:1];

    [(CPUIModernButton *)v3->_fastForwardButton _setContinuousCornerRadius:14.0];
    [(CPUIModernButton *)v3->_fastForwardButton setPrefersWhiteInDefaultState:1];
    [(CPUIModernButton *)v3->_fastForwardButton setAccessibilityIdentifier:@"CPNowPlayingTransportRightButton"];
    v19 = CPUILocalizedStringForKey(@"FAST_FORWARD");
    v47[0] = v19;
    v20 = CPUILocalizedStringForKey(@"NEXT");
    v47[1] = v20;
    v21 = CPUILocalizedStringForKey(@"SKIP_AHEAD");
    v47[2] = v21;
    v22 = CPUILocalizedStringForKey(@"JUMP_FORWARD");
    v47[3] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:4];
    [(CPUIModernButton *)v3->_fastForwardButton setAccessibilityUserInputLabels:v23];

    [(CPUITransportControlView *)v3 addSubview:v3->_fastForwardButton];
    v24 = [(CPUITransportControlView *)v3 traitCollection];
    v25 = CPUIPauseGlyph(v24);
    pauseImage = v3->_pauseImage;
    v3->_pauseImage = v25;

    v27 = [(CPUITransportControlView *)v3 traitCollection];
    v28 = CPUIBackGlyph(v27);
    defaultLeftButtonImage = v3->_defaultLeftButtonImage;
    v3->_defaultLeftButtonImage = v28;

    v30 = [(CPUITransportControlView *)v3 traitCollection];
    v31 = CPUIForwardGlyph(v30);
    defaultFastForwardButtonImage = v3->_defaultFastForwardButtonImage;
    v3->_defaultFastForwardButtonImage = v31;

    v33 = [(CPUITransportControlView *)v3 defaultLeftButtonImage];
    v34 = [v33 imageWithRenderingMode:2];

    v35 = [MEMORY[0x277D75348] labelColor];
    v36 = [v35 colorWithAlphaComponent:0.2];
    v37 = [v34 imageWithTintColor:v36];

    [(CPUIModernButton *)v3->_leftButton setImage:v34 forState:0];
    [(CPUIModernButton *)v3->_leftButton setImage:v37 forState:1];
    v38 = [(CPUITransportControlView *)v3 defaultFastForwardButtonImage];
    v39 = [v38 imageWithRenderingMode:2];

    [(CPUIModernButton *)v3->_fastForwardButton setImage:v39 forState:0];
    v40 = v3->_fastForwardButton;
    v41 = [MEMORY[0x277D75348] labelColor];
    v42 = [v41 colorWithAlphaComponent:0.2];
    v43 = [v39 imageWithTintColor:v42];
    [(CPUIModernButton *)v40 setImage:v43 forState:1];

    [(CPUITransportControlView *)v3 setupConstraints];
    v44 = [(CPUITransportControlView *)v3 layer];
    [v44 setAllowsGroupBlending:0];
  }

  return v3;
}

- (void)setupConstraints
{
  v56[13] = *MEMORY[0x277D85DE8];
  v3 = [(CPUITransportControlView *)self constraints];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAD0];
    v5 = [(CPUITransportControlView *)self constraints];
    [v4 deactivateConstraints:v5];
  }

  v6 = [(CPUITransportControlView *)self heightAnchor];
  [(CPUITransportControlView *)self buttonHeight];
  v7 = [v6 constraintEqualToConstant:?];
  containerHeightConstraint = self->_containerHeightConstraint;
  self->_containerHeightConstraint = v7;

  [(CPUITransportControlView *)self bounds];
  Width = CGRectGetWidth(v57);
  [(CPUITransportControlView *)self buttonSpacing];
  v11 = fmax((Width + v10 * -2.0) / 3.0, 0.0);
  v55 = [(CPUIModernButton *)self->_playPauseButton heightAnchor];
  v54 = [(CPUITransportControlView *)self heightAnchor];
  v53 = [v55 constraintEqualToAnchor:v54];
  v56[0] = v53;
  v52 = [(CPUIModernButton *)self->_leftButton heightAnchor];
  v51 = [(CPUITransportControlView *)self heightAnchor];
  v50 = [v52 constraintEqualToAnchor:v51];
  v56[1] = v50;
  v49 = [(CPUIModernButton *)self->_fastForwardButton heightAnchor];
  v48 = [(CPUITransportControlView *)self heightAnchor];
  v47 = [v49 constraintEqualToAnchor:v48];
  v56[2] = v47;
  v46 = [(CPUIModernButton *)self->_playPauseButton centerYAnchor];
  v45 = [(CPUITransportControlView *)self centerYAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v56[3] = v44;
  v43 = [(CPUIModernButton *)self->_leftButton centerYAnchor];
  v42 = [(CPUITransportControlView *)self centerYAnchor];
  v41 = [v43 constraintEqualToAnchor:v42];
  v56[4] = v41;
  v40 = [(CPUIModernButton *)self->_fastForwardButton centerYAnchor];
  v39 = [(CPUITransportControlView *)self centerYAnchor];
  v38 = [v40 constraintEqualToAnchor:v39];
  v56[5] = v38;
  v37 = [(CPUIModernButton *)self->_playPauseButton centerXAnchor];
  v36 = [(CPUITransportControlView *)self centerXAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v56[6] = v35;
  v34 = [(CPUIModernButton *)self->_leftButton rightAnchor];
  v33 = [(CPUIModernButton *)self->_playPauseButton leftAnchor];
  [(CPUITransportControlView *)self buttonSpacing];
  v32 = [v34 constraintEqualToAnchor:v33 constant:-v12];
  v56[7] = v32;
  v31 = [(CPUIModernButton *)self->_fastForwardButton leftAnchor];
  v30 = [(CPUIModernButton *)self->_playPauseButton rightAnchor];
  [(CPUITransportControlView *)self buttonSpacing];
  v13 = [v31 constraintEqualToAnchor:v30 constant:?];
  v56[8] = v13;
  v14 = [(CPUIModernButton *)self->_playPauseButton widthAnchor];
  v15 = [v14 constraintEqualToConstant:v11];
  v56[9] = v15;
  v16 = [(CPUIModernButton *)self->_leftButton widthAnchor];
  v17 = [(CPUIModernButton *)self->_playPauseButton widthAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  v56[10] = v18;
  v19 = [(CPUIModernButton *)self->_fastForwardButton widthAnchor];
  v20 = [(CPUIModernButton *)self->_playPauseButton widthAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  v22 = self->_containerHeightConstraint;
  v56[11] = v21;
  v56[12] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:13];
  constraints = self->_constraints;
  self->_constraints = v23;

  if (_UISolariumEnabled())
  {
    [(CPUITransportControlView *)self buttonHeight];
    [(CPUIModernButton *)self->_leftButton _setContinuousCornerRadius:v25 * 0.5];
    [(CPUITransportControlView *)self buttonHeight];
    [(CPUIModernButton *)self->_playPauseButton _setContinuousCornerRadius:v26 * 0.5];
    [(CPUITransportControlView *)self buttonHeight];
    [(CPUIModernButton *)self->_fastForwardButton _setContinuousCornerRadius:v27 * 0.5];
  }

  v28 = MEMORY[0x277CCAAD0];
  v29 = [(CPUITransportControlView *)self constraints];
  [v28 activateConstraints:v29];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CPUITransportControlView;
  [(CPUITransportControlView *)&v3 layoutSubviews];
  [(CPUITransportControlView *)self setupConstraints];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = CPUITransportControlView;
  [(CPUITransportControlView *)&v4 traitCollectionDidChange:a3];
  [(CPUITransportControlView *)self _updatePlayPauseButton];
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = CPUITransportControlView;
  [(CPUITransportControlView *)&v3 updateConstraints];
  [(CPUITransportControlView *)self setupConstraints];
}

- (void)_updatePlayPauseButton
{
  progressActive = self->_progressActive;
  playPauseButton = self->_playPauseButton;
  if (progressActive)
  {
    v5 = &OBJC_IVAR___CPUITransportControlView__pauseImage;
  }

  else
  {
    v5 = &OBJC_IVAR___CPUITransportControlView__playImage;
  }

  v6 = *v5;
  [(CPUIModernButton *)playPauseButton setImage:*(&self->super.super.super.isa + v6) forState:0];
  v7 = self->_playPauseButton;
  v8 = *(&self->super.super.super.isa + v6);
  v9 = [MEMORY[0x277D75348] labelColor];
  v10 = [v9 colorWithAlphaComponent:0.2];
  v11 = [v8 imageWithTintColor:v10];
  [(CPUIModernButton *)v7 setImage:v11 forState:1];

  [(CPUITransportControlView *)self setNeedsLayout];
}

- (void)setProgressActive:(BOOL)a3
{
  if (self->_progressActive != a3)
  {
    self->_progressActive = a3;
    [(CPUITransportControlView *)self _updatePlayPauseButton];
  }
}

- (void)setPlayButtonImageName:(id)a3
{
  objc_storeStrong(&self->_playButtonImageName, a3);
  v5 = a3;
  v6 = [(CPUITransportControlView *)self traitCollection];
  v7 = _CPUIGlyphFactoryWithTraitCollection(v5, 7, v6, 28.0);

  [(CPUITransportControlView *)self setPlayImage:v7];
  [(CPUITransportControlView *)self _updatePlayPauseButton];
}

- (void)setPauseButtonImageName:(id)a3
{
  objc_storeStrong(&self->_pauseButtonImageName, a3);
  v5 = a3;
  v6 = [(CPUITransportControlView *)self traitCollection];
  v7 = _CPUIGlyphFactoryWithTraitCollection(v5, 7, v6, 28.0);

  [(CPUITransportControlView *)self setPauseImage:v7];
  [(CPUITransportControlView *)self _updatePlayPauseButton];
}

@end