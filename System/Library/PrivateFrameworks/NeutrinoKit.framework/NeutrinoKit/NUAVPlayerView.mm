@interface NUAVPlayerView
- (NUAVPlayerView)initWithCoder:(id)coder;
- (NUAVPlayerView)initWithFrame:(CGRect)frame;
- (NUAVPlayerViewDelegate)delegate;
- (void)_setReadyForDisplay:(BOOL)display;
- (void)_updateReadyForDisplayWithID:(int)d;
- (void)dealloc;
- (void)dispose;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setPlayer:(id)player;
@end

@implementation NUAVPlayerView

- (NUAVPlayerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_setReadyForDisplay:(BOOL)display
{
  if (self->_readyForDisplay != display)
  {
    self->_readyForDisplay = display;
    delegate = [(NUAVPlayerView *)self delegate];
    [delegate playerViewReadyForDisplayDidChange:self];
  }
}

- (void)_updateReadyForDisplayWithID:(int)d
{
  v4 = atomic_load(&self->_updateReadyForDisplayID);
  if (v4 == d)
  {
    layer = [(NUAVPlayerView *)self layer];
    -[NUAVPlayerView _setReadyForDisplay:](self, "_setReadyForDisplay:", [layer isReadyForDisplay]);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (PlayerLayerReadyForDisplayObservationContext == context)
  {
    v13 = atomic_fetch_add(&self->_updateReadyForDisplayID, 1u) + 1;
    if ([objectCopy isReadyForDisplay])
    {
      [(NUAVPlayerView *)self _updateReadyForDisplayWithID:v13];
    }

    else
    {
      objc_initWeak(&location, self);
      v16 = dispatch_time(0, 300000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__NUAVPlayerView_observeValueForKeyPath_ofObject_change_context___block_invoke;
      block[3] = &unk_279973C60;
      objc_copyWeak(&v19, &location);
      v20 = v13;
      dispatch_after(v16, MEMORY[0x277D85CD0], block);
      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }

  else if (PlayerObservationContext == context)
  {
    delegate = [(NUAVPlayerView *)self delegate];
    v15 = [changeCopy valueForKey:*MEMORY[0x277CCA2F0]];
    if (objc_opt_respondsToSelector())
    {
      [v15 floatValue];
      [delegate playerRateDidChange:self rate:?];
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = NUAVPlayerView;
    [(NUAVPlayerView *)&v17 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

void __65__NUAVPlayerView_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = atomic_load((a1 + 40));
  [WeakRetained _updateReadyForDisplayWithID:v2];
}

- (void)dealloc
{
  [(NUAVPlayerView *)self dispose];
  v3.receiver = self;
  v3.super_class = NUAVPlayerView;
  [(NUAVPlayerView *)&v3 dealloc];
}

- (void)dispose
{
  if (!self->_observerDetached)
  {
    self->_observerDetached = 1;
    layer = [(NUAVPlayerView *)self layer];
    [layer removeObserver:self forKeyPath:@"readyForDisplay" context:PlayerLayerReadyForDisplayObservationContext];

    player = [(NUAVPlayerView *)self player];
    [player removeObserver:self forKeyPath:@"rate" context:PlayerObservationContext];
  }
}

- (NUAVPlayerView)initWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = NUAVPlayerView;
  v3 = [(NUAVPlayerView *)&v5 initWithCoder:coder];
  _commonInit(v3);
  return v3;
}

- (NUAVPlayerView)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = NUAVPlayerView;
  v3 = [(NUAVPlayerView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  _commonInit(v3);
  return v3;
}

- (void)setPlayer:(id)player
{
  playerCopy = player;
  if (self->_player != playerCopy)
  {
    v7 = playerCopy;
    objc_storeStrong(&self->_player, player);
    layer = [(NUAVPlayerView *)self layer];
    [layer setPlayer:v7];

    [(AVPlayer *)self->_player addObserver:self forKeyPath:@"rate" options:1 context:PlayerObservationContext];
    playerCopy = v7;
  }
}

@end