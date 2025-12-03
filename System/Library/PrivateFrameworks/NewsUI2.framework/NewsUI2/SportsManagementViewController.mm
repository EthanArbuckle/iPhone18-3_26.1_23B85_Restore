@interface SportsManagementViewController
- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path;
- (_TtC7NewsUI230SportsManagementViewController)initWithCoder:(id)coder;
- (_TtC7NewsUI230SportsManagementViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dismissVC;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation SportsManagementViewController

- (_TtC7NewsUI230SportsManagementViewController)initWithCoder:(id)coder
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

- (_TtC7NewsUI230SportsManagementViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_218F71D04();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(SportsManagementViewController *)&v4 viewDidAppear:appearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_218F72334(appear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_218F7252C();
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(SportsManagementViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_218F738D0();
}

- (void)dismissVC
{
  v3 = off_282A89C70;
  type metadata accessor for SportsManagementEventHandler();
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

- (void)searchBar:(id)bar textDidChange:(id)change
{
  sub_219BF5414();
  barCopy = bar;
  selfCopy = self;
  sub_218F735B0(barCopy);
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_searchController);
  clickedCopy = clicked;
  selfCopy = self;
  searchResultsController = [v4 searchResultsController];
  if (searchResultsController)
  {
    v7 = searchResultsController;
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