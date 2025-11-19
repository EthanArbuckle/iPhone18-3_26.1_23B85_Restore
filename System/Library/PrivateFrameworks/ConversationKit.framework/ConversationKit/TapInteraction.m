@interface TapInteraction
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (UIView)view;
- (int64_t)numberOfTapsRequired;
- (void)didMoveToView:(id)a3;
- (void)handleRecognizer:(id)a3;
- (void)setNumberOfTapsRequired:(int64_t)a3;
- (void)setView:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation TapInteraction

- (UIView)view
{
  v2 = TapInteraction.view.getter();

  return v2;
}

- (void)setView:(id)a3
{
  v5 = a3;
  v6 = self;
  TapInteraction.view.setter(a3);
}

- (int64_t)numberOfTapsRequired
{
  v2 = self;
  v3 = TapInteraction.numberOfTapsRequired.getter();

  return v3;
}

- (void)setNumberOfTapsRequired:(int64_t)a3
{
  v4 = self;
  TapInteraction.numberOfTapsRequired.setter(a3);
}

- (void)willMoveToView:(id)a3
{
  v5 = a3;
  v6 = self;
  TapInteraction.willMove(to:)(a3);
}

- (void)didMoveToView:(id)a3
{
  v5 = a3;
  v6 = self;
  TapInteraction.didMove(to:)(a3);
}

- (void)handleRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  TapInteraction.handleRecognizer(_:)(v4);
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = TapInteraction.gestureRecognizer(_:shouldRequireFailureOf:)(v6, v7);

  return v9;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = TapInteraction.gestureRecognizer(_:shouldReceive:)(v8, v7);

  return v9;
}

@end