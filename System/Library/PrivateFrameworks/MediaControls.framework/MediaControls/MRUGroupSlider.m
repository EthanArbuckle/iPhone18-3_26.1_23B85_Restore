@interface MRUGroupSlider
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (MRUGroupSlider)initWithFrame:(CGRect)a3;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)handleLongPressCancelled;
- (void)sliderLongPress:(id)a3;
- (void)sliderLongPressFeedback:(id)a3;
@end

@implementation MRUGroupSlider

- (MRUGroupSlider)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = MRUGroupSlider;
  v3 = [(MRUGroupSlider *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    objc_initWeak(&location, v3);
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __32__MRUGroupSlider_initWithFrame___block_invoke;
    v16 = &unk_1E76638C0;
    objc_copyWeak(&v17, &location);
    v4 = _Block_copy(&v13);
    v5 = [MRULongPressGestureRecognizer alloc];
    v6 = [(MRULongPressGestureRecognizer *)v5 initWithTarget:v3 action:sel_sliderLongPress_, v13, v14, v15, v16];
    longPressGestureRecognizer = v3->_longPressGestureRecognizer;
    v3->_longPressGestureRecognizer = v6;

    [(MRULongPressGestureRecognizer *)v3->_longPressGestureRecognizer setMinimumPressDuration:1.5];
    [(MRULongPressGestureRecognizer *)v3->_longPressGestureRecognizer setDelegate:v3];
    [(MRULongPressGestureRecognizer *)v3->_longPressGestureRecognizer addCancellationHandler:v4];
    [(MRUGroupSlider *)v3 addGestureRecognizer:v3->_longPressGestureRecognizer];
    v8 = [[MRULongPressGestureRecognizer alloc] initWithTarget:v3 action:sel_sliderLongPressFeedback_];
    longPressFeedbackGestureRecognizer = v3->_longPressFeedbackGestureRecognizer;
    v3->_longPressFeedbackGestureRecognizer = v8;

    [(MRULongPressGestureRecognizer *)v3->_longPressFeedbackGestureRecognizer setMinimumPressDuration:0.75];
    [(MRULongPressGestureRecognizer *)v3->_longPressFeedbackGestureRecognizer setDelegate:v3];
    [(MRULongPressGestureRecognizer *)v3->_longPressFeedbackGestureRecognizer setCancelsTouchesInView:0];
    [(MRULongPressGestureRecognizer *)v3->_longPressFeedbackGestureRecognizer addCancellationHandler:v4];
    [(MRUGroupSlider *)v3 addGestureRecognizer:v3->_longPressFeedbackGestureRecognizer];
    v10 = [objc_alloc(MEMORY[0x1E69DCAE8]) initWithStyle:0];
    feedbackGenerator = v3->_feedbackGenerator;
    v3->_feedbackGenerator = v10;

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __32__MRUGroupSlider_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleLongPressCancelled];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  if ([(MRUGroupSlider *)self isTracking])
  {
    self->_longPressEnabled = 0;
    v5 = [(MRUSlider *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(MRUSlider *)self delegate];
      self->_longPressEnabled = [v7 sliderShouldAllowLongPress:self];
    }

    v8 = self->_longPressEnabled && (self->_longPressGestureRecognizer == v4 || self->_longPressFeedbackGestureRecognizer == v4);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MRUGroupSlider;
    v8 = [(MRUGroupSlider *)&v10 gestureRecognizerShouldBegin:v4];
  }

  return v8;
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(MRUGroupSlider *)self isEnabled])
  {
    [(UIImpactFeedbackGenerator *)self->_feedbackGenerator prepare];
  }

  v10.receiver = self;
  v10.super_class = MRUGroupSlider;
  v8 = [(MRUGroupSlider *)&v10 beginTrackingWithTouch:v6 withEvent:v7];

  return v8;
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MRUGroupSlider;
  [(MRUGroupSlider *)&v5 endTrackingWithTouch:a3 withEvent:a4];
  if (self->_longPressFeedbackEnabled)
  {
    [(MRUGroupSlider *)self handleLongPressCancelled];
  }
}

- (void)sliderLongPress:(id)a3
{
  if (self->_longPressEnabled && [a3 state] == 1)
  {
    [(UIImpactFeedbackGenerator *)self->_feedbackGenerator impactOccurred];
    self->_longPressFeedbackEnabled = 0;
    v4 = [(MRUSlider *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(MRUSlider *)self delegate];
      [v6 sliderLongPressActionDidFinish:self];
    }
  }
}

- (void)sliderLongPressFeedback:(id)a3
{
  if (self->_longPressEnabled && [a3 state] == 1)
  {
    self->_longPressFeedbackEnabled = 1;
    v4 = [(MRUSlider *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(MRUSlider *)self delegate];
      [v6 sliderLongPressActionDidBegin:self];
    }
  }
}

- (void)handleLongPressCancelled
{
  self->_longPressFeedbackEnabled = 0;
  v3 = [(MRUSlider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MRUSlider *)self delegate];
    [v5 sliderLongPressActionDidCancel:self];
  }
}

@end