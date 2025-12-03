@interface BookmarksViewController
- (BookmarksNavigationControllerDelegate)bookmarksNavigationControllerDelegate;
- (BookmarksViewController)initWithBookmarkCollection:(id)collection focusedCollectionType:(id)type;
- (BookmarksViewController)initWithNibName:(id)name bundle:(id)bundle;
- (LinkPreviewProvider)linkPreviewProvider;
- (NSDictionary)savedState;
- (NSString)currentCollection;
- (SFHistoryViewDataSource)historyDataSource;
- (SafariClearBrowsingDataController)clearHistoryController;
- (TabGroupProvider)tabGroupProvider;
- (UIBarButtonItem)dismissButton;
- (_SFNavigationIntentHandling)navigationIntentHandler;
- (_TtC12MobileSafari35SFBookmarksCollectionViewController)rootCollectionViewController;
- (_TtC12MobileSafari35SFBookmarksCollectionViewController)topmostCollectionViewController;
- (id)importHandler;
- (id)makeBookmarksLeadingBarButtonItemsFor:(id)for in:(id)in isEditing:(BOOL)editing selectedBookmarks:(id)bookmarks;
- (id)makeClearHistoryActionIn:(id)in;
- (id)makeDeleteMultipleHistoryItemsButtonFor:(id)for in:(id)in;
- (id)makeDetailViewMoreButtonItem;
- (id)makeHistoryMoreButtonItemFor:(id)for isEditing:(BOOL)editing;
- (id)makeMoreMenuBarButtonIn:(id)in isEditing:(BOOL)editing;
- (id)makeMoreMenuForHistoryIn:(id)in;
- (id)makeReadingListLeadingBarButtonItemsIn:(id)in isEditing:(BOOL)editing selectedBookmarks:(id)bookmarks;
- (id)makeReadingListMoreButtonItemIn:(id)in isEditing:(BOOL)editing;
- (id)makeTopLevelCollectionViewController;
- (id)makeTrailingBarButtonItemFor:(id)for in:(id)in isEditing:(BOOL)editing;
- (id)makeTrailingBarButtonItemsIn:(id)in isEditing:(BOOL)editing;
- (void)deleteHistoryItems:(id)items completionHandler:(id)handler;
- (void)historyViewDataSource:(id)source didComputeSessions:(id)sessions;
- (void)loadIconForHistoryItem:(id)item completionHandler:(id)handler;
- (void)loadSavedState;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)performWithoutReload:(id)reload;
- (void)restoreState;
- (void)saveState;
- (void)setClearHistoryController:(id)controller;
- (void)setDismissButton:(id)button;
- (void)setHistoryDataSource:(id)source;
- (void)setHistorySessions:(id)sessions;
- (void)setImportHandler:(id)handler;
- (void)setIsClearHistoryAllowed:(BOOL)allowed;
- (void)setSavedState:(id)state;
- (void)setSelectedCollectionType:(id)type;
- (void)setTabGroupProvider:(id)provider;
- (void)showClearHistoryDenialAlertFor:(id)for;
- (void)updateClearHistoryAllowed;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation BookmarksViewController

- (BookmarksViewController)initWithBookmarkCollection:(id)collection focusedCollectionType:(id)type
{
  collectionCopy = collection;
  typeCopy = type;
  v7 = sub_215A53C90(collectionCopy, type);

  return v7;
}

- (SafariClearBrowsingDataController)clearHistoryController
{
  selfCopy = self;
  v3 = sub_215A44FAC();

  return v3;
}

- (void)setClearHistoryController:(id)controller
{
  v4 = *(self + OBJC_IVAR___BookmarksViewController____lazy_storage___clearHistoryController);
  *(self + OBJC_IVAR___BookmarksViewController____lazy_storage___clearHistoryController) = controller;
  controllerCopy = controller;
}

- (UIBarButtonItem)dismissButton
{
  selfCopy = self;
  v3 = sub_215A450E8();

  return v3;
}

- (void)setDismissButton:(id)button
{
  v4 = *(self + OBJC_IVAR___BookmarksViewController____lazy_storage___dismissButton);
  *(self + OBJC_IVAR___BookmarksViewController____lazy_storage___dismissButton) = button;
  buttonCopy = button;
}

- (NSDictionary)savedState
{

  v2 = sub_215A704A0();

  return v2;
}

- (void)setSavedState:(id)state
{
  *(self + OBJC_IVAR___BookmarksViewController_savedState) = sub_215A704B0();
}

- (SFHistoryViewDataSource)historyDataSource
{
  selfCopy = self;
  v3 = sub_215A45514();

  return v3;
}

- (void)setHistoryDataSource:(id)source
{
  v4 = *(self + OBJC_IVAR___BookmarksViewController____lazy_storage___historyDataSource);
  *(self + OBJC_IVAR___BookmarksViewController____lazy_storage___historyDataSource) = source;
  sourceCopy = source;
  selfCopy = self;
  sub_215A54E9C(v4);
}

- (void)setHistorySessions:(id)sessions
{
  v4 = *(self + OBJC_IVAR___BookmarksViewController_historySessions);
  *(self + OBJC_IVAR___BookmarksViewController_historySessions) = sessions;
  sessionsCopy = sessions;
  selfCopy = self;

  [(BookmarksViewController *)selfCopy updateClearHistoryAllowed];
}

- (void)setIsClearHistoryAllowed:(BOOL)allowed
{
  selfCopy = self;
  sub_215A45958(allowed);
}

- (_TtC12MobileSafari35SFBookmarksCollectionViewController)rootCollectionViewController
{
  selfCopy = self;
  v3 = sub_215A45B60();

  return v3;
}

- (_TtC12MobileSafari35SFBookmarksCollectionViewController)topmostCollectionViewController
{
  selfCopy = self;
  v3 = sub_215A45CB4();

  return v3;
}

- (BookmarksNavigationControllerDelegate)bookmarksNavigationControllerDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (LinkPreviewProvider)linkPreviewProvider
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_SFNavigationIntentHandling)navigationIntentHandler
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (TabGroupProvider)tabGroupProvider
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setTabGroupProvider:(id)provider
{
  swift_unknownObjectRetain();
  selfCopy = self;
  BookmarksViewController.tabGroupProvider.setter();
}

- (void)viewDidLoad
{
  selfCopy = self;
  BookmarksViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  BookmarksViewController.viewWillAppear(_:)(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  BookmarksViewController.viewWillDisappear(_:)(disappear);
}

- (void)loadSavedState
{
  selfCopy = self;
  sub_215A46A64();
}

- (void)saveState
{
  selfCopy = self;
  sub_215A471C0();
}

- (void)restoreState
{
  selfCopy = self;
  sub_215A47E74();
}

- (void)updateClearHistoryAllowed
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E060);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_215A706E0();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_215A706C0();
  selfCopy = self;
  v8 = sub_215A706B0();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = selfCopy;
  sub_215A20960(0, 0, v5, &unk_215A97360, v9);
}

- (void)setSelectedCollectionType:(id)type
{
  v4 = *(self + OBJC_IVAR___BookmarksViewController_selectedCollectionType);
  *(self + OBJC_IVAR___BookmarksViewController_selectedCollectionType) = type;
  typeCopy = type;
  selfCopy = self;
  sub_215A48F60();
}

- (NSString)currentCollection
{
  selectedCollectionType = [(BookmarksViewController *)self selectedCollectionType];

  return selectedCollectionType;
}

- (id)importHandler
{
  if (*(self + OBJC_IVAR___BookmarksViewController_importHandler))
  {
    v2 = *(self + OBJC_IVAR___BookmarksViewController_importHandler + 8);
    v5[4] = *(self + OBJC_IVAR___BookmarksViewController_importHandler);
    v5[5] = v2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_215A2A290;
    v5[3] = &block_descriptor_162;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setImportHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_215A26210;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___BookmarksViewController_importHandler);
  v8 = *(self + OBJC_IVAR___BookmarksViewController_importHandler);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_21584BA0C(v8);
}

- (id)makeTopLevelCollectionViewController
{
  selfCopy = self;
  v3 = sub_215A493AC();

  return v3;
}

- (void)loadIconForHistoryItem:(id)item completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  itemCopy = item;
  selfCopy = self;
  sub_215A4DE04(itemCopy, sub_215A26210, v7);
}

- (void)deleteHistoryItems:(id)items completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  sub_2159F7DA8(0, &qword_27CA7E098);
  v6 = sub_215A705E0();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v8 = sub_2159F7D34;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  selfCopy = self;
  sub_215A4FBD0(v6, v8, v7);
  sub_21584BA0C(v8);
}

- (id)makeTrailingBarButtonItemsIn:(id)in isEditing:(BOOL)editing
{
  inCopy = in;
  selfCopy = self;
  sub_215A4FE20(inCopy, editing);

  sub_2159F7DA8(0, &qword_2811A22B8);
  v8 = sub_215A705D0();

  return v8;
}

- (id)makeMoreMenuBarButtonIn:(id)in isEditing:(BOOL)editing
{
  inCopy = in;
  selfCopy = self;
  v8 = sub_215A500D8(inCopy, editing);

  return v8;
}

- (id)makeTrailingBarButtonItemFor:(id)for in:(id)in isEditing:(BOOL)editing
{
  if (editing)
  {
    v6 = 0;
  }

  else
  {
    forCopy = for;
    inCopy = in;
    selfCopy = self;
    v13 = sub_215A29A1C(forCopy, inCopy);

    v6 = v13;
  }

  return v6;
}

- (id)makeReadingListMoreButtonItemIn:(id)in isEditing:(BOOL)editing
{
  inCopy = in;
  selfCopy = self;
  v8 = sub_215A50850(inCopy, editing);

  return v8;
}

- (id)makeHistoryMoreButtonItemFor:(id)for isEditing:(BOOL)editing
{
  forCopy = for;
  selfCopy = self;
  v8 = sub_215A50AD8(forCopy, editing);

  return v8;
}

- (id)makeDetailViewMoreButtonItem
{
  selfCopy = self;
  v3 = sub_215A50D60();

  return v3;
}

- (id)makeReadingListLeadingBarButtonItemsIn:(id)in isEditing:(BOOL)editing selectedBookmarks:(id)bookmarks
{
  sub_2159F7DA8(0, &unk_2811A28A0);
  v8 = sub_215A705E0();
  inCopy = in;
  selfCopy = self;
  sub_215A51180(inCopy, editing, v8);

  sub_2159F7DA8(0, &qword_2811A22B8);
  v11 = sub_215A705D0();

  return v11;
}

- (id)makeBookmarksLeadingBarButtonItemsFor:(id)for in:(id)in isEditing:(BOOL)editing selectedBookmarks:(id)bookmarks
{
  sub_2159F7DA8(0, &unk_2811A28A0);
  v10 = sub_215A705E0();
  forCopy = for;
  inCopy = in;
  selfCopy = self;
  sub_215A54364(forCopy, editing, v10);

  sub_2159F7DA8(0, &qword_2811A22B8);
  v14 = sub_215A705D0();

  return v14;
}

- (id)makeDeleteMultipleHistoryItemsButtonFor:(id)for in:(id)in
{
  sub_2159F7DA8(0, &qword_27CA7E098);
  v6 = sub_215A705E0();
  inCopy = in;
  selfCopy = self;
  v9 = sub_215A54564(v6);

  return v9;
}

- (void)showClearHistoryDenialAlertFor:(id)for
{
  v4 = objc_allocWithZone(MEMORY[0x277D4A740]);
  selfCopy = self;
  initWithPresenter_ = [v4 initWithPresenter_];
  [initWithPresenter_ displayHistoryClearingDenialAlert];
}

- (id)makeClearHistoryActionIn:(id)in
{
  inCopy = in;
  selfCopy = self;
  v6 = sub_215A51688(inCopy);

  return v6;
}

- (id)makeMoreMenuForHistoryIn:(id)in
{
  inCopy = in;
  selfCopy = self;
  v6 = sub_215A51AB4(inCopy);

  return v6;
}

- (void)performWithoutReload:(id)reload
{
  v4 = _Block_copy(reload);
  selfCopy = self;
  suppressingReloads = [(BookmarksViewController *)selfCopy suppressingReloads];
  if (__OFADD__(suppressingReloads, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  [(BookmarksViewController *)selfCopy setSuppressingReloads:suppressingReloads + 1];
  v4[2](v4);
  _Block_release(v4);
  suppressingReloads2 = [(BookmarksViewController *)selfCopy suppressingReloads];
  if (__OFSUB__(suppressingReloads2, 1))
  {
LABEL_7:
    __break(1u);
    return;
  }

  [(BookmarksViewController *)selfCopy setSuppressingReloads:suppressingReloads2 - 1];
}

- (BookmarksViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_215A54784(viewControllerCopy);
}

- (void)historyViewDataSource:(id)source didComputeSessions:(id)sessions
{
  sessionsCopy = sessions;
  selfCopy = self;
  [(BookmarksViewController *)selfCopy setHistorySessions:sessionsCopy];
  selectedCollectionType = [(BookmarksViewController *)selfCopy selectedCollectionType];
  v7 = sub_215A70540();
  v9 = v8;
  if (v7 == sub_215A70540() && v9 == v10)
  {

    goto LABEL_8;
  }

  v12 = sub_215A70D90();

  if (v12)
  {
LABEL_8:
    sub_215A51CC8();
  }
}

@end