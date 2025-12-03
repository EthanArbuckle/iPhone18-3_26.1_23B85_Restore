@interface DebugFormatSnapshotContentView
+ (Class)layerClass;
- (_TtC8NewsFeed30DebugFormatSnapshotContentView)initWithCoder:(id)coder;
- (_TtC8NewsFeed30DebugFormatSnapshotContentView)initWithFrame:(CGRect)frame;
@end

@implementation DebugFormatSnapshotContentView

+ (Class)layerClass
{
  sub_1D6119CBC();

  return swift_getObjCClassFromMetadata();
}

- (_TtC8NewsFeed30DebugFormatSnapshotContentView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(DebugFormatSnapshotContentView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC8NewsFeed30DebugFormatSnapshotContentView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(DebugFormatSnapshotContentView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end