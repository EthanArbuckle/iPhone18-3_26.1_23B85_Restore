@interface BackdropHostView
- (_TtC11MediaCoreUI16BackdropHostView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation BackdropHostView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(BackdropHostView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_contentView];
  if (v3)
  {
    v4 = v3;
    [v2 bounds];
    [v4 setFrame_];
  }
}

- (_TtC11MediaCoreUI16BackdropHostView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end