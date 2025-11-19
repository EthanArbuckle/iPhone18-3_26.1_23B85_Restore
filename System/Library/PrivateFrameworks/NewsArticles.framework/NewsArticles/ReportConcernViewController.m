@interface ReportConcernViewController
- (_TtC12NewsArticles27ReportConcernViewController)initWithCoder:(id)a3;
- (_TtC12NewsArticles27ReportConcernViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dismissVC;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ReportConcernViewController

- (_TtC12NewsArticles27ReportConcernViewController)initWithCoder:(id)a3
{
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (_TtC12NewsArticles27ReportConcernViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D7AAD108();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1D7AAD468();
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(ReportConcernViewController *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  sub_1D7AADD58();
}

- (void)dismissVC
{
  v2 = self;
  sub_1D7AAD868();
}

@end