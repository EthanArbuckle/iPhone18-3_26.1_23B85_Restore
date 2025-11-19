@interface BookmarksViewController
- (BookmarksNavigationControllerDelegate)bookmarksNavigationControllerDelegate;
- (BookmarksViewController)initWithBookmarkCollection:(id)a3 focusedCollectionType:(id)a4;
- (BookmarksViewController)initWithNibName:(id)a3 bundle:(id)a4;
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
- (id)makeBookmarksLeadingBarButtonItemsFor:(id)a3 in:(id)a4 isEditing:(BOOL)a5 selectedBookmarks:(id)a6;
- (id)makeClearHistoryActionIn:(id)a3;
- (id)makeDeleteMultipleHistoryItemsButtonFor:(id)a3 in:(id)a4;
- (id)makeDetailViewMoreButtonItem;
- (id)makeHistoryMoreButtonItemFor:(id)a3 isEditing:(BOOL)a4;
- (id)makeMoreMenuBarButtonIn:(id)a3 isEditing:(BOOL)a4;
- (id)makeMoreMenuForHistoryIn:(id)a3;
- (id)makeReadingListLeadingBarButtonItemsIn:(id)a3 isEditing:(BOOL)a4 selectedBookmarks:(id)a5;
- (id)makeReadingListMoreButtonItemIn:(id)a3 isEditing:(BOOL)a4;
- (id)makeTopLevelCollectionViewController;
- (id)makeTrailingBarButtonItemFor:(id)a3 in:(id)a4 isEditing:(BOOL)a5;
- (id)makeTrailingBarButtonItemsIn:(id)a3 isEditing:(BOOL)a4;
- (void)deleteHistoryItems:(id)a3 completionHandler:(id)a4;
- (void)historyViewDataSource:(id)a3 didComputeSessions:(id)a4;
- (void)loadIconForHistoryItem:(id)a3 completionHandler:(id)a4;
- (void)loadSavedState;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)performWithoutReload:(id)a3;
- (void)restoreState;
- (void)saveState;
- (void)setClearHistoryController:(id)a3;
- (void)setDismissButton:(id)a3;
- (void)setHistoryDataSource:(id)a3;
- (void)setHistorySessions:(id)a3;
- (void)setImportHandler:(id)a3;
- (void)setIsClearHistoryAllowed:(BOOL)a3;
- (void)setSavedState:(id)a3;
- (void)setSelectedCollectionType:(id)a3;
- (void)setTabGroupProvider:(id)a3;
- (void)showClearHistoryDenialAlertFor:(id)a3;
- (void)updateClearHistoryAllowed;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation BookmarksViewController

- (BookmarksViewController)initWithBookmarkCollection:(id)a3 focusedCollectionType:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_215A53C90(v5, a4);

  return v7;
}

- (SafariClearBrowsingDataController)clearHistoryController
{
  v2 = self;
  v3 = sub_215A44FAC();

  return v3;
}

- (void)setClearHistoryController:(id)a3
{
  v4 = *(self + OBJC_IVAR___BookmarksViewController____lazy_storage___clearHistoryController);
  *(self + OBJC_IVAR___BookmarksViewController____lazy_storage___clearHistoryController) = a3;
  v3 = a3;
}

- (UIBarButtonItem)dismissButton
{
  v2 = self;
  v3 = sub_215A450E8();

  return v3;
}

- (void)setDismissButton:(id)a3
{
  v4 = *(self + OBJC_IVAR___BookmarksViewController____lazy_storage___dismissButton);
  *(self + OBJC_IVAR___BookmarksViewController____lazy_storage___dismissButton) = a3;
  v3 = a3;
}

- (NSDictionary)savedState
{

  v2 = sub_215A704A0();

  return v2;
}

- (void)setSavedState:(id)a3
{
  *(self + OBJC_IVAR___BookmarksViewController_savedState) = sub_215A704B0();
}

- (SFHistoryViewDataSource)historyDataSource
{
  v2 = self;
  v3 = sub_215A45514();

  return v3;
}

- (void)setHistoryDataSource:(id)a3
{
  v4 = *(self + OBJC_IVAR___BookmarksViewController____lazy_storage___historyDataSource);
  *(self + OBJC_IVAR___BookmarksViewController____lazy_storage___historyDataSource) = a3;
  v5 = a3;
  v6 = self;
  sub_215A54E9C(v4);
}

- (void)setHistorySessions:(id)a3
{
  v4 = *(self + OBJC_IVAR___BookmarksViewController_historySessions);
  *(self + OBJC_IVAR___BookmarksViewController_historySessions) = a3;
  v5 = a3;
  v6 = self;

  [(BookmarksViewController *)v6 updateClearHistoryAllowed];
}

- (void)setIsClearHistoryAllowed:(BOOL)a3
{
  v4 = self;
  sub_215A45958(a3);
}

- (_TtC12MobileSafari35SFBookmarksCollectionViewController)rootCollectionViewController
{
  v2 = self;
  v3 = sub_215A45B60();

  return v3;
}

- (_TtC12MobileSafari35SFBookmarksCollectionViewController)topmostCollectionViewController
{
  v2 = self;
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

- (void)setTabGroupProvider:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  BookmarksViewController.tabGroupProvider.setter();
}

- (void)viewDidLoad
{
  v2 = self;
  BookmarksViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  BookmarksViewController.viewWillAppear(_:)(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  BookmarksViewController.viewWillDisappear(_:)(a3);
}

- (void)loadSavedState
{
  v2 = self;
  sub_215A46A64();
}

- (void)saveState
{
  v2 = self;
  sub_215A471C0();
}

- (void)restoreState
{
  v2 = self;
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
  v7 = self;
  v8 = sub_215A706B0();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  sub_215A20960(0, 0, v5, &unk_215A97360, v9);
}

- (void)setSelectedCollectionType:(id)a3
{
  v4 = *(self + OBJC_IVAR___BookmarksViewController_selectedCollectionType);
  *(self + OBJC_IVAR___BookmarksViewController_selectedCollectionType) = a3;
  v5 = a3;
  v6 = self;
  sub_215A48F60();
}

- (NSString)currentCollection
{
  v2 = [(BookmarksViewController *)self selectedCollectionType];

  return v2;
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

- (void)setImportHandler:(id)a3
{
  v4 = _Block_copy(a3);
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
  v9 = self;
  sub_21584BA0C(v8);
}

- (id)makeTopLevelCollectionViewController
{
  v2 = self;
  v3 = sub_215A493AC();

  return v3;
}

- (void)loadIconForHistoryItem:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_215A4DE04(v8, sub_215A26210, v7);
}

- (void)deleteHistoryItems:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
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

  v9 = self;
  sub_215A4FBD0(v6, v8, v7);
  sub_21584BA0C(v8);
}

- (id)makeTrailingBarButtonItemsIn:(id)a3 isEditing:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_215A4FE20(v6, a4);

  sub_2159F7DA8(0, &qword_2811A22B8);
  v8 = sub_215A705D0();

  return v8;
}

- (id)makeMoreMenuBarButtonIn:(id)a3 isEditing:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_215A500D8(v6, a4);

  return v8;
}

- (id)makeTrailingBarButtonItemFor:(id)a3 in:(id)a4 isEditing:(BOOL)a5
{
  if (a5)
  {
    v6 = 0;
  }

  else
  {
    v10 = a3;
    v11 = a4;
    v12 = self;
    v13 = sub_215A29A1C(v10, v11);

    v6 = v13;
  }

  return v6;
}

- (id)makeReadingListMoreButtonItemIn:(id)a3 isEditing:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_215A50850(v6, a4);

  return v8;
}

- (id)makeHistoryMoreButtonItemFor:(id)a3 isEditing:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_215A50AD8(v6, a4);

  return v8;
}

- (id)makeDetailViewMoreButtonItem
{
  v2 = self;
  v3 = sub_215A50D60();

  return v3;
}

- (id)makeReadingListLeadingBarButtonItemsIn:(id)a3 isEditing:(BOOL)a4 selectedBookmarks:(id)a5
{
  sub_2159F7DA8(0, &unk_2811A28A0);
  v8 = sub_215A705E0();
  v9 = a3;
  v10 = self;
  sub_215A51180(v9, a4, v8);

  sub_2159F7DA8(0, &qword_2811A22B8);
  v11 = sub_215A705D0();

  return v11;
}

- (id)makeBookmarksLeadingBarButtonItemsFor:(id)a3 in:(id)a4 isEditing:(BOOL)a5 selectedBookmarks:(id)a6
{
  sub_2159F7DA8(0, &unk_2811A28A0);
  v10 = sub_215A705E0();
  v11 = a3;
  v12 = a4;
  v13 = self;
  sub_215A54364(v11, a5, v10);

  sub_2159F7DA8(0, &qword_2811A22B8);
  v14 = sub_215A705D0();

  return v14;
}

- (id)makeDeleteMultipleHistoryItemsButtonFor:(id)a3 in:(id)a4
{
  sub_2159F7DA8(0, &qword_27CA7E098);
  v6 = sub_215A705E0();
  v7 = a4;
  v8 = self;
  v9 = sub_215A54564(v6);

  return v9;
}

- (void)showClearHistoryDenialAlertFor:(id)a3
{
  v4 = objc_allocWithZone(MEMORY[0x277D4A740]);
  v6 = self;
  v5 = [v4 initWithPresenter_];
  [v5 displayHistoryClearingDenialAlert];
}

- (id)makeClearHistoryActionIn:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_215A51688(v4);

  return v6;
}

- (id)makeMoreMenuForHistoryIn:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_215A51AB4(v4);

  return v6;
}

- (void)performWithoutReload:(id)a3
{
  v4 = _Block_copy(a3);
  v7 = self;
  v5 = [(BookmarksViewController *)v7 suppressingReloads];
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  [(BookmarksViewController *)v7 setSuppressingReloads:v5 + 1];
  v4[2](v4);
  _Block_release(v4);
  v6 = [(BookmarksViewController *)v7 suppressingReloads];
  if (__OFSUB__(v6, 1))
  {
LABEL_7:
    __break(1u);
    return;
  }

  [(BookmarksViewController *)v7 setSuppressingReloads:v6 - 1];
}

- (BookmarksViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_215A54784(v8);
}

- (void)historyViewDataSource:(id)a3 didComputeSessions:(id)a4
{
  v5 = a4;
  v13 = self;
  [(BookmarksViewController *)v13 setHistorySessions:v5];
  v6 = [(BookmarksViewController *)v13 selectedCollectionType];
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