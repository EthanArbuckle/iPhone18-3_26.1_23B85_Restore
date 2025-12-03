@interface DebugFormatUploadDiffGutterView
- (_TtC8NewsFeed31DebugFormatUploadDiffGutterView)initWithCoder:(id)coder;
- (_TtC8NewsFeed31DebugFormatUploadDiffGutterView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation DebugFormatUploadDiffGutterView

- (_TtC8NewsFeed31DebugFormatUploadDiffGutterView)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffGutterView_contentSize);
  *v3 = 0;
  v3[1] = 0;
  v4 = (self + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffGutterView_contentInsets);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  *v4 = *MEMORY[0x1E69DDCE0];
  v4[1] = v5;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffGutterView_numberOfLines) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffGutterView_changedHunkRanges) = MEMORY[0x1E69E7CC0];
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1D72456E4();
}

- (_TtC8NewsFeed31DebugFormatUploadDiffGutterView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end