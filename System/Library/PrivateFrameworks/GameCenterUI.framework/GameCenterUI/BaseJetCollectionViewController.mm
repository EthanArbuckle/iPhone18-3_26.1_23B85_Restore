@interface BaseJetCollectionViewController
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (NSDirectionalEdgeInsets)collectionViewFrameInsets;
- (UICollectionViewCompositionalLayout)compositionalLayout;
- (_TtC12GameCenterUI13BasePresenter)dataPresenter;
- (_TtC12GameCenterUI18BootstrapPresenter)bootstrapPresenter;
- (_TtC12GameCenterUI31BaseJetCollectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)dismissHandler;
- (id)makeLayout;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path;
- (void)didReceiveMemoryWarning;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setBootstrapPresenter:(id)presenter;
- (void)setCompositionalLayout:(id)layout;
- (void)setDismissHandler:(id)handler;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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

- (void)setDismissHandler:(id)handler
{
  v4 = _Block_copy(handler);
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

  selfCopy = self;
  sub_24E13638C(v4, v5);
}

- (_TtC12GameCenterUI18BootstrapPresenter)bootstrapPresenter
{
  v2 = sub_24E13644C();

  return v2;
}

- (void)setBootstrapPresenter:(id)presenter
{
  presenterCopy = presenter;
  selfCopy = self;
  sub_24E13647C(presenter);
}

- (_TtC12GameCenterUI13BasePresenter)dataPresenter
{
  selfCopy = self;
  v3 = sub_24E137E60();

  return v3;
}

- (UICollectionViewCompositionalLayout)compositionalLayout
{
  v2 = sub_24E136488();

  return v2;
}

- (void)setCompositionalLayout:(id)layout
{
  layoutCopy = layout;
  selfCopy = self;
  sub_24E1364B8(layout);
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

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_24E138520(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_24E138668(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_24E1387BC(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_24E138984(disappear);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_24E138B00();
}

- (void)didReceiveMemoryWarning
{
  selfCopy = self;
  sub_24E138C38();
}

- (id)makeLayout
{
  selfCopy = self;
  sub_24E1364D4();
  v4 = v3;

  return v4;
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  v6 = sub_24E343518();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  viewCopy = view;
  selfCopy = self;
  sub_24E1399DC();
  LOBYTE(self) = v12;

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_24E343518();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  viewCopy = view;
  selfCopy = self;
  sub_24E139DD0();

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path
{
  v9 = sub_24E343518();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E347CF8();
  sub_24E343498();
  viewCopy = view;
  supplementaryViewCopy = supplementaryView;
  selfCopy = self;
  sub_24E13A3E4();

  (*(v10 + 8))(v12, v9);
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_24E13A9A8(scrollCopy);
}

- (_TtC12GameCenterUI31BaseJetCollectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_24E347CF8();
  }

  bundleCopy = bundle;
  BaseJetCollectionViewController.init(nibName:bundle:)();
}

@end