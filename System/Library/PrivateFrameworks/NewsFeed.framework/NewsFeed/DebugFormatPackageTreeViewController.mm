@interface DebugFormatPackageTreeViewController
- (_TtC8NewsFeed36DebugFormatPackageTreeViewController)initWithCoder:(id)coder;
- (_TtC8NewsFeed36DebugFormatPackageTreeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatPackageTreeViewController

- (_TtC8NewsFeed36DebugFormatPackageTreeViewController)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8NewsFeed36DebugFormatPackageTreeViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v5 = swift_allocObject();
  *(v5 + 2) = 0;
  *(&self->super.super.super.isa + v4) = v5;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed36DebugFormatPackageTreeViewController____lazy_storage___hostingController) = 0;
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D7143C18();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  [(DebugFormatPackageTreeViewController *)&v9 viewWillAppear:appearCopy];
  navigationController = [v4 navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    [navigationController setToolbarHidden:0 animated:appearCopy];
  }

  navigationController2 = [v4 navigationController];
  toolbar = [navigationController2 toolbar];

  sub_1D71CD8F4(toolbar);
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(DebugFormatPackageTreeViewController *)&v15 viewWillLayoutSubviews];
  v3 = sub_1D7142EE4();
  view = [v3 view];

  if (view)
  {
    view2 = [v2 view];
    if (view2)
    {
      v6 = view2;
      [view2 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      [view setFrame_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (_TtC8NewsFeed36DebugFormatPackageTreeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end