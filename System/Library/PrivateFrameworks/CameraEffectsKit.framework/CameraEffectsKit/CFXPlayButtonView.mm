@interface CFXPlayButtonView
- (CFXPlayButtonView)initWithCoder:(id)coder;
- (CFXPlayButtonView)initWithFrame:(CGRect)frame;
- (CFXPlayButtonViewDelegate)delegate;
- (UIButton)playButton;
- (void)layoutSubviews;
- (void)notifyPlaybackDidStart;
- (void)notifyPlaybackDidStop;
- (void)notifyWasTapped;
- (void)playButtonTapped:(id)tapped;
- (void)sharedInit;
@end

@implementation CFXPlayButtonView

- (CFXPlayButtonView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CFXPlayButtonView;
  v3 = [(CFXPlayButtonView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(CFXPlayButtonView *)v3 sharedInit];
  }

  return v4;
}

- (CFXPlayButtonView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CFXPlayButtonView;
  v3 = [(CFXPlayButtonView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CFXPlayButtonView *)v3 sharedInit];
  }

  return v4;
}

- (void)sharedInit
{
  v42[4] = *MEMORY[0x277D85DE8];
  [(CFXPlayButtonView *)self setClipsToBounds:1];
  jfxBundle = [MEMORY[0x277CCA8D8] jfxBundle];
  v4 = [jfxBundle loadNibNamed:@"CFXPlayButtonView" owner:self options:0];

  contentView = [(CFXPlayButtonView *)self contentView];
  [(CFXPlayButtonView *)self addSubview:contentView];

  contentView2 = [(CFXPlayButtonView *)self contentView];
  [contentView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v34 = MEMORY[0x277CCAAD0];
  contentView3 = [(CFXPlayButtonView *)self contentView];
  leadingAnchor = [contentView3 leadingAnchor];
  leadingAnchor2 = [(CFXPlayButtonView *)self leadingAnchor];
  v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v42[0] = v38;
  contentView4 = [(CFXPlayButtonView *)self contentView];
  trailingAnchor = [contentView4 trailingAnchor];
  trailingAnchor2 = [(CFXPlayButtonView *)self trailingAnchor];
  v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v42[1] = v33;
  contentView5 = [(CFXPlayButtonView *)self contentView];
  topAnchor = [contentView5 topAnchor];
  topAnchor2 = [(CFXPlayButtonView *)self topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v42[2] = v10;
  contentView6 = [(CFXPlayButtonView *)self contentView];
  bottomAnchor = [contentView6 bottomAnchor];
  bottomAnchor2 = [(CFXPlayButtonView *)self bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v42[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
  [v34 activateConstraints:v15];

  v16 = MEMORY[0x277D75208];
  [(CFXPlayButtonView *)self bounds];
  v17 = [v16 bezierPathWithOvalInRect:?];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(CFXPlayButtonView *)self setBackgroundColor:clearColor];

  layer = [MEMORY[0x277CD9F90] layer];
  [(CFXPlayButtonView *)self setPlayControlMaskLayer:layer];

  cGPath = [v17 CGPath];
  playControlMaskLayer = [(CFXPlayButtonView *)self playControlMaskLayer];
  [playControlMaskLayer setPath:cGPath];

  v22 = *MEMORY[0x277CDA248];
  playControlMaskLayer2 = [(CFXPlayButtonView *)self playControlMaskLayer];
  [playControlMaskLayer2 setFillRule:v22];

  v24 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];
  cGColor = [v24 CGColor];
  playControlMaskLayer3 = [(CFXPlayButtonView *)self playControlMaskLayer];
  [playControlMaskLayer3 setFillColor:cGColor];

  playControlMaskLayer4 = [(CFXPlayButtonView *)self playControlMaskLayer];
  contentView7 = [(CFXPlayButtonView *)self contentView];
  layer2 = [contentView7 layer];
  [layer2 setMask:playControlMaskLayer4];

  v30 = [MEMORY[0x277D755D0] configurationWithPointSize:80.0];
  v31 = [MEMORY[0x277D755B8] systemImageNamed:@"play.circle.fill" withConfiguration:v30];
  [(CFXPlayButtonView *)self setPlayImage:v31];

  v32 = [MEMORY[0x277D755B8] systemImageNamed:@"pause.circle.fill" withConfiguration:v30];
  [(CFXPlayButtonView *)self setPauseImage:v32];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = CFXPlayButtonView;
  [(CFXPlayButtonView *)&v7 layoutSubviews];
  v3 = MEMORY[0x277D75208];
  [(CFXPlayButtonView *)self bounds];
  v4 = [v3 bezierPathWithOvalInRect:?];
  cGPath = [v4 CGPath];
  playControlMaskLayer = [(CFXPlayButtonView *)self playControlMaskLayer];
  [playControlMaskLayer setPath:cGPath];
}

- (void)playButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  [tappedCopy setSelected:{objc_msgSend(tappedCopy, "isSelected") ^ 1}];
  isSelected = [tappedCopy isSelected];

  delegate = [(CFXPlayButtonView *)self delegate];
  v7 = delegate;
  if (isSelected)
  {
    [delegate playButtonViewDidTapPlay:self];
  }

  else
  {
    [delegate playButtonViewDidTapPause:self];
  }
}

- (void)notifyWasTapped
{
  playButton = [(CFXPlayButtonView *)self playButton];
  [(CFXPlayButtonView *)self playButtonTapped:playButton];
}

- (void)notifyPlaybackDidStart
{
  playButton = [(CFXPlayButtonView *)self playButton];
  pauseImage = [(CFXPlayButtonView *)self pauseImage];
  [playButton setImage:pauseImage forState:0];

  playButton2 = [(CFXPlayButtonView *)self playButton];
  [playButton2 setSelected:1];
}

- (void)notifyPlaybackDidStop
{
  playButton = [(CFXPlayButtonView *)self playButton];
  playImage = [(CFXPlayButtonView *)self playImage];
  [playButton setImage:playImage forState:0];

  playButton2 = [(CFXPlayButtonView *)self playButton];
  [playButton2 setSelected:0];
}

- (CFXPlayButtonViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIButton)playButton
{
  WeakRetained = objc_loadWeakRetained(&self->_playButton);

  return WeakRetained;
}

@end