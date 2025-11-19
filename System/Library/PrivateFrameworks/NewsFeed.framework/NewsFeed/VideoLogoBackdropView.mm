@interface VideoLogoBackdropView
+ (Class)layerClass;
- (_TtC8NewsFeed21VideoLogoBackdropView)initWithCoder:(id)a3;
- (_TtC8NewsFeed21VideoLogoBackdropView)initWithFrame:(CGRect)a3;
@end

@implementation VideoLogoBackdropView

+ (Class)layerClass
{
  type metadata accessor for VideoLogoBackdropLayer(0);

  return swift_getObjCClassFromMetadata();
}

- (_TtC8NewsFeed21VideoLogoBackdropView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC8NewsFeed21VideoLogoBackdropView_gradientDescriptor;
  v10 = sub_1D725E94C();
  (*(*(v10 - 8) + 56))(self + v9, 1, 1, v10);
  v12.receiver = self;
  v12.super_class = ObjectType;
  return [(VideoLogoBackdropView *)&v12 initWithFrame:x, y, width, height];
}

- (_TtC8NewsFeed21VideoLogoBackdropView)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC8NewsFeed21VideoLogoBackdropView_gradientDescriptor;
  v7 = sub_1D725E94C();
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  v11.receiver = self;
  v11.super_class = ObjectType;
  v8 = a3;
  v9 = [(VideoLogoBackdropView *)&v11 initWithCoder:v8];

  if (v9)
  {
  }

  return v9;
}

@end