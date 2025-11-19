@interface TranscriptView
- (NSArray)accessibilityElements;
- (_TtC11NotesEditor14TranscriptView)initWithCoder:(id)a3;
- (_TtC11NotesEditor14TranscriptView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (void)findInteraction:(id)a3 didBeginFindSession:(id)a4;
- (void)findInteraction:(id)a3 didEndFindSession:(id)a4;
- (void)setAccessibilityElements:(id)a3;
@end

@implementation TranscriptView

- (_TtC11NotesEditor14TranscriptView)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11NotesEditor14TranscriptView_scrollAnimationDuration) = 0x3FD0000000000000;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11NotesEditor14TranscriptView_bottomInset) = 0x4035000000000000;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11NotesEditor14TranscriptView_padding) = 0x4018000000000000;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11NotesEditor14TranscriptView_summaryButton) = 0;
  result = sub_2154A2EDC();
  __break(1u);
  return result;
}

- (void)findInteraction:(id)a3 didBeginFindSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_21546EB68(v6, v7);
}

- (void)findInteraction:(id)a3 didEndFindSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_21546ED34(v6, v7);
}

- (NSArray)accessibilityElements
{
  v2 = self;
  v3 = sub_215471688();

  if (v3)
  {
    v4 = sub_2154A1F3C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAccessibilityElements:(id)a3
{
  if (a3)
  {
    sub_2154A1F4C();
    v4 = self;
    v5 = sub_2154A1F3C();
  }

  else
  {
    v6 = self;
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for TranscriptView();
  [(TranscriptView *)&v7 setAccessibilityElements:v5];
}

- (_TtC11NotesEditor14TranscriptView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end