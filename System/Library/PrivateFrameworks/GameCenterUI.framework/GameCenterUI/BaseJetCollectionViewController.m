@interface BaseJetCollectionViewController
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (NSDirectionalEdgeInsets)collectionViewFrameInsets;
- (UICollectionViewCompositionalLayout)compositionalLayout;
- (_TtC12GameCenterUI13BasePresenter)dataPresenter;
- (_TtC12GameCenterUI18BootstrapPresenter)bootstrapPresenter;
- (_TtC12GameCenterUI31BaseJetCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)dismissHandler;
- (id)makeLayout;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6;
- (void)didReceiveMemoryWarning;
- (void)scrollViewDidScroll:(id)a3;
- (void)setBootstrapPresenter:(id)a3;
- (void)setCompositionalLayout:(id)a3;
- (void)setDismissHandler:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation BaseJetCollectionViewController

- (id)dismissHandler
{
  v2 = sub_24E136330();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_24E00B24C;
    v6[3] = &block_descriptor_59;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDismissHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_24DFA0D08;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_24E13638C(v4, v5);
}

- (_TtC12GameCenterUI18BootstrapPresenter)bootstrapPresenter
{
  v2 = sub_24E13644C();

  return v2;
}

- (void)setBootstrapPresenter:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E13647C(a3);
}

- (_TtC12GameCenterUI13BasePresenter)dataPresenter
{
  v2 = self;
  v3 = sub_24E137E60();

  return v3;
}

- (UICollectionViewCompositionalLayout)compositionalLayout
{
  v2 = sub_24E136488();

  return v2;
}

- (void)setCompositionalLayout:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E1364B8(a3);
}

- (NSDirectionalEdgeInsets)collectionViewFrameInsets
{
  v2 = sub_24E1384F4();
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_24E138520(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_24E138668(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_24E1387BC(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_24E138984(a3);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_24E138B00();
}

- (void)didReceiveMemoryWarning
{
  v2 = self;
  sub_24E138C38();
}

- (id)makeLayout
{
  v2 = self;
  sub_24E1364D4();
  v4 = v3;

  return v4;
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v6 = sub_24E343518();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  v10 = a3;
  v11 = self;
  sub_24E1399DC();
  LOBYTE(self) = v12;

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_24E343518();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  v10 = a3;
  v11 = self;
  sub_24E139DD0();

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6
{
  v9 = sub_24E343518();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E347CF8();
  sub_24E343498();
  v13 = a3;
  v14 = a4;
  v15 = self;
  sub_24E13A3E4();

  (*(v10 + 8))(v12, v9);
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E13A9A8(v4);
}

- (_TtC12GameCenterUI31BaseJetCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_24E347CF8();
  }

  v5 = a4;
  BaseJetCollectionViewController.init(nibName:bundle:)();
}

@end