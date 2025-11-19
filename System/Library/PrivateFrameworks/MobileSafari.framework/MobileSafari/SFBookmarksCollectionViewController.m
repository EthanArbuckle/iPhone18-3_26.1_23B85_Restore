@interface SFBookmarksCollectionViewController
- (BOOL)collectionView:(id)a3 canHandleDropSession:(id)a4;
- (BOOL)collectionView:(id)a3 canPerformPrimaryActionForItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 selectionFollowsFocusForItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldBeginMultipleSelectionInteractionAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSpringLoadItemAtIndexPath:(id)a4 withContext:(id)a5;
- (BOOL)searchBarShouldBeginEditing:(id)a3;
- (NSArray)keyCommands;
- (_TtC12MobileSafari35SFBookmarksCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 contextMenuConfiguration:(id)a4 dismissalPreviewForItemAtIndexPath:(id)a5;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6;
- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6;
- (void)collectionView:(id)a3 didBeginMultipleSelectionInteractionAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4;
- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)didMoveToParentViewController:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)downArrowPressed;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)upArrowPressed;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SFBookmarksCollectionViewController

- (void)downArrowPressed
{
  v1 = a1;
  sub_18BA9D5CC();
}

- (void)didMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_18BA9A104(a3);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_18BA9A24C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SFBookmarksCollectionViewController();
  v4 = v6.receiver;
  [(SFBookmarksCollectionViewController *)&v6 viewWillAppear:v3];
  v5 = *&v4[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_collectionView];
  if (v5)
  {
    [v5 selectItemAtIndexPath:0 animated:1 scrollPosition:{1, v6.receiver, v6.super_class}];
    sub_18BA9ACB8();
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SFBookmarksCollectionViewController();
  v4 = v7.receiver;
  [(SFBookmarksCollectionViewController *)&v7 viewDidAppear:v3];
  v4[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_needsContentOffsetUpdate] = 0;
  v5 = *&v4[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_collectionView];
  if (v5)
  {
    v6 = v5;
    sub_18BAA1EAC(v6);
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SFBookmarksCollectionViewController();
  v2 = v3.receiver;
  [(SFBookmarksCollectionViewController *)&v3 viewDidLayoutSubviews];
  sub_18BA99B28();
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_18BA9A8E0(a3, a4);
}

- (NSArray)keyCommands
{
  if (sub_18BAA22E8())
  {
    sub_18B7B0AC0(0, &qword_1EA9D7FF0);
    v2 = sub_18BC20D88();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_18BAA23FC(v6);
}

- (void)upArrowPressed
{
  v4 = self;
  v2 = [(SFBookmarksCollectionViewController *)v4 navigationController];
  if (v2)
  {
    v3 = v2;
  }
}

- (_TtC12MobileSafari35SFBookmarksCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v6 = sub_18BC1EDD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  v10 = a3;
  v11 = self;
  LOBYTE(self) = SFBookmarksCollectionViewController.collectionView(_:shouldSelectItemAt:)(v10);

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = sub_18BC1EDD8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_18BC1ED88();
  v9 = self;
  if ([(SFBookmarksCollectionViewController *)v9 isEditing])
  {
    sub_18BA9AA44();
  }

  else
  {
    v10 = sub_18BA95F78();
    sub_18BC1FD18();

    memcpy(v13, v12, sizeof(v13));
    memcpy(v14, v12, sizeof(v14));
    if (sub_18B81CA10(v14) != 1)
    {
      (v14[13])();
      sub_18B988BAC(v13, &qword_1EA9D7E00);
    }
  }

  (*(v6 + 8))(v8, v5);
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v5 = sub_18BC1EDD8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  v9 = self;
  if ([(SFBookmarksCollectionViewController *)v9 isEditing])
  {
    sub_18BA9AA44();
  }

  (*(v6 + 8))(v8, v5);
}

- (BOOL)collectionView:(id)a3 canPerformPrimaryActionForItemAtIndexPath:(id)a4
{
  v6 = sub_18BC1EDD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  v10 = a3;
  v11 = self;
  LOBYTE(self) = sub_18BAA2620();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4
{
  v5 = sub_18BC1EDD8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_18BC1ED88();
  v9 = self;
  v10 = sub_18BA95F78();
  sub_18BC1FD18();

  memcpy(v13, v12, sizeof(v13));
  memcpy(v14, v12, sizeof(v14));
  if (sub_18B81CA10(v14) != 1)
  {
    (v14[13])();
    sub_18B988BAC(v13, &qword_1EA9D7E00);
  }

  (*(v6 + 8))(v8, v5);
}

- (BOOL)collectionView:(id)a3 shouldBeginMultipleSelectionInteractionAtIndexPath:(id)a4
{
  v5 = sub_18BC1EDD8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  v9 = a3;
  v10 = sub_18BC1ED68();
  v11 = [v9 cellForItemAtIndexPath_];

  if (v11)
  {
    ObjectType = swift_getObjectType();
    v13 = swift_conformsToProtocol2();
    if (v13)
    {
      v14 = (*(v13 + 128))(ObjectType, v13);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
    v11 = v9;
  }

  (*(v6 + 8))(v8, v5);
  return v14 & 1;
}

- (void)collectionView:(id)a3 didBeginMultipleSelectionInteractionAtIndexPath:(id)a4
{
  v5 = sub_18BC1EDD8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  [(SFBookmarksCollectionViewController *)self setEditing:1];
  (*(v6 + 8))(v8, v5);
}

- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6
{
  v26 = self;
  v7 = sub_18BC1EDD8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v25 - v18;
  sub_18BC1ED88();
  sub_18BC1ED88();
  sub_18BC1ED88();
  v20 = a3;
  v21 = v26;
  SFBookmarksCollectionViewController.collectionView(_:targetIndexPathForMoveOfItemFromOriginalIndexPath:atCurrentIndexPath:toProposedIndexPath:)(v13, v10, v19);

  v22 = *(v8 + 8);
  v22(v10, v7);
  v22(v13, v7);
  v22(v16, v7);
  v23 = sub_18BC1ED68();
  v22(v19, v7);

  return v23;
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5
{
  sub_18BC1EDD8();
  v7 = sub_18BC20D98();
  v8 = a3;
  v9 = self;
  v10 = sub_18BAA2708(v7);

  return v10;
}

- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  sub_18BAA29EC(a5);

  swift_unknownObjectRelease();
}

- (id)collectionView:(id)a3 contextMenuConfiguration:(id)a4 dismissalPreviewForItemAtIndexPath:(id)a5
{
  v6 = sub_18BC1EDD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_18BC1ED88();
  v10 = self;
  v11 = sub_18BA95F78();
  sub_18BC1FD18();

  memcpy(v15, v14, sizeof(v15));
  memcpy(v16, v14, sizeof(v16));
  if (sub_18B81CA10(v16) != 1)
  {
    if (v16[31])
    {
      (v16[31])();
    }

    sub_18B988BAC(v15, &qword_1EA9D7E00);
  }

  (*(v7 + 8))(v9, v6);

  return 0;
}

- (BOOL)collectionView:(id)a3 selectionFollowsFocusForItemAtIndexPath:(id)a4
{
  v4 = sub_18BC1EDD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  (*(v5 + 8))(v7, v4);
  return 1;
}

- (BOOL)collectionView:(id)a3 shouldSpringLoadItemAtIndexPath:(id)a4 withContext:(id)a5
{
  v7 = sub_18BC1EDD8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = self;
  LOBYTE(self) = sub_18BAA2BB8();

  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);
  return self & 1;
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    v8 = self;
    v5 = [(SFBookmarksCollectionViewController *)v8 navigationController];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 navigationBar];

      [v7 sizeToFit];
    }
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v6 = self;
  v3 = [(SFBookmarksCollectionViewController *)v6 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationBar];

    [v5 sizeToFit];
  }
}

- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v6 = sub_18BC1EDD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  v10 = self;
  sub_18BA9D1E0(v9, 1);

  (*(v7 + 8))(v9, v6);
  sub_18B7B0AC0(0, &qword_1EA9D7CE0);
  v11 = sub_18BC20D88();

  return v11;
}

- (id)collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6
{
  v7 = sub_18BC1EDD8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  v11 = self;
  sub_18BA9D1E0(v10, 0);

  (*(v8 + 8))(v10, v7);
  sub_18B7B0AC0(0, &qword_1EA9D7CE0);
  v12 = sub_18BC20D88();

  return v12;
}

- (BOOL)collectionView:(id)a3 canHandleDropSession:(id)a4
{
  v5 = self;
  v6 = (self + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_canHandleDropSession);
  swift_beginAccess();
  v7 = *v6;
  swift_unknownObjectRetain();
  v8 = v5;
  sub_18BC1E1A8();
  LOBYTE(v5) = v7(a4);
  swift_unknownObjectRelease();

  return v5 & 1;
}

- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_18BAA2C90(a4);

  swift_unknownObjectRelease();
}

- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  if (a5)
  {
    sub_18BC1ED88();
    v12 = sub_18BC1EDD8();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = sub_18BC1EDD8();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  v14 = a3;
  swift_unknownObjectRetain();
  v15 = self;
  v16 = SFBookmarksCollectionViewController.collectionView(_:dropSessionDidUpdate:withDestinationIndexPath:)(v14, a4, v11);

  swift_unknownObjectRelease();
  sub_18B988BAC(v11, &unk_1EA9D5BD0);

  return v16;
}

- (BOOL)searchBarShouldBeginEditing:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_collectionView);
  if (v3)
  {
    v4 = self;
    v5 = v3;
    if ([v5 isDragging])
    {

      LOBYTE(self) = 0;
    }

    else
    {
      v6 = [v5 isDecelerating];

      LOBYTE(self) = v6 ^ 1;
    }
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v5 = sub_18BC20BD8();
  v7 = v6;
  v8 = self + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_searchTextDidChangeHandler;
  swift_beginAccess();
  v9 = *v8;
  v10 = self;
  sub_18BC1E1A8();
  v9(v5, v7, v10);
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v3 = self;
  v4 = sub_18BA947A4();
  v5 = [v4 searchBar];

  [v5 setText_];
  v6 = (v3 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_searchTextDidChangeHandler);
  swift_beginAccess();
  isa = v6->super.super.super.isa;
  sub_18BC1E1A8();
  isa(0, 0, v3);
}

@end