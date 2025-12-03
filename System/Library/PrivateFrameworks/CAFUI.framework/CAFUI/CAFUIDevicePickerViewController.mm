@interface CAFUIDevicePickerViewController
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (double)collectionView:(id)view layout:(id)layout minimumInteritemSpacingForSectionAtIndex:(int64_t)index;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)devicePickerButtonTapped;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)pairedDevicesInformationService:(id)service didUpdatePairedDeviceList:(id)list;
- (void)punchThroughController:(id)controller didDismissPunchThroughWithIdentifier:(id)identifier;
- (void)scrollViewDidScroll:(id)scroll;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CAFUIDevicePickerViewController

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CAFUIDevicePickerViewController();
  v4 = v5.receiver;
  [(CAFUIDevicePickerViewController *)&v5 viewDidAppear:appearCopy];
  CAFUIDevicePickerViewController.updatePTButton()();
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver_];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for CAFUIDevicePickerViewController();
  [(CAFUIDevicePickerViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
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

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v11 = CAFUIDevicePickerViewController.cellSize.getter();
  v13 = v12;

  (*(v7 + 8))(v9, v6);
  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (double)collectionView:(id)view layout:(id)layout minimumInteritemSpacingForSectionAtIndex:(int64_t)index
{
  selfCopy = self;
  v6 = CAFUIDevicePickerViewController.isPortraitLayout.getter();

  result = 60.0;
  if ((v6 & 1) == 0)
  {
    return 20.0;
  }

  return result;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v7, v4);
  return 1;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = CAFUIDevicePickerViewController.collectionView(_:cellForItemAt:)(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
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
  CAFUIDevicePickerViewController.collectionView(_:didSelectItemAt:)(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  specialized CAFUIDevicePickerViewController.collectionView(_:layout:insetForSectionAt:)(viewCopy);
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

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v7 = specialized CAFUIDevicePickerViewController.collectionView(_:numberOfItemsInSection:)();

  return v7;
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v6 = specialized CAFUIDevicePickerViewController.numberOfSections(in:)();

  return v6;
}

- (void)pairedDevicesInformationService:(id)service didUpdatePairedDeviceList:(id)list
{
  serviceCopy = service;
  listCopy = list;
  selfCopy = self;
  CAFUIDevicePickerViewController.pairedDevicesInformationService(_:didUpdatePairedDeviceList:)(serviceCopy, listCopy);
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  specialized CAFUIDevicePickerViewController.scrollViewDidScroll(_:)();
}

- (void)devicePickerButtonTapped
{
  selfCopy = self;
  CAFUIDevicePickerViewController.devicePickerButtonTapped()();
}

- (void)punchThroughController:(id)controller didDismissPunchThroughWithIdentifier:(id)identifier
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5CAFUI31CAFUIDevicePickerViewController_punchThroughState) = 1;
  selfCopy = self;
  CAFUIDevicePickerViewController.updatePTButton()();
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  specialized CAFUIDevicePickerViewController.navigationController(_:didShow:animated:)();
}

@end