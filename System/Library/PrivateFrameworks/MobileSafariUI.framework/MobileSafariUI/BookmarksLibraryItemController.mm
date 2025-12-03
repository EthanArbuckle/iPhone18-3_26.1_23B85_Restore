@interface BookmarksLibraryItemController
+ (id)itemControllerForReadingListWithConfiguration:(id)configuration;
- (BookmarksLibraryItemController)initWithConfiguration:(id)configuration;
- (BookmarksNavigationControllerDelegate)bookmarkNavigationControllerDelegate;
- (NSString)accessibilityIdentifier;
- (UIViewController)viewController;
- (_TtC12MobileSafari35SFBookmarksCollectionViewController)rootViewController;
- (int64_t)sidebarSelectionAnalyticsAction;
- (unint64_t)dropOperationForSession:(id)session;
- (void)performDropWithProposal:(id)proposal session:(id)session inViewController:(id)controller;
- (void)reloadBookmarksControllers;
- (void)setRootViewController:(id)controller;
- (void)updateAndScrollToCurrentSelectedItem;
- (void)updateListContentConfiguration:(id)configuration;
@end

@implementation BookmarksLibraryItemController

+ (id)itemControllerForReadingListWithConfiguration:(id)configuration
{
  swift_getObjCClassMetadata();
  configurationCopy = configuration;
  v5 = sub_215836BEC(configurationCopy);

  return v5;
}

- (_TtC12MobileSafari35SFBookmarksCollectionViewController)rootViewController
{
  selfCopy = self;
  v3 = sub_2159FB594();

  return v3;
}

- (void)setRootViewController:(id)controller
{
  v4 = *(self + OBJC_IVAR___BookmarksLibraryItemController____lazy_storage___rootViewController);
  *(self + OBJC_IVAR___BookmarksLibraryItemController____lazy_storage___rootViewController) = controller;
  controllerCopy = controller;
}

- (BookmarksNavigationControllerDelegate)bookmarkNavigationControllerDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIViewController)viewController
{
  rootViewController = [(BookmarksLibraryItemController *)self rootViewController];

  return rootViewController;
}

- (NSString)accessibilityIdentifier
{
  sub_2159F7DA8(0, &unk_2811A2530);
  selfCopy = self;
  rootFolder = [(BookmarksLibraryItemController *)selfCopy rootFolder];
  bookmarkCollection = [(BookmarksLibraryItemController *)selfCopy bookmarkCollection];
  readingListFolder = [(WebBookmarkCollection *)bookmarkCollection readingListFolder];

  sub_215A70A80();
  v7 = sub_215A70500();

  return v7;
}

- (int64_t)sidebarSelectionAnalyticsAction
{
  sub_2159F7DA8(0, &unk_2811A2530);
  selfCopy = self;
  rootFolder = [(BookmarksLibraryItemController *)selfCopy rootFolder];
  bookmarkCollection = [(BookmarksLibraryItemController *)selfCopy bookmarkCollection];
  readingListFolder = [(WebBookmarkCollection *)bookmarkCollection readingListFolder];

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

- (unint64_t)dropOperationForSession:(id)session
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = BookmarksLibraryItemController.dropOperation(for:)(session);
  swift_unknownObjectRelease();

  return v6;
}

- (void)performDropWithProposal:(id)proposal session:(id)session inViewController:(id)controller
{
  proposalCopy = proposal;
  swift_unknownObjectRetain();
  controllerCopy = controller;
  selfCopy = self;
  BookmarksLibraryItemController.performDrop(with:session:in:)(proposalCopy, session, controllerCopy);

  swift_unknownObjectRelease();
}

- (void)updateListContentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  BookmarksLibraryItemController.updateListContentConfiguration(_:)(configurationCopy);
}

- (void)reloadBookmarksControllers
{
  selfCopy = self;
  sub_2159FCD5C();
}

- (void)updateAndScrollToCurrentSelectedItem
{
  selfCopy = self;
  sub_2159FEF18();
}

- (BookmarksLibraryItemController)initWithConfiguration:(id)configuration
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end