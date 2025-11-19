@interface DebugFormatLayoutTreeViewController
- (_TtC8NewsFeed35DebugFormatLayoutTreeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didTapOnOverlay:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatLayoutTreeViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1D6B5D408();
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(DebugFormatLayoutTreeViewController *)&v15 viewWillLayoutSubviews];
  v3 = sub_1D6B5BC18();
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

- (void)didTapOnOverlay:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D6B5DC3C(v4);
}

- (_TtC8NewsFeed35DebugFormatLayoutTreeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end