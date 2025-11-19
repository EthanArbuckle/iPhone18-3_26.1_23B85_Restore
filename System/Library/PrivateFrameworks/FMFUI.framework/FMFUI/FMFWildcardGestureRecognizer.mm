@interface FMFWildcardGestureRecognizer
- (FMFWildcardGestureRecognizer)init;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
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

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  touchesBeganCallback = self->_touchesBeganCallback;
  if (touchesBeganCallback)
  {
    touchesBeganCallback[2](touchesBeganCallback, a3, a4);
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  touchesEndedCallback = self->_touchesEndedCallback;
  if (touchesEndedCallback)
  {
    touchesEndedCallback[2](touchesEndedCallback, a3, a4);
  }
}

@end