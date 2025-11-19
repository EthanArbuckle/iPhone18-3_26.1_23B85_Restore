@interface BookmarksLibraryItemController
+ (id)itemControllerForReadingListWithConfiguration:(id)a3;
- (BookmarksLibraryItemController)initWithConfiguration:(id)a3;
- (BookmarksNavigationControllerDelegate)bookmarkNavigationControllerDelegate;
- (NSString)accessibilityIdentifier;
- (UIViewController)viewController;
- (_TtC12MobileSafari35SFBookmarksCollectionViewController)rootViewController;
- (int64_t)sidebarSelectionAnalyticsAction;
- (unint64_t)dropOperationForSession:(id)a3;
- (void)performDropWithProposal:(id)a3 session:(id)a4 inViewController:(id)a5;
- (void)reloadBookmarksControllers;
- (void)setRootViewController:(id)a3;
- (void)updateAndScrollToCurrentSelectedItem;
- (void)updateListContentConfiguration:(id)a3;
@end

@implementation BookmarksLibraryItemController

+ (id)itemControllerForReadingListWithConfiguration:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_215836BEC(v4);

  return v5;
}

- (_TtC12MobileSafari35SFBookmarksCollectionViewController)rootViewController
{
  v2 = self;
  v3 = sub_2159FB594();

  return v3;
}

- (void)setRootViewController:(id)a3
{
  v4 = *(self + OBJC_IVAR___BookmarksLibraryItemController____lazy_storage___rootViewController);
  *(self + OBJC_IVAR___BookmarksLibraryItemController____lazy_storage___rootViewController) = a3;
  v3 = a3;
}

- (BookmarksNavigationControllerDelegate)bookmarkNavigationControllerDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIViewController)viewController
{
  v2 = [(BookmarksLibraryItemController *)self rootViewController];

  return v2;
}

- (NSString)accessibilityIdentifier
{
  sub_2159F7DA8(0, &unk_2811A2530);
  v3 = self;
  v4 = [(BookmarksLibraryItemController *)v3 rootFolder];
  v5 = [(BookmarksLibraryItemController *)v3 bookmarkCollection];
  v6 = [(WebBookmarkCollection *)v5 readingListFolder];

  sub_215A70A80();
  v7 = sub_215A70500();

  return v7;
}

- (int64_t)sidebarSelectionAnalyticsAction
{
  sub_2159F7DA8(0, &unk_2811A2530);
  v3 = self;
  v4 = [(BookmarksLibraryItemController *)v3 rootFolder];
  v5 = [(BookmarksLibraryItemController *)v3 bookmarkCollection];
  v6 = [(WebBookmarkCollection *)v5 readingListFolder];

  v7 = sub_215A70A80();
  if (v7)
  {
    return 7;
  }

  else
  {
    return 6;
  }
}

- (unint64_t)dropOperationForSession:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = BookmarksLibraryItemController.dropOperation(for:)(a3);
  swift_unknownObjectRelease();

  return v6;
}

- (void)performDropWithProposal:(id)a3 session:(id)a4 inViewController:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  BookmarksLibraryItemController.performDrop(with:session:in:)(v8, a4, v9);

  swift_unknownObjectRelease();
}

- (void)updateListContentConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  BookmarksLibraryItemController.updateListContentConfiguration(_:)(v4);
}

- (void)reloadBookmarksControllers
{
  v2 = self;
  sub_2159FCD5C();
}

- (void)updateAndScrollToCurrentSelectedItem
{
  v2 = self;
  sub_2159FEF18();
}

- (BookmarksLibraryItemController)initWithConfiguration:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end