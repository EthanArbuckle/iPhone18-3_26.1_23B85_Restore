@interface FriendsListViewController
- (NSDirectionalEdgeInsets)collectionViewFrameInsets;
- (_TtC12GameCenterUI13BasePresenter)dataPresenter;
- (id)makeLayout;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)didDismissSearchController:(id)controller;
- (void)setDataPresenter:(id)presenter;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation FriendsListViewController

- (_TtC12GameCenterUI13BasePresenter)dataPresenter
{
  v2 = sub_24E2898A0();

  return v2;
}

- (void)setDataPresenter:(id)presenter
{
  presenterCopy = presenter;
  selfCopy = self;
  sub_24E28990C(presenterCopy);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_24E289A9C();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_24E289B48(appear);
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
  selfCopy = self;
  sub_24E28A8F4();
  v4 = v3;

  return v4;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = sub_24E343518();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_24E28B248();

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = sub_24E343518();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_24E28B8BC(viewCopy, cellCopy);

  (*(v9 + 8))(v11, v8);
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_24E28BAB4(controllerCopy);
}

- (void)didDismissSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_24E28BB90();
}

@end