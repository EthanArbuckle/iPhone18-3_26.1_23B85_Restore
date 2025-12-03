@interface CSMiniPlayerViewController
- (CSMiniPlayerViewController)init;
- (void)dealloc;
- (void)loadView;
- (void)updatePlaybackState:(id)state;
@end

@implementation CSMiniPlayerViewController

- (CSMiniPlayerViewController)init
{
  v10.receiver = self;
  v10.super_class = CSMiniPlayerViewController;
  v2 = [(CSMiniPlayerViewController *)&v10 initWithNibName:0 bundle:0];
  if (v2)
  {
    v3 = +[CSShieldManager sharedManager];
    [v3 addObserver:v2];

    v4 = +[CSShieldManager sharedManager];
    isLoading = [v4 isLoading];

    if ((isLoading & 1) == 0)
    {
      v6 = +[CSShieldManager sharedManager];
      playbackManager = [v6 playbackManager];
      playbackManager = v2->_playbackManager;
      v2->_playbackManager = playbackManager;
    }
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[CSShieldManager sharedManager];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CSMiniPlayerViewController;
  [(CSMiniPlayerViewController *)&v4 dealloc];
}

- (void)loadView
{
  v3 = objc_alloc_init(CSMiniPlayerView);
  miniPlayerView = self->_miniPlayerView;
  self->_miniPlayerView = v3;

  v5 = self->_miniPlayerView;

  [(CSMiniPlayerViewController *)self setView:v5];
}

- (void)updatePlaybackState:(id)state
{
  stateCopy = state;
  v5 = [(CSPlaybackState *)stateCopy playerState]== 2;
  miniPlayerView = self->_miniPlayerView;
  currentSong = [(CSPlaybackState *)stateCopy currentSong];
  [(CSMiniPlayerView *)miniPlayerView updateViewStateToNormalWithMediaPlaying:v5 playingSong:currentSong];

  currentPlaybackState = self->_currentPlaybackState;
  self->_currentPlaybackState = stateCopy;
}

@end