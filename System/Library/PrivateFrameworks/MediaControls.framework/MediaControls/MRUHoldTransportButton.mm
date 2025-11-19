@interface MRUHoldTransportButton
- (MRUHoldTransportButton)initWithFrame:(CGRect)a3;
- (void)beganHold:(id)a3;
- (void)dragEnter:(id)a3;
- (void)releasedHold:(id)a3;
- (void)setAnimationTimer:(id)a3;
- (void)setTransportControlItem:(id)a3;
@end

@implementation MRUHoldTransportButton

- (MRUHoldTransportButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MRUHoldTransportButton;
  v3 = [(MRUTransportButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MRUHoldTransportButton *)v3 addTarget:v3 action:sel_beganHold_ forControlEvents:0x1000000];
    [(MRUHoldTransportButton *)v4 addTarget:v4 action:sel_releasedHold_ forControlEvents:0x2000000];
    [(MRUHoldTransportButton *)v4 addTarget:v4 action:sel_dragEnter_ forControlEvents:16];
    [(MRUHoldTransportButton *)v4 addTarget:v4 action:sel_releasedHold_ forControlEvents:32];
  }

  return v4;
}

- (void)setTransportControlItem:(id)a3
{
  v4 = a3;
  v5 = MRUForwardBackwardPackageStateNameForState([(MRUTransportButton *)self packageState]);
  v6 = [v4 asset];
  v7 = [v6 packageAsset];
  [v7 setGlyphState:v5];

  v8.receiver = self;
  v8.super_class = MRUHoldTransportButton;
  [(MRUTransportButton *)&v8 setTransportControlItem:v4];
}

- (void)setAnimationTimer:(id)a3
{
  v4 = a3;
  v5 = [(MRUHoldTransportButton *)self animationTimer];
  [v5 invalidate];

  animationTimer = self->_animationTimer;
  self->_animationTimer = v4;
}

- (void)dragEnter:(id)a3
{
  v4 = a3;
  if ([v4 isHolding])
  {
    [(MRUHoldTransportButton *)self beganHold:v4];
  }
}

- (void)beganHold:(id)a3
{
  v4 = a3;
  v5 = [(MRUTransportButton *)self transportControlItem];
  if ([v5 supportsHolding])
  {
    objc_initWeak(&location, self);
    v6 = MEMORY[0x1E695DFF0];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __36__MRUHoldTransportButton_beganHold___block_invoke;
    v12 = &unk_1E7663C90;
    objc_copyWeak(&v13, &location);
    v7 = [v6 scheduledTimerWithTimeInterval:1 repeats:&v9 block:0.5];
    [(MRUHoldTransportButton *)self setAnimationTimer:v7, v9, v10, v11, v12];

    v8 = [v5 holdBeganAction];
    v8[2]();

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __36__MRUHoldTransportButton_beganHold___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setPackageState:{MRUForwardBackwardPackageStateNextStateForState(objc_msgSend(WeakRetained, "packageState"))}];
    WeakRetained = v2;
  }
}

- (void)releasedHold:(id)a3
{
  [(MRUHoldTransportButton *)self setAnimationTimer:0];
  v5 = [(MRUTransportButton *)self transportControlItem];
  if ([v5 supportsHolding])
  {
    v4 = [v5 holdEndAction];
    v4[2]();
  }
}

@end