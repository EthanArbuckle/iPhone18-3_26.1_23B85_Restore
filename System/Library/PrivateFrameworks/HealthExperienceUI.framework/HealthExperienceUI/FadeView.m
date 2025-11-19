@interface FadeView
+ (Class)layerClass;
- (_TtC18HealthExperienceUIP33_6AFCBB489F4B745EBBFAE39AEAF00FBF8FadeView)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUIP33_6AFCBB489F4B745EBBFAE39AEAF00FBF8FadeView)initWithFrame:(CGRect)a3;
@end

@implementation FadeView

+ (Class)layerClass
{
  sub_1B9F0ADF8(0, &qword_1EDC5E530);

  return swift_getObjCClassFromMetadata();
}

- (_TtC18HealthExperienceUIP33_6AFCBB489F4B745EBBFAE39AEAF00FBF8FadeView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FadeView();
  return [(FadeView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC18HealthExperienceUIP33_6AFCBB489F4B745EBBFAE39AEAF00FBF8FadeView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FadeView();
  v4 = a3;
  v5 = [(FadeView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end