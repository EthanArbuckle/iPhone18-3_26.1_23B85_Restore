@interface LibraryContentController
- (BOOL)isSelectingItem;
- (BOOL)isTabGroupExpanded:(id)expanded;
- (NSSet)expandedTabGroupUUIDs;
- (NSString)bookmarksCollectionType;
- (NSString)currentCollection;
- (SFTabHoverPreviewController)tabHoverPreviewController;
- (UINavigationController)navigationController;
- (UIViewController)viewController;
- (_TtC14MobileSafariUI28LibraryContentViewController)libraryViewController;
- (id)itemForTabWith:(id)with;
- (id)viewForTabHoverPreviewItem:(id)item;
- (void)didSwitchProfile;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)reconfigureTabCellWithUUIDString:(id)string;
- (void)reloadCloudTabsSection;
- (void)reloadSectionControllersIfNeeded;
- (void)setBookmarksCollectionType:(id)type;
- (void)setCurrentCollection:(id)collection;
- (void)setExpanded:(BOOL)expanded forTabGroup:(id)group;
- (void)setExpandedTabGroupUUIDs:(id)ds;
- (void)setLibraryViewController:(id)controller;
- (void)setNavigationController:(id)controller;
- (void)setNeedsReloadForProfileSwitcher;
- (void)setNeedsReloadSectionControllersAnimated:(BOOL)animated;
- (void)setNeedsUpdateSelection;
- (void)setUpTabGroupExpansionStateHandlers;
- (void)toggleEditBookmarks;
- (void)updateAndScrollToCurrentSelectedItem;
- (void)updateNavigationItemForRootWithAnimated:(BOOL)animated;
- (void)updateProfilePickerFor:(id)for;
- (void)updateSelection;
- (void)willSetExpanded:(BOOL)expanded for:(id)for;
@end

@implementation LibraryContentController

- (void)setUpTabGroupExpansionStateHandlers
{
  selfCopy = self;
  sub_215836D04();
}

- (SFTabHoverPreviewController)tabHoverPreviewController
{
  libraryViewController = [(LibraryContentController *)self libraryViewController];
  v3 = *(&libraryViewController->super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_tabHoverPreviewController);
  v4 = v3;

  return v3;
}

- (_TtC14MobileSafariUI28LibraryContentViewController)libraryViewController
{
  selfCopy = self;
  v3 = sub_21583726C();

  return v3;
}

- (void)updateProfilePickerFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_2158376E0(forCopy);
}

- (UIViewController)viewController
{
  navigationController = [(LibraryContentController *)self navigationController];

  return navigationController;
}

- (UINavigationController)navigationController
{
  selfCopy = self;
  v3 = sub_215837CAC();

  return v3;
}

- (void)updateSelection
{
  selfCopy = self;
  libraryViewController = [(LibraryContentController *)selfCopy libraryViewController];
  sub_21583C554();
}

- (NSSet)expandedTabGroupUUIDs
{

  v2 = sub_215A70730();

  return v2;
}

- (void)setNeedsReloadSectionControllersAnimated:(BOOL)animated
{
  selfCopy = self;
  _sSo24LibraryContentControllerC14MobileSafariUIE32setNeedsReloadSectionControllers8animatedySb_tF_0();
}

- (void)reconfigureTabCellWithUUIDString:(id)string
{
  stringCopy = string;
  selfCopy = self;
  libraryViewController = [(LibraryContentController *)selfCopy libraryViewController];
  v6 = [(LibraryContentController *)selfCopy itemForTabWith:stringCopy];

  sub_215848110(v6);
}

- (BOOL)isSelectingItem
{
  libraryViewController = [(LibraryContentController *)self libraryViewController];
  v3 = *(&libraryViewController->super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_isSelectingItem);

  return v3;
}

- (void)setLibraryViewController:(id)controller
{
  v4 = *(self + OBJC_IVAR___LibraryContentController____lazy_storage___libraryViewController);
  *(self + OBJC_IVAR___LibraryContentController____lazy_storage___libraryViewController) = controller;
  controllerCopy = controller;
}

- (void)setNavigationController:(id)controller
{
  v4 = *(self + OBJC_IVAR___LibraryContentController____lazy_storage___navigationController);
  *(self + OBJC_IVAR___LibraryContentController____lazy_storage___navigationController) = controller;
  controllerCopy = controller;
}

- (NSString)bookmarksCollectionType
{
  selfCopy = self;
  v3 = sub_215A004E4();

  return v3;
}

- (void)setBookmarksCollectionType:(id)type
{
  typeCopy = type;
  selfCopy = self;
  sub_215A008CC(type);
}

- (void)setExpandedTabGroupUUIDs:(id)ds
{
  *(self + OBJC_IVAR___LibraryContentController_expandedTabGroupUUIDs) = sub_215A70740();
}

- (void)willSetExpanded:(BOOL)expanded for:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_215A00E0C(expanded, forCopy);
}

- (BOOL)isTabGroupExpanded:(id)expanded
{
  expandedCopy = expanded;
  selfCopy = self;
  expandedTabGroupUUIDs = [(LibraryContentController *)selfCopy expandedTabGroupUUIDs];
  v7 = sub_215A70740();

  uuid = [expandedCopy uuid];
  v9 = sub_215A70540();
  v11 = v10;

  LOBYTE(uuid) = sub_21583CECC(v9, v11, v7);

  return uuid & 1;
}

- (void)setExpanded:(BOOL)expanded forTabGroup:(id)group
{
  groupCopy = group;
  selfCopy = self;
  LibraryContentController.setExpanded(_:for:)(expanded, groupCopy);
}

- (void)reloadCloudTabsSection
{
  selfCopy = self;
  libraryViewController = [(LibraryContentController *)selfCopy libraryViewController];
  cloudTabsSection = [(LibraryContentController *)selfCopy cloudTabsSection];
  sub_215A0D984(cloudTabsSection);
}

- (void)updateAndScrollToCurrentSelectedItem
{
  selfCopy = self;
  savedSection = [(LibraryContentController *)selfCopy savedSection];
  v3 = [(MainLibrarySectionController *)savedSection libraryItemControllerForCollectionType:@"ReadingListCollection"];

  [v3 updateAndScrollToCurrentSelectedItem];
}

- (id)itemForTabWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  configuration = [(LibraryController *)selfCopy configuration];
  initWithDeviceIdentifier_ = [objc_allocWithZone(MEMORY[0x277D7B578]) initWithDeviceIdentifier_];
  v8 = [objc_allocWithZone(MEMORY[0x277D7B560]) initWithUUID:withCopy deviceIdentifier:0];

  v9 = [objc_allocWithZone(TabLibraryItemController) initWithConfiguration:configuration tabGroup:initWithDeviceIdentifier_ tab:v8];

  return v9;
}

- (void)updateNavigationItemForRootWithAnimated:(BOOL)animated
{
  selfCopy = self;
  sub_215A01A18(animated);
}

- (NSString)currentCollection
{
  selfCopy = self;
  bookmarksCollectionType = [(LibraryContentController *)selfCopy bookmarksCollectionType];
  if (bookmarksCollectionType)
  {
    v4 = bookmarksCollectionType;
    sub_215A70540();

    v5 = sub_215A70500();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)setCurrentCollection:(id)collection
{
  if (collection)
  {
    sub_215A70540();
    selfCopy = self;
    v4 = sub_215A70500();
  }

  else
  {
    selfCopy2 = self;
    v4 = 0;
  }

  [(LibraryContentController *)self setBookmarksCollectionType:v4];
}

- (void)setNeedsUpdateSelection
{
  selfCopy = self;
  libraryViewController = [(LibraryContentController *)selfCopy libraryViewController];
  *(&libraryViewController->super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_needsUpdateSelection) = 1;
  view = [(LibraryContentViewController *)libraryViewController view];
  if (view)
  {
    v4 = view;
    [view setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

- (void)reloadSectionControllersIfNeeded
{
  selfCopy = self;
  libraryViewController = [(LibraryContentController *)selfCopy libraryViewController];
  v3 = libraryViewController + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_reloadFlags;
  if (*(&libraryViewController->super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_reloadFlags) == 1)
  {
    v4 = v3[1];
    *v3 = 0;
    sub_21583DBA4(1, v4);
  }
}

- (void)setNeedsReloadForProfileSwitcher
{
  selfCopy = self;
  libraryViewController = [(LibraryContentController *)selfCopy libraryViewController];
  [(LibraryContentController *)selfCopy updateProfilePickerFor:libraryViewController];
}

- (void)didSwitchProfile
{
  selfCopy = self;
  LibraryContentController.didSwitchProfile()();
}

- (void)toggleEditBookmarks
{
  selfCopy = self;
  LibraryContentController.toggleEditBookmarks()();
}

- (id)viewForTabHoverPreviewItem:(id)item
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = LibraryContentController.viewForTabHoverPreviewItem(_:)(item);
  swift_unknownObjectRelease();

  return v6;
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  _sSo24LibraryContentControllerC14MobileSafariUIE010navigationC0_8willShow8animatedySo012UINavigationC0C_So06UIViewC0CSbtF_0(controllerCopy, viewControllerCopy);
}

@end