@interface DebugFormatWorkspaceCanvasViewController
- (_TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)doAccessibilityWithSender:(id)a3;
- (void)doActivateWithSender:(id)a3;
- (void)doDevicesWithSender:(id)a3;
- (void)doInterfaceLayoutDirectionWithSender:(id)a3;
- (void)doLightDarkModeWithSender:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatWorkspaceCanvasViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1D67745C8();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  [(DebugFormatWorkspaceCanvasViewController *)&v9 viewWillAppear:v3];
  v5 = [v4 navigationController];
  v6 = [v5 toolbar];

  sub_1D71CD8F4(v6);
  v7 = [v4 navigationController];
  if (v7)
  {
    v8 = v7;
    [v7 setToolbarHidden:0 animated:0];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1D6775744(a3);
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  v2 = v14.receiver;
  [(DebugFormatWorkspaceCanvasViewController *)&v14 viewWillLayoutSubviews];
  sub_1D67725A8();
  sub_1D606BFAC();

  v3 = *&v2[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_collectionView];
  v4 = [v2 view];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [v3 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

- (void)doDevicesWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D6775974(v4);
}

- (void)doAccessibilityWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D6775CA0(v4);
}

- (void)doLightDarkModeWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D677CCC4();
}

- (void)doInterfaceLayoutDirectionWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D677CD60();
}

- (void)doActivateWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D677CDFC();
}

- (_TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_sections);
  if (*(v5 + 16) <= a4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = type metadata accessor for DebugFormatWorkspaceCanvasSection();
  v7 = *(v5 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * a4 + *(v6 + 40));
  if (!(v7 >> 62))
  {
    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

LABEL_7:

  return sub_1D7263BFC();
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v7 = sub_1D7258DBC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  v12 = a3;
  v13 = self;
  v14 = sub_1D677D34C();

  (*(v8 + 8))(v11, v7);

  return v14;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = sub_1D7258DBC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  v11 = a3;
  v12 = self;
  v13 = sub_1D67790EC();

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_1D7258DBC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  v11 = a3;
  v12 = self;
  sub_1D677D598(v10);

  (*(v7 + 8))(v10, v6);
}

@end