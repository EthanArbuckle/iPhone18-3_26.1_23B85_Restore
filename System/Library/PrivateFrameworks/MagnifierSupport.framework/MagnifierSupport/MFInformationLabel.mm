@interface MFInformationLabel
- (_TtC16MagnifierSupport18MFInformationLabel)initWithCoder:(id)coder;
- (_TtC16MagnifierSupport18MFInformationLabel)initWithFrame:(CGRect)frame;
- (void)setNeedsLayout;
@end

@implementation MFInformationLabel

- (void)setNeedsLayout
{
  selfCopy = self;
  sub_257CF2390();
}

- (_TtC16MagnifierSupport18MFInformationLabel)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_constraintAboveCard) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_constraintBelowCard) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintX) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintY) = 0;
  result = sub_257ED0410();
  __break(1u);
  return result;
}

- (_TtC16MagnifierSupport18MFInformationLabel)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end