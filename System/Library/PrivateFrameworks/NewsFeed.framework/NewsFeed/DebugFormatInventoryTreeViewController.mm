@interface DebugFormatInventoryTreeViewController
- (_TtC8NewsFeed38DebugFormatInventoryTreeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)doVersionsWithSender:(id)a3;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatInventoryTreeViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1D6C83684();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  [(DebugFormatInventoryTreeViewController *)&v9 viewWillAppear:v3];
  v5 = [v4 navigationController];
  if (v5)
  {
    v6 = v5;
    [v5 setToolbarHidden:0 animated:0];
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
  [(DebugFormatInventoryTreeViewController *)&v15 viewWillLayoutSubviews];
  v3 = sub_1D6C828A8();
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

- (void)doVersionsWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D6C845F0(v4);
}

- (_TtC8NewsFeed38DebugFormatInventoryTreeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D6C8484C(v4);
}

@end