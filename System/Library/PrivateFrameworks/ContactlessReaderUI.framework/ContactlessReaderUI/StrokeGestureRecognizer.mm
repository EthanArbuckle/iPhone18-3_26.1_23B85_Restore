@interface StrokeGestureRecognizer
- (_TtC19ContactlessReaderUI23StrokeGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation StrokeGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  sub_243F82C38();
  sub_243F82C84();
  v6 = sub_2440D33E0();
  v7 = a4;
  v8 = self;
  sub_243F81378(v6);
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  sub_243F82C38();
  sub_243F82C84();
  v6 = sub_2440D33E0();
  v7 = *((*MEMORY[0x277D85000] & self->super.super.isa) + 0x100);
  v8 = a4;
  v9 = self;
  LOBYTE(a4) = v7(v6, a4);

  if ((a4 & 1) != 0 && [(StrokeGestureRecognizer *)v9 state]== 1)
  {
    [(StrokeGestureRecognizer *)v9 setState:2];
  }
}

- (void)reset
{
  v2 = self;
  sub_243F81A2C();
}

- (_TtC19ContactlessReaderUI23StrokeGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  if (a3)
  {
    swift_unknownObjectRetain();
    sub_2440D36C0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_243F81B40(v6, a4);
}

@end