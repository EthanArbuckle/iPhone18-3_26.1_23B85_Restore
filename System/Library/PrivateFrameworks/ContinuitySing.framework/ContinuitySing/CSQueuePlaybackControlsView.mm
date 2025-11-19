@interface CSQueuePlaybackControlsView
- (CSQueuePlaybackControlsView)initWithPlayAction:(id)a3 backAction:(id)a4 forwardAction:(id)a5;
- (void)playbackManager:(id)a3 didUpdateState:(id)a4;
- (void)setupConstraints;
- (void)setupPlaybackControlButtonsWithPlayAction:(id)a3 backAction:(id)a4 forwardAction:(id)a5;
- (void)setupTimelineControl;
- (void)setupViewsWithPlayAction:(id)a3 backAction:(id)a4 forwardAction:(id)a5;
- (void)updatePlayPauseButtonWithState:(id)a3;
@end

@implementation CSQueuePlaybackControlsView

- (CSQueuePlaybackControlsView)initWithPlayAction:(id)a3 backAction:(id)a4 forwardAction:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = CSQueuePlaybackControlsView;
  v11 = [(CSQueuePlaybackControlsView *)&v14 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v12 = v11;
  if (v11)
  {
    [(CSQueuePlaybackControlsView *)v11 setupViewsWithPlayAction:v8 backAction:v9 forwardAction:v10];
    [(CSQueuePlaybackControlsView *)v12 setupConstraints];
  }

  return v12;
}

- (void)setupViewsWithPlayAction:(id)a3 backAction:(id)a4 forwardAction:(id)a5
{
  [(CSQueuePlaybackControlsView *)self setupPlaybackControlButtonsWithPlayAction:a3 backAction:a4 forwardAction:a5];
  [(CSQueuePlaybackControlsView *)self setupTimelineControl];
  v7 = +[CSShieldManager sharedManager];
  v6 = [v7 playbackManager];
  [v6 addObserver:self];
}

- (void)setupPlaybackControlButtonsWithPlayAction:(id)a3 backAction:(id)a4 forwardAction:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [CSMiniPlayerControlButton alloc];
  v12 = [(CSQueuePlaybackControlsView *)self _symbolFont];
  v13 = [(CSMiniPlayerControlButton *)v11 initWithSymbolName:@"backward.fill" withFont:v12 scale:3];
  goBackButton = self->_goBackButton;
  self->_goBackButton = v13;

  v15 = [(CSMiniPlayerControlButton *)self->_goBackButton button];
  [v15 addAction:v9 forControlEvents:64];

  [(CSQueuePlaybackControlsView *)self addSubview:self->_goBackButton];
  v16 = [CSMiniPlayerControlButton alloc];
  v17 = [(CSQueuePlaybackControlsView *)self _symbolFont];
  v18 = [(CSMiniPlayerControlButton *)v16 initWithSymbolName:@"forward.fill" withFont:v17 scale:3];
  goForwardButton = self->_goForwardButton;
  self->_goForwardButton = v18;

  v20 = [(CSMiniPlayerControlButton *)self->_goForwardButton button];
  [v20 addAction:v8 forControlEvents:64];

  [(CSQueuePlaybackControlsView *)self addSubview:self->_goForwardButton];
  v21 = [CSMiniPlayerControlButton alloc];
  v22 = [(CSQueuePlaybackControlsView *)self _playPauseSymbolFont];
  v23 = [(CSMiniPlayerControlButton *)v21 initWithSymbolName:@"play.fill" withFont:v22 scale:3];
  playPauseButton = self->_playPauseButton;
  self->_playPauseButton = v23;

  v25 = +[CSShieldManager sharedManager];
  v26 = [v25 playbackManager];
  v27 = [v26 currentState];
  [(CSQueuePlaybackControlsView *)self updatePlayPauseButtonWithState:v27];

  v28 = [(CSMiniPlayerControlButton *)self->_playPauseButton button];
  [v28 addAction:v10 forControlEvents:64];

  v29 = self->_playPauseButton;

  [(CSQueuePlaybackControlsView *)self addSubview:v29];
}

- (void)setupTimelineControl
{
  v3 = objc_alloc(MEMORY[0x277CB85C0]);
  v4 = +[CSShieldManager sharedManager];
  v5 = [v4 playbackManager];
  v6 = [v3 initWithSource:v5];
  timelineControl = self->_timelineControl;
  self->_timelineControl = v6;

  v14 = [(AVMediaTimelineControl *)self->_timelineControl configuration];
  v8 = MEMORY[0x277D75218];
  v9 = [MEMORY[0x277D75340] colorWithWhite:0.5 alpha:1.0];
  v10 = [v8 _effectWithTintColor:v9];
  [v14 setCurrentValueVisualEffect:v10];

  v11 = [MEMORY[0x277D75218] effectWithStyle:20];
  [v14 setMaxValueVisualEffect:v11];

  v12 = [MEMORY[0x277CB85C8] inlineConfiguration];
  v13 = [MEMORY[0x277D75340] secondaryLabelColor];
  [v12 setTextColor:v13];

  [v14 setLabelsConfiguration:v12];
  [(AVMediaTimelineControl *)self->_timelineControl setConfiguration:v14];
  [(AVMediaTimelineControl *)self->_timelineControl setUserInteractionEnabled:0];
  [(CSQueuePlaybackControlsView *)self addSubview:self->_timelineControl];
}

- (void)setupConstraints
{
  [(AVMediaTimelineControl *)self->_timelineControl setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CSMiniPlayerControlButton *)self->_playPauseButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CSMiniPlayerControlButton *)self->_goBackButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CSMiniPlayerControlButton *)self->_goForwardButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = MEMORY[0x277CCAAD0];
  v34 = [(AVMediaTimelineControl *)self->_timelineControl leadingAnchor];
  v33 = [(CSQueuePlaybackControlsView *)self leadingAnchor];
  v32 = [v34 constraintEqualToAnchor:v33 constant:32.0];
  v35[0] = v32;
  v31 = [(AVMediaTimelineControl *)self->_timelineControl trailingAnchor];
  v30 = [(CSQueuePlaybackControlsView *)self trailingAnchor];
  v29 = [v31 constraintEqualToAnchor:v30 constant:-32.0];
  v35[1] = v29;
  v28 = [(AVMediaTimelineControl *)self->_timelineControl topAnchor];
  v27 = [(CSQueuePlaybackControlsView *)self topAnchor];
  v26 = [v28 constraintEqualToAnchor:v27 constant:0.0];
  v35[2] = v26;
  v25 = [(CSMiniPlayerControlButton *)self->_playPauseButton topAnchor];
  v24 = [(AVMediaTimelineControl *)self->_timelineControl bottomAnchor];
  v22 = [v25 constraintEqualToAnchor:v24 constant:20.0];
  v35[3] = v22;
  v21 = [(CSMiniPlayerControlButton *)self->_playPauseButton centerXAnchor];
  v20 = [(AVMediaTimelineControl *)self->_timelineControl centerXAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v35[4] = v19;
  v18 = [(CSMiniPlayerControlButton *)self->_playPauseButton bottomAnchor];
  v17 = [(CSQueuePlaybackControlsView *)self bottomAnchor];
  v16 = [v18 constraintEqualToAnchor:v17 constant:-20.0];
  v35[5] = v16;
  v15 = [(CSMiniPlayerControlButton *)self->_goBackButton centerYAnchor];
  v14 = [(CSMiniPlayerControlButton *)self->_playPauseButton centerYAnchor];
  v13 = [v15 constraintEqualToAnchor:v14];
  v35[6] = v13;
  v3 = [(CSMiniPlayerControlButton *)self->_goBackButton trailingAnchor];
  v4 = [(CSMiniPlayerControlButton *)self->_playPauseButton leadingAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 constant:-14.0];
  v35[7] = v5;
  v6 = [(CSMiniPlayerControlButton *)self->_goForwardButton centerYAnchor];
  v7 = [(CSMiniPlayerControlButton *)self->_playPauseButton centerYAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v35[8] = v8;
  v9 = [(CSMiniPlayerControlButton *)self->_goForwardButton leadingAnchor];
  v10 = [(CSMiniPlayerControlButton *)self->_playPauseButton trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:14.0];
  v35[9] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:10];
  [v23 activateConstraints:v12];
}

- (void)updatePlayPauseButtonWithState:(id)a3
{
  v4 = [a3 playerState];
  v5 = @"play.fill";
  if (v4 == 2)
  {
    v5 = @"pause.fill";
  }

  playPauseButton = self->_playPauseButton;
  v7 = v5;
  v8 = [(CSQueuePlaybackControlsView *)self _playPauseSymbolFont];
  [(CSMiniPlayerControlButton *)playPauseButton replaceSymbol:v7 withFont:v8 scale:3];
}

- (void)playbackManager:(id)a3 didUpdateState:(id)a4
{
  v5 = [a3 currentState];
  [(CSQueuePlaybackControlsView *)self updatePlayPauseButtonWithState:v5];
}

@end