@interface CoreTextView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC18HealthExperienceUI12CoreTextView)init;
- (_TtC18HealthExperienceUI12CoreTextView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)onLinkTap:(id)a3;
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

- (void)drawRect:(CGRect)a3
{
  v3 = self;
  sub_1BA22ADEC();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_1BA229254(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)onLinkTap:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BA229490(v4);
}

- (_TtC18HealthExperienceUI12CoreTextView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end