@interface MagazineGridViewController
- (_TtC7NewsUI226MagazineGridViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)contentScrollView;
- (void)doDoneAction;
- (void)doDownloadAction;
- (void)doRemoveDownloadsAction;
- (void)doRemoveIssuesAndDownloadsAction;
- (void)doSelectAllAction;
- (void)scrollToTopAnimated:(BOOL)animated;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation MagazineGridViewController

- (_TtC7NewsUI226MagazineGridViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2196EEA10();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_2196EEF30();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_2196EF140(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_2196EF3D0(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(MagazineGridViewController *)&v5 viewWillDisappear:disappearCopy];
  if (v4[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_viewControllerConfig] == 1)
  {
    swift_getObjectType();
    sub_219BE7534();
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  ObjectType = swift_getObjectType();
  v8.receiver = self;
  v8.super_class = ObjectType;
  selfCopy = self;
  [(MagazineGridViewController *)&v8 viewDidDisappear:disappearCopy];
  if ([(MagazineGridViewController *)selfCopy isEditing])
  {
    v7.receiver = selfCopy;
    v7.super_class = ObjectType;
    [(MagazineGridViewController *)&v7 setEditing:0 animated:0];
    sub_2196EF774(0, 0, 1);
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(MagazineGridViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_2196F4468();
}

- (id)contentScrollView
{
  selfCopy = self;
  sub_219BE8664();
  v3 = sub_219BE7BC4();

  return v3;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v6 = v7.receiver;
  [(MagazineGridViewController *)&v7 setEditing:editingCopy animated:animatedCopy];
  sub_2196EF774(editingCopy, animatedCopy, 1);
}

- (void)doSelectAllAction
{
  selfCopy = self;
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
  selfCopy = self;
  sub_2196F17D0();
}

- (void)doRemoveIssuesAndDownloadsAction
{
  selfCopy = self;
  sub_2196F1F80(MEMORY[0x277D31B18], sub_2196F4740);
}

- (void)doRemoveDownloadsAction
{
  selfCopy = self;
  sub_2196F1F80(MEMORY[0x277D31B10], sub_2196F438C);
}

- (void)scrollToTopAnimated:(BOOL)animated
{
  animatedCopy = animated;
  selfCopy = self;
  sub_219BE8664();
  v4 = sub_219BE7BC4();

  [v4 ts:animatedCopy scrollToTop:?];
}

@end