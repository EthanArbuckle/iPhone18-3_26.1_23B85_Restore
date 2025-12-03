@interface TwoFingerPanGestureRecognizer
- (_TtC11CalculateUI29TwoFingerPanGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation TwoFingerPanGestureRecognizer

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  sub_1C1DF7224();
  sub_1C1DF7270();
  v6 = sub_1C1E548CC();
  eventCopy = event;
  selfCopy = self;
  sub_1C1DF6798(v6, event);
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  sub_1C1DF7224();
  sub_1C1DF7270();
  v6 = sub_1C1E548CC();
  eventCopy = event;
  selfCopy = self;
  sub_1C1DF690C(v6, eventCopy);
}

- (_TtC11CalculateUI29TwoFingerPanGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  if (target)
  {
    swift_unknownObjectRetain();
    sub_1C1E54A4C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_1C1DF6AE8(v6, action);
}

@end