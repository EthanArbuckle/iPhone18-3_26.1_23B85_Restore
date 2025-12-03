@interface CSQueuePlaybackControlsView
- (CSQueuePlaybackControlsView)initWithPlayAction:(id)action backAction:(id)backAction forwardAction:(id)forwardAction;
- (void)playbackManager:(id)manager didUpdateState:(id)state;
- (void)setupConstraints;
- (void)setupPlaybackControlButtonsWithPlayAction:(id)action backAction:(id)backAction forwardAction:(id)forwardAction;
- (void)setupTimelineControl;
- (void)setupViewsWithPlayAction:(id)action backAction:(id)backAction forwardAction:(id)forwardAction;
- (void)updatePlayPauseButtonWithState:(id)state;
@end

@implementation CSQueuePlaybackControlsView

- (CSQueuePlaybackControlsView)initWithPlayAction:(id)action backAction:(id)backAction forwardAction:(id)forwardAction
{
  actionCopy = action;
  backActionCopy = backAction;
  forwardActionCopy = forwardAction;
  v14.receiver = self;
  v14.super_class = CSQueuePlaybackControlsView;
  v11 = [(CSQueuePlaybackControlsView *)&v14 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v12 = v11;
  if (v11)
  {
    [(CSQueuePlaybackControlsView *)v11 setupViewsWithPlayAction:actionCopy backAction:backActionCopy forwardAction:forwardActionCopy];
    [(CSQueuePlaybackControlsView *)v12 setupConstraints];
  }

  return v12;
}

- (void)setupViewsWithPlayAction:(id)action backAction:(id)backAction forwardAction:(id)forwardAction
{
  [(CSQueuePlaybackControlsView *)self setupPlaybackControlButtonsWithPlayAction:action backAction:backAction forwardAction:forwardAction];
  [(CSQueuePlaybackControlsView *)self setupTimelineControl];
  v7 = +[CSShieldManager sharedManager];
  playbackManager = [v7 playbackManager];
  [playbackManager addObserver:self];
}

- (void)setupPlaybackControlButtonsWithPlayAction:(id)action backAction:(id)backAction forwardAction:(id)forwardAction
{
  forwardActionCopy = forwardAction;
  backActionCopy = backAction;
  actionCopy = action;
  v11 = [CSMiniPlayerControlButton alloc];
  _symbolFont = [(CSQueuePlaybackControlsView *)self _symbolFont];
  v13 = [(CSMiniPlayerControlButton *)v11 initWithSymbolName:@"backward.fill" withFont:_symbolFont scale:3];
  goBackButton = self->_goBackButton;
  self->_goBackButton = v13;

  button = [(CSMiniPlayerControlButton *)self->_goBackButton button];
  [button addAction:backActionCopy forControlEvents:64];

  [(CSQueuePlaybackControlsView *)self addSubview:self->_goBackButton];
  v16 = [CSMiniPlayerControlButton alloc];
  _symbolFont2 = [(CSQueuePlaybackControlsView *)self _symbolFont];
  v18 = [(CSMiniPlayerControlButton *)v16 initWithSymbolName:@"forward.fill" withFont:_symbolFont2 scale:3];
  goForwardButton = self->_goForwardButton;
  self->_goForwardButton = v18;

  button2 = [(CSMiniPlayerControlButton *)self->_goForwardButton button];
  [button2 addAction:forwardActionCopy forControlEvents:64];

  [(CSQueuePlaybackControlsView *)self addSubview:self->_goForwardButton];
  v21 = [CSMiniPlayerControlButton alloc];
  _playPauseSymbolFont = [(CSQueuePlaybackControlsView *)self _playPauseSymbolFont];
  v23 = [(CSMiniPlayerControlButton *)v21 initWithSymbolName:@"play.fill" withFont:_playPauseSymbolFont scale:3];
  playPauseButton = self->_playPauseButton;
  self->_playPauseButton = v23;

  v25 = +[CSShieldManager sharedManager];
  playbackManager = [v25 playbackManager];
  currentState = [playbackManager currentState];
  [(CSQueuePlaybackControlsView *)self updatePlayPauseButtonWithState:currentState];

  button3 = [(CSMiniPlayerControlButton *)self->_playPauseButton button];
  [button3 addAction:actionCopy forControlEvents:64];

  v29 = self->_playPauseButton;

  [(CSQueuePlaybackControlsView *)self addSubview:v29];
}

- (void)setupTimelineControl
{
  v3 = objc_alloc(MEMORY[0x277CB85C0]);
  v4 = +[CSShieldManager sharedManager];
  playbackManager = [v4 playbackManager];
  v6 = [v3 initWithSource:playbackManager];
  timelineControl = self->_timelineControl;
  self->_timelineControl = v6;

  configuration = [(AVMediaTimelineControl *)self->_timelineControl configuration];
  v8 = MEMORY[0x277D75218];
  v9 = [MEMORY[0x277D75340] colorWithWhite:0.5 alpha:1.0];
  v10 = [v8 _effectWithTintColor:v9];
  [configuration setCurrentValueVisualEffect:v10];

  v11 = [MEMORY[0x277D75218] effectWithStyle:20];
  [configuration setMaxValueVisualEffect:v11];

  inlineConfiguration = [MEMORY[0x277CB85C8] inlineConfiguration];
  secondaryLabelColor = [MEMORY[0x277D75340] secondaryLabelColor];
  [inlineConfiguration setTextColor:secondaryLabelColor];

  [configuration setLabelsConfiguration:inlineConfiguration];
  [(AVMediaTimelineControl *)self->_timelineControl setConfiguration:configuration];
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
  leadingAnchor = [(AVMediaTimelineControl *)self->_timelineControl leadingAnchor];
  leadingAnchor2 = [(CSQueuePlaybackControlsView *)self leadingAnchor];
  v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:32.0];
  v35[0] = v32;
  trailingAnchor = [(AVMediaTimelineControl *)self->_timelineControl trailingAnchor];
  trailingAnchor2 = [(CSQueuePlaybackControlsView *)self trailingAnchor];
  v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-32.0];
  v35[1] = v29;
  topAnchor = [(AVMediaTimelineControl *)self->_timelineControl topAnchor];
  topAnchor2 = [(CSQueuePlaybackControlsView *)self topAnchor];
  v26 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
  v35[2] = v26;
  topAnchor3 = [(CSMiniPlayerControlButton *)self->_playPauseButton topAnchor];
  bottomAnchor = [(AVMediaTimelineControl *)self->_timelineControl bottomAnchor];
  v22 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:20.0];
  v35[3] = v22;
  centerXAnchor = [(CSMiniPlayerControlButton *)self->_playPauseButton centerXAnchor];
  centerXAnchor2 = [(AVMediaTimelineControl *)self->_timelineControl centerXAnchor];
  v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v35[4] = v19;
  bottomAnchor2 = [(CSMiniPlayerControlButton *)self->_playPauseButton bottomAnchor];
  bottomAnchor3 = [(CSQueuePlaybackControlsView *)self bottomAnchor];
  v16 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-20.0];
  v35[5] = v16;
  centerYAnchor = [(CSMiniPlayerControlButton *)self->_goBackButton centerYAnchor];
  centerYAnchor2 = [(CSMiniPlayerControlButton *)self->_playPauseButton centerYAnchor];
  v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v35[6] = v13;
  trailingAnchor3 = [(CSMiniPlayerControlButton *)self->_goBackButton trailingAnchor];
  leadingAnchor3 = [(CSMiniPlayerControlButton *)self->_playPauseButton leadingAnchor];
  v5 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor3 constant:-14.0];
  v35[7] = v5;
  centerYAnchor3 = [(CSMiniPlayerControlButton *)self->_goForwardButton centerYAnchor];
  centerYAnchor4 = [(CSMiniPlayerControlButton *)self->_playPauseButton centerYAnchor];
  v8 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v35[8] = v8;
  leadingAnchor4 = [(CSMiniPlayerControlButton *)self->_goForwardButton leadingAnchor];
  trailingAnchor4 = [(CSMiniPlayerControlButton *)self->_playPauseButton trailingAnchor];
  v11 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor4 constant:14.0];
  v35[9] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:10];
  [v23 activateConstraints:v12];
}

- (void)updatePlayPauseButtonWithState:(id)state
{
  playerState = [state playerState];
  v5 = @"play.fill";
  if (playerState == 2)
  {
    v5 = @"pause.fill";
  }

  playPauseButton = self->_playPauseButton;
  v7 = v5;
  _playPauseSymbolFont = [(CSQueuePlaybackControlsView *)self _playPauseSymbolFont];
  [(CSMiniPlayerControlButton *)playPauseButton replaceSymbol:v7 withFont:_playPauseSymbolFont scale:3];
}

- (void)playbackManager:(id)manager didUpdateState:(id)state
{
  currentState = [manager currentState];
  [(CSQueuePlaybackControlsView *)self updatePlayPauseButtonWithState:currentState];
}

@end