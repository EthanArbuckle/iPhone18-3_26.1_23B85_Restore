@interface CategoryGradientView
+ (Class)layerClass;
- (_TtC18HealthExperienceUI20CategoryGradientView)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI20CategoryGradientView)initWithFrame:(CGRect)frame;
@end

@implementation CategoryGradientView

+ (Class)layerClass
{
  sub_1B9F0ADF8(0, &qword_1EDC5E530);

  return swift_getObjCClassFromMetadata();
}

- (_TtC18HealthExperienceUI20CategoryGradientView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11.receiver = self;
  v11.super_class = type metadata accessor for CategoryGradientView();
  height = [(CategoryGradientView *)&v11 initWithFrame:x, y, width, height];
  layer = [(CategoryGradientView *)height layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint_];

  layer2 = [(CategoryGradientView *)height layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint_];

  return height;
}

- (_TtC18HealthExperienceUI20CategoryGradientView)initWithCoder:(id)coder
{
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

@end