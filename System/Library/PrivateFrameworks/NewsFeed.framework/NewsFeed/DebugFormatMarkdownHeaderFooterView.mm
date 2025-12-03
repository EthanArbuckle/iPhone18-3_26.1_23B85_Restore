@interface DebugFormatMarkdownHeaderFooterView
- (_TtC8NewsFeed35DebugFormatMarkdownHeaderFooterView)initWithCoder:(id)coder;
- (_TtC8NewsFeed35DebugFormatMarkdownHeaderFooterView)initWithReuseIdentifier:(id)identifier;
@end

@implementation DebugFormatMarkdownHeaderFooterView

- (_TtC8NewsFeed35DebugFormatMarkdownHeaderFooterView)initWithReuseIdentifier:(id)identifier
{
  if (identifier)
  {
    v3 = sub_1D726207C();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return sub_1D691F2C8(v3, v4);
}

- (_TtC8NewsFeed35DebugFormatMarkdownHeaderFooterView)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC8NewsFeed35DebugFormatMarkdownHeaderFooterView_label;
  *(&self->super.super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  result = sub_1D726402C();
  __break(1u);
  return result;
}

@end