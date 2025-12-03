@interface CKReusableVideoPlayer
- (AVPlayerViewController)playerViewController;
- (BOOL)isPictureInPictureActive;
- (BOOL)isReadyForReuse;
- (CKReusableVideoPlayer)init;
- (CKReusableVideoPlayerDelegate)delegate;
- (void)configureWithPlayerItem:(id)item;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pause;
- (void)playerViewController:(id)controller willBeginFullScreenPresentationWithAnimationCoordinator:(id)coordinator;
- (void)playerViewController:(id)controller willEndFullScreenPresentationWithAnimationCoordinator:(id)coordinator;
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_selectedConversationChanged name:@"CKConversationListSelectionDidChangeNotification" object:0];
  }

  return v2;
}

- (void)configureWithPlayerItem:(id)item
{
  itemCopy = item;
  if ([(CKReusableVideoPlayer *)self isObservingPlayer])
  {
    [(CKReusableVideoPlayer *)self removeRateObserverIfNecessary];
  }

  v6 = [objc_alloc(MEMORY[0x1E6988098]) initWithPlayerItem:itemCopy];

  playerViewController = [(CKReusableVideoPlayer *)self playerViewController];
  [playerViewController setPlayer:v6];

  [v6 addObserver:self forKeyPath:@"rate" options:3 context:CKReusableVideoPlayerObservationContext];
  [(CKReusableVideoPlayer *)self setObservingPlayer:1];
}

- (void)removeCurrentPlayerItem
{
  [(CKReusableVideoPlayer *)self removeRateObserverIfNecessary];
  playerViewController = [(CKReusableVideoPlayer *)self playerViewController];
  [playerViewController setPlayer:0];
}

- (void)willDisappear
{
  isPlaying = [(CKReusableVideoPlayer *)self isPlaying];

  [(CKReusableVideoPlayer *)self setWasPlayingBeforeDisappearing:isPlaying];
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
  playerViewController = [(CKReusableVideoPlayer *)self playerViewController];
  player = [playerViewController player];
  [player pause];
}

- (BOOL)isPictureInPictureActive
{
  playerViewController = [(CKReusableVideoPlayer *)self playerViewController];
  isPictureInPictureActive = [playerViewController isPictureInPictureActive];

  return isPictureInPictureActive;
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (CKReusableVideoPlayerObservationContext == context)
  {
    v7 = [(CKReusableVideoPlayer *)self playerViewController:path];
    player = [v7 player];
    [player rate];
    v10 = v9;

    if (v10 == 0.0)
    {
      [(CKReusableVideoPlayer *)self setPlaying:0];
      delegate = [(CKReusableVideoPlayer *)self delegate];
      [delegate reusablePlayerDidStop];
    }

    else
    {
      [(CKReusableVideoPlayer *)self setPlaying:1];
      delegate = [(CKReusableVideoPlayer *)self delegate];
      [delegate reusablePlayerDidStart];
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CKReusableVideoPlayer;
    [(CKReusableVideoPlayer *)&v12 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)removeRateObserverIfNecessary
{
  if ([(CKReusableVideoPlayer *)self isObservingPlayer])
  {
    playerViewController = [(CKReusableVideoPlayer *)self playerViewController];
    player = [playerViewController player];
    [player removeObserver:self forKeyPath:@"rate" context:CKReusableVideoPlayerObservationContext];

    [(CKReusableVideoPlayer *)self setObservingPlayer:0];
  }
}

- (void)playerViewController:(id)controller willBeginFullScreenPresentationWithAnimationCoordinator:(id)coordinator
{
  v5 = [(CKReusableVideoPlayer *)self delegate:controller];
  [v5 reusablePlayerWillBeginFullScreenPresentation:self];
}

- (void)playerViewController:(id)controller willEndFullScreenPresentationWithAnimationCoordinator:(id)coordinator
{
  v5 = [(CKReusableVideoPlayer *)self delegate:controller];
  [v5 reusablePlayerWillEndFullScreenPresentation:self];
}

- (CKReusableVideoPlayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end