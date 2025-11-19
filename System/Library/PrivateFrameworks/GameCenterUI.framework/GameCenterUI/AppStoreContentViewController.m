@interface AppStoreContentViewController
- (UIScrollView)scrollView;
- (_TtC12GameCenterUI18BootstrapPresenter)bootstrapPresenter;
- (void)setBootstrapPresenter:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation AppStoreContentViewController

- (_TtC12GameCenterUI18BootstrapPresenter)bootstrapPresenter
{
  v2 = sub_24E122CE8();

  return v2;
}

- (void)setBootstrapPresenter:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E122D74(a3);
}

- (UIScrollView)scrollView
{
  v2 = sub_24E122DBC();

  return v2;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_24E122FDC();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_24E1232FC(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_24E1233F0(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_24E12358C();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E123690(a3);
}

@end