@interface StrokeGestureRecognizer
- (_TtC19ContactlessReaderUI23StrokeGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation StrokeGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_243F82C38();
  sub_243F82C84();
  v6 = sub_2440D33E0();
  eventCopy = event;
  selfCopy = self;
  sub_243F81378(v6);
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  sub_243F82C38();
  sub_243F82C84();
  v6 = sub_2440D33E0();
  v7 = *((*MEMORY[0x277D85000] & self->super.super.isa) + 0x100);
  eventCopy = event;
  selfCopy = self;
  LOBYTE(event) = v7(v6, event);

  if ((event & 1) != 0 && [(StrokeGestureRecognizer *)selfCopy state]== 1)
  {
    [(StrokeGestureRecognizer *)selfCopy setState:2];
  }
}

- (void)reset
{
  selfCopy = self;
  sub_243F81A2C();
}

- (_TtC19ContactlessReaderUI23StrokeGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  if (target)
  {
    swift_unknownObjectRetain();
    sub_2440D36C0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_243F81B40(v6, action);
}

@end