@interface ApertureBannerElement
- (NSString)associatedAppBundleIdentifier;
- (void)setActiveLayoutMode:(int64_t)mode;
- (void)setAssociatedAppBundleIdentifier:(id)identifier;
- (void)setLeadingView:(id)view;
- (void)setMinimalView:(id)view;
- (void)setPreferredLayoutMode:(int64_t)mode;
- (void)setTrailingView:(id)view;
@end

@implementation ApertureBannerElement

- (void)setActiveLayoutMode:(int64_t)mode
{
  *(self + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_activeLayoutMode) = mode;
  selfCopy = self;

  sub_1C2E72DD4();
}

- (void)setPreferredLayoutMode:(int64_t)mode
{
  selfCopy = self;
  sub_1C2DDE58C(mode);
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

- (void)setAssociatedAppBundleIdentifier:(id)identifier
{
  if (identifier)
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

- (void)setLeadingView:(id)view
{
  v4 = *(self + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_leadingView);
  *(self + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_leadingView) = view;
  viewCopy = view;
}

- (void)setMinimalView:(id)view
{
  v4 = *(self + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_minimalView);
  *(self + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_minimalView) = view;
  viewCopy = view;
}

- (void)setTrailingView:(id)view
{
  v4 = *(self + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_trailingView);
  *(self + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_trailingView) = view;
  viewCopy = view;
}

@end