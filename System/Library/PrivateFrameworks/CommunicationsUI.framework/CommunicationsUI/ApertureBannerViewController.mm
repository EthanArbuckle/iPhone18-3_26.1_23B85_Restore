@interface ApertureBannerViewController
- (NSString)requestIdentifier;
- (NSString)requesterIdentifier;
- (_TtC16CommunicationsUI28ApertureBannerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setActiveLayoutMode:(int64_t)mode;
- (void)setCanRequestAlertingAssertion:(BOOL)assertion;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator;
@end

@implementation ApertureBannerViewController

- (_TtC16CommunicationsUI28ApertureBannerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)requesterIdentifier
{
  type metadata accessor for ApertureController();
  static ApertureController.clientBundleIdentifier.getter();
  v2 = sub_1C2E75C24();

  return v2;
}

- (NSString)requestIdentifier
{
  v3 = sub_1C2E718A4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, *(&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI28ApertureBannerViewController_apertureBannerElement) + OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_bannerIdentifier, v3, v5);
  selfCopy = self;
  sub_1C2E71854();
  (*(v4 + 8))(v7, v3);

  v9 = sub_1C2E75C24();

  return v9;
}

- (void)setActiveLayoutMode:(int64_t)mode
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI28ApertureBannerViewController_apertureBannerElement);
  *&v3[OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_activeLayoutMode] = mode;
  selfCopy = self;
  v5 = v3;

  sub_1C2E72DD4();
}

- (void)setCanRequestAlertingAssertion:(BOOL)assertion
{
  assertionCopy = assertion;
  selfCopy = self;
  sub_1C2DE9EA8(assertionCopy);
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C2DE9F70(coordinator);
  swift_unknownObjectRelease();
}

@end