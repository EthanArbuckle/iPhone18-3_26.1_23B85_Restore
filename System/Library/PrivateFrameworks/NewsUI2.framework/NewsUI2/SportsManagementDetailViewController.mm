@interface SportsManagementDetailViewController
- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path;
- (_TtC7NewsUI236SportsManagementDetailViewController)initWithCoder:(id)coder;
- (_TtC7NewsUI236SportsManagementDetailViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dismissVC;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation SportsManagementDetailViewController

- (_TtC7NewsUI236SportsManagementDetailViewController)initWithCoder:(id)coder
{
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC7NewsUI236SportsManagementDetailViewController_selectionProvider) = 0;
  swift_unknownObjectWeakInit();
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (_TtC7NewsUI236SportsManagementDetailViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2191BA2E8();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(SportsManagementDetailViewController *)&v4 viewDidAppear:appearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_2191BA63C(appear);
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(SportsManagementDetailViewController *)&v15 viewWillLayoutSubviews];
  view = [*&v2[OBJC_IVAR____TtC7NewsUI236SportsManagementDetailViewController_blueprintViewController] view];
  if (view)
  {
    v4 = view;
    view2 = [v2 view];
    if (view2)
    {
      v6 = view2;
      [view2 bounds];
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

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(SportsManagementDetailViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_2191BB8C4();
}

- (void)dismissVC
{
  v3 = off_282A84558;
  type metadata accessor for SportsManagementDetailEventHandler();
  selfCopy = self;
  v3();
}

- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path
{
  v4 = sub_219BDC104();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDC0B4();
  (*(v5 + 8))(v7, v4);
  return 0;
}

@end