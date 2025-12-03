@interface AppStoreContentViewController
- (UIScrollView)scrollView;
- (_TtC12GameCenterUI18BootstrapPresenter)bootstrapPresenter;
- (void)setBootstrapPresenter:(id)presenter;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AppStoreContentViewController

- (_TtC12GameCenterUI18BootstrapPresenter)bootstrapPresenter
{
  v2 = sub_24E122CE8();

  return v2;
}

- (void)setBootstrapPresenter:(id)presenter
{
  presenterCopy = presenter;
  selfCopy = self;
  sub_24E122D74(presenter);
}

- (UIScrollView)scrollView
{
  v2 = sub_24E122DBC();

  return v2;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_24E122FDC();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_24E1232FC(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_24E1233F0(disappear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_24E12358C();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_24E123690(change);
}

@end