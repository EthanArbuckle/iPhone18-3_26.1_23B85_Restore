@interface ANFIssueTableOfContentsViewController
- (_TtC12NewsArticles37ANFIssueTableOfContentsViewController)initWithCoder:(id)a3;
- (_TtC12NewsArticles37ANFIssueTableOfContentsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ANFIssueTableOfContentsViewController

- (_TtC12NewsArticles37ANFIssueTableOfContentsViewController)initWithCoder:(id)a3
{
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D7A784BC();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(ANFIssueTableOfContentsViewController *)&v5 viewWillAppear:v3];
  sub_1D7D2C43C();
  sub_1D7D2A4AC();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(ANFIssueTableOfContentsViewController *)&v4 viewDidAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(ANFIssueTableOfContentsViewController *)&v5 viewWillDisappear:v3];
  sub_1D7D2A4EC();
}

- (_TtC12NewsArticles37ANFIssueTableOfContentsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end