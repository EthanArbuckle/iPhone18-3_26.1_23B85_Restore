@interface ReportConcernViewController
- (_TtC12NewsArticles27ReportConcernViewController)initWithCoder:(id)coder;
- (_TtC12NewsArticles27ReportConcernViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dismissVC;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ReportConcernViewController

- (_TtC12NewsArticles27ReportConcernViewController)initWithCoder:(id)coder
{
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (_TtC12NewsArticles27ReportConcernViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D7AAD108();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1D7AAD468();
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(ReportConcernViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_1D7AADD58();
}

- (void)dismissVC
{
  selfCopy = self;
  sub_1D7AAD868();
}

@end