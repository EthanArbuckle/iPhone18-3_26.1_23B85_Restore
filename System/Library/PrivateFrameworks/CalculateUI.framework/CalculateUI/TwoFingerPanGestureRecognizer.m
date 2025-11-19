@interface TwoFingerPanGestureRecognizer
- (_TtC11CalculateUI29TwoFingerPanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation TwoFingerPanGestureRecognizer

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  sub_1C1DF7224();
  sub_1C1DF7270();
  v6 = sub_1C1E548CC();
  v7 = a4;
  v8 = self;
  sub_1C1DF6798(v6, a4);
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  sub_1C1DF7224();
  sub_1C1DF7270();
  v6 = sub_1C1E548CC();
  v7 = a4;
  v8 = self;
  sub_1C1DF690C(v6, v7);
}

- (_TtC11CalculateUI29TwoFingerPanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  if (a3)
  {
    swift_unknownObjectRetain();
    sub_1C1E54A4C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_1C1DF6AE8(v6, a4);
}

@end