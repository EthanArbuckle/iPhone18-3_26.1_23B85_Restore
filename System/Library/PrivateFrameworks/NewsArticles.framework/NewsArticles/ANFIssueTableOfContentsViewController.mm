@interface ANFIssueTableOfContentsViewController
- (_TtC12NewsArticles37ANFIssueTableOfContentsViewController)initWithCoder:(id)coder;
- (_TtC12NewsArticles37ANFIssueTableOfContentsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ANFIssueTableOfContentsViewController

- (_TtC12NewsArticles37ANFIssueTableOfContentsViewController)initWithCoder:(id)coder
{
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D7A784BC();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(ANFIssueTableOfContentsViewController *)&v5 viewWillAppear:appearCopy];
  sub_1D7D2C43C();
  sub_1D7D2A4AC();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(ANFIssueTableOfContentsViewController *)&v4 viewDidAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(ANFIssueTableOfContentsViewController *)&v5 viewWillDisappear:disappearCopy];
  sub_1D7D2A4EC();
}

- (_TtC12NewsArticles37ANFIssueTableOfContentsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end