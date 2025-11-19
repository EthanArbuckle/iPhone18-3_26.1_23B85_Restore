@interface LibraryContentController
- (BOOL)isSelectingItem;
- (BOOL)isTabGroupExpanded:(id)a3;
- (NSSet)expandedTabGroupUUIDs;
- (NSString)bookmarksCollectionType;
- (NSString)currentCollection;
- (SFTabHoverPreviewController)tabHoverPreviewController;
- (UINavigationController)navigationController;
- (UIViewController)viewController;
- (_TtC14MobileSafariUI28LibraryContentViewController)libraryViewController;
- (id)itemForTabWith:(id)a3;
- (id)viewForTabHoverPreviewItem:(id)a3;
- (void)didSwitchProfile;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)reconfigureTabCellWithUUIDString:(id)a3;
- (void)reloadCloudTabsSection;
- (void)reloadSectionControllersIfNeeded;
- (void)setBookmarksCollectionType:(id)a3;
- (void)setCurrentCollection:(id)a3;
- (void)setExpanded:(BOOL)a3 forTabGroup:(id)a4;
- (void)setExpandedTabGroupUUIDs:(id)a3;
- (void)setLibraryViewController:(id)a3;
- (void)setNavigationController:(id)a3;
- (void)setNeedsReloadForProfileSwitcher;
- (void)setNeedsReloadSectionControllersAnimated:(BOOL)a3;
- (void)setNeedsUpdateSelection;
- (void)setUpTabGroupExpansionStateHandlers;
- (void)toggleEditBookmarks;
- (void)updateAndScrollToCurrentSelectedItem;
- (void)updateNavigationItemForRootWithAnimated:(BOOL)a3;
- (void)updateProfilePickerFor:(id)a3;
- (void)updateSelection;
- (void)willSetExpanded:(BOOL)a3 for:(id)a4;
@end

@implementation LibraryContentController

- (void)setUpTabGroupExpansionStateHandlers
{
  v2 = self;
  sub_215836D04();
}

- (SFTabHoverPreviewController)tabHoverPreviewController
{
  v2 = [(LibraryContentController *)self libraryViewController];
  v3 = *(&v2->super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_tabHoverPreviewController);
  v4 = v3;

  return v3;
}

- (_TtC14MobileSafariUI28LibraryContentViewController)libraryViewController
{
  v2 = self;
  v3 = sub_21583726C();

  return v3;
}

- (void)updateProfilePickerFor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2158376E0(v4);
}

- (UIViewController)viewController
{
  v2 = [(LibraryContentController *)self navigationController];

  return v2;
}

- (UINavigationController)navigationController
{
  v2 = self;
  v3 = sub_215837CAC();

  return v3;
}

- (void)updateSelection
{
  v3 = self;
  v2 = [(LibraryContentController *)v3 libraryViewController];
  sub_21583C554();
}

- (NSSet)expandedTabGroupUUIDs
{

  v2 = sub_215A70730();

  return v2;
}

- (void)setNeedsReloadSectionControllersAnimated:(BOOL)a3
{
  v3 = self;
  _sSo24LibraryContentControllerC14MobileSafariUIE32setNeedsReloadSectionControllers8animatedySb_tF_0();
}

- (void)reconfigureTabCellWithUUIDString:(id)a3
{
  v4 = a3;
  v7 = self;
  v5 = [(LibraryContentController *)v7 libraryViewController];
  v6 = [(LibraryContentController *)v7 itemForTabWith:v4];

  sub_215848110(v6);
}

- (BOOL)isSelectingItem
{
  v2 = [(LibraryContentController *)self libraryViewController];
  v3 = *(&v2->super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_isSelectingItem);

  return v3;
}

- (void)setLibraryViewController:(id)a3
{
  v4 = *(self + OBJC_IVAR___LibraryContentController____lazy_storage___libraryViewController);
  *(self + OBJC_IVAR___LibraryContentController____lazy_storage___libraryViewController) = a3;
  v3 = a3;
}

- (void)setNavigationController:(id)a3
{
  v4 = *(self + OBJC_IVAR___LibraryContentController____lazy_storage___navigationController);
  *(self + OBJC_IVAR___LibraryContentController____lazy_storage___navigationController) = a3;
  v3 = a3;
}

- (NSString)bookmarksCollectionType
{
  v2 = self;
  v3 = sub_215A004E4();

  return v3;
}

- (void)setBookmarksCollectionType:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_215A008CC(a3);
}

- (void)setExpandedTabGroupUUIDs:(id)a3
{
  *(self + OBJC_IVAR___LibraryContentController_expandedTabGroupUUIDs) = sub_215A70740();
}

- (void)willSetExpanded:(BOOL)a3 for:(id)a4
{
  v6 = a4;
  v7 = self;
  sub_215A00E0C(a3, v6);
}

- (BOOL)isTabGroupExpanded:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(LibraryContentController *)v5 expandedTabGroupUUIDs];
  v7 = sub_215A70740();

  v8 = [v4 uuid];
  v9 = sub_215A70540();
  v11 = v10;

  LOBYTE(v8) = sub_21583CECC(v9, v11, v7);

  return v8 & 1;
}

- (void)setExpanded:(BOOL)a3 forTabGroup:(id)a4
{
  v6 = a4;
  v7 = self;
  LibraryContentController.setExpanded(_:for:)(a3, v6);
}

- (void)reloadCloudTabsSection
{
  v4 = self;
  v2 = [(LibraryContentController *)v4 libraryViewController];
  v3 = [(LibraryContentController *)v4 cloudTabsSection];
  sub_215A0D984(v3);
}

- (void)updateAndScrollToCurrentSelectedItem
{
  v4 = self;
  v2 = [(LibraryContentController *)v4 savedSection];
  v3 = [(MainLibrarySectionController *)v2 libraryItemControllerForCollectionType:@"ReadingListCollection"];

  [v3 updateAndScrollToCurrentSelectedItem];
}

- (id)itemForTabWith:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(LibraryController *)v5 configuration];
  v7 = [objc_allocWithZone(MEMORY[0x277D7B578]) initWithDeviceIdentifier_];
  v8 = [objc_allocWithZone(MEMORY[0x277D7B560]) initWithUUID:v4 deviceIdentifier:0];

  v9 = [objc_allocWithZone(TabLibraryItemController) initWithConfiguration:v6 tabGroup:v7 tab:v8];

  return v9;
}

- (void)updateNavigationItemForRootWithAnimated:(BOOL)a3
{
  v4 = self;
  sub_215A01A18(a3);
}

- (NSString)currentCollection
{
  v2 = self;
  v3 = [(LibraryContentController *)v2 bookmarksCollectionType];
  if (v3)
  {
    v4 = v3;
    sub_215A70540();

    v5 = sub_215A70500();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)setCurrentCollection:(id)a3
{
  if (a3)
  {
    sub_215A70540();
    v3 = self;
    v4 = sub_215A70500();
  }

  else
  {
    v5 = self;
    v4 = 0;
  }

  [(LibraryContentController *)self setBookmarksCollectionType:v4];
}

- (void)setNeedsUpdateSelection
{
  v5 = self;
  v2 = [(LibraryContentController *)v5 libraryViewController];
  *(&v2->super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_needsUpdateSelection) = 1;
  v3 = [(LibraryContentViewController *)v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

- (void)reloadSectionControllersIfNeeded
{
  v5 = self;
  v2 = [(LibraryContentController *)v5 libraryViewController];
  v3 = v2 + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_reloadFlags;
  if (*(&v2->super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_reloadFlags) == 1)
  {
    v4 = v3[1];
    *v3 = 0;
    sub_21583DBA4(1, v4);
  }
}

- (void)setNeedsReloadForProfileSwitcher
{
  v3 = self;
  v2 = [(LibraryContentController *)v3 libraryViewController];
  [(LibraryContentController *)v3 updateProfilePickerFor:v2];
}

- (void)didSwitchProfile
{
  v2 = self;
  LibraryContentController.didSwitchProfile()();
}

- (void)toggleEditBookmarks
{
  v2 = self;
  LibraryContentController.toggleEditBookmarks()();
}

- (id)viewForTabHoverPreviewItem:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = LibraryContentController.viewForTabHoverPreviewItem(_:)(a3);
  swift_unknownObjectRelease();

  return v6;
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  _sSo24LibraryContentControllerC14MobileSafariUIE010navigationC0_8willShow8animatedySo012UINavigationC0C_So06UIViewC0CSbtF_0(v7, v8);
}

@end