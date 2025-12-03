@interface SFBrowsingAssistantCollection
- (BOOL)collectionView:(id)view canPerformPrimaryActionForItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (SFBrowsingAssistantCollection)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath;
- (void)cardItemDidUpdate:(id)update;
- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path;
- (void)listCellDidDeleteCell:(id)cell;
- (void)listCellDidInsertCell:(id)cell;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SFBrowsingAssistantCollection

- (void)viewDidLoad
{
  selfCopy = self;
  sub_18BA09250();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_18BA09AA4();
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  selfCopy = self;
  sub_18BA09BFC(editing, animated);
}

- (SFBrowsingAssistantCollection)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  v6 = sub_18BC1EDD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_18BC1ED68();
  v13 = [(SFBrowsingAssistantCollection *)selfCopy collectionView:viewCopy canPerformPrimaryActionForItemAtIndexPath:v12];

  (*(v7 + 8))(v9, v6);
  return v13;
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
  LOBYTE(self) = sub_18BA0D428(viewCopy);

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  v4 = sub_18BC1EDD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  (*(v5 + 8))(v7, v4);
  return 0;
}

- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path
{
  v6 = sub_18BC1EDD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  viewCopy = view;
  selfCopy = self;
  sub_18BA0D6F4(viewCopy);

  (*(v7 + 8))(v9, v6);
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
  sub_18BA0DA40(v16, v10, v19);

  v22 = *(v8 + 8);
  v22(v10, v7);
  v22(v13, v7);
  v22(v16, v7);
  v23 = sub_18BC1ED68();
  v22(v19, v7);

  return v23;
}

- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path
{
  v9 = sub_18BC1EDD8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_18BC20BD8();
  v15 = v14;
  sub_18BC1ED88();
  viewCopy = view;
  supplementaryViewCopy = supplementaryView;
  selfCopy = self;
  sub_18BA10E98(v13, v15);

  (*(v10 + 8))(v12, v9);
}

- (void)cardItemDidUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  sub_18BA0E360(updateCopy);
}

- (void)listCellDidDeleteCell:(id)cell
{
  cellCopy = cell;
  selfCopy = self;
  sub_18BA0EA3C(cellCopy);
}

- (void)listCellDidInsertCell:(id)cell
{
  cellCopy = cell;
  selfCopy = self;
  sub_18BA0EDC8(cellCopy);
}

@end