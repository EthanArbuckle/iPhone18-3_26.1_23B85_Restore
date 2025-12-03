@interface CAFUITileViewController
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (_TtC5CAFUI23CAFUITileViewController)initWithCoder:(id)coder;
- (_TtC5CAFUI23CAFUITileViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)automakerSettingService:(id)service didUpdateDisabled:(BOOL)disabled;
- (void)automakerSettingService:(id)service didUpdateHidden:(BOOL)hidden;
- (void)automakerSettingService:(id)service didUpdateSectionIdentifier:(id)identifier;
- (void)automakerSettingService:(id)service didUpdateSortOrder:(unsigned __int8)order;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dismissIfModal;
- (void)punchThroughController:(id)controller didDismissPunchThroughWithIdentifier:(id)identifier;
- (void)updateForLimitUIChanged;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CAFUITileViewController

- (_TtC5CAFUI23CAFUITileViewController)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_presentedPTIdentifier);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_limiting) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_infoButtonlimiting) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_punchThroughState) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  CAFUITileViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  CAFUITileViewController.viewWillAppear(_:)(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CAFUITileViewController();
  v4 = v5.receiver;
  [(CAFUITileViewController *)&v5 viewWillDisappear:disappearCopy];
  [*&v4[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_volumeNotificationAssertion] cancelSuspension];
}

- (_TtC5CAFUI23CAFUITileViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = specialized CAFUITileViewController.collectionView(_:shouldHighlightItemAt:)(v9);

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  CAFUITileViewController.collectionView(_:didSelectItemAt:)(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)dismissIfModal
{
  selfCopy = self;
  presentingViewController = [(CAFUITileViewController *)selfCopy presentingViewController];
  if (presentingViewController)
  {
    v3 = presentingViewController;
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)punchThroughController:(id)controller didDismissPunchThroughWithIdentifier:(id)identifier
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  controllerCopy = controller;
  selfCopy = self;
  specialized CAFUITileViewController.punchThroughController(_:didDismissPunchThroughWithIdentifier:)(v6, v8);
}

- (void)updateForLimitUIChanged
{
  selfCopy = self;
  CAFUITileViewController.updateForLimitUIChanged()();
}

- (void)automakerSettingService:(id)service didUpdateSortOrder:(unsigned __int8)order
{
  selfCopy = self;
  CAFUITileViewController.resetAndReload()();
}

- (void)automakerSettingService:(id)service didUpdateSectionIdentifier:(id)identifier
{
  selfCopy = self;
  CAFUITileViewController.resetAndReload()();
}

- (void)automakerSettingService:(id)service didUpdateHidden:(BOOL)hidden
{
  serviceCopy = service;
  selfCopy = self;
  CAFUITileViewController.automakerSettingService(_:didUpdateHidden:)(serviceCopy, hidden);
}

- (void)automakerSettingService:(id)service didUpdateDisabled:(BOOL)disabled
{
  serviceCopy = service;
  selfCopy = self;
  CAFUITileViewController.automakerSettingService(_:didUpdateDisabled:)(serviceCopy, disabled);
}

@end