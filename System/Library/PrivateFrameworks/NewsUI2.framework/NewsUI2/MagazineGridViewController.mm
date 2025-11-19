@interface MagazineGridViewController
- (_TtC7NewsUI226MagazineGridViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)contentScrollView;
- (void)doDoneAction;
- (void)doDownloadAction;
- (void)doRemoveDownloadsAction;
- (void)doRemoveIssuesAndDownloadsAction;
- (void)doSelectAllAction;
- (void)scrollToTopAnimated:(BOOL)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation MagazineGridViewController

- (_TtC7NewsUI226MagazineGridViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_2196EEA10();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_2196EEF30();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_2196EF140(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_2196EF3D0(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(MagazineGridViewController *)&v5 viewWillDisappear:v3];
  if (v4[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_viewControllerConfig] == 1)
  {
    swift_getObjectType();
    sub_219BE7534();
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  ObjectType = swift_getObjectType();
  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = self;
  [(MagazineGridViewController *)&v8 viewDidDisappear:v3];
  if ([(MagazineGridViewController *)v6 isEditing])
  {
    v7.receiver = v6;
    v7.super_class = ObjectType;
    [(MagazineGridViewController *)&v7 setEditing:0 animated:0];
    sub_2196EF774(0, 0, 1);
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(MagazineGridViewController *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  sub_2196F4468();
}

- (id)contentScrollView
{
  v2 = self;
  sub_219BE8664();
  v3 = sub_219BE7BC4();

  return v3;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v6 = v7.receiver;
  [(MagazineGridViewController *)&v7 setEditing:v5 animated:v4];
  sub_2196EF774(v5, v4, 1);
}

- (void)doSelectAllAction
{
  v2 = self;
  sub_2196F0F70();
}

- (void)doDoneAction
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(MagazineGridViewController *)&v3 setEditing:0 animated:1];
  sub_2196EF774(0, 1, 1);
}

- (void)doDownloadAction
{
  v2 = self;
  sub_2196F17D0();
}

- (void)doRemoveIssuesAndDownloadsAction
{
  v2 = self;
  sub_2196F1F80(MEMORY[0x277D31B18], sub_2196F4740);
}

- (void)doRemoveDownloadsAction
{
  v2 = self;
  sub_2196F1F80(MEMORY[0x277D31B10], sub_2196F438C);
}

- (void)scrollToTopAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = self;
  sub_219BE8664();
  v4 = sub_219BE7BC4();

  [v4 ts:v3 scrollToTop:?];
}

@end