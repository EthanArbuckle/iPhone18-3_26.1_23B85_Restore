@interface CoreTextView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC18HealthExperienceUI12CoreTextView)init;
- (_TtC18HealthExperienceUI12CoreTextView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)onLinkTap:(id)tap;
@end

@implementation CoreTextView

- (_TtC18HealthExperienceUI12CoreTextView)init
{
  v2 = objc_allocWithZone(type metadata accessor for CoreTextView());
  v3 = CoreTextView.init(frame:columns:)(1, 0, 0.0, 0.0, 0.0, 0.0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

- (void)drawRect:(CGRect)rect
{
  selfCopy = self;
  sub_1BA22ADEC();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_1BA229254(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)onLinkTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  sub_1BA229490(tapCopy);
}

- (_TtC18HealthExperienceUI12CoreTextView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end