@interface GradientLayerView
+ (Class)layerClass;
- (_TtC14GradientPoster17GradientLayerView)initWithCoder:(id)coder;
- (_TtC14GradientPoster17GradientLayerView)initWithFrame:(CGRect)frame;
@end

@implementation GradientLayerView

+ (Class)layerClass
{
  sub_250119E78(0, &qword_28110FC60);

  return swift_getObjCClassFromMetadata();
}

- (_TtC14GradientPoster17GradientLayerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for GradientLayerView();
  height = [(GradientLayerView *)&v9 initWithFrame:x, y, width, height];
  [(GradientLayerView *)height setTranslatesAutoresizingMaskIntoConstraints:0];
  return height;
}

- (_TtC14GradientPoster17GradientLayerView)initWithCoder:(id)coder
{
  result = sub_25011C478();
  __break(1u);
  return result;
}

@end