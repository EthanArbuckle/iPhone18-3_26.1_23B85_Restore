@interface DebugGroupLayoutView
- (_TtC8NewsFeed20DebugGroupLayoutView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation DebugGroupLayoutView

- (_TtC8NewsFeed20DebugGroupLayoutView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC8NewsFeed20DebugGroupLayoutView_contentView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) initWithFrame_];
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  v2 = v14.receiver;
  [(DebugGroupLayoutView *)&v14 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8NewsFeed20DebugGroupLayoutView_contentView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v2 bounds];
  v12 = CGRectGetWidth(v15) * 0.5;
  [v3 bounds];
  Width = CGRectGetWidth(v16);
  MEMORY[0x1DA6FA970](v12 - Width * 0.5, v5, v7, v9, v11);
  [v3 setFrame_];
}

@end