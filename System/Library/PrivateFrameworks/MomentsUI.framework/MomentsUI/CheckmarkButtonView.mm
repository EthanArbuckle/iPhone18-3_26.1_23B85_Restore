@interface CheckmarkButtonView
- (_TtC9MomentsUI19CheckmarkButtonView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation CheckmarkButtonView

- (_TtC9MomentsUI19CheckmarkButtonView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC9MomentsUI19CheckmarkButtonView_checkmarkColor;
  *(&self->super.super.super.isa + v4) = [objc_opt_self() systemBlueColor];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9MomentsUI19CheckmarkButtonView_isSelected) = 1;
  v5 = OBJC_IVAR____TtC9MomentsUI19CheckmarkButtonView_button;
  type metadata accessor for OversizedBoundsButton();
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  CheckmarkButtonView.layoutSubviews()();
}

@end