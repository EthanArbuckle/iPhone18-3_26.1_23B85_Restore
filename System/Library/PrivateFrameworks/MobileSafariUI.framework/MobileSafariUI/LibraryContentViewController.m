@interface LibraryContentViewController
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSpringLoadItemAtIndexPath:(id)a4 withContext:(id)a5;
- (NSUndoManager)undoManager;
- (_TtC14MobileSafariUI28LibraryContentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6;
- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (void)collectionView:(id)a3 didBeginMultipleSelectionInteractionAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 dragSessionWillBegin:(id)a4;
- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)hover;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)validateCommand:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation LibraryContentViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_21583D628();
}

- (NSUndoManager)undoManager
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_configuration);
  v3 = self;
  v4 = [v2 undoManager];
  if (!v4)
  {
    v7.receiver = v3;
    v7.super_class = type metadata accessor for LibraryContentViewController();
    v4 = [(LibraryContentViewController *)&v7 undoManager];
  }

  v5 = v4;

  return v5;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_215A0D500(a3, a4);
}

- (void)hover
{
  v2 = self;
  sub_215A0D630();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_215A0D8C4();
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    sub_215A70B70();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = sub_215A0DF44(a3, v10);

  sub_21583F14C(v10, &qword_27CA7E2E0);
  return v8 & 1;
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_215A0EBC4(v4);
}

- (_TtC14MobileSafariUI28LibraryContentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionView:(id)a3 didBeginMultipleSelectionInteractionAtIndexPath:(id)a4
{
  v5 = sub_215A6FA10();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215A6F9C0();
  [(LibraryContentViewController *)self setEditing:1];
  (*(v6 + 8))(v8, v5);
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v6 = sub_215A6FA10();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215A6F9C0();
  v10 = *(v7 + 8);
  v11 = self;
  v10(v9, v6);
  *(&v11->super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_tabHoverPreviewSnapshotsNeedUpdate) = 1;
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = sub_215A6FA10();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215A6F9C0();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_215A1185C();

  (*(v9 + 8))(v11, v8);
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5
{
  sub_215A6FA10();
  v7 = sub_215A705E0();
  v8 = a3;
  v9 = self;
  v10 = sub_215A119D8(v7);

  return v10;
}

- (BOOL)collectionView:(id)a3 shouldSpringLoadItemAtIndexPath:(id)a4 withContext:(id)a5
{
  v6 = sub_215A6FA10();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215A6F9C0();
  v10 = self;
  v11 = sub_21583D558();
  sub_215A70250();

  v12 = v16;
  if (v16)
  {
    v13 = [v16 isSpringLoaded];

    (*(v7 + 8))(v9, v6);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
    return 0;
  }

  return v13;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_hoverRecognizer);
  v4 = self;
  [v3 setEnabled_];
  [*(&v4->super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_tabHoverPreviewController) cancel];
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_hoverRecognizer);
  v5 = self;
  [v3 setEnabled_];
  v4 = v5;
  if (*(&v5->super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_tabHoverPreviewSnapshotsNeedUpdate) == 1)
  {
    [*(&v5->super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_tabHoverPreviewController) setNeedsSnapshotUpdate];
    v4 = v5;
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_hoverRecognizer);
    v7 = self;
    [v5 setEnabled_];
    v6 = v7;
    if (*(&v7->super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_tabHoverPreviewSnapshotsNeedUpdate))
    {
      [*(&v7->super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_tabHoverPreviewController) setNeedsSnapshotUpdate];
      v6 = v7;
    }
  }
}

- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v7 = sub_215A6FA10();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215A6F9C0();
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = self;
  sub_215A11D58(v11);

  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);
  sub_2159F7DA8(0, &qword_27CA7E2B0);
  v13 = sub_215A705D0();

  return v13;
}

- (id)collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6
{
  v8 = sub_215A6FA10();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215A6F9C0();
  v12 = a3;
  swift_unknownObjectRetain();
  v13 = self;
  sub_215A11EA4();

  swift_unknownObjectRelease();
  (*(v9 + 8))(v11, v8);
  sub_2159F7DA8(0, &qword_27CA7E2B0);
  v14 = sub_215A705D0();

  return v14;
}

- (void)collectionView:(id)a3 dragSessionWillBegin:(id)a4
{
  v4 = [objc_opt_self() sharedLogger];
  if (v4)
  {
    v5 = v4;
    [v4 didStartDragWithDragContentType_];
  }
}

- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7DF78);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  if (a5)
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

  v14 = a3;
  swift_unknownObjectRetain();
  v15 = self;
  v16 = sub_215A11F60(a4, v11);

  swift_unknownObjectRelease();
  sub_21583F14C(v11, &qword_27CA7DF78);

  return v16;
}

- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_215A121BC(a4);

  swift_unknownObjectRelease();
}

@end