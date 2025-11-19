@interface PriorityMessageListViewController
- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 selectionFollowsFocusForItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (_TtC6MailUI33PriorityMessageListViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6;
- (void)hostingSceneDidBecomeActive:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PriorityMessageListViewController

- (void)viewDidLoad
{
  MEMORY[0x277D82BE0](self);
  sub_214C97F4C();
  MEMORY[0x277D82BD8](self);
}

- (void)viewDidAppear:(BOOL)a3
{
  MEMORY[0x277D82BE0](self);
  v3 = sub_214CCD394();
  sub_214C9987C(v3 & 1);
  MEMORY[0x277D82BD8](self);
}

- (void)viewDidDisappear:(BOOL)a3
{
  MEMORY[0x277D82BE0](self);
  v3 = sub_214CCD394();
  sub_214C99AB4(v3 & 1);
  MEMORY[0x277D82BD8](self);
}

- (_TtC6MailUI33PriorityMessageListViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  if (a3)
  {
    v6 = sub_214CCF564();
    v7 = v4;
    MEMORY[0x277D82BD8](a3);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return PriorityMessageListViewController.init(nibName:bundle:)(v8, v9, a4);
}

- (void)hostingSceneDidBecomeActive:(id)a3
{
  v12 = self;
  v11 = a3;
  v10 = sub_214CCCE94();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v9 = &v5 - v6;
  MEMORY[0x277D82BE0](v4);
  MEMORY[0x277D82BE0](self);
  sub_214CCCE74();
  sub_214C9D570(v9);
  (*(v7 + 8))(v9, v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
}

- (BOOL)collectionView:(id)a3 selectionFollowsFocusForItemAtIndexPath:(id)a4
{
  v14 = self;
  v15 = a3;
  v13 = a4;
  v11 = sub_214CCD374();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v8 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v12 = &v7 - v8;
  MEMORY[0x277D82BE0](v5);
  MEMORY[0x277D82BE0](v13);
  MEMORY[0x277D82BE0](self);
  sub_214CCD324();
  v16 = PriorityMessageListViewController.collectionView(_:selectionFollowsFocusForItemAt:)();
  (*(v9 + 8))(v12, v11);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  return sub_214CCD384() & 1;
}

- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4
{
  v14 = self;
  v15 = a3;
  v13 = a4;
  v11 = sub_214CCD374();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v8 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v12 = &v7 - v8;
  MEMORY[0x277D82BE0](v5);
  MEMORY[0x277D82BE0](v13);
  MEMORY[0x277D82BE0](self);
  sub_214CCD324();
  v16 = PriorityMessageListViewController.collectionView(_:canFocusItemAt:)();
  (*(v9 + 8))(v12, v11);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  return sub_214CCD384() & 1;
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v14 = self;
  v15 = a3;
  v13 = a4;
  v11 = sub_214CCD374();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v8 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v12 = &v7 - v8;
  MEMORY[0x277D82BE0](v5);
  MEMORY[0x277D82BE0](v13);
  MEMORY[0x277D82BE0](self);
  sub_214CCD324();
  v16 = PriorityMessageListViewController.collectionView(_:shouldHighlightItemAt:)();
  (*(v9 + 8))(v12, v11);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  return sub_214CCD384() & 1;
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v14 = self;
  v15 = a3;
  v13 = a4;
  v11 = sub_214CCD374();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v8 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v12 = &v7 - v8;
  MEMORY[0x277D82BE0](v5);
  MEMORY[0x277D82BE0](v13);
  MEMORY[0x277D82BE0](self);
  sub_214CCD324();
  v16 = PriorityMessageListViewController.collectionView(_:shouldSelectItemAt:)();
  (*(v9 + 8))(v12, v11);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  return sub_214CCD384() & 1;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v12 = self;
  v13 = a3;
  v11 = a4;
  v10 = sub_214CCD374();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v9 = &v6 - v6;
  MEMORY[0x277D82BE0](v5);
  MEMORY[0x277D82BE0](v11);
  MEMORY[0x277D82BE0](self);
  sub_214CCD324();
  PriorityMessageListViewController.collectionView(_:didSelectItemAt:)(v13, v9);
  (*(v7 + 8))(v9, v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
}

- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6
{
  v18 = self;
  v20 = a3;
  v19 = a4;
  v17 = a5;
  v15 = a6;
  v14 = sub_214CCD374();
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v9 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20);
  v13 = &v9 - v9;
  MEMORY[0x277D82BE0](v7);
  MEMORY[0x277D82BE0](v19);
  MEMORY[0x277D82BE0](v17);
  MEMORY[0x277D82BE0](v15);
  MEMORY[0x277D82BE0](self);
  v10 = sub_214CCF564();
  v16 = v8;
  sub_214CCD324();
  PriorityMessageListViewController.collectionView(_:willDisplaySupplementaryView:forElementKind:at:)(v20, v19, v10, v16);
  (*(v11 + 8))(v13, v14);
  MEMORY[0x277D82BD8](v15);

  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
}

@end