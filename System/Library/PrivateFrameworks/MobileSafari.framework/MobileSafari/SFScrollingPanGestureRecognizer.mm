@interface SFScrollingPanGestureRecognizer
- (BOOL)_shouldTryToBeginWithEvent:(id)event;
- (SFScrollingPanGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
@end

@implementation SFScrollingPanGestureRecognizer

- (SFScrollingPanGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v8.receiver = self;
  v8.super_class = SFScrollingPanGestureRecognizer;
  v4 = [(SFScrollingPanGestureRecognizer *)&v8 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(SFScrollingPanGestureRecognizer *)v4 setAllowedScrollTypesMask:3];
    v6 = v5;
  }

  return v5;
}

- (BOOL)_shouldTryToBeginWithEvent:(id)event
{
  eventCopy = event;
  v7.receiver = self;
  v7.super_class = SFScrollingPanGestureRecognizer;
  if ([(SFScrollingPanGestureRecognizer *)&v7 _shouldTryToBeginWithEvent:eventCopy])
  {
    v5 = [eventCopy buttonMask] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end