@interface BackdropView
+ (Class)layerClass;
- (_TtC13MediaControls12BackdropView)initWithCoder:(id)coder;
- (_TtC13MediaControls12BackdropView)initWithFrame:(CGRect)frame;
@end

@implementation BackdropView

+ (Class)layerClass
{
  sub_1A2115288(0, &qword_1ED94EA88);

  return swift_getObjCClassFromMetadata();
}

- (_TtC13MediaControls12BackdropView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for BackdropView();
  return [(BackdropView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC13MediaControls12BackdropView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for BackdropView();
  coderCopy = coder;
  v5 = [(BackdropView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end