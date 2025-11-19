@interface DebugFormatGridView
- (_TtC8NewsFeed19DebugFormatGridView)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation DebugFormatGridView

- (_TtC8NewsFeed19DebugFormatGridView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed19DebugFormatGridView_scale) = 0x3FF0000000000000;
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed19DebugFormatGridView_contentSize);
  *v3 = 0;
  v3[1] = 0;
  v4 = (self + OBJC_IVAR____TtC8NewsFeed19DebugFormatGridView_contentBounds);
  *v4 = 0u;
  v4[1] = 0u;
  v5 = OBJC_IVAR____TtC8NewsFeed19DebugFormatGridView_gridLayer;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1D6A8F67C();
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v9.receiver;
  [(DebugFormatGridView *)&v9 traitCollectionDidChange:v4];
  v6 = *&v5[OBJC_IVAR____TtC8NewsFeed19DebugFormatGridView_gridLayer];
  v7 = [objc_opt_self() systemGrayColor];
  v8 = [v7 CGColor];

  [v6 setStrokeColor_];
}

@end