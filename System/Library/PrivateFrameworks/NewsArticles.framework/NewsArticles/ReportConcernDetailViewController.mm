@interface ReportConcernDetailViewController
- (_TtC12NewsArticles33ReportConcernDetailViewController)initWithCoder:(id)a3;
- (_TtC12NewsArticles33ReportConcernDetailViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)send;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ReportConcernDetailViewController

- (_TtC12NewsArticles33ReportConcernDetailViewController)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC12NewsArticles33ReportConcernDetailViewController_selectedItemIndexPath;
  v5 = sub_1D7D283FC();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles33ReportConcernDetailViewController____lazy_storage___sendButton) = 0;
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (_TtC12NewsArticles33ReportConcernDetailViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D7A1135C();
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(ReportConcernDetailViewController *)&v15 viewWillLayoutSubviews];
  v3 = [*&v2[OBJC_IVAR____TtC12NewsArticles33ReportConcernDetailViewController_blueprintViewController] view];
  if (v3)
  {
    v4 = v3;
    v5 = [v2 view];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      [v4 setFrame_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(ReportConcernDetailViewController *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  sub_1D7A138B8();
}

- (void)send
{
  v2 = self;
  sub_1D7A117DC();
}

@end