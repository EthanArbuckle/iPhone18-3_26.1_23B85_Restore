@interface VideoPlayerBaseView
+ (Class)layerClass;
- (_TtC9MomentsUI19VideoPlayerBaseView)initWithCoder:(id)coder;
- (_TtC9MomentsUI19VideoPlayerBaseView)initWithFrame:(CGRect)frame;
@end

@implementation VideoPlayerBaseView

+ (Class)layerClass
{
  type metadata accessor for AVPlayerLayer();

  return swift_getObjCClassFromMetadata();
}

- (_TtC9MomentsUI19VideoPlayerBaseView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for VideoPlayerBaseView();
  return [(VideoPlayerBaseView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9MomentsUI19VideoPlayerBaseView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for VideoPlayerBaseView();
  coderCopy = coder;
  v5 = [(VideoPlayerBaseView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end