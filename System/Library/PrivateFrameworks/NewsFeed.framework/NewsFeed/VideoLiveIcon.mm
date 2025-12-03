@interface VideoLiveIcon
- (CGSize)intrinsicContentSize;
- (_TtC8NewsFeed13VideoLiveIcon)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation VideoLiveIcon

- (_TtC8NewsFeed13VideoLiveIcon)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC8NewsFeed13VideoLiveIcon_label;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(VideoLiveIcon *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8NewsFeed13VideoLiveIcon_label];
  [v2 bounds];
  [v3 setFrame_];
}

- (CGSize)intrinsicContentSize
{
  v3 = OBJC_IVAR____TtC8NewsFeed13VideoLiveIcon_label;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed13VideoLiveIcon_label);
  selfCopy = self;
  font = [v4 font];
  if (font)
  {
    v9 = font;
    [font capHeight];
    v11 = v10;

    [*(&self->super.super.super.isa + v3) intrinsicContentSize];
    v13 = v12;

    v7 = v13 + 12.0;
    v8 = v11 + 12.0;
  }

  else
  {
    __break(1u);
  }

  result.height = v8;
  result.width = v7;
  return result;
}

@end