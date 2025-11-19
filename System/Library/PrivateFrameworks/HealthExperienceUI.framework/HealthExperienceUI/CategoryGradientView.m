@interface CategoryGradientView
+ (Class)layerClass;
- (_TtC18HealthExperienceUI20CategoryGradientView)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI20CategoryGradientView)initWithFrame:(CGRect)a3;
@end

@implementation CategoryGradientView

+ (Class)layerClass
{
  sub_1B9F0ADF8(0, &qword_1EDC5E530);

  return swift_getObjCClassFromMetadata();
}

- (_TtC18HealthExperienceUI20CategoryGradientView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11.receiver = self;
  v11.super_class = type metadata accessor for CategoryGradientView();
  v7 = [(CategoryGradientView *)&v11 initWithFrame:x, y, width, height];
  v8 = [(CategoryGradientView *)v7 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint_];

  v9 = [(CategoryGradientView *)v7 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint_];

  return v7;
}

- (_TtC18HealthExperienceUI20CategoryGradientView)initWithCoder:(id)a3
{
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

@end