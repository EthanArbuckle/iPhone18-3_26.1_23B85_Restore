@interface DebugFormatWorkspaceTreeViewController
- (_TtC8NewsFeed38DebugFormatWorkspaceTreeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)doConfigure;
- (void)doExport;
- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatWorkspaceTreeViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1D61D7320();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  [(DebugFormatWorkspaceTreeViewController *)&v9 viewWillAppear:v3];
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
  [(DebugFormatWorkspaceTreeViewController *)&v15 viewWillLayoutSubviews];
  v3 = sub_1D61D4F20();
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

- (void)doExport
{
  v2 = self;
  sub_1D61D7BCC();
}

- (void)doConfigure
{
  v2 = self;
  sub_1D61D8198();
}

- (_TtC8NewsFeed38DebugFormatWorkspaceTreeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D61DBC04(v4);
}

- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  sub_1D61DE938(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - v8;
  sub_1D72585BC();
  v10 = sub_1D726267C();
  v11 = sub_1D726294C();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_1D726290C();
  v12 = a3;
  v13 = self;
  v14 = v12;
  v15 = sub_1D72628FC();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v10;
  v16[5] = v13;
  v16[6] = v14;
  sub_1D6BD1334(0, 0, v9, &unk_1D72AD220, v16);
}

@end