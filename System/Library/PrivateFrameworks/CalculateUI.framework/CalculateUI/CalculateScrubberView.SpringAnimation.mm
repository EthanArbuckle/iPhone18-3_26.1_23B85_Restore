@interface CalculateScrubberView.SpringAnimation
- (void)displayLinkDidUpdate:(id)a3;
@end

@implementation CalculateScrubberView.SpringAnimation

- (void)displayLinkDidUpdate:(id)a3
{
  v4 = a3;

  [v4 duration];
  sub_1C1DD93DC(v5);
  [v4 timestamp];
  if (v6 - *self->startTime >= 0.5)
  {
    v7 = [v4 invalidate];
    v8 = *self->completion;
    if (v8)
    {
      v9 = *&self->completion[8];
      v8(v7);
    }
  }
}

@end