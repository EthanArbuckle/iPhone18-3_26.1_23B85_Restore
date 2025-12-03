@interface UIArrowConsumingGestureRecognizer.GameControllerGestureRecognizer
- (_TtCV12GameStoreKit33UIArrowConsumingGestureRecognizer31GameControllerGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)pressesChanged:(uint64_t)changed withEvent:(void *)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
@end

@implementation UIArrowConsumingGestureRecognizer.GameControllerGestureRecognizer

- (void)pressesChanged:(uint64_t)changed withEvent:(void *)event
{
  eventCopy = event;
  selfCopy = self;
  sub_24EFDCC94(eventCopy);
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_24EFDCC94(eventCopy);
  if ([(UIArrowConsumingGestureRecognizer.GameControllerGestureRecognizer *)selfCopy state]!= 4)
  {
    [(UIArrowConsumingGestureRecognizer.GameControllerGestureRecognizer *)selfCopy setState:3];
  }
}

- (_TtCV12GameStoreKit33UIArrowConsumingGestureRecognizer31GameControllerGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  if (target)
  {
    swift_unknownObjectRetain();
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_24EFDAF24(v6, action);
}

@end