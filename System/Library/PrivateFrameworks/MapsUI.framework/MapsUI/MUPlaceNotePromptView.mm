@interface MUPlaceNotePromptView
- (_TtC6MapsUI21MUPlaceNotePromptView)initWithCoder:(id)a3;
- (_TtC6MapsUI21MUPlaceNotePromptView)initWithFrame:(CGRect)a3;
- (void)handleTapWithGestureRecognizer:(id)a3;
@end

@implementation MUPlaceNotePromptView

- (_TtC6MapsUI21MUPlaceNotePromptView)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6MapsUI21MUPlaceNotePromptView____lazy_storage___iconView) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6MapsUI21MUPlaceNotePromptView____lazy_storage___topLabel) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6MapsUI21MUPlaceNotePromptView____lazy_storage___bottomLabel) = 0;
  result = sub_1C584FD00();
  __break(1u);
  return result;
}

- (void)handleTapWithGestureRecognizer:(id)a3
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6MapsUI21MUPlaceNotePromptView_tapHandler);
  v4 = *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC6MapsUI21MUPlaceNotePromptView_tapHandler);
  v5 = self;
  v3();
}

- (_TtC6MapsUI21MUPlaceNotePromptView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end