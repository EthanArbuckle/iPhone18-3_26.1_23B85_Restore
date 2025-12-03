@interface CalculateScrubberView.SpringAnimation
- (void)displayLinkDidUpdate:(id)update;
@end

@implementation CalculateScrubberView.SpringAnimation

- (void)displayLinkDidUpdate:(id)update
{
  updateCopy = update;

  [updateCopy duration];
  sub_1C1DD93DC(v5);
  [updateCopy timestamp];
  if (v6 - *self->startTime >= 0.5)
  {
    invalidate = [updateCopy invalidate];
    v8 = *self->completion;
    if (v8)
    {
      v9 = *&self->completion[8];
      v8(invalidate);
    }
  }
}

@end