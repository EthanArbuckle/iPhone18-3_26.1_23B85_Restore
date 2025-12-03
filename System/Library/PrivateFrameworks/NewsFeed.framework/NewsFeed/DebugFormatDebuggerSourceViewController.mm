@interface DebugFormatDebuggerSourceViewController
- (_TtC8NewsFeed39DebugFormatDebuggerSourceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)scrollViewDidScroll:(id)scroll;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatDebuggerSourceViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D691A074();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(DebugFormatDebuggerSourceViewController *)&v8 viewWillAppear:appearCopy];
  v5 = sub_1D7262FBC();
  if (v5)
  {

    navigationController = [v4 navigationController];
    if (navigationController)
    {
      v7 = navigationController;
      [navigationController setToolbarHidden:0 animated:0];
    }
  }
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1D691A914();
}

- (_TtC8NewsFeed39DebugFormatDebuggerSourceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_1D691ADF0(scrollCopy);
}

@end