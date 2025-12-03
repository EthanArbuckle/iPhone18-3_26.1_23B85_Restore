@interface CLKUIQuadViewRenderCoordinator
- (CLKUIQuadViewRenderCoordinator)initWithQuadView:(id)view synchronizeWithClockTimer:(BOOL)timer;
- (void)_renderLinkFired:(id)fired;
- (void)setPaused:(BOOL)paused;
@end

@implementation CLKUIQuadViewRenderCoordinator

- (CLKUIQuadViewRenderCoordinator)initWithQuadView:(id)view synchronizeWithClockTimer:(BOOL)timer
{
  timerCopy = timer;
  viewCopy = view;
  v18.receiver = self;
  v18.super_class = CLKUIQuadViewRenderCoordinator;
  v7 = [(CLKUIQuadViewRenderCoordinator *)&v18 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_quadView, viewCopy);
    if (timerCopy)
    {
      objc_initWeak(&location, v8);
      v9 = [CLKUIClockTimerLink alloc];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __77__CLKUIQuadViewRenderCoordinator_initWithQuadView_synchronizeWithClockTimer___block_invoke;
      v15[3] = &unk_1E87627D8;
      objc_copyWeak(&v16, &location);
      v10 = [(CLKUIClockTimerLink *)v9 initWithUpdateHandler:v15];
      renderFrequencyLink = v8->_renderFrequencyLink;
      v8->_renderFrequencyLink = v10;

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }

    else
    {
      v12 = [[CLKUIDisplayLink alloc] initWithTarget:v8 selector:sel__renderLinkFired_];
      v13 = v8->_renderFrequencyLink;
      v8->_renderFrequencyLink = &v12->super;
    }
  }

  return v8;
}

void __77__CLKUIQuadViewRenderCoordinator_initWithQuadView_synchronizeWithClockTimer___block_invoke(uint64_t a1, void *a2, id *a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _renderLinkFired:WeakRetained];
}

- (void)_renderLinkFired:(id)fired
{
  firedCopy = fired;
  WeakRetained = objc_loadWeakRetained(&self->_quadView);
  if (WeakRetained)
  {
    [firedCopy timestamp];
    [WeakRetained _prepareAndRenderForTime:0 inGroup:1 checkForDrawable:self->_renderDiscontinuity renderDiscontinuity:0 completion:?];
  }

  self->_renderDiscontinuity = 0;
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  if ([(CLKUIQuadViewRenderCoordinator *)self isPaused]&& !pausedCopy)
  {
    self->_renderDiscontinuity = 1;
  }

  renderFrequencyLink = self->_renderFrequencyLink;

  [(CLKUIRenderFrequencyLink *)renderFrequencyLink setPaused:pausedCopy];
}

@end