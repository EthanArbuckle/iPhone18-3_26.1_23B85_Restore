@interface CPUITransportControlView
- (CPUITransportControlView)initWithFrame:(CGRect)frame;
- (void)_updatePlayPauseButton;
- (void)layoutSubviews;
- (void)setPauseButtonImageName:(id)name;
- (void)setPlayButtonImageName:(id)name;
- (void)setProgressActive:(BOOL)active;
- (void)setupConstraints;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
@end

@implementation CPUITransportControlView

- (CPUITransportControlView)initWithFrame:(CGRect)frame
{
  v48[4] = *MEMORY[0x277D85DE8];
  v46.receiver = self;
  v46.super_class = CPUITransportControlView;
  v3 = [(CPUITransportControlView *)&v46 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    playPauseButton = v3->_playPauseButton;
    v3->_playPauseButton = v4;

    [(CPUIModernButton *)v3->_playPauseButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPUIModernButton *)v3->_playPauseButton setContentMode:1];
    imageView = [(CPUIModernButton *)v3->_playPauseButton imageView];
    [imageView setContentMode:1];

    [(CPUIModernButton *)v3->_playPauseButton _setContinuousCornerRadius:14.0];
    [(CPUIModernButton *)v3->_playPauseButton setPrefersWhiteInDefaultState:1];
    [(CPUIModernButton *)v3->_playPauseButton setAccessibilityIdentifier:@"CPNowPlayingPlayPauseStopButton"];
    [(CPUITransportControlView *)v3 addSubview:v3->_playPauseButton];
    v7 = objc_opt_new();
    leftButton = v3->_leftButton;
    v3->_leftButton = v7;

    [(CPUIModernButton *)v3->_leftButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPUIModernButton *)v3->_leftButton setContentMode:1];
    imageView2 = [(CPUIModernButton *)v3->_leftButton imageView];
    [imageView2 setContentMode:1];

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
    imageView3 = [(CPUIModernButton *)v3->_fastForwardButton imageView];
    [imageView3 setContentMode:1];

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
    traitCollection = [(CPUITransportControlView *)v3 traitCollection];
    v25 = CPUIPauseGlyph(traitCollection);
    pauseImage = v3->_pauseImage;
    v3->_pauseImage = v25;

    traitCollection2 = [(CPUITransportControlView *)v3 traitCollection];
    v28 = CPUIBackGlyph(traitCollection2);
    defaultLeftButtonImage = v3->_defaultLeftButtonImage;
    v3->_defaultLeftButtonImage = v28;

    traitCollection3 = [(CPUITransportControlView *)v3 traitCollection];
    v31 = CPUIForwardGlyph(traitCollection3);
    defaultFastForwardButtonImage = v3->_defaultFastForwardButtonImage;
    v3->_defaultFastForwardButtonImage = v31;

    defaultLeftButtonImage = [(CPUITransportControlView *)v3 defaultLeftButtonImage];
    v34 = [defaultLeftButtonImage imageWithRenderingMode:2];

    labelColor = [MEMORY[0x277D75348] labelColor];
    v36 = [labelColor colorWithAlphaComponent:0.2];
    v37 = [v34 imageWithTintColor:v36];

    [(CPUIModernButton *)v3->_leftButton setImage:v34 forState:0];
    [(CPUIModernButton *)v3->_leftButton setImage:v37 forState:1];
    defaultFastForwardButtonImage = [(CPUITransportControlView *)v3 defaultFastForwardButtonImage];
    v39 = [defaultFastForwardButtonImage imageWithRenderingMode:2];

    [(CPUIModernButton *)v3->_fastForwardButton setImage:v39 forState:0];
    v40 = v3->_fastForwardButton;
    labelColor2 = [MEMORY[0x277D75348] labelColor];
    v42 = [labelColor2 colorWithAlphaComponent:0.2];
    v43 = [v39 imageWithTintColor:v42];
    [(CPUIModernButton *)v40 setImage:v43 forState:1];

    [(CPUITransportControlView *)v3 setupConstraints];
    layer = [(CPUITransportControlView *)v3 layer];
    [layer setAllowsGroupBlending:0];
  }

  return v3;
}

- (void)setupConstraints
{
  v56[13] = *MEMORY[0x277D85DE8];
  constraints = [(CPUITransportControlView *)self constraints];

  if (constraints)
  {
    v4 = MEMORY[0x277CCAAD0];
    constraints2 = [(CPUITransportControlView *)self constraints];
    [v4 deactivateConstraints:constraints2];
  }

  heightAnchor = [(CPUITransportControlView *)self heightAnchor];
  [(CPUITransportControlView *)self buttonHeight];
  v7 = [heightAnchor constraintEqualToConstant:?];
  containerHeightConstraint = self->_containerHeightConstraint;
  self->_containerHeightConstraint = v7;

  [(CPUITransportControlView *)self bounds];
  Width = CGRectGetWidth(v57);
  [(CPUITransportControlView *)self buttonSpacing];
  v11 = fmax((Width + v10 * -2.0) / 3.0, 0.0);
  heightAnchor2 = [(CPUIModernButton *)self->_playPauseButton heightAnchor];
  heightAnchor3 = [(CPUITransportControlView *)self heightAnchor];
  v53 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
  v56[0] = v53;
  heightAnchor4 = [(CPUIModernButton *)self->_leftButton heightAnchor];
  heightAnchor5 = [(CPUITransportControlView *)self heightAnchor];
  v50 = [heightAnchor4 constraintEqualToAnchor:heightAnchor5];
  v56[1] = v50;
  heightAnchor6 = [(CPUIModernButton *)self->_fastForwardButton heightAnchor];
  heightAnchor7 = [(CPUITransportControlView *)self heightAnchor];
  v47 = [heightAnchor6 constraintEqualToAnchor:heightAnchor7];
  v56[2] = v47;
  centerYAnchor = [(CPUIModernButton *)self->_playPauseButton centerYAnchor];
  centerYAnchor2 = [(CPUITransportControlView *)self centerYAnchor];
  v44 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v56[3] = v44;
  centerYAnchor3 = [(CPUIModernButton *)self->_leftButton centerYAnchor];
  centerYAnchor4 = [(CPUITransportControlView *)self centerYAnchor];
  v41 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v56[4] = v41;
  centerYAnchor5 = [(CPUIModernButton *)self->_fastForwardButton centerYAnchor];
  centerYAnchor6 = [(CPUITransportControlView *)self centerYAnchor];
  v38 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  v56[5] = v38;
  centerXAnchor = [(CPUIModernButton *)self->_playPauseButton centerXAnchor];
  centerXAnchor2 = [(CPUITransportControlView *)self centerXAnchor];
  v35 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v56[6] = v35;
  rightAnchor = [(CPUIModernButton *)self->_leftButton rightAnchor];
  leftAnchor = [(CPUIModernButton *)self->_playPauseButton leftAnchor];
  [(CPUITransportControlView *)self buttonSpacing];
  v32 = [rightAnchor constraintEqualToAnchor:leftAnchor constant:-v12];
  v56[7] = v32;
  leftAnchor2 = [(CPUIModernButton *)self->_fastForwardButton leftAnchor];
  rightAnchor2 = [(CPUIModernButton *)self->_playPauseButton rightAnchor];
  [(CPUITransportControlView *)self buttonSpacing];
  v13 = [leftAnchor2 constraintEqualToAnchor:rightAnchor2 constant:?];
  v56[8] = v13;
  widthAnchor = [(CPUIModernButton *)self->_playPauseButton widthAnchor];
  v15 = [widthAnchor constraintEqualToConstant:v11];
  v56[9] = v15;
  widthAnchor2 = [(CPUIModernButton *)self->_leftButton widthAnchor];
  widthAnchor3 = [(CPUIModernButton *)self->_playPauseButton widthAnchor];
  v18 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
  v56[10] = v18;
  widthAnchor4 = [(CPUIModernButton *)self->_fastForwardButton widthAnchor];
  widthAnchor5 = [(CPUIModernButton *)self->_playPauseButton widthAnchor];
  v21 = [widthAnchor4 constraintEqualToAnchor:widthAnchor5];
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
  constraints3 = [(CPUITransportControlView *)self constraints];
  [v28 activateConstraints:constraints3];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CPUITransportControlView;
  [(CPUITransportControlView *)&v3 layoutSubviews];
  [(CPUITransportControlView *)self setupConstraints];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = CPUITransportControlView;
  [(CPUITransportControlView *)&v4 traitCollectionDidChange:change];
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
  labelColor = [MEMORY[0x277D75348] labelColor];
  v10 = [labelColor colorWithAlphaComponent:0.2];
  v11 = [v8 imageWithTintColor:v10];
  [(CPUIModernButton *)v7 setImage:v11 forState:1];

  [(CPUITransportControlView *)self setNeedsLayout];
}

- (void)setProgressActive:(BOOL)active
{
  if (self->_progressActive != active)
  {
    self->_progressActive = active;
    [(CPUITransportControlView *)self _updatePlayPauseButton];
  }
}

- (void)setPlayButtonImageName:(id)name
{
  objc_storeStrong(&self->_playButtonImageName, name);
  nameCopy = name;
  traitCollection = [(CPUITransportControlView *)self traitCollection];
  v7 = _CPUIGlyphFactoryWithTraitCollection(nameCopy, 7, traitCollection, 28.0);

  [(CPUITransportControlView *)self setPlayImage:v7];
  [(CPUITransportControlView *)self _updatePlayPauseButton];
}

- (void)setPauseButtonImageName:(id)name
{
  objc_storeStrong(&self->_pauseButtonImageName, name);
  nameCopy = name;
  traitCollection = [(CPUITransportControlView *)self traitCollection];
  v7 = _CPUIGlyphFactoryWithTraitCollection(nameCopy, 7, traitCollection, 28.0);

  [(CPUITransportControlView *)self setPauseImage:v7];
  [(CPUITransportControlView *)self _updatePlayPauseButton];
}

@end