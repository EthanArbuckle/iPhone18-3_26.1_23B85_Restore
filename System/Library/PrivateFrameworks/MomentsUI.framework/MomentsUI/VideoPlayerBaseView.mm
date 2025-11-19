@interface VideoPlayerBaseView
+ (Class)layerClass;
- (_TtC9MomentsUI19VideoPlayerBaseView)initWithCoder:(id)a3;
- (_TtC9MomentsUI19VideoPlayerBaseView)initWithFrame:(CGRect)a3;
@end

@implementation VideoPlayerBaseView

+ (Class)layerClass
{
  type metadata accessor for AVPlayerLayer();

  return swift_getObjCClassFromMetadata();
}

- (_TtC9MomentsUI19VideoPlayerBaseView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for VideoPlayerBaseView();
  return [(VideoPlayerBaseView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9MomentsUI19VideoPlayerBaseView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for VideoPlayerBaseView();
  v4 = a3;
  v5 = [(VideoPlayerBaseView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end