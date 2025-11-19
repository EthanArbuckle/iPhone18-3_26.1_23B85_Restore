@interface NUAVPlayerView
- (NUAVPlayerView)initWithCoder:(id)a3;
- (NUAVPlayerView)initWithFrame:(CGRect)a3;
- (NUAVPlayerViewDelegate)delegate;
- (void)_setReadyForDisplay:(BOOL)a3;
- (void)_updateReadyForDisplayWithID:(int)a3;
- (void)dealloc;
- (void)dispose;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setPlayer:(id)a3;
@end

@implementation NUAVPlayerView

- (NUAVPlayerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_setReadyForDisplay:(BOOL)a3
{
  if (self->_readyForDisplay != a3)
  {
    self->_readyForDisplay = a3;
    v5 = [(NUAVPlayerView *)self delegate];
    [v5 playerViewReadyForDisplayDidChange:self];
  }
}

- (void)_updateReadyForDisplayWithID:(int)a3
{
  v4 = atomic_load(&self->_updateReadyForDisplayID);
  if (v4 == a3)
  {
    v6 = [(NUAVPlayerView *)self layer];
    -[NUAVPlayerView _setReadyForDisplay:](self, "_setReadyForDisplay:", [v6 isReadyForDisplay]);
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (PlayerLayerReadyForDisplayObservationContext == a6)
  {
    v13 = atomic_fetch_add(&self->_updateReadyForDisplayID, 1u) + 1;
    if ([v11 isReadyForDisplay])
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

  else if (PlayerObservationContext == a6)
  {
    v14 = [(NUAVPlayerView *)self delegate];
    v15 = [v12 valueForKey:*MEMORY[0x277CCA2F0]];
    if (objc_opt_respondsToSelector())
    {
      [v15 floatValue];
      [v14 playerRateDidChange:self rate:?];
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = NUAVPlayerView;
    [(NUAVPlayerView *)&v17 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
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
    v4 = [(NUAVPlayerView *)self layer];
    [v4 removeObserver:self forKeyPath:@"readyForDisplay" context:PlayerLayerReadyForDisplayObservationContext];

    v5 = [(NUAVPlayerView *)self player];
    [v5 removeObserver:self forKeyPath:@"rate" context:PlayerObservationContext];
  }
}

- (NUAVPlayerView)initWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = NUAVPlayerView;
  v3 = [(NUAVPlayerView *)&v5 initWithCoder:a3];
  _commonInit(v3);
  return v3;
}

- (NUAVPlayerView)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = NUAVPlayerView;
  v3 = [(NUAVPlayerView *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  _commonInit(v3);
  return v3;
}

- (void)setPlayer:(id)a3
{
  v5 = a3;
  if (self->_player != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_player, a3);
    v6 = [(NUAVPlayerView *)self layer];
    [v6 setPlayer:v7];

    [(AVPlayer *)self->_player addObserver:self forKeyPath:@"rate" options:1 context:PlayerObservationContext];
    v5 = v7;
  }
}

@end