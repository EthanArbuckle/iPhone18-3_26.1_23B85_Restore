@interface MUPlaceNoteContentView
- (_TtC6MapsUI22MUPlaceNoteContentView)initWithCoder:(id)coder;
- (_TtC6MapsUI22MUPlaceNoteContentView)initWithFrame:(CGRect)frame;
- (void)handleTapWithGestureRecognizer:(id)recognizer;
@end

@implementation MUPlaceNoteContentView

- (_TtC6MapsUI22MUPlaceNoteContentView)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6MapsUI22MUPlaceNoteContentView____lazy_storage___topLabel) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6MapsUI22MUPlaceNoteContentView____lazy_storage___iconView) = 0;
  result = sub_1C584FD00();
  __break(1u);
  return result;
}

- (void)handleTapWithGestureRecognizer:(id)recognizer
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6MapsUI22MUPlaceNoteContentView_tapHandler);
  v4 = *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC6MapsUI22MUPlaceNoteContentView_tapHandler);
  selfCopy = self;
  v3();
}

- (_TtC6MapsUI22MUPlaceNoteContentView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end