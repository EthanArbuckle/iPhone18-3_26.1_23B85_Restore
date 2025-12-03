@interface TranscriptView
- (NSArray)accessibilityElements;
- (_TtC11NotesEditor14TranscriptView)initWithCoder:(id)coder;
- (_TtC11NotesEditor14TranscriptView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (void)findInteraction:(id)interaction didBeginFindSession:(id)session;
- (void)findInteraction:(id)interaction didEndFindSession:(id)session;
- (void)setAccessibilityElements:(id)elements;
@end

@implementation TranscriptView

- (_TtC11NotesEditor14TranscriptView)initWithCoder:(id)coder
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

- (void)findInteraction:(id)interaction didBeginFindSession:(id)session
{
  interactionCopy = interaction;
  sessionCopy = session;
  selfCopy = self;
  sub_21546EB68(interactionCopy, sessionCopy);
}

- (void)findInteraction:(id)interaction didEndFindSession:(id)session
{
  interactionCopy = interaction;
  sessionCopy = session;
  selfCopy = self;
  sub_21546ED34(interactionCopy, sessionCopy);
}

- (NSArray)accessibilityElements
{
  selfCopy = self;
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

- (void)setAccessibilityElements:(id)elements
{
  if (elements)
  {
    sub_2154A1F4C();
    selfCopy = self;
    v5 = sub_2154A1F3C();
  }

  else
  {
    selfCopy2 = self;
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for TranscriptView();
  [(TranscriptView *)&v7 setAccessibilityElements:v5];
}

- (_TtC11NotesEditor14TranscriptView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end