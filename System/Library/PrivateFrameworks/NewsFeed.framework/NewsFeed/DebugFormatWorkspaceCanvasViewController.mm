@interface DebugFormatWorkspaceCanvasViewController
- (_TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)doAccessibilityWithSender:(id)sender;
- (void)doActivateWithSender:(id)sender;
- (void)doDevicesWithSender:(id)sender;
- (void)doInterfaceLayoutDirectionWithSender:(id)sender;
- (void)doLightDarkModeWithSender:(id)sender;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatWorkspaceCanvasViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D67745C8();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  [(DebugFormatWorkspaceCanvasViewController *)&v9 viewWillAppear:appearCopy];
  navigationController = [v4 navigationController];
  toolbar = [navigationController toolbar];

  sub_1D71CD8F4(toolbar);
  navigationController2 = [v4 navigationController];
  if (navigationController2)
  {
    v8 = navigationController2;
    [navigationController2 setToolbarHidden:0 animated:0];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1D6775744(disappear);
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
  view = [v2 view];
  if (view)
  {
    v5 = view;
    [view bounds];
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

- (void)doDevicesWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1D6775974(senderCopy);
}

- (void)doAccessibilityWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1D6775CA0(senderCopy);
}

- (void)doLightDarkModeWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1D677CCC4();
}

- (void)doInterfaceLayoutDirectionWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1D677CD60();
}

- (void)doActivateWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1D677CDFC();
}

- (_TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  if (section < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_sections);
  if (*(v5 + 16) <= section)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = type metadata accessor for DebugFormatWorkspaceCanvasSection();
  v7 = *(v5 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * section + *(v6 + 40));
  if (!(v7 >> 62))
  {
    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

LABEL_7:

  return sub_1D7263BFC();
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  v7 = sub_1D7258DBC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  viewCopy = view;
  selfCopy = self;
  v14 = sub_1D677D34C();

  (*(v8 + 8))(v11, v7);

  return v14;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = sub_1D7258DBC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_1D67790EC();

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_1D7258DBC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  viewCopy = view;
  selfCopy = self;
  sub_1D677D598(v10);

  (*(v7 + 8))(v10, v6);
}

@end