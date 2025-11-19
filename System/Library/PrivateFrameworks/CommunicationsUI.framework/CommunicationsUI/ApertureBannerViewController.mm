@interface ApertureBannerViewController
- (NSString)requestIdentifier;
- (NSString)requesterIdentifier;
- (_TtC16CommunicationsUI28ApertureBannerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setActiveLayoutMode:(int64_t)a3;
- (void)setCanRequestAlertingAssertion:(BOOL)a3;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3;
@end

@implementation ApertureBannerViewController

- (_TtC16CommunicationsUI28ApertureBannerViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  v8 = self;
  sub_1C2E71854();
  (*(v4 + 8))(v7, v3);

  v9 = sub_1C2E75C24();

  return v9;
}

- (void)setActiveLayoutMode:(int64_t)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI28ApertureBannerViewController_apertureBannerElement);
  *&v3[OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_activeLayoutMode] = a3;
  v4 = self;
  v5 = v3;

  sub_1C2E72DD4();
}

- (void)setCanRequestAlertingAssertion:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_1C2DE9EA8(v3);
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1C2DE9F70(a3);
  swift_unknownObjectRelease();
}

@end