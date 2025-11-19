@interface CAFUIDevicePickerViewController
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (double)collectionView:(id)a3 layout:(id)a4 minimumInteritemSpacingForSectionAtIndex:(int64_t)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dealloc;
- (void)devicePickerButtonTapped;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)pairedDevicesInformationService:(id)a3 didUpdatePairedDeviceList:(id)a4;
- (void)punchThroughController:(id)a3 didDismissPunchThroughWithIdentifier:(id)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CAFUIDevicePickerViewController

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CAFUIDevicePickerViewController();
  v4 = v5.receiver;
  [(CAFUIDevicePickerViewController *)&v5 viewDidAppear:v3];
  CAFUIDevicePickerViewController.updatePTButton()();
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver_];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for CAFUIDevicePickerViewController();
  [(CAFUIDevicePickerViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  v2 = self;
  CAFUIDevicePickerViewController.viewDidLoad()();
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CAFUIDevicePickerViewController();
  v2 = v3.receiver;
  [(CAFUIDevicePickerViewController *)&v3 viewDidLayoutSubviews];
  CAFUIDevicePickerViewController.updateFlowLayout()();
  CAFUIDevicePickerViewController.updatePageControl()();
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = self;
  v11 = CAFUIDevicePickerViewController.cellSize.getter();
  v13 = v12;

  (*(v7 + 8))(v9, v6);
  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (double)collectionView:(id)a3 layout:(id)a4 minimumInteritemSpacingForSectionAtIndex:(int64_t)a5
{
  v5 = self;
  v6 = CAFUIDevicePickerViewController.isPortraitLayout.getter();

  result = 60.0;
  if ((v6 & 1) == 0)
  {
    return 20.0;
  }

  return result;
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v7, v4);
  return 1;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = CAFUIDevicePickerViewController.collectionView(_:cellForItemAt:)(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
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
  CAFUIDevicePickerViewController.collectionView(_:didSelectItemAt:)(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  specialized CAFUIDevicePickerViewController.collectionView(_:layout:insetForSectionAt:)(v7);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  v7 = specialized CAFUIDevicePickerViewController.collectionView(_:numberOfItemsInSection:)();

  return v7;
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = specialized CAFUIDevicePickerViewController.numberOfSections(in:)();

  return v6;
}

- (void)pairedDevicesInformationService:(id)a3 didUpdatePairedDeviceList:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFUIDevicePickerViewController.pairedDevicesInformationService(_:didUpdatePairedDeviceList:)(v6, v7);
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized CAFUIDevicePickerViewController.scrollViewDidScroll(_:)();
}

- (void)devicePickerButtonTapped
{
  v2 = self;
  CAFUIDevicePickerViewController.devicePickerButtonTapped()();
}

- (void)punchThroughController:(id)a3 didDismissPunchThroughWithIdentifier:(id)a4
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_punchThroughState) = 1;
  v4 = self;
  CAFUIDevicePickerViewController.updatePTButton()();
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  specialized CAFUIDevicePickerViewController.navigationController(_:didShow:animated:)();
}

@end