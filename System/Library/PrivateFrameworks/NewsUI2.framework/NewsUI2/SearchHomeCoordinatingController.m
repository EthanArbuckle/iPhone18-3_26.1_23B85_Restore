@interface SearchHomeCoordinatingController
- (_TtC7NewsUI232SearchHomeCoordinatingController)initWithCoder:(id)a3;
- (_TtC7NewsUI232SearchHomeCoordinatingController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didDismissSearchController:(id)a3;
- (void)didPresentSearchController:(id)a3;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarTextDidBeginEditing:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willDismissSearchController:(id)a3;
- (void)willPresentSearchController:(id)a3;
@end

@implementation SearchHomeCoordinatingController

- (_TtC7NewsUI232SearchHomeCoordinatingController)initWithCoder:(id)a3
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
  v2 = self;
  sub_21903F744();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_21903F85C(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(SearchHomeCoordinatingController *)&v8 viewDidDisappear:v3];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong searchBar];

    [v7 resignFirstResponder];
  }
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_21903FAC8();
}

- (_TtC7NewsUI232SearchHomeCoordinatingController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)willPresentSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21903FD08(v4);
}

- (void)didPresentSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21903FE74(v4);
}

- (void)willDismissSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21903FFE0(v4);
}

- (void)didDismissSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21904015C(v4);
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v6 = sub_219BF5414();
  v8 = v7;
  v9 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_searchHomeContainerController);
  v15 = a3;
  v10 = self;
  v11 = [v9 parentViewController];
  if (v11)
  {
    v12 = v11;
    sub_218805E54();
    v13 = v10;
    v14 = sub_219BF6DD4();

    if (v14)
    {
      sub_219B62014(v6, v8);
    }
  }
}

- (void)searchBarTextDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_219040418();
}

@end