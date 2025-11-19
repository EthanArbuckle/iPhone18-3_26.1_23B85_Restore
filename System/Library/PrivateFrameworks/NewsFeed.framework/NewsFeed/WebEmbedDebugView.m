@interface WebEmbedDebugView
- (_TtC8NewsFeed17WebEmbedDebugView)initWithCoder:(id)a3;
- (_TtC8NewsFeed17WebEmbedDebugView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation WebEmbedDebugView

- (_TtC8NewsFeed17WebEmbedDebugView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDebugView_label;
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
  [(WebEmbedDebugView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8NewsFeed17WebEmbedDebugView_label];
  [v2 bounds];
  [v3 setFrame_];
}

- (_TtC8NewsFeed17WebEmbedDebugView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end