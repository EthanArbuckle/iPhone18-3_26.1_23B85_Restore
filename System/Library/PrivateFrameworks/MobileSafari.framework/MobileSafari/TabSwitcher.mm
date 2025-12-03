@interface TabSwitcher
- (BOOL)becomeFirstResponder;
- (_TtC12MobileSafari11TabSwitcher)initWithNibName:(id)name bundle:(id)bundle;
- (id)anchorViewOfPopoverForOnboardingWithProvider:(id)provider;
- (void)loadView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation TabSwitcher

- (void)loadView
{
  v3 = type metadata accessor for TabSwitcherView();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtC12MobileSafariP33_10AE7CC66F702E7BDA2FA135062253C815TabSwitcherView_lastLayoutBounds];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v5[32] = 1;
  swift_unknownObjectUnownedInit();
  v8.receiver = v4;
  v8.super_class = v3;
  selfCopy = self;
  v7 = [(TabSwitcher *)&v8 initWithFrame:0.0, 0.0, 0.0, 0.0];
  [(TabSwitcher *)selfCopy setView:v7, v8.receiver, v8.super_class];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_18B7C4B54();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_18B7F0518();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_18B7F1D54();
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TabSwitcher(0);
  windowCopy = window;
  v7 = v8.receiver;
  [(TabSwitcher *)&v8 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  sub_18BAF3798();
}

- (BOOL)becomeFirstResponder
{
  selfCopy = self;
  v3 = sub_18B7C5C10();
  sub_18B7C9974();
  v5 = v4;

  LOBYTE(v3) = [v5 becomeFirstResponder];
  return v3;
}

- (_TtC12MobileSafari11TabSwitcher)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)anchorViewOfPopoverForOnboardingWithProvider:(id)provider
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v5 = sub_18BB104E8();
  swift_unknownObjectRelease();

  return v5;
}

@end