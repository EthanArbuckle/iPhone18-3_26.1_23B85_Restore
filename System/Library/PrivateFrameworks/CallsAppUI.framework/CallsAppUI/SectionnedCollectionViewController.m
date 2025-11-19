@interface SectionnedCollectionViewController
- (BOOL)collectionView:(id)a3 shouldBeginMultipleSelectionInteractionAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (NSArray)keyCommands;
- (_TtC10CallsAppUI34SectionnedCollectionViewController)initWithCollectionViewLayout:(id)a3;
- (_TtC10CallsAppUI34SectionnedCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 contextMenuConfiguration:(id)a4 highlightPreviewForItemAtIndexPath:(id)a5;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 dragPreviewParametersForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 dropPreviewParametersForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (void)collectionView:(id)a3 didBeginMultipleSelectionInteractionAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4;
- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5;
- (void)deleteKeyPressed:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SectionnedCollectionViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1CFBA69F0(a3);
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = sub_1CFC9C138();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C0D8();
  v13 = a3;
  v14 = a4;
  v15 = self;
  sub_1CFBCB968(v12);

  (*(v9 + 8))(v12, v8);
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = self;
  sub_1CFBC497C(v5, v4);
}

- (_TtC10CallsAppUI34SectionnedCollectionViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10CallsAppUI34SectionnedCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)collectionView:(id)a3 shouldBeginMultipleSelectionInteractionAtIndexPath:(id)a4
{
  v4 = sub_1CFC9C138();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C0D8();
  (*(v5 + 8))(v8, v4);
  return 1;
}

- (void)collectionView:(id)a3 didBeginMultipleSelectionInteractionAtIndexPath:(id)a4
{
  v6 = sub_1CFC9C138();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1CFC9C0D8();
  v11 = a3;
  v12 = self;
  sub_1CFC9CD28();
  if (v13[15] == 1)
  {
    [(SectionnedCollectionViewController *)v12 setEditing:1 animated:1];
  }

  (*(v7 + 8))(v10, v6);
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v6 = sub_1CFC9C138();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C0D8();
  v11 = a3;
  v12 = self;
  LOBYTE(self) = sub_1CFBCB248();

  (*(v7 + 8))(v10, v6);
  return self & 1;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = sub_1CFC9C138();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C0D8();
  v10 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.isa) + 0x1E8);
  v11 = self;
  v10();
  if ([(SectionnedCollectionViewController *)v11 isEditing])
  {
    sub_1CFC90748();
  }

  (*(v6 + 8))(v9, v5);
}

- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4
{
  v6 = sub_1CFC9C138();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C0D8();
  v11 = a3;
  v12 = self;
  SectionnedCollectionViewController.collectionView(_:performPrimaryActionForItemAt:)(v11, v10);

  (*(v7 + 8))(v10, v6);
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v6 = sub_1CFC9C138();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C0D8();
  v11 = a3;
  v12 = self;
  sub_1CFBCB684();

  (*(v7 + 8))(v10, v6);
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5
{
  sub_1CFC9C138();
  v7 = sub_1CFC9F8A8();
  v8 = a3;
  v9 = self;
  v10 = sub_1CFBCBA2C(v7);

  return v10;
}

- (id)collectionView:(id)a3 contextMenuConfiguration:(id)a4 highlightPreviewForItemAtIndexPath:(id)a5
{
  v8 = sub_1CFC9C138();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C0D8();
  v13 = a3;
  v14 = a4;
  v15 = self;
  v16 = sub_1CFBCBE38(v13);

  (*(v9 + 8))(v12, v8);

  return v16;
}

- (void)collectionView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  sub_1CFBCBF3C(a5);

  swift_unknownObjectRelease();
}

- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v7 = sub_1CFC9C138();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C0D8();
  v12 = a3;
  swift_unknownObjectRetain();
  v13 = self;
  sub_1CFBCC0E8();

  swift_unknownObjectRelease();
  (*(v8 + 8))(v11, v7);
  sub_1CFBA2D80(0, &qword_1EC4ED510, 0x1E69DC990);
  v14 = sub_1CFC9F898();

  return v14;
}

- (id)collectionView:(id)a3 dragPreviewParametersForItemAtIndexPath:(id)a4
{
  v6 = sub_1CFC9C138();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C0D8();
  v11 = a3;
  v12 = self;
  v13 = SectionnedCollectionViewController.collectionView(_:dragPreviewParametersForItemAt:)(v11);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_1CFBCC278(a4);

  swift_unknownObjectRelease();
}

- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED408, &qword_1CFCA22E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v19 - v11;
  if (a5)
  {
    sub_1CFC9C0D8();
    v13 = sub_1CFC9C138();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  }

  else
  {
    v14 = sub_1CFC9C138();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  v15 = a3;
  swift_unknownObjectRetain();
  v16 = self;
  v17 = sub_1CFBCC478(a4, v12);

  swift_unknownObjectRelease();
  sub_1CFBC2FB0(v12, &unk_1EC4ED408, &qword_1CFCA22E0);

  return v17;
}

- (id)collectionView:(id)a3 dropPreviewParametersForItemAtIndexPath:(id)a4
{
  v6 = sub_1CFC9C138();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C0D8();
  v11 = a3;
  v12 = self;
  v13 = sub_1CFC9C0C8();
  v14 = [(SectionnedCollectionViewController *)v12 collectionView:v11 dragPreviewParametersForItemAtIndexPath:v13];

  (*(v7 + 8))(v10, v6);

  return v14;
}

- (NSArray)keyCommands
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1CFCA2540;
  v4 = *MEMORY[0x1E69DDE88];
  v5 = objc_opt_self();
  v6 = self;
  *(v3 + 32) = [v5 keyCommandWithInput:v4 modifierFlags:0 action:sel_deleteKeyPressed_];

  sub_1CFBA2D80(0, &qword_1EC4F0178, 0x1E69DCBA0);
  v7 = sub_1CFC9F898();

  return v7;
}

- (void)deleteKeyPressed:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1CFC92970();
}

@end