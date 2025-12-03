@interface SearchHomeCoordinatingController
- (_TtC7NewsUI232SearchHomeCoordinatingController)initWithCoder:(id)coder;
- (_TtC7NewsUI232SearchHomeCoordinatingController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didDismissSearchController:(id)controller;
- (void)didPresentSearchController:(id)controller;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarTextDidBeginEditing:(id)editing;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)willDismissSearchController:(id)controller;
- (void)willPresentSearchController:(id)controller;
@end

@implementation SearchHomeCoordinatingController

- (_TtC7NewsUI232SearchHomeCoordinatingController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_delegate) = 0;
  swift_unknownObjectWeakInit();
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_pendingSearchTerm);
  *v4 = 0;
  v4[1] = 0;
  v5 = self + OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_pendingSearchOrigination;
  *v5 = 0;
  v5[8] = 1;
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_21903F744();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_21903F85C(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(SearchHomeCoordinatingController *)&v8 viewDidDisappear:disappearCopy];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    searchBar = [Strong searchBar];

    [searchBar resignFirstResponder];
  }
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_21903FAC8();
}

- (_TtC7NewsUI232SearchHomeCoordinatingController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)willPresentSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_21903FD08(controllerCopy);
}

- (void)didPresentSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_21903FE74(controllerCopy);
}

- (void)willDismissSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_21903FFE0(controllerCopy);
}

- (void)didDismissSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_21904015C(controllerCopy);
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  v6 = sub_219BF5414();
  v8 = v7;
  v9 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_searchHomeContainerController);
  barCopy = bar;
  selfCopy = self;
  parentViewController = [v9 parentViewController];
  if (parentViewController)
  {
    v12 = parentViewController;
    sub_218805E54();
    v13 = selfCopy;
    v14 = sub_219BF6DD4();

    if (v14)
    {
      sub_219B62014(v6, v8);
    }
  }
}

- (void)searchBarTextDidBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_219040418();
}

@end