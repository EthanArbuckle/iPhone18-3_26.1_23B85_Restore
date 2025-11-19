@interface SFBrowsingAssistantCollection
- (BOOL)collectionView:(id)a3 canPerformPrimaryActionForItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (SFBrowsingAssistantCollection)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6;
- (void)cardItemDidUpdate:(id)a3;
- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6;
- (void)listCellDidDeleteCell:(id)a3;
- (void)listCellDidInsertCell:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SFBrowsingAssistantCollection

- (void)viewDidLoad
{
  v2 = self;
  sub_18BA09250();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_18BA09AA4();
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_18BA09BFC(a3, a4);
}

- (SFBrowsingAssistantCollection)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v6 = sub_18BC1EDD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  v10 = a3;
  v11 = self;
  v12 = sub_18BC1ED68();
  v13 = [(SFBrowsingAssistantCollection *)v11 collectionView:v10 canPerformPrimaryActionForItemAtIndexPath:v12];

  (*(v7 + 8))(v9, v6);
  return v13;
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
  LOBYTE(self) = sub_18BA0D428(v10);

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v4 = sub_18BC1EDD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  (*(v5 + 8))(v7, v4);
  return 0;
}

- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4
{
  v6 = sub_18BC1EDD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  v10 = a3;
  v11 = self;
  sub_18BA0D6F4(v10);

  (*(v7 + 8))(v9, v6);
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
  sub_18BA0DA40(v16, v10, v19);

  v22 = *(v8 + 8);
  v22(v10, v7);
  v22(v13, v7);
  v22(v16, v7);
  v23 = sub_18BC1ED68();
  v22(v19, v7);

  return v23;
}

- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6
{
  v9 = sub_18BC1EDD8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_18BC20BD8();
  v15 = v14;
  sub_18BC1ED88();
  v16 = a3;
  v17 = a4;
  v18 = self;
  sub_18BA10E98(v13, v15);

  (*(v10 + 8))(v12, v9);
}

- (void)cardItemDidUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_18BA0E360(v4);
}

- (void)listCellDidDeleteCell:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_18BA0EA3C(v4);
}

- (void)listCellDidInsertCell:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_18BA0EDC8(v4);
}

@end