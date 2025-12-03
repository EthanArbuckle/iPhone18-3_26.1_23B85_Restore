@interface LibraryContentViewController
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)collectionView:(id)view shouldSpringLoadItemAtIndexPath:(id)path withContext:(id)context;
- (NSUndoManager)undoManager;
- (_TtC14MobileSafariUI28LibraryContentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (void)collectionView:(id)view didBeginMultipleSelectionInteractionAtIndexPath:(id)path;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view dragSessionWillBegin:(id)begin;
- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)hover;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)validateCommand:(id)command;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation LibraryContentViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_21583D628();
}

- (NSUndoManager)undoManager
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_configuration);
  selfCopy = self;
  undoManager = [v2 undoManager];
  if (!undoManager)
  {
    v7.receiver = selfCopy;
    v7.super_class = type metadata accessor for LibraryContentViewController();
    undoManager = [(LibraryContentViewController *)&v7 undoManager];
  }

  v5 = undoManager;

  return v5;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  selfCopy = self;
  sub_215A0D500(editing, animated);
}

- (void)hover
{
  selfCopy = self;
  sub_215A0D630();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_215A0D8C4();
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_215A70B70();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = sub_215A0DF44(action, v10);

  sub_21583F14C(v10, &qword_27CA7E2E0);
  return v8 & 1;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  sub_215A0EBC4(commandCopy);
}

- (_TtC14MobileSafariUI28LibraryContentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionView:(id)view didBeginMultipleSelectionInteractionAtIndexPath:(id)path
{
  v5 = sub_215A6FA10();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215A6F9C0();
  [(LibraryContentViewController *)self setEditing:1];
  (*(v6 + 8))(v8, v5);
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v6 = sub_215A6FA10();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215A6F9C0();
  v10 = *(v7 + 8);
  selfCopy = self;
  v10(v9, v6);
  *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_tabHoverPreviewSnapshotsNeedUpdate) = 1;
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = sub_215A6FA10();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215A6F9C0();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_215A1185C();

  (*(v9 + 8))(v11, v8);
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  sub_215A6FA10();
  v7 = sub_215A705E0();
  viewCopy = view;
  selfCopy = self;
  v10 = sub_215A119D8(v7);

  return v10;
}

- (BOOL)collectionView:(id)view shouldSpringLoadItemAtIndexPath:(id)path withContext:(id)context
{
  v6 = sub_215A6FA10();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215A6F9C0();
  selfCopy = self;
  v11 = sub_21583D558();
  sub_215A70250();

  v12 = v16;
  if (v16)
  {
    isSpringLoaded = [v16 isSpringLoaded];

    (*(v7 + 8))(v9, v6);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
    return 0;
  }

  return isSpringLoaded;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_hoverRecognizer);
  selfCopy = self;
  [v3 setEnabled_];
  [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_tabHoverPreviewController) cancel];
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_hoverRecognizer);
  selfCopy = self;
  [v3 setEnabled_];
  v4 = selfCopy;
  if (*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_tabHoverPreviewSnapshotsNeedUpdate) == 1)
  {
    [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_tabHoverPreviewController) setNeedsSnapshotUpdate];
    v4 = selfCopy;
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_hoverRecognizer);
    selfCopy = self;
    [v5 setEnabled_];
    v6 = selfCopy;
    if (*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_tabHoverPreviewSnapshotsNeedUpdate))
    {
      [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_tabHoverPreviewController) setNeedsSnapshotUpdate];
      v6 = selfCopy;
    }
  }
}

- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  v7 = sub_215A6FA10();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215A6F9C0();
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_215A11D58(viewCopy);

  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);
  sub_2159F7DA8(0, &qword_27CA7E2B0);
  v13 = sub_215A705D0();

  return v13;
}

- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point
{
  v8 = sub_215A6FA10();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215A6F9C0();
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_215A11EA4();

  swift_unknownObjectRelease();
  (*(v9 + 8))(v11, v8);
  sub_2159F7DA8(0, &qword_27CA7E2B0);
  v14 = sub_215A705D0();

  return v14;
}

- (void)collectionView:(id)view dragSessionWillBegin:(id)begin
{
  sharedLogger = [objc_opt_self() sharedLogger];
  if (sharedLogger)
  {
    v5 = sharedLogger;
    [sharedLogger didStartDragWithDragContentType_];
  }
}

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7DF78);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  if (path)
  {
    sub_215A6F9C0();
    v12 = sub_215A6FA10();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = sub_215A6FA10();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v16 = sub_215A11F60(update, v11);

  swift_unknownObjectRelease();
  sub_21583F14C(v11, &qword_27CA7DF78);

  return v16;
}

- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_215A121BC(coordinator);

  swift_unknownObjectRelease();
}

@end