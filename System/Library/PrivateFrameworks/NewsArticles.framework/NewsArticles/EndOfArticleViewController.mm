@interface EndOfArticleViewController
- (BOOL)shouldUpdateFocusInContext:(id)context;
- (_TtC12NewsArticles26EndOfArticleViewController)initWithCoder:(id)coder;
- (_TtC12NewsArticles26EndOfArticleViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)sectionItemHeightForSize:(CGSize)size traitCollection:(id)collection;
- (void)dealloc;
- (void)deselect;
- (void)smartInvertStatusDidChange;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation EndOfArticleViewController

- (_TtC12NewsArticles26EndOfArticleViewController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_gutterViewController) = 0;
  v4 = OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_overscrollBackgroundView;
  *(self + v4) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter removeObserver:selfCopy name:*MEMORY[0x1E69DD8D8] object:0];

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(EndOfArticleViewController *)&v7 dealloc];
}

- (_TtC12NewsArticles26EndOfArticleViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  EndOfArticleViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(EndOfArticleViewController *)&v7 viewDidAppear:appearCopy];
  v5 = *(*&v4[OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_eventHandler] + 40);
  ObjectType = swift_getObjectType();
  (*(v5 + 48))(ObjectType, v5);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  ObjectType = swift_getObjectType();
  v6 = sub_1D7D2B6DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.receiver = self;
  v12.super_class = ObjectType;
  selfCopy = self;
  [(EndOfArticleViewController *)&v12 viewDidDisappear:disappearCopy];
  (*(v7 + 104))(v10, *MEMORY[0x1E69D81C8], v6);
  sub_1D7D2B2EC();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  EndOfArticleViewController.viewWillLayoutSubviews()();
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  changeCopy = change;
  [(EndOfArticleViewController *)&v9 traitCollectionDidChange:changeCopy];
  v6 = *&v4[OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_overriddenTraitCollection];
  if (v6)
  {
    traitCollection = *&v4[OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_overriddenTraitCollection];
  }

  else
  {
    traitCollection = [v4 traitCollection];
    v6 = 0;
  }

  v8 = v6;
  sub_1D7B18B28();
}

- (BOOL)shouldUpdateFocusInContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  LOBYTE(self) = EndOfArticleViewController.shouldUpdateFocus(in:)(contextCopy);

  return self & 1;
}

- (void)smartInvertStatusDidChange
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  traitCollection = [(EndOfArticleViewController *)selfCopy traitCollection];
  v9.receiver = selfCopy;
  v9.super_class = ObjectType;
  [(EndOfArticleViewController *)&v9 traitCollectionDidChange:traitCollection];
  v6 = *(selfCopy + OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_overriddenTraitCollection);
  if (v6)
  {
    traitCollection2 = *(selfCopy + OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_overriddenTraitCollection);
  }

  else
  {
    traitCollection2 = [(EndOfArticleViewController *)selfCopy traitCollection];
    v6 = 0;
  }

  v8 = v6;
  sub_1D7B18B28();
}

- (void)deselect
{
  selfCopy = self;
  sub_1D7D2B2CC();
  v2 = sub_1D7D2AF0C();

  [v2 selectItemAtIndexPath:0 animated:0 scrollPosition:0];
}

- (double)sectionItemHeightForSize:(CGSize)size traitCollection:(id)collection
{
  selfCopy = self;
  sub_1D7D2B2CC();
  v5 = sub_1D7D2AF0C();

  collectionViewLayout = [v5 collectionViewLayout];

  [collectionViewLayout collectionViewContentSize];
  v8 = v7;

  return fmax(v8, 1.0);
}

@end