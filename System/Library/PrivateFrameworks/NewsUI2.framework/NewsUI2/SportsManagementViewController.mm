@interface SportsManagementViewController
- (BOOL)tableView:(id)a3 shouldIndentWhileEditingRowAtIndexPath:(id)a4;
- (_TtC7NewsUI230SportsManagementViewController)initWithCoder:(id)a3;
- (_TtC7NewsUI230SportsManagementViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dismissVC;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation SportsManagementViewController

- (_TtC7NewsUI230SportsManagementViewController)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_selectionProvider) = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_overscrollView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (_TtC7NewsUI230SportsManagementViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_218F71D04();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(SportsManagementViewController *)&v4 viewDidAppear:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_218F72334(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_218F7252C();
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(SportsManagementViewController *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  sub_218F738D0();
}

- (void)dismissVC
{
  v3 = off_282A89C70;
  type metadata accessor for SportsManagementEventHandler();
  v4 = self;
  v3();
}

- (BOOL)tableView:(id)a3 shouldIndentWhileEditingRowAtIndexPath:(id)a4
{
  v4 = sub_219BDC104();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDC0B4();
  (*(v5 + 8))(v7, v4);
  return 0;
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  sub_219BF5414();
  v6 = a3;
  v7 = self;
  sub_218F735B0(v6);
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_searchController);
  v5 = a3;
  v10 = self;
  v6 = [v4 searchResultsController];
  if (v6)
  {
    v7 = v6;
    v8 = swift_dynamicCastObjCProtocolConditional();
    if (v8)
    {
      v9 = v8;
      if ([v8 respondsToSelector_])
      {
        [v9 searchBarCancelButtonClicked_];
      }
    }
  }

  else
  {
  }
}

@end