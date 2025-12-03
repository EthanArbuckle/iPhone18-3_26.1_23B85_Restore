@interface DebugFormatWorkspaceTreeViewController
- (_TtC8NewsFeed38DebugFormatWorkspaceTreeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)doConfigure;
- (void)doExport;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatWorkspaceTreeViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D61D7320();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  [(DebugFormatWorkspaceTreeViewController *)&v9 viewWillAppear:appearCopy];
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
  [(DebugFormatWorkspaceTreeViewController *)&v15 viewWillLayoutSubviews];
  v3 = sub_1D61D4F20();
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

- (void)doExport
{
  selfCopy = self;
  sub_1D61D7BCC();
}

- (void)doConfigure
{
  selfCopy = self;
  sub_1D61D8198();
}

- (_TtC8NewsFeed38DebugFormatWorkspaceTreeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1D61DBC04(controllerCopy);
}

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  sub_1D61DE938(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - v8;
  sub_1D72585BC();
  v10 = sub_1D726267C();
  v11 = sub_1D726294C();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_1D726290C();
  pickerCopy = picker;
  selfCopy = self;
  v14 = pickerCopy;
  v15 = sub_1D72628FC();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v10;
  v16[5] = selfCopy;
  v16[6] = v14;
  sub_1D6BD1334(0, 0, v9, &unk_1D72AD220, v16);
}

@end