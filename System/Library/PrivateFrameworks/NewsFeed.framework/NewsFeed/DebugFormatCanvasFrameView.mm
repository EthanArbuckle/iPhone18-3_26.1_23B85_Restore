@interface DebugFormatCanvasFrameView
- (NSString)description;
- (_TtC8NewsFeed26DebugFormatCanvasFrameView)initWithCoder:(id)coder;
- (_TtC8NewsFeed26DebugFormatCanvasFrameView)initWithFrame:(CGRect)frame;
@end

@implementation DebugFormatCanvasFrameView

- (_TtC8NewsFeed26DebugFormatCanvasFrameView)initWithCoder:(id)coder
{
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (NSString)description
{
  selfCopy = self;
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD000000000000025, 0x80000001D73F0840);
  sub_1D7259B3C();
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);

  v3 = sub_1D726203C();

  return v3;
}

- (_TtC8NewsFeed26DebugFormatCanvasFrameView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end