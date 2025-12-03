@interface _HKOxygenSaturationOverrideTapGestureRecognizer
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (_HKOxygenSaturationOverrideTapGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
@end

@implementation _HKOxygenSaturationOverrideTapGestureRecognizer

- (_HKOxygenSaturationOverrideTapGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = _HKOxygenSaturationOverrideTapGestureRecognizer;
  v4 = [(_HKOxygenSaturationOverrideTapGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(_HKOxygenSaturationOverrideTapGestureRecognizer *)v4 setNumberOfTapsRequired:3];
    [(_HKOxygenSaturationOverrideTapGestureRecognizer *)v5 setDelegate:v5];
  }

  return v5;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  recognizerCopy = recognizer;
  view = [touchCopy view];
  view2 = [recognizerCopy view];

  if (view == view2)
  {
    v10 = 1;
  }

  else
  {
    view3 = [touchCopy view];
    objc_opt_class();
    v10 = objc_opt_isKindOfClass() ^ 1;
  }

  return v10 & 1;
}

@end