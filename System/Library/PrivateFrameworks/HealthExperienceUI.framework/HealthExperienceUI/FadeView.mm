@interface FadeView
+ (Class)layerClass;
- (_TtC18HealthExperienceUIP33_6AFCBB489F4B745EBBFAE39AEAF00FBF8FadeView)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUIP33_6AFCBB489F4B745EBBFAE39AEAF00FBF8FadeView)initWithFrame:(CGRect)frame;
@end

@implementation FadeView

+ (Class)layerClass
{
  sub_1B9F0ADF8(0, &qword_1EDC5E530);

  return swift_getObjCClassFromMetadata();
}

- (_TtC18HealthExperienceUIP33_6AFCBB489F4B745EBBFAE39AEAF00FBF8FadeView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FadeView();
  return [(FadeView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC18HealthExperienceUIP33_6AFCBB489F4B745EBBFAE39AEAF00FBF8FadeView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FadeView();
  coderCopy = coder;
  v5 = [(FadeView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end