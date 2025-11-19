@interface CSMiniPlayerViewController
- (CSMiniPlayerViewController)init;
- (void)dealloc;
- (void)loadView;
- (void)updatePlaybackState:(id)a3;
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
    v5 = [v4 isLoading];

    if ((v5 & 1) == 0)
    {
      v6 = +[CSShieldManager sharedManager];
      v7 = [v6 playbackManager];
      playbackManager = v2->_playbackManager;
      v2->_playbackManager = v7;
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

- (void)updatePlaybackState:(id)a3
{
  v4 = a3;
  v5 = [(CSPlaybackState *)v4 playerState]== 2;
  miniPlayerView = self->_miniPlayerView;
  v7 = [(CSPlaybackState *)v4 currentSong];
  [(CSMiniPlayerView *)miniPlayerView updateViewStateToNormalWithMediaPlaying:v5 playingSong:v7];

  currentPlaybackState = self->_currentPlaybackState;
  self->_currentPlaybackState = v4;
}

@end