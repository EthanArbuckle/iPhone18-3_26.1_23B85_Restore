@interface FloatingTabBarController
- (BOOL)tabBarController:(id)a3 shouldSelectTab:(id)a4;
- (BOOL)tabBarController:(id)a3 shouldSelectViewController:(id)a4;
- (NSArray)keyCommands;
- (_TtC7NewsUI224FloatingTabBarController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC7NewsUI224FloatingTabBarController)initWithTabs:(id)a3;
- (id)_tabBarController:(id)a3 sidebar:(id)a4 contextMenuConfigurationForTab:(id)a5;
- (id)_tabBarController:(id)a3 sidebar:(id)a4 trailingSwipeActionsConfigurationForTab:(id)a5;
- (id)tabBarController:(id)a3 sidebar:(id)a4 itemsForBeginningDragSession:(id)a5 tab:(id)a6;
- (void)_tabBarController:(id)a3 sidebar:(id)a4 configureItem:(id)a5;
- (void)_tabBarController:(id)a3 sidebar:(id)a4 updateItem:(id)a5;
- (void)_tabBarController:(id)a3 sidebarVisibilityDidChange:(id)a4;
- (void)_tabElementGroup:(id)a3 didCustomizeDisplayOrder:(id)a4;
- (void)_tabElementGroup:(id)a3 didSelectElement:(id)a4;
- (void)_tabbarController:(id)a3 sidebar:(id)a4 editingStateDidChange:(BOOL)a5;
- (void)didReceiveMemoryWarning;
- (void)keyCommandOpenNewWindow;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarTextDidBeginEditing:(id)a3;
- (void)showViewController:(id)a3 sender:(id)a4;
- (void)tabBarController:(id)a3 didSelectViewController:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation FloatingTabBarController

- (void)viewDidLoad
{
  v2 = self;
  sub_2187C4138();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FloatingTabBarController();
  v4 = v5.receiver;
  [(FloatingTabBarController *)&v5 viewWillAppear:v3];
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

- (void)showViewController:(id)a3 sender:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = self;
    swift_unknownObjectRetain();
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = a3;
    v9 = self;
  }

  sub_218FE0880(a3);

  sub_2187453AC(v10, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187C3D44);
}

- (_TtC7NewsUI224FloatingTabBarController)initWithTabs:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7NewsUI224FloatingTabBarController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)_tabElementGroup:(id)a3 didSelectElement:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_218FE40E4(v6, v7);
}

- (void)_tabElementGroup:(id)a3 didCustomizeDisplayOrder:(id)a4
{
  sub_219BF5924();
  v6 = self + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_sidebarDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    swift_getObjectType();
    v8 = *(v7 + 56);
    v9 = a3;
    v10 = self;
    v8();
    swift_unknownObjectRelease();
  }
}

- (void)_tabBarController:(id)a3 sidebarVisibilityDidChange:(id)a4
{
  v4 = self;
  sub_2187DB3D8();
}

- (void)_tabbarController:(id)a3 sidebar:(id)a4 editingStateDidChange:(BOOL)a5
{
  v5 = self;

  sub_219BE2744();
}

- (void)_tabBarController:(id)a3 sidebar:(id)a4 configureItem:(id)a5
{
  v7 = self + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_sidebarDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    swift_getObjectType();
    v9 = *(v8 + 8);
    v10 = a5;
    v11 = self;
    v9();
    swift_unknownObjectRelease();
  }
}

- (void)_tabBarController:(id)a3 sidebar:(id)a4 updateItem:(id)a5
{
  v7 = self + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_sidebarDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    swift_getObjectType();
    v9 = *(v8 + 16);
    v10 = a5;
    v11 = self;
    v9();
    swift_unknownObjectRelease();
  }
}

- (id)_tabBarController:(id)a3 sidebar:(id)a4 trailingSwipeActionsConfigurationForTab:(id)a5
{
  v7 = self + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_sidebarDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    swift_getObjectType();
    v9 = *(v8 + 24);
    v10 = a5;
    v11 = self;
    v12 = v9();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_tabBarController:(id)a3 sidebar:(id)a4 contextMenuConfigurationForTab:(id)a5
{
  v7 = self + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_sidebarDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    swift_getObjectType();
    v9 = *(v8 + 32);
    v10 = a5;
    v11 = self;
    v12 = v9();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)tabBarController:(id)a3 shouldSelectTab:(id)a4
{
  v6 = self + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_sidebarDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    swift_getObjectType();
    v8 = *(v7 + 96);
    v9 = a4;
    v10 = self;
    v11 = v8();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

- (BOOL)tabBarController:(id)a3 shouldSelectViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = [(FloatingTabBarController *)v8 selectedIndex];
  v10 = [(FloatingTabBarController *)v8 viewControllers];
  if (v10)
  {
    v11 = v10;
    sub_2186C6148(0, &qword_280E8E480);
    v12 = sub_219BF5924();

    v13 = sub_218E659B0(v7, v12);
    v15 = v14;

    if ((v15 & 1) == 0 && v9 == v13)
    {
      type metadata accessor for FloatingTabBarNavigationController();
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = v16;
        v18 = v7;
        sub_218FE4418(v18, v17);

        v8 = v18;
      }
    }
  }

  return 1;
}

- (void)tabBarController:(id)a3 didSelectViewController:(id)a4
{
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_previousSelectedElementIdentifier);
  *v4 = 0;
  v4[1] = 0;
}

- (id)tabBarController:(id)a3 sidebar:(id)a4 itemsForBeginningDragSession:(id)a5 tab:(id)a6
{
  v10 = self + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_sidebarDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 1);
    swift_getObjectType();
    v18 = *(v11 + 104);
    v12 = a3;
    v13 = a4;
    swift_unknownObjectRetain();
    v14 = a6;
    v15 = self;
    v18();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  sub_2186C6148(0, &qword_27CC14B38);
  v16 = sub_219BF5904();

  return v16;
}

- (void)searchBarTextDidBeginEditing:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_searchElementIdentifier);
  v5 = *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_searchElementIdentifier);
  v6 = a3;
  v9 = self;
  v7 = sub_218FE5088(v4, v5);
  if ((v8 & 1) == 0)
  {
    [(FloatingTabBarController *)v9 setSelectedIndex:v7];
  }

  sub_218FE5288(v6);
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v6 = sub_219BF5414();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_218FEABF4(v6, v8);
}

- (NSArray)keyCommands
{
  v2 = self;
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
  v1 = [objc_opt_self() sharedApplication];
  v4[4] = sub_218FE9610;
  v4[5] = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_218C4D464;
  v4[3] = &block_descriptor_84;
  v2 = _Block_copy(v4);
  v3 = v0;
  [v1 requestSceneSessionActivation:0 userActivity:0 options:v3 errorHandler:v2];
  _Block_release(v2);
}

@end