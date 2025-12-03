@interface SFBookmarksCollectionViewController
- (BOOL)collectionView:(id)view canHandleDropSession:(id)session;
- (BOOL)collectionView:(id)view canPerformPrimaryActionForItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view selectionFollowsFocusForItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldBeginMultipleSelectionInteractionAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSpringLoadItemAtIndexPath:(id)path withContext:(id)context;
- (BOOL)searchBarShouldBeginEditing:(id)editing;
- (NSArray)keyCommands;
- (_TtC12MobileSafari35SFBookmarksCollectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration dismissalPreviewForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath;
- (void)collectionView:(id)view didBeginMultipleSelectionInteractionAtIndexPath:(id)path;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)didMoveToParentViewController:(id)controller;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)downArrowPressed;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)upArrowPressed;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SFBookmarksCollectionViewController

- (void)downArrowPressed
{
  selfCopy = self;
  sub_18BA9D5CC();
}

- (void)didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_18BA9A104(controller);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_18BA9A24C();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SFBookmarksCollectionViewController();
  v4 = v6.receiver;
  [(SFBookmarksCollectionViewController *)&v6 viewWillAppear:appearCopy];
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

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SFBookmarksCollectionViewController();
  v4 = v7.receiver;
  [(SFBookmarksCollectionViewController *)&v7 viewDidAppear:appearCopy];
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

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  selfCopy = self;
  sub_18BA9A8E0(editing, animated);
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

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_18BAA23FC(contextCopy);
}

- (void)upArrowPressed
{
  selfCopy = self;
  navigationController = [(SFBookmarksCollectionViewController *)selfCopy navigationController];
  if (navigationController)
  {
    v3 = navigationController;
  }
}

- (_TtC12MobileSafari35SFBookmarksCollectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  v6 = sub_18BC1EDD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = SFBookmarksCollectionViewController.collectionView(_:shouldSelectItemAt:)(viewCopy);

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v5 = sub_18BC1EDD8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_18BC1ED88();
  selfCopy = self;
  if ([(SFBookmarksCollectionViewController *)selfCopy isEditing])
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

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  v5 = sub_18BC1EDD8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  selfCopy = self;
  if ([(SFBookmarksCollectionViewController *)selfCopy isEditing])
  {
    sub_18BA9AA44();
  }

  (*(v6 + 8))(v8, v5);
}

- (BOOL)collectionView:(id)view canPerformPrimaryActionForItemAtIndexPath:(id)path
{
  v6 = sub_18BC1EDD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_18BAA2620();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path
{
  v5 = sub_18BC1EDD8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_18BC1ED88();
  selfCopy = self;
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

- (BOOL)collectionView:(id)view shouldBeginMultipleSelectionInteractionAtIndexPath:(id)path
{
  v5 = sub_18BC1EDD8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  viewCopy = view;
  v10 = sub_18BC1ED68();
  cellForItemAtIndexPath_ = [viewCopy cellForItemAtIndexPath_];

  if (cellForItemAtIndexPath_)
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
    cellForItemAtIndexPath_ = viewCopy;
  }

  (*(v6 + 8))(v8, v5);
  return v14 & 1;
}

- (void)collectionView:(id)view didBeginMultipleSelectionInteractionAtIndexPath:(id)path
{
  v5 = sub_18BC1EDD8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  [(SFBookmarksCollectionViewController *)self setEditing:1];
  (*(v6 + 8))(v8, v5);
}

- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath
{
  selfCopy = self;
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
  viewCopy = view;
  v21 = selfCopy;
  SFBookmarksCollectionViewController.collectionView(_:targetIndexPathForMoveOfItemFromOriginalIndexPath:atCurrentIndexPath:toProposedIndexPath:)(v13, v10, v19);

  v22 = *(v8 + 8);
  v22(v10, v7);
  v22(v13, v7);
  v22(v16, v7);
  v23 = sub_18BC1ED68();
  v22(v19, v7);

  return v23;
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  sub_18BC1EDD8();
  v7 = sub_18BC20D98();
  viewCopy = view;
  selfCopy = self;
  v10 = sub_18BAA2708(v7);

  return v10;
}

- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  viewCopy = view;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_18BAA29EC(animator);

  swift_unknownObjectRelease();
}

- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration dismissalPreviewForItemAtIndexPath:(id)path
{
  v6 = sub_18BC1EDD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_18BC1ED88();
  selfCopy = self;
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

- (BOOL)collectionView:(id)view selectionFollowsFocusForItemAtIndexPath:(id)path
{
  v4 = sub_18BC1EDD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  (*(v5 + 8))(v7, v4);
  return 1;
}

- (BOOL)collectionView:(id)view shouldSpringLoadItemAtIndexPath:(id)path withContext:(id)context
{
  v7 = sub_18BC1EDD8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  LOBYTE(self) = sub_18BAA2BB8();

  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);
  return self & 1;
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    selfCopy = self;
    navigationController = [(SFBookmarksCollectionViewController *)selfCopy navigationController];
    if (navigationController)
    {
      v6 = navigationController;
      navigationBar = [navigationController navigationBar];

      [navigationBar sizeToFit];
    }
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  selfCopy = self;
  navigationController = [(SFBookmarksCollectionViewController *)selfCopy navigationController];
  if (navigationController)
  {
    v4 = navigationController;
    navigationBar = [navigationController navigationBar];

    [navigationBar sizeToFit];
  }
}

- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  v6 = sub_18BC1EDD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  selfCopy = self;
  sub_18BA9D1E0(v9, 1);

  (*(v7 + 8))(v9, v6);
  sub_18B7B0AC0(0, &qword_1EA9D7CE0);
  v11 = sub_18BC20D88();

  return v11;
}

- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point
{
  v7 = sub_18BC1EDD8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  selfCopy = self;
  sub_18BA9D1E0(v10, 0);

  (*(v8 + 8))(v10, v7);
  sub_18B7B0AC0(0, &qword_1EA9D7CE0);
  v12 = sub_18BC20D88();

  return v12;
}

- (BOOL)collectionView:(id)view canHandleDropSession:(id)session
{
  selfCopy = self;
  v6 = (self + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_canHandleDropSession);
  swift_beginAccess();
  v7 = *v6;
  swift_unknownObjectRetain();
  v8 = selfCopy;
  sub_18BC1E1A8();
  LOBYTE(selfCopy) = v7(session);
  swift_unknownObjectRelease();

  return selfCopy & 1;
}

- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_18BAA2C90(coordinator);

  swift_unknownObjectRelease();
}

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  if (path)
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

  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v16 = SFBookmarksCollectionViewController.collectionView(_:dropSessionDidUpdate:withDestinationIndexPath:)(viewCopy, update, v11);

  swift_unknownObjectRelease();
  sub_18B988BAC(v11, &unk_1EA9D5BD0);

  return v16;
}

- (BOOL)searchBarShouldBeginEditing:(id)editing
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_collectionView);
  if (v3)
  {
    selfCopy = self;
    v5 = v3;
    if ([v5 isDragging])
    {

      LOBYTE(self) = 0;
    }

    else
    {
      isDecelerating = [v5 isDecelerating];

      LOBYTE(self) = isDecelerating ^ 1;
    }
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  v5 = sub_18BC20BD8();
  v7 = v6;
  v8 = self + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_searchTextDidChangeHandler;
  swift_beginAccess();
  v9 = *v8;
  selfCopy = self;
  sub_18BC1E1A8();
  v9(v5, v7, selfCopy);
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  selfCopy = self;
  v4 = sub_18BA947A4();
  searchBar = [v4 searchBar];

  [searchBar setText_];
  v6 = (selfCopy + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_searchTextDidChangeHandler);
  swift_beginAccess();
  isa = v6->super.super.super.isa;
  sub_18BC1E1A8();
  isa(0, 0, selfCopy);
}

@end