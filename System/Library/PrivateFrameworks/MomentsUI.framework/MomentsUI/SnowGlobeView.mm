@interface SnowGlobeView
- (_TtC9MomentsUI13SnowGlobeView)init;
- (_TtC9MomentsUI13SnowGlobeView)initWithCoder:(id)coder;
- (_TtC9MomentsUI13SnowGlobeView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation SnowGlobeView

- (_TtC9MomentsUI13SnowGlobeView)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9MomentsUI13SnowGlobeView_roundViews) = MEMORY[0x277D84F90];
  v3.receiver = self;
  v3.super_class = type metadata accessor for SnowGlobeView();
  return [(SnowGlobeView *)&v3 initWithFrame:0.0, 0.0, 0.0, 0.0];
}

- (_TtC9MomentsUI13SnowGlobeView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9MomentsUI13SnowGlobeView_roundViews) = MEMORY[0x277D84F90];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  SnowGlobeView.layoutSubviews()();
}

- (_TtC9MomentsUI13SnowGlobeView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end