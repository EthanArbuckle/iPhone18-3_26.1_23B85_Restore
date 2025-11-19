@interface HighlightRecognizer
- (HighlightRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (SEL)highlightAction;
- (id)highlightTarget;
- (void)reset;
- (void)setHighlightAction:(SEL)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation HighlightRecognizer

- (HighlightRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v8.receiver = self;
  v8.super_class = HighlightRecognizer;
  v4 = [(HighlightRecognizer *)&v8 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(HighlightRecognizer *)v4 setDelaysTouchesEnded:0];
    v6 = v5;
  }

  return v5;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HighlightRecognizer;
  v7 = a4;
  [(HighlightRecognizer *)&v11 touchesBegan:v6 withEvent:v7];
  self->_numberOfTouches += [v6 count];
  v8 = [MEMORY[0x277D75128] sharedApplication];
  if (self->_highlightAction)
  {
    highlightAction = self->_highlightAction;
  }

  else
  {
    highlightAction = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_highlightTarget);
  [v8 sendAction:highlightAction to:WeakRetained from:self forEvent:v7];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HighlightRecognizer;
  v7 = a4;
  [(HighlightRecognizer *)&v11 touchesEnded:v6 withEvent:v7];
  self->_numberOfTouches -= [v6 count];
  v8 = [MEMORY[0x277D75128] sharedApplication];
  if (self->_highlightAction)
  {
    highlightAction = self->_highlightAction;
  }

  else
  {
    highlightAction = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_highlightTarget);
  [v8 sendAction:highlightAction to:WeakRetained from:self forEvent:v7];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HighlightRecognizer;
  v7 = a4;
  [(HighlightRecognizer *)&v11 touchesCancelled:v6 withEvent:v7];
  self->_numberOfTouches -= [v6 count];
  v8 = [MEMORY[0x277D75128] sharedApplication];
  if (self->_highlightAction)
  {
    highlightAction = self->_highlightAction;
  }

  else
  {
    highlightAction = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_highlightTarget);
  [v8 sendAction:highlightAction to:WeakRetained from:self forEvent:v7];
}

- (void)reset
{
  v6.receiver = self;
  v6.super_class = HighlightRecognizer;
  [(HighlightRecognizer *)&v6 reset];
  self->_numberOfTouches = 0;
  v3 = [MEMORY[0x277D75128] sharedApplication];
  if (self->_highlightAction)
  {
    highlightAction = self->_highlightAction;
  }

  else
  {
    highlightAction = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_highlightTarget);
  [v3 sendAction:highlightAction to:WeakRetained from:self forEvent:0];
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

- (void)setHighlightAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_highlightAction = v3;
}

@end