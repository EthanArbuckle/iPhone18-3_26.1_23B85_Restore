@interface PBUIRemoteIrisWallpaperPlayer
- (PBUIIrisWallpaperPlayerDelegate)irisDelegate;
- (PBUIRemoteIrisWallpaperPlayer)init;
- (PBUIRemoteIrisWallpaperPlayerDelegate)delegate;
- (void)_setIrisPlaybackState:(int64_t)state;
- (void)_setTouchActive:(BOOL)active;
- (void)_wallpaperGestureChanged:(id)changed;
@end

@implementation PBUIRemoteIrisWallpaperPlayer

- (PBUIRemoteIrisWallpaperPlayer)init
{
  v6.receiver = self;
  v6.super_class = PBUIRemoteIrisWallpaperPlayer;
  v2 = [(PBUIRemoteIrisWallpaperPlayer *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v2 action:sel__wallpaperGestureChanged_];
    gestureRecognizer = v2->_gestureRecognizer;
    v2->_gestureRecognizer = v3;

    [(UILongPressGestureRecognizer *)v2->_gestureRecognizer setMinimumPressDuration:0.15];
    [(UILongPressGestureRecognizer *)v2->_gestureRecognizer setCancelsTouchesInView:0];
  }

  return v2;
}

- (void)_setIrisPlaybackState:(int64_t)state
{
  if (self->_irisPlaybackState != state)
  {
    self->_irisPlaybackState = state;
    irisDelegate = [(PBUIRemoteIrisWallpaperPlayer *)self irisDelegate];
    if (objc_opt_respondsToSelector())
    {
      [irisDelegate irisWallpaperPlayerPlaybackStateDidChange:self];
    }
  }
}

- (void)_wallpaperGestureChanged:(id)changed
{
  if (self->_gestureRecognizer == changed)
  {
    state = [changed state];
    if ((state - 3) >= 3)
    {
      if (state == 2)
      {

        [(PBUIRemoteIrisWallpaperPlayer *)self _handleWallpaperGestureChanged];
      }

      else if (state == 1)
      {

        [(PBUIRemoteIrisWallpaperPlayer *)self _handleWallpaperGestureBegan];
      }
    }

    else
    {

      [(PBUIRemoteIrisWallpaperPlayer *)self _handleWallpaperGestureEnded];
    }
  }
}

- (void)_setTouchActive:(BOOL)active
{
  if (self->_touchActive != active)
  {
    self->_touchActive = active;
    delegate = [(PBUIRemoteIrisWallpaperPlayer *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate remoteIrisWallpaperPlayer:self touchActiveChanged:self->_touchActive];
    }

    irisDelegate = [(PBUIRemoteIrisWallpaperPlayer *)self irisDelegate];
    if (objc_opt_respondsToSelector())
    {
      [irisDelegate irisWallpaperPlayerIsInteractingDidChange:self];
    }
  }
}

- (PBUIIrisWallpaperPlayerDelegate)irisDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_irisDelegate);

  return WeakRetained;
}

- (PBUIRemoteIrisWallpaperPlayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end