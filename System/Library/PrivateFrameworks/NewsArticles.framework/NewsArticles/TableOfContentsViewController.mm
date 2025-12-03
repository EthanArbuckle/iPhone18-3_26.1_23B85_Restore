@interface TableOfContentsViewController
- (_TtC12NewsArticles29TableOfContentsViewController)initWithCoder:(id)coder;
- (_TtC12NewsArticles29TableOfContentsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation TableOfContentsViewController

- (_TtC12NewsArticles29TableOfContentsViewController)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles29TableOfContentsViewController_pageIdentifierToDisplay);
  *v3 = 0;
  v3[1] = 0;
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (_TtC12NewsArticles29TableOfContentsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D7AB2540();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1D7AB2810();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TableOfContentsViewController *)&v5 viewWillAppear:appearCopy];
  sub_1D7D2C43C();
  sub_1D7D2A4AC();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(TableOfContentsViewController *)&v4 viewDidAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TableOfContentsViewController *)&v5 viewWillDisappear:disappearCopy];
  sub_1D7D2A4EC();
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(TableOfContentsViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_1D7AB34BC();
}

@end