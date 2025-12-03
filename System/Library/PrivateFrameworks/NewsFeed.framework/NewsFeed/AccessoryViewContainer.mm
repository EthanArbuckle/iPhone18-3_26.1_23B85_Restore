@interface AccessoryViewContainer
- (CGSize)intrinsicContentSize;
- (_TtC8NewsFeedP33_B3216C832986877D01E235539593604B22AccessoryViewContainer)initWithFrame:(CGRect)frame inputViewStyle:(int64_t)style;
@end

@implementation AccessoryViewContainer

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  [(AccessoryViewContainer *)selfCopy bounds];
  Width = CGRectGetWidth(v12);
  sub_1D7262E2C();
  sub_1D6A18E94(Width - v4);
  v5 = *MEMORY[0x1E69DE788];
  v6 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC8NewsFeedP33_B3216C832986877D01E235539593604B22AccessoryViewContainer_height);
  sub_1D7262E3C();
  v8 = v7;

  v9 = v6 + v8;
  v10 = v5;
  result.height = v9;
  result.width = v10;
  return result;
}

- (_TtC8NewsFeedP33_B3216C832986877D01E235539593604B22AccessoryViewContainer)initWithFrame:(CGRect)frame inputViewStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end