@interface FriendsListViewController
- (NSDirectionalEdgeInsets)collectionViewFrameInsets;
- (_TtC12GameCenterUI13BasePresenter)dataPresenter;
- (id)makeLayout;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)didDismissSearchController:(id)a3;
- (void)setDataPresenter:(id)a3;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation FriendsListViewController

- (_TtC12GameCenterUI13BasePresenter)dataPresenter
{
  v2 = sub_24E2898A0();

  return v2;
}

- (void)setDataPresenter:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E28990C(v4);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_24E289A9C();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_24E289B48(a3);
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

- (id)makeLayout
{
  v2 = self;
  sub_24E28A8F4();
  v4 = v3;

  return v4;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = sub_24E343518();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_24E28B248();

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = sub_24E343518();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_24E28B8BC(v12, v13);

  (*(v9 + 8))(v11, v8);
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E28BAB4(v4);
}

- (void)didDismissSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E28BB90();
}

@end