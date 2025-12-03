@interface MRUHoldTransportButton
- (MRUHoldTransportButton)initWithFrame:(CGRect)frame;
- (void)beganHold:(id)hold;
- (void)dragEnter:(id)enter;
- (void)releasedHold:(id)hold;
- (void)setAnimationTimer:(id)timer;
- (void)setTransportControlItem:(id)item;
@end

@implementation MRUHoldTransportButton

- (MRUHoldTransportButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MRUHoldTransportButton;
  v3 = [(MRUTransportButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setTransportControlItem:(id)item
{
  itemCopy = item;
  v5 = MRUForwardBackwardPackageStateNameForState([(MRUTransportButton *)self packageState]);
  asset = [itemCopy asset];
  packageAsset = [asset packageAsset];
  [packageAsset setGlyphState:v5];

  v8.receiver = self;
  v8.super_class = MRUHoldTransportButton;
  [(MRUTransportButton *)&v8 setTransportControlItem:itemCopy];
}

- (void)setAnimationTimer:(id)timer
{
  timerCopy = timer;
  animationTimer = [(MRUHoldTransportButton *)self animationTimer];
  [animationTimer invalidate];

  animationTimer = self->_animationTimer;
  self->_animationTimer = timerCopy;
}

- (void)dragEnter:(id)enter
{
  enterCopy = enter;
  if ([enterCopy isHolding])
  {
    [(MRUHoldTransportButton *)self beganHold:enterCopy];
  }
}

- (void)beganHold:(id)hold
{
  holdCopy = hold;
  transportControlItem = [(MRUTransportButton *)self transportControlItem];
  if ([transportControlItem supportsHolding])
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

    holdBeganAction = [transportControlItem holdBeganAction];
    holdBeganAction[2]();

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

- (void)releasedHold:(id)hold
{
  [(MRUHoldTransportButton *)self setAnimationTimer:0];
  transportControlItem = [(MRUTransportButton *)self transportControlItem];
  if ([transportControlItem supportsHolding])
  {
    holdEndAction = [transportControlItem holdEndAction];
    holdEndAction[2]();
  }
}

@end