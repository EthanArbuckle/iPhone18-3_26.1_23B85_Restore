@interface FormatSplitView
- (_TtC8NewsFeed15FormatSplitView)initWithCoder:(id)coder;
- (_TtC8NewsFeed15FormatSplitView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation FormatSplitView

- (_TtC8NewsFeed15FormatSplitView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC8NewsFeed15FormatSplitView_splitView;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(sub_1D725FC5C()) initWithFrame_];
  v10 = OBJC_IVAR____TtC8NewsFeed15FormatSplitView_model;
  v11 = sub_1D725D25C();
  (*(*(v11 - 8) + 56))(self + v10, 1, 1, v11);
  v16.receiver = self;
  v16.super_class = ObjectType;
  height = [(FormatSplitView *)&v16 initWithFrame:x, y, width, height];
  v13 = *(&height->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed15FormatSplitView_splitView);
  v14 = height;
  [(FormatSplitView *)v14 addSubview:v13];
  [(FormatSplitView *)v14 setClipsToBounds:1];

  return v14;
}

- (_TtC8NewsFeed15FormatSplitView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8NewsFeed15FormatSplitView_splitView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(sub_1D725FC5C()) initWithFrame_];
  v5 = OBJC_IVAR____TtC8NewsFeed15FormatSplitView_model;
  v6 = sub_1D725D25C();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(FormatSplitView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8NewsFeed15FormatSplitView_splitView];
  [v2 bounds];
  [v3 setFrame_];
}

@end