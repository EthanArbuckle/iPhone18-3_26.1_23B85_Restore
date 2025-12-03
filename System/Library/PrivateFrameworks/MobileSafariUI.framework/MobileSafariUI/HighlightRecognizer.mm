@interface HighlightRecognizer
- (HighlightRecognizer)initWithTarget:(id)target action:(SEL)action;
- (SEL)highlightAction;
- (id)highlightTarget;
- (void)reset;
- (void)setHighlightAction:(SEL)action;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation HighlightRecognizer

- (HighlightRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v8.receiver = self;
  v8.super_class = HighlightRecognizer;
  v4 = [(HighlightRecognizer *)&v8 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(HighlightRecognizer *)v4 setDelaysTouchesEnded:0];
    v6 = v5;
  }

  return v5;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  v11.receiver = self;
  v11.super_class = HighlightRecognizer;
  eventCopy = event;
  [(HighlightRecognizer *)&v11 touchesBegan:beganCopy withEvent:eventCopy];
  self->_numberOfTouches += [beganCopy count];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  if (self->_highlightAction)
  {
    highlightAction = self->_highlightAction;
  }

  else
  {
    highlightAction = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_highlightTarget);
  [mEMORY[0x277D75128] sendAction:highlightAction to:WeakRetained from:self forEvent:eventCopy];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  v11.receiver = self;
  v11.super_class = HighlightRecognizer;
  eventCopy = event;
  [(HighlightRecognizer *)&v11 touchesEnded:endedCopy withEvent:eventCopy];
  self->_numberOfTouches -= [endedCopy count];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  if (self->_highlightAction)
  {
    highlightAction = self->_highlightAction;
  }

  else
  {
    highlightAction = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_highlightTarget);
  [mEMORY[0x277D75128] sendAction:highlightAction to:WeakRetained from:self forEvent:eventCopy];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  v11.receiver = self;
  v11.super_class = HighlightRecognizer;
  eventCopy = event;
  [(HighlightRecognizer *)&v11 touchesCancelled:cancelledCopy withEvent:eventCopy];
  self->_numberOfTouches -= [cancelledCopy count];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  if (self->_highlightAction)
  {
    highlightAction = self->_highlightAction;
  }

  else
  {
    highlightAction = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_highlightTarget);
  [mEMORY[0x277D75128] sendAction:highlightAction to:WeakRetained from:self forEvent:eventCopy];
}

- (void)reset
{
  v6.receiver = self;
  v6.super_class = HighlightRecognizer;
  [(HighlightRecognizer *)&v6 reset];
  self->_numberOfTouches = 0;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  if (self->_highlightAction)
  {
    highlightAction = self->_highlightAction;
  }

  else
  {
    highlightAction = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_highlightTarget);
  [mEMORY[0x277D75128] sendAction:highlightAction to:WeakRetained from:self forEvent:0];
}

- (id)highlightTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_highlightTarget);

  return WeakRetained;
}

- (SEL)highlightAction
{
  if (self->_highlightAction)
  {
    return self->_highlightAction;
  }

  else
  {
    return 0;
  }
}

- (void)setHighlightAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_highlightAction = actionCopy;
}

@end