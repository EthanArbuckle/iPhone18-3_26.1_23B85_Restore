@interface NavigationBarStylingMetrics
+ (UIBlurEffect)fauxGradientBlurEffect;
- (_TtC7ChatKit27NavigationBarStylingMetrics)init;
@end

@implementation NavigationBarStylingMetrics

+ (UIBlurEffect)fauxGradientBlurEffect
{
  if (qword_1EAD51B38 != -1)
  {
    swift_once();
  }

  v3 = qword_1EAD59B70;

  return v3;
}

- (_TtC7ChatKit27NavigationBarStylingMetrics)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NavigationBarStylingMetrics();
  return [(NavigationBarStylingMetrics *)&v3 init];
}

@end