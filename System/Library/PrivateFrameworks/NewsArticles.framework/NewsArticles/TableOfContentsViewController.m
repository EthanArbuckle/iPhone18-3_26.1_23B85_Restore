@interface TableOfContentsViewController
- (_TtC12NewsArticles29TableOfContentsViewController)initWithCoder:(id)a3;
- (_TtC12NewsArticles29TableOfContentsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation TableOfContentsViewController

- (_TtC12NewsArticles29TableOfContentsViewController)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles29TableOfContentsViewController_pageIdentifierToDisplay);
  *v3 = 0;
  v3[1] = 0;
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (_TtC12NewsArticles29TableOfContentsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D7AB2540();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1D7AB2810();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TableOfContentsViewController *)&v5 viewWillAppear:v3];
  sub_1D7D2C43C();
  sub_1D7D2A4AC();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(TableOfContentsViewController *)&v4 viewDidAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TableOfContentsViewController *)&v5 viewWillDisappear:v3];
  sub_1D7D2A4EC();
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(TableOfContentsViewController *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  sub_1D7AB34BC();
}

@end