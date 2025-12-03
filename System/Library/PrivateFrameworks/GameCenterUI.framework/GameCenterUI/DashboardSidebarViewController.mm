@interface DashboardSidebarViewController
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (UICollectionViewCompositionalLayout)compositionalLayout;
- (_TtC12GameCenterUI13BasePresenter)dataPresenter;
- (_TtC12GameCenterUI18BootstrapPresenter)bootstrapPresenter;
- (_TtC12GameCenterUI25DashboardSidebarPresenter)sidebarPresenter;
- (_TtC12GameCenterUI30DashboardSidebarViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)dismissHandler;
- (id)makeLayout;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path;
- (void)setBootstrapPresenter:(id)presenter;
- (void)setCompositionalLayout:(id)layout;
- (void)setDismissHandler:(id)handler;
- (void)setSelectionFollowsFocus:(BOOL)focus;
- (void)updateBackgroundFor:(int64_t)for;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation DashboardSidebarViewController

- (id)dismissHandler
{
  v2 = DashboardSidebarViewController.dismissHandler.getter();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_24E00B24C;
    v6[3] = &block_descriptor_41;
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
  DashboardSidebarViewController.dismissHandler.setter(v4, v5);
}

- (void)setSelectionFollowsFocus:(BOOL)focus
{
  selfCopy = self;
  sub_24DFB9AD8(focus);
}

- (_TtC12GameCenterUI18BootstrapPresenter)bootstrapPresenter
{
  v2 = sub_24DFB9C6C();

  return v2;
}

- (void)setBootstrapPresenter:(id)presenter
{
  presenterCopy = presenter;
  selfCopy = self;
  sub_24DFB9CF8(presenter);
}

- (_TtC12GameCenterUI25DashboardSidebarPresenter)sidebarPresenter
{
  v2 = sub_24DFB9D38();

  return v2;
}

- (_TtC12GameCenterUI13BasePresenter)dataPresenter
{
  selfCopy = self;
  v3 = sub_24DFB9D8C();

  return v3;
}

- (UICollectionViewCompositionalLayout)compositionalLayout
{
  v2 = sub_24DFB9E04();

  return v2;
}

- (void)setCompositionalLayout:(id)layout
{
  layoutCopy = layout;
  selfCopy = self;
  sub_24DFB9E90(layout);
}

- (void)viewDidLoad
{
  selfCopy = self;
  DashboardSidebarViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  DashboardSidebarViewController.viewWillAppear(_:)(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  DashboardSidebarViewController.viewWillDisappear(_:)(disappear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  DashboardSidebarViewController.viewDidAppear(_:)(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  DashboardSidebarViewController.viewDidDisappear(_:)(disappear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  DashboardSidebarViewController.viewWillLayoutSubviews()();
}

- (void)updateBackgroundFor:(int64_t)for
{
  selfCopy = self;
  sub_24DFBC038(for);
}

- (id)makeLayout
{
  selfCopy = self;
  sub_24DFBCEB8();
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
  DashboardSidebarViewController.collectionView(_:shouldHighlightItemAt:)();
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
  DashboardSidebarViewController.collectionView(_:didSelectItemAt:)();

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
  DashboardSidebarViewController.collectionView(_:willDisplaySupplementaryView:forElementKind:at:)();

  (*(v10 + 8))(v12, v9);
}

- (_TtC12GameCenterUI30DashboardSidebarViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_24E347CF8();
  }

  bundleCopy = bundle;
  DashboardSidebarViewController.init(nibName:bundle:)();
}

@end