@interface PBUIRemoteIrisWallpaperPlayer
- (PBUIIrisWallpaperPlayerDelegate)irisDelegate;
- (PBUIRemoteIrisWallpaperPlayer)init;
- (PBUIRemoteIrisWallpaperPlayerDelegate)delegate;
- (void)_setIrisPlaybackState:(int64_t)a3;
- (void)_setTouchActive:(BOOL)a3;
- (void)_wallpaperGestureChanged:(id)a3;
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

- (void)_setIrisPlaybackState:(int64_t)a3
{
  if (self->_irisPlaybackState != a3)
  {
    self->_irisPlaybackState = a3;
    v5 = [(PBUIRemoteIrisWallpaperPlayer *)self irisDelegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 irisWallpaperPlayerPlaybackStateDidChange:self];
    }
  }
}

- (void)_wallpaperGestureChanged:(id)a3
{
  if (self->_gestureRecognizer == a3)
  {
    v4 = [a3 state];
    if ((v4 - 3) >= 3)
    {
      if (v4 == 2)
      {

        [(PBUIRemoteIrisWallpaperPlayer *)self _handleWallpaperGestureChanged];
      }

      else if (v4 == 1)
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

- (void)_setTouchActive:(BOOL)a3
{
  if (self->_touchActive != a3)
  {
    self->_touchActive = a3;
    v6 = [(PBUIRemoteIrisWallpaperPlayer *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v6 remoteIrisWallpaperPlayer:self touchActiveChanged:self->_touchActive];
    }

    v5 = [(PBUIRemoteIrisWallpaperPlayer *)self irisDelegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 irisWallpaperPlayerIsInteractingDidChange:self];
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