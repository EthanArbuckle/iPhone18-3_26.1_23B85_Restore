@interface FloatingTabBarController
- (BOOL)tabBarController:(id)controller shouldSelectTab:(id)tab;
- (BOOL)tabBarController:(id)controller shouldSelectViewController:(id)viewController;
- (NSArray)keyCommands;
- (_TtC7NewsUI224FloatingTabBarController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC7NewsUI224FloatingTabBarController)initWithTabs:(id)tabs;
- (id)_tabBarController:(id)controller sidebar:(id)sidebar contextMenuConfigurationForTab:(id)tab;
- (id)_tabBarController:(id)controller sidebar:(id)sidebar trailingSwipeActionsConfigurationForTab:(id)tab;
- (id)tabBarController:(id)controller sidebar:(id)sidebar itemsForBeginningDragSession:(id)session tab:(id)tab;
- (void)_tabBarController:(id)controller sidebar:(id)sidebar configureItem:(id)item;
- (void)_tabBarController:(id)controller sidebar:(id)sidebar updateItem:(id)item;
- (void)_tabBarController:(id)controller sidebarVisibilityDidChange:(id)change;
- (void)_tabElementGroup:(id)group didCustomizeDisplayOrder:(id)order;
- (void)_tabElementGroup:(id)group didSelectElement:(id)element;
- (void)_tabbarController:(id)controller sidebar:(id)sidebar editingStateDidChange:(BOOL)change;
- (void)didReceiveMemoryWarning;
- (void)keyCommandOpenNewWindow;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarTextDidBeginEditing:(id)editing;
- (void)showViewController:(id)controller sender:(id)sender;
- (void)tabBarController:(id)controller didSelectViewController:(id)viewController;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation FloatingTabBarController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2187C4138();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FloatingTabBarController();
  v4 = v5.receiver;
  [(FloatingTabBarController *)&v5 viewWillAppear:appearCopy];
  sub_2187D4FB8();
  sub_2187D518C();
  sub_2187D5310();
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FloatingTabBarController();
  v2 = v3.receiver;
  [(FloatingTabBarController *)&v3 viewWillLayoutSubviews];
  sub_2187DB3D8();
}

- (void)didReceiveMemoryWarning
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FloatingTabBarController();
  v2 = v3.receiver;
  [(FloatingTabBarController *)&v3 didReceiveMemoryWarning];

  sub_219BE3264();
}

- (void)showViewController:(id)controller sender:(id)sender
{
  if (sender)
  {
    controllerCopy = controller;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    controllerCopy2 = controller;
    selfCopy2 = self;
  }

  sub_218FE0880(controller);

  sub_2187453AC(v10, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187C3D44);
}

- (_TtC7NewsUI224FloatingTabBarController)initWithTabs:(id)tabs
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7NewsUI224FloatingTabBarController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)_tabElementGroup:(id)group didSelectElement:(id)element
{
  groupCopy = group;
  elementCopy = element;
  selfCopy = self;
  sub_218FE40E4(groupCopy, elementCopy);
}

- (void)_tabElementGroup:(id)group didCustomizeDisplayOrder:(id)order
{
  sub_219BF5924();
  v6 = self + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_sidebarDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    swift_getObjectType();
    v8 = *(v7 + 56);
    groupCopy = group;
    selfCopy = self;
    v8();
    swift_unknownObjectRelease();
  }
}

- (void)_tabBarController:(id)controller sidebarVisibilityDidChange:(id)change
{
  selfCopy = self;
  sub_2187DB3D8();
}

- (void)_tabbarController:(id)controller sidebar:(id)sidebar editingStateDidChange:(BOOL)change
{
  selfCopy = self;

  sub_219BE2744();
}

- (void)_tabBarController:(id)controller sidebar:(id)sidebar configureItem:(id)item
{
  v7 = self + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_sidebarDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    swift_getObjectType();
    v9 = *(v8 + 8);
    itemCopy = item;
    selfCopy = self;
    v9();
    swift_unknownObjectRelease();
  }
}

- (void)_tabBarController:(id)controller sidebar:(id)sidebar updateItem:(id)item
{
  v7 = self + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_sidebarDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    swift_getObjectType();
    v9 = *(v8 + 16);
    itemCopy = item;
    selfCopy = self;
    v9();
    swift_unknownObjectRelease();
  }
}

- (id)_tabBarController:(id)controller sidebar:(id)sidebar trailingSwipeActionsConfigurationForTab:(id)tab
{
  v7 = self + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_sidebarDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    swift_getObjectType();
    v9 = *(v8 + 24);
    tabCopy = tab;
    selfCopy = self;
    v12 = v9();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_tabBarController:(id)controller sidebar:(id)sidebar contextMenuConfigurationForTab:(id)tab
{
  v7 = self + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_sidebarDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    swift_getObjectType();
    v9 = *(v8 + 32);
    tabCopy = tab;
    selfCopy = self;
    v12 = v9();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)tabBarController:(id)controller shouldSelectTab:(id)tab
{
  v6 = self + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_sidebarDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    swift_getObjectType();
    v8 = *(v7 + 96);
    tabCopy = tab;
    selfCopy = self;
    v11 = v8();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

- (BOOL)tabBarController:(id)controller shouldSelectViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  selectedIndex = [(FloatingTabBarController *)selfCopy selectedIndex];
  viewControllers = [(FloatingTabBarController *)selfCopy viewControllers];
  if (viewControllers)
  {
    v11 = viewControllers;
    sub_2186C6148(0, &qword_280E8E480);
    v12 = sub_219BF5924();

    v13 = sub_218E659B0(viewControllerCopy, v12);
    v15 = v14;

    if ((v15 & 1) == 0 && selectedIndex == v13)
    {
      type metadata accessor for FloatingTabBarNavigationController();
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = v16;
        v18 = viewControllerCopy;
        sub_218FE4418(v18, v17);

        selfCopy = v18;
      }
    }
  }

  return 1;
}

- (void)tabBarController:(id)controller didSelectViewController:(id)viewController
{
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_previousSelectedElementIdentifier);
  *v4 = 0;
  v4[1] = 0;
}

- (id)tabBarController:(id)controller sidebar:(id)sidebar itemsForBeginningDragSession:(id)session tab:(id)tab
{
  v10 = self + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_sidebarDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 1);
    swift_getObjectType();
    v18 = *(v11 + 104);
    controllerCopy = controller;
    sidebarCopy = sidebar;
    swift_unknownObjectRetain();
    tabCopy = tab;
    selfCopy = self;
    v18();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  sub_2186C6148(0, &qword_27CC14B38);
  v16 = sub_219BF5904();

  return v16;
}

- (void)searchBarTextDidBeginEditing:(id)editing
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_searchElementIdentifier);
  v5 = *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_searchElementIdentifier);
  editingCopy = editing;
  selfCopy = self;
  v7 = sub_218FE5088(v4, v5);
  if ((v8 & 1) == 0)
  {
    [(FloatingTabBarController *)selfCopy setSelectedIndex:v7];
  }

  sub_218FE5288(editingCopy);
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  v6 = sub_219BF5414();
  v8 = v7;
  barCopy = bar;
  selfCopy = self;
  sub_218FEABF4(v6, v8);
}

- (NSArray)keyCommands
{
  selfCopy = self;
  v3 = sub_218FE941C();

  if (v3)
  {
    sub_2186C6148(0, &qword_280E8E798);
    v4 = sub_219BF5904();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)keyCommandOpenNewWindow
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75950]) init];
  sharedApplication = [objc_opt_self() sharedApplication];
  v4[4] = sub_218FE9610;
  v4[5] = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_218C4D464;
  v4[3] = &block_descriptor_84;
  v2 = _Block_copy(v4);
  v3 = v0;
  [sharedApplication requestSceneSessionActivation:0 userActivity:0 options:v3 errorHandler:v2];
  _Block_release(v2);
}

@end