@interface ApertureBannerElement
- (NSString)associatedAppBundleIdentifier;
- (void)setActiveLayoutMode:(int64_t)a3;
- (void)setAssociatedAppBundleIdentifier:(id)a3;
- (void)setLeadingView:(id)a3;
- (void)setMinimalView:(id)a3;
- (void)setPreferredLayoutMode:(int64_t)a3;
- (void)setTrailingView:(id)a3;
@end

@implementation ApertureBannerElement

- (void)setActiveLayoutMode:(int64_t)a3
{
  *(self + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_activeLayoutMode) = a3;
  v3 = self;

  sub_1C2E72DD4();
}

- (void)setPreferredLayoutMode:(int64_t)a3
{
  v4 = self;
  sub_1C2DDE58C(a3);
}

- (NSString)associatedAppBundleIdentifier
{
  if (*(self + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_associatedAppBundleIdentifier + 8))
  {

    v2 = sub_1C2E75C24();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setAssociatedAppBundleIdentifier:(id)a3
{
  if (a3)
  {
    v4 = sub_1C2E75C64();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_associatedAppBundleIdentifier);
  *v6 = v4;
  v6[1] = v5;
}

- (void)setLeadingView:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_leadingView);
  *(self + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_leadingView) = a3;
  v3 = a3;
}

- (void)setMinimalView:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_minimalView);
  *(self + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_minimalView) = a3;
  v3 = a3;
}

- (void)setTrailingView:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_trailingView);
  *(self + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_trailingView) = a3;
  v3 = a3;
}

@end