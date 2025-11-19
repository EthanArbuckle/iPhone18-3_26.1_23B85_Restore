@interface CFXPlayButtonView
- (CFXPlayButtonView)initWithCoder:(id)a3;
- (CFXPlayButtonView)initWithFrame:(CGRect)a3;
- (CFXPlayButtonViewDelegate)delegate;
- (UIButton)playButton;
- (void)layoutSubviews;
- (void)notifyPlaybackDidStart;
- (void)notifyPlaybackDidStop;
- (void)notifyWasTapped;
- (void)playButtonTapped:(id)a3;
- (void)sharedInit;
@end

@implementation CFXPlayButtonView

- (CFXPlayButtonView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CFXPlayButtonView;
  v3 = [(CFXPlayButtonView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(CFXPlayButtonView *)v3 sharedInit];
  }

  return v4;
}

- (CFXPlayButtonView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CFXPlayButtonView;
  v3 = [(CFXPlayButtonView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [MEMORY[0x277CCA8D8] jfxBundle];
  v4 = [v3 loadNibNamed:@"CFXPlayButtonView" owner:self options:0];

  v5 = [(CFXPlayButtonView *)self contentView];
  [(CFXPlayButtonView *)self addSubview:v5];

  v6 = [(CFXPlayButtonView *)self contentView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v34 = MEMORY[0x277CCAAD0];
  v41 = [(CFXPlayButtonView *)self contentView];
  v40 = [v41 leadingAnchor];
  v39 = [(CFXPlayButtonView *)self leadingAnchor];
  v38 = [v40 constraintEqualToAnchor:v39];
  v42[0] = v38;
  v37 = [(CFXPlayButtonView *)self contentView];
  v36 = [v37 trailingAnchor];
  v35 = [(CFXPlayButtonView *)self trailingAnchor];
  v33 = [v36 constraintEqualToAnchor:v35];
  v42[1] = v33;
  v7 = [(CFXPlayButtonView *)self contentView];
  v8 = [v7 topAnchor];
  v9 = [(CFXPlayButtonView *)self topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v42[2] = v10;
  v11 = [(CFXPlayButtonView *)self contentView];
  v12 = [v11 bottomAnchor];
  v13 = [(CFXPlayButtonView *)self bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v42[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
  [v34 activateConstraints:v15];

  v16 = MEMORY[0x277D75208];
  [(CFXPlayButtonView *)self bounds];
  v17 = [v16 bezierPathWithOvalInRect:?];
  v18 = [MEMORY[0x277D75348] clearColor];
  [(CFXPlayButtonView *)self setBackgroundColor:v18];

  v19 = [MEMORY[0x277CD9F90] layer];
  [(CFXPlayButtonView *)self setPlayControlMaskLayer:v19];

  v20 = [v17 CGPath];
  v21 = [(CFXPlayButtonView *)self playControlMaskLayer];
  [v21 setPath:v20];

  v22 = *MEMORY[0x277CDA248];
  v23 = [(CFXPlayButtonView *)self playControlMaskLayer];
  [v23 setFillRule:v22];

  v24 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];
  v25 = [v24 CGColor];
  v26 = [(CFXPlayButtonView *)self playControlMaskLayer];
  [v26 setFillColor:v25];

  v27 = [(CFXPlayButtonView *)self playControlMaskLayer];
  v28 = [(CFXPlayButtonView *)self contentView];
  v29 = [v28 layer];
  [v29 setMask:v27];

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
  v5 = [v4 CGPath];
  v6 = [(CFXPlayButtonView *)self playControlMaskLayer];
  [v6 setPath:v5];
}

- (void)playButtonTapped:(id)a3
{
  v4 = a3;
  [v4 setSelected:{objc_msgSend(v4, "isSelected") ^ 1}];
  v5 = [v4 isSelected];

  v6 = [(CFXPlayButtonView *)self delegate];
  v7 = v6;
  if (v5)
  {
    [v6 playButtonViewDidTapPlay:self];
  }

  else
  {
    [v6 playButtonViewDidTapPause:self];
  }
}

- (void)notifyWasTapped
{
  v3 = [(CFXPlayButtonView *)self playButton];
  [(CFXPlayButtonView *)self playButtonTapped:v3];
}

- (void)notifyPlaybackDidStart
{
  v3 = [(CFXPlayButtonView *)self playButton];
  v4 = [(CFXPlayButtonView *)self pauseImage];
  [v3 setImage:v4 forState:0];

  v5 = [(CFXPlayButtonView *)self playButton];
  [v5 setSelected:1];
}

- (void)notifyPlaybackDidStop
{
  v3 = [(CFXPlayButtonView *)self playButton];
  v4 = [(CFXPlayButtonView *)self playImage];
  [v3 setImage:v4 forState:0];

  v5 = [(CFXPlayButtonView *)self playButton];
  [v5 setSelected:0];
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