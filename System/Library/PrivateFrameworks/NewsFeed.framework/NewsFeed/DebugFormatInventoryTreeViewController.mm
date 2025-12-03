@interface DebugFormatInventoryTreeViewController
- (_TtC8NewsFeed38DebugFormatInventoryTreeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)doVersionsWithSender:(id)sender;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatInventoryTreeViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D6C83684();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  [(DebugFormatInventoryTreeViewController *)&v9 viewWillAppear:appearCopy];
  navigationController = [v4 navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    [navigationController setToolbarHidden:0 animated:0];
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
  [(DebugFormatInventoryTreeViewController *)&v15 viewWillLayoutSubviews];
  v3 = sub_1D6C828A8();
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

- (void)doVersionsWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1D6C845F0(senderCopy);
}

- (_TtC8NewsFeed38DebugFormatInventoryTreeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1D6C8484C(controllerCopy);
}

@end