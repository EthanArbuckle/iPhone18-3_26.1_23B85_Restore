@interface TabSwitcherView
- (_TtC12MobileSafariP33_10AE7CC66F702E7BDA2FA135062253C815TabSwitcherView)initWithCoder:(id)coder;
- (_TtC12MobileSafariP33_10AE7CC66F702E7BDA2FA135062253C815TabSwitcherView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)willMoveToWindow:(id)window;
@end

@implementation TabSwitcherView

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for TabSwitcherView();
  v2 = v8.receiver;
  [(TabSwitcherView *)&v8 layoutSubviews];
  [v2 bounds];
  v3 = &v2[OBJC_IVAR____TtC12MobileSafariP33_10AE7CC66F702E7BDA2FA135062253C815TabSwitcherView_lastLayoutBounds];
  *v3 = v4;
  *(v3 + 1) = v5;
  *(v3 + 2) = v6;
  *(v3 + 3) = v7;
  v3[32] = 0;
}

- (_TtC12MobileSafariP33_10AE7CC66F702E7BDA2FA135062253C815TabSwitcherView)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC12MobileSafariP33_10AE7CC66F702E7BDA2FA135062253C815TabSwitcherView_lastLayoutBounds;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = 1;
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  selfCopy = self;
  sub_18BB07294(window);
}

- (_TtC12MobileSafariP33_10AE7CC66F702E7BDA2FA135062253C815TabSwitcherView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end