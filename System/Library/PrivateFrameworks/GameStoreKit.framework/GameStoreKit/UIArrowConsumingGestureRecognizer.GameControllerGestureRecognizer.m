@interface UIArrowConsumingGestureRecognizer.GameControllerGestureRecognizer
- (_TtCV12GameStoreKit33UIArrowConsumingGestureRecognizer31GameControllerGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)pressesChanged:(uint64_t)a3 withEvent:(void *)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation UIArrowConsumingGestureRecognizer.GameControllerGestureRecognizer

- (void)pressesChanged:(uint64_t)a3 withEvent:(void *)a4
{
  v5 = a4;
  v6 = a1;
  sub_24EFDCC94(v5);
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v5 = a4;
  v6 = self;
  sub_24EFDCC94(v5);
  if ([(UIArrowConsumingGestureRecognizer.GameControllerGestureRecognizer *)v6 state]!= 4)
  {
    [(UIArrowConsumingGestureRecognizer.GameControllerGestureRecognizer *)v6 setState:3];
  }
}

- (_TtCV12GameStoreKit33UIArrowConsumingGestureRecognizer31GameControllerGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  if (a3)
  {
    swift_unknownObjectRetain();
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_24EFDAF24(v6, a4);
}

@end