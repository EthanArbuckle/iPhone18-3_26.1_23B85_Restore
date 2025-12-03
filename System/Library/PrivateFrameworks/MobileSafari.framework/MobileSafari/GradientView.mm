@interface GradientView
+ (Class)layerClass;
- (_TtC12MobileSafari12GradientView)initWithCoder:(id)coder;
- (_TtC12MobileSafari12GradientView)initWithFrame:(CGRect)frame;
@end

@implementation GradientView

+ (Class)layerClass
{
  sub_18BB80F94();

  return swift_getObjCClassFromMetadata();
}

- (_TtC12MobileSafari12GradientView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for GradientView();
  return [(GradientView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC12MobileSafari12GradientView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for GradientView();
  coderCopy = coder;
  v5 = [(GradientView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end