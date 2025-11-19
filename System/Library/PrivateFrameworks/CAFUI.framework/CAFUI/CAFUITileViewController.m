@interface CAFUITileViewController
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (_TtC5CAFUI23CAFUITileViewController)initWithCoder:(id)a3;
- (_TtC5CAFUI23CAFUITileViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)automakerSettingService:(id)a3 didUpdateDisabled:(BOOL)a4;
- (void)automakerSettingService:(id)a3 didUpdateHidden:(BOOL)a4;
- (void)automakerSettingService:(id)a3 didUpdateSectionIdentifier:(id)a4;
- (void)automakerSettingService:(id)a3 didUpdateSortOrder:(unsigned __int8)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dismissIfModal;
- (void)punchThroughController:(id)a3 didDismissPunchThroughWithIdentifier:(id)a4;
- (void)updateForLimitUIChanged;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CAFUITileViewController

- (_TtC5CAFUI23CAFUITileViewController)initWithCoder:(id)a3
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
  v2 = self;
  CAFUITileViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  CAFUITileViewController.viewWillAppear(_:)(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CAFUITileViewController();
  v4 = v5.receiver;
  [(CAFUITileViewController *)&v5 viewWillDisappear:v3];
  [*&v4[OBJC_IVAR____TtC5CAFUI23CAFUITileViewController_volumeNotificationAssertion] cancelSuspension];
}

- (_TtC5CAFUI23CAFUITileViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  LOBYTE(self) = specialized CAFUITileViewController.collectionView(_:shouldHighlightItemAt:)(v9);

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  CAFUITileViewController.collectionView(_:didSelectItemAt:)(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)dismissIfModal
{
  v4 = self;
  v2 = [(CAFUITileViewController *)v4 presentingViewController];
  if (v2)
  {
    v3 = v2;
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)punchThroughController:(id)a3 didDismissPunchThroughWithIdentifier:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a3;
  v10 = self;
  specialized CAFUITileViewController.punchThroughController(_:didDismissPunchThroughWithIdentifier:)(v6, v8);
}

- (void)updateForLimitUIChanged
{
  v2 = self;
  CAFUITileViewController.updateForLimitUIChanged()();
}

- (void)automakerSettingService:(id)a3 didUpdateSortOrder:(unsigned __int8)a4
{
  v4 = self;
  CAFUITileViewController.resetAndReload()();
}

- (void)automakerSettingService:(id)a3 didUpdateSectionIdentifier:(id)a4
{
  v4 = self;
  CAFUITileViewController.resetAndReload()();
}

- (void)automakerSettingService:(id)a3 didUpdateHidden:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFUITileViewController.automakerSettingService(_:didUpdateHidden:)(v6, a4);
}

- (void)automakerSettingService:(id)a3 didUpdateDisabled:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFUITileViewController.automakerSettingService(_:didUpdateDisabled:)(v6, a4);
}

@end