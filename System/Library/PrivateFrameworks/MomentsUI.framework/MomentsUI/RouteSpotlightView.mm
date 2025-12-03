@interface RouteSpotlightView
- (_TtC9MomentsUI18RouteSpotlightView)initWithCoder:(id)coder;
- (_TtC9MomentsUI18RouteSpotlightView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation RouteSpotlightView

- (_TtC9MomentsUI18RouteSpotlightView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9MomentsUI18RouteSpotlightView_currentStyle) = 9;
  v3 = OBJC_IVAR____TtC9MomentsUI18RouteSpotlightView_currentLayer;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  RouteSpotlightView.layoutSubviews()();
}

- (_TtC9MomentsUI18RouteSpotlightView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end