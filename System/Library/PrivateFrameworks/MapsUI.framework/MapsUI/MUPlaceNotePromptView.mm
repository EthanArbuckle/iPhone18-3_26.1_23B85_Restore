@interface MUPlaceNotePromptView
- (_TtC6MapsUI21MUPlaceNotePromptView)initWithCoder:(id)coder;
- (_TtC6MapsUI21MUPlaceNotePromptView)initWithFrame:(CGRect)frame;
- (void)handleTapWithGestureRecognizer:(id)recognizer;
@end

@implementation MUPlaceNotePromptView

- (_TtC6MapsUI21MUPlaceNotePromptView)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6MapsUI21MUPlaceNotePromptView____lazy_storage___iconView) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6MapsUI21MUPlaceNotePromptView____lazy_storage___topLabel) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6MapsUI21MUPlaceNotePromptView____lazy_storage___bottomLabel) = 0;
  result = sub_1C584FD00();
  __break(1u);
  return result;
}

- (void)handleTapWithGestureRecognizer:(id)recognizer
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6MapsUI21MUPlaceNotePromptView_tapHandler);
  v4 = *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC6MapsUI21MUPlaceNotePromptView_tapHandler);
  selfCopy = self;
  v3();
}

- (_TtC6MapsUI21MUPlaceNotePromptView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end