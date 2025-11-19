@interface DebugFormatPackageTreeViewController
- (_TtC8NewsFeed36DebugFormatPackageTreeViewController)initWithCoder:(id)a3;
- (_TtC8NewsFeed36DebugFormatPackageTreeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatPackageTreeViewController

- (_TtC8NewsFeed36DebugFormatPackageTreeViewController)initWithCoder:(id)a3
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
  v2 = self;
  sub_1D7143C18();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  [(DebugFormatPackageTreeViewController *)&v9 viewWillAppear:v3];
  v5 = [v4 navigationController];
  if (v5)
  {
    v6 = v5;
    [v5 setToolbarHidden:0 animated:v3];
  }

  v7 = [v4 navigationController];
  v8 = [v7 toolbar];

  sub_1D71CD8F4(v8);
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(DebugFormatPackageTreeViewController *)&v15 viewWillLayoutSubviews];
  v3 = sub_1D7142EE4();
  v4 = [v3 view];

  if (v4)
  {
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

- (_TtC8NewsFeed36DebugFormatPackageTreeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end