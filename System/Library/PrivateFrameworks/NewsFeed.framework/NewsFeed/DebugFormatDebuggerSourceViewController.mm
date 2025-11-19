@interface DebugFormatDebuggerSourceViewController
- (_TtC8NewsFeed39DebugFormatDebuggerSourceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatDebuggerSourceViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1D691A074();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(DebugFormatDebuggerSourceViewController *)&v8 viewWillAppear:v3];
  v5 = sub_1D7262FBC();
  if (v5)
  {

    v6 = [v4 navigationController];
    if (v6)
    {
      v7 = v6;
      [v6 setToolbarHidden:0 animated:0];
    }
  }
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1D691A914();
}

- (_TtC8NewsFeed39DebugFormatDebuggerSourceViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D691ADF0(v4);
}

@end