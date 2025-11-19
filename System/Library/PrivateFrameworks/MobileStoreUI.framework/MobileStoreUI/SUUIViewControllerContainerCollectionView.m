@interface SUUIViewControllerContainerCollectionView
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (void)_beginDynamicHysteresisIncreaseWithCompetingScrollView:(id)a3;
- (void)_endDynamicHysteresisIncrease;
- (void)_updateStateForDynamicHysteresisIncrease;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation SUUIViewControllerContainerCollectionView

- (void)dealloc
{
  [(SUUIViewControllerContainerCollectionView *)self _endDynamicHysteresisIncrease];
  v3.receiver = self;
  v3.super_class = SUUIViewControllerContainerCollectionView;
  [(SUUIViewControllerContainerCollectionView *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (_SUUIViewControllerContainerCollectionViewPanGestureRecognizerStateObservationContext == a6)
  {
    v7 = [(SUUIViewControllerContainerCollectionView *)self panGestureRecognizer:a3];
    if (([v7 state] - 3) <= 2)
    {
      [(SUUIViewControllerContainerCollectionView *)self _endDynamicHysteresisIncrease];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SUUIViewControllerContainerCollectionView;
    [(SUUIViewControllerContainerCollectionView *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(SUUIViewControllerContainerCollectionView *)self panGestureRecognizer];

  if (v9 == v7)
  {
    v10 = [v8 delegate];
    if (v10 != self)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
        v12 = [(SUUIViewControllerContainerCollectionView *)v11 panGestureRecognizer];

        if (v12 == v8 && _SUUIScrollViewIsCompetingWithScrollView(self, v11) && (_SUUIScrollViewWantsToBeginTrackingImmediately(v11) & 1) != 0)
        {
          [(SUUIViewControllerContainerCollectionView *)self _beginDynamicHysteresisIncreaseWithCompetingScrollView:v11];

          v13 = 1;
          goto LABEL_13;
        }
      }
    }
  }

  if ([+[SUUIViewControllerContainerCollectionView superclass](SUUIViewControllerContainerCollectionView "superclass")])
  {
    v15.receiver = self;
    v15.super_class = SUUIViewControllerContainerCollectionView;
    v13 = [(SUUIViewControllerContainerCollectionView *)&v15 gestureRecognizer:v7 shouldBeRequiredToFailByGestureRecognizer:v8];
  }

  else
  {
    v13 = 0;
  }

LABEL_13:

  return v13;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(SUUIViewControllerContainerCollectionView *)self panGestureRecognizer];

  if (v9 != v7)
  {
    goto LABEL_10;
  }

  v10 = [v8 delegate];
  if (v10 == self)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v11 = v10;
  v12 = [(SUUIViewControllerContainerCollectionView *)v11 panGestureRecognizer];

  if (v12 != v8 || !_SUUIScrollViewIsCompetingWithScrollView(self, v11))
  {

LABEL_9:
    goto LABEL_10;
  }

  v13 = _SUUIScrollViewWantsToBeginTrackingImmediately(self);

  if (v13)
  {
    v14 = 1;
    goto LABEL_13;
  }

LABEL_10:
  if ([+[SUUIViewControllerContainerCollectionView superclass](SUUIViewControllerContainerCollectionView "superclass")])
  {
    v16.receiver = self;
    v16.super_class = SUUIViewControllerContainerCollectionView;
    v14 = [(SUUIViewControllerContainerCollectionView *)&v16 gestureRecognizer:v7 shouldRequireFailureOfGestureRecognizer:v8];
  }

  else
  {
    v14 = 0;
  }

LABEL_13:

  return v14;
}

- (void)_beginDynamicHysteresisIncreaseWithCompetingScrollView:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_forcingIncreasedPanGestureRecognizerHysteresis)
  {
    v6 = [v4 panGestureRecognizer];
    [v6 _hysteresis];
    self->_competingScrollViewPanGestureRecognizerHysteresis = v7;

    v8 = [(SUUIViewControllerContainerCollectionView *)self panGestureRecognizer];
    [v8 _hysteresis];
    self->_originalPanGestureRecognizerHysteresis = v9;
    [v8 _setHysteresis:88.0];
    [v8 addObserver:self forKeyPath:@"state" options:0 context:_SUUIViewControllerContainerCollectionViewPanGestureRecognizerStateObservationContext];
    self->_forcingIncreasedPanGestureRecognizerHysteresis = 1;
    objc_initWeak(&location, self);
    v10 = *MEMORY[0x277CBECE8];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __100__SUUIViewControllerContainerCollectionView__beginDynamicHysteresisIncreaseWithCompetingScrollView___block_invoke;
    v12[3] = &unk_2798FD9F8;
    objc_copyWeak(&v13, &location);
    self->_runLoopObserver = CFRunLoopObserverCreateWithHandler(v10, 0x20uLL, 1u, 0, v12);
    Main = CFRunLoopGetMain();
    CFRunLoopAddObserver(Main, self->_runLoopObserver, *MEMORY[0x277CBF048]);
    CFRunLoopAddObserver(Main, self->_runLoopObserver, *MEMORY[0x277D77228]);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __100__SUUIViewControllerContainerCollectionView__beginDynamicHysteresisIncreaseWithCompetingScrollView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateStateForDynamicHysteresisIncrease];
}

- (void)_endDynamicHysteresisIncrease
{
  if (self->_forcingIncreasedPanGestureRecognizerHysteresis)
  {
    self->_competingScrollViewPanGestureRecognizerHysteresis = 0.0;
    v4 = [(SUUIViewControllerContainerCollectionView *)self panGestureRecognizer];
    [v4 _setHysteresis:self->_originalPanGestureRecognizerHysteresis];
    [v4 removeObserver:self forKeyPath:@"state" context:&_SUUIViewControllerContainerCollectionViewPanGestureRecognizerStateObservationContext];
    self->_originalPanGestureRecognizerHysteresis = 0.0;
    self->_forcingIncreasedPanGestureRecognizerHysteresis = 0;
    if (self->_runLoopObserver)
    {
      Main = CFRunLoopGetMain();
      CFRunLoopRemoveObserver(Main, self->_runLoopObserver, *MEMORY[0x277CBF048]);
      CFRunLoopRemoveObserver(Main, self->_runLoopObserver, *MEMORY[0x277D77228]);
      CFRelease(self->_runLoopObserver);
      self->_runLoopObserver = 0;
    }
  }
}

- (void)_updateStateForDynamicHysteresisIncrease
{
  v7 = [(SUUIViewControllerContainerCollectionView *)self panGestureRecognizer];
  if (![v7 state])
  {
    [v7 translationInView:self];
    v4 = fabs(v3);
    v6 = fabs(v5);
    if (v6 > v4 && v6 > self->_competingScrollViewPanGestureRecognizerHysteresis)
    {
      [v7 setState:5];
    }
  }
}

@end