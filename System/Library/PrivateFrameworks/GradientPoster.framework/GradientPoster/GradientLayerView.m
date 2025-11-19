@interface GradientLayerView
+ (Class)layerClass;
- (_TtC14GradientPoster17GradientLayerView)initWithCoder:(id)a3;
- (_TtC14GradientPoster17GradientLayerView)initWithFrame:(CGRect)a3;
@end

@implementation GradientLayerView

+ (Class)layerClass
{
  sub_250119E78(0, &qword_28110FC60);

  return swift_getObjCClassFromMetadata();
}

- (_TtC14GradientPoster17GradientLayerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for GradientLayerView();
  v7 = [(GradientLayerView *)&v9 initWithFrame:x, y, width, height];
  [(GradientLayerView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v7;
}

- (_TtC14GradientPoster17GradientLayerView)initWithCoder:(id)a3
{
  result = sub_25011C478();
  __break(1u);
  return result;
}

@end