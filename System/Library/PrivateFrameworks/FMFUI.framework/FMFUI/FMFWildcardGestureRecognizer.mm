@interface FMFWildcardGestureRecognizer
- (FMFWildcardGestureRecognizer)init;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation FMFWildcardGestureRecognizer

- (FMFWildcardGestureRecognizer)init
{
  v5.receiver = self;
  v5.super_class = FMFWildcardGestureRecognizer;
  v2 = [(FMFWildcardGestureRecognizer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(FMFWildcardGestureRecognizer *)v2 setCancelsTouchesInView:0];
  }

  return v3;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  touchesBeganCallback = self->_touchesBeganCallback;
  if (touchesBeganCallback)
  {
    touchesBeganCallback[2](touchesBeganCallback, began, event);
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  touchesEndedCallback = self->_touchesEndedCallback;
  if (touchesEndedCallback)
  {
    touchesEndedCallback[2](touchesEndedCallback, ended, event);
  }
}

@end