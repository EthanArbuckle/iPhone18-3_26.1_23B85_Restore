@interface CKReusableVideoPlayer
- (AVPlayerViewController)playerViewController;
- (BOOL)isPictureInPictureActive;
- (BOOL)isReadyForReuse;
- (CKReusableVideoPlayer)init;
- (CKReusableVideoPlayerDelegate)delegate;
- (void)configureWithPlayerItem:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pause;
- (void)playerViewController:(id)a3 willBeginFullScreenPresentationWithAnimationCoordinator:(id)a4;
- (void)playerViewController:(id)a3 willEndFullScreenPresentationWithAnimationCoordinator:(id)a4;
- (void)removeCurrentPlayerItem;
- (void)removeRateObserverIfNecessary;
- (void)selectedConversationChanged;
- (void)willDisappear;
- (void)windowDidClose;
@end

@implementation CKReusableVideoPlayer

- (void)dealloc
{
  [(CKReusableVideoPlayer *)self removeRateObserverIfNecessary];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKReusableVideoPlayer;
  [(CKReusableVideoPlayer *)&v4 dealloc];
}

- (CKReusableVideoPlayer)init
{
  v5.receiver = self;
  v5.super_class = CKReusableVideoPlayer;
  v2 = [(CKReusableVideoPlayer *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel_selectedConversationChanged name:@"CKConversationListSelectionDidChangeNotification" object:0];
  }

  return v2;
}

- (void)configureWithPlayerItem:(id)a3
{
  v4 = a3;
  if ([(CKReusableVideoPlayer *)self isObservingPlayer])
  {
    [(CKReusableVideoPlayer *)self removeRateObserverIfNecessary];
  }

  v6 = [objc_alloc(MEMORY[0x1E6988098]) initWithPlayerItem:v4];

  v5 = [(CKReusableVideoPlayer *)self playerViewController];
  [v5 setPlayer:v6];

  [v6 addObserver:self forKeyPath:@"rate" options:3 context:CKReusableVideoPlayerObservationContext];
  [(CKReusableVideoPlayer *)self setObservingPlayer:1];
}

- (void)removeCurrentPlayerItem
{
  [(CKReusableVideoPlayer *)self removeRateObserverIfNecessary];
  v3 = [(CKReusableVideoPlayer *)self playerViewController];
  [v3 setPlayer:0];
}

- (void)willDisappear
{
  v3 = [(CKReusableVideoPlayer *)self isPlaying];

  [(CKReusableVideoPlayer *)self setWasPlayingBeforeDisappearing:v3];
}

- (void)windowDidClose
{
  if (![(CKReusableVideoPlayer *)self isPictureInPictureActive])
  {

    [(CKReusableVideoPlayer *)self pause];
  }
}

- (BOOL)isReadyForReuse
{
  if ([(CKReusableVideoPlayer *)self isPictureInPictureActive])
  {
    return 0;
  }

  else
  {
    return ![(CKReusableVideoPlayer *)self wasPlayingBeforeDisappearing];
  }
}

- (void)pause
{
  v3 = [(CKReusableVideoPlayer *)self playerViewController];
  v2 = [v3 player];
  [v2 pause];
}

- (BOOL)isPictureInPictureActive
{
  v2 = [(CKReusableVideoPlayer *)self playerViewController];
  v3 = [v2 isPictureInPictureActive];

  return v3;
}

- (void)selectedConversationChanged
{
  if (![(CKReusableVideoPlayer *)self isPictureInPictureActive])
  {
    [(CKReusableVideoPlayer *)self pause];

    [(CKReusableVideoPlayer *)self setWasPlayingBeforeDisappearing:0];
  }
}

- (AVPlayerViewController)playerViewController
{
  playerViewController = self->_playerViewController;
  if (!playerViewController)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6958608]);
    v5 = self->_playerViewController;
    self->_playerViewController = v4;

    if (([MEMORY[0x1E69DC938] __ck_currentDeviceIsPadOrMac] & 1) == 0)
    {
      [(AVPlayerViewController *)self->_playerViewController setShowsMinimalPlaybackControlsWhenEmbeddedInline:1];
    }

    [(AVPlayerViewController *)self->_playerViewController setDelegate:self];
    playerViewController = self->_playerViewController;
  }

  v6 = playerViewController;

  return v6;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (CKReusableVideoPlayerObservationContext == a6)
  {
    v7 = [(CKReusableVideoPlayer *)self playerViewController:a3];
    v8 = [v7 player];
    [v8 rate];
    v10 = v9;

    if (v10 == 0.0)
    {
      [(CKReusableVideoPlayer *)self setPlaying:0];
      v11 = [(CKReusableVideoPlayer *)self delegate];
      [v11 reusablePlayerDidStop];
    }

    else
    {
      [(CKReusableVideoPlayer *)self setPlaying:1];
      v11 = [(CKReusableVideoPlayer *)self delegate];
      [v11 reusablePlayerDidStart];
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CKReusableVideoPlayer;
    [(CKReusableVideoPlayer *)&v12 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)removeRateObserverIfNecessary
{
  if ([(CKReusableVideoPlayer *)self isObservingPlayer])
  {
    v3 = [(CKReusableVideoPlayer *)self playerViewController];
    v4 = [v3 player];
    [v4 removeObserver:self forKeyPath:@"rate" context:CKReusableVideoPlayerObservationContext];

    [(CKReusableVideoPlayer *)self setObservingPlayer:0];
  }
}

- (void)playerViewController:(id)a3 willBeginFullScreenPresentationWithAnimationCoordinator:(id)a4
{
  v5 = [(CKReusableVideoPlayer *)self delegate:a3];
  [v5 reusablePlayerWillBeginFullScreenPresentation:self];
}

- (void)playerViewController:(id)a3 willEndFullScreenPresentationWithAnimationCoordinator:(id)a4
{
  v5 = [(CKReusableVideoPlayer *)self delegate:a3];
  [v5 reusablePlayerWillEndFullScreenPresentation:self];
}

- (CKReusableVideoPlayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end