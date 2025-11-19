@interface SearchHomeContainerController
- (_TtC7NewsUI229SearchHomeContainerController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)contentScrollViewForEdge:(unint64_t)a3;
- (void)dealloc;
- (void)didDismissSearchController:(id)a3;
- (void)didPresentSearchController:(id)a3;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarTextDidBeginEditing:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willDismissSearchController:(id)a3;
- (void)willPresentSearchController:(id)a3;
@end

@implementation SearchHomeContainerController

- (void)viewDidLoad
{
  v2 = self;
  sub_219B5F708();
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_filterProvider);
  v5 = swift_getObjectType();
  v6 = *(v4 + 32);
  v7 = self;
  swift_unknownObjectRetain();
  v6(v7, &off_282AA0698, v5, v4);
  swift_unknownObjectRelease();

  v8.receiver = v7;
  v8.super_class = ObjectType;
  [(SearchHomeContainerController *)&v8 dealloc];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_219B60300(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_219B605D4(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_219B608D0(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_219B60B68();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_219B60D24();
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  v5 = a3;
  [(SearchHomeContainerController *)&v9 traitCollectionDidChange:v5];
  v6 = [v4 traitCollection];
  sub_219B5FDC8(v6);

  v7 = [v4 view];
  if (v7)
  {
    v8 = v7;
    [v7 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

- (id)contentScrollViewForEdge:(unint64_t)a3
{
  v3 = self;
  v4 = sub_219B61F1C();

  return v4;
}

- (_TtC7NewsUI229SearchHomeContainerController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)willPresentSearchController:(id)a3
{
  v5 = self + OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    swift_getObjectType();
    v7 = *(v6 + 8);
    v8 = a3;
    v9 = self;
    v7();
    swift_unknownObjectRelease();
  }
}

- (void)didPresentSearchController:(id)a3
{
  v5 = self + OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    swift_getObjectType();
    v7 = *(v6 + 16);
    v8 = a3;
    v9 = self;
    v7();
    swift_unknownObjectRelease();
  }
}

- (void)willDismissSearchController:(id)a3
{
  v4 = self + OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(self, a3, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = a3;
    v8 = self;
  }

  v9 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_filterProvider);
  v10 = swift_getObjectType();
  (*(v9 + 48))(v10, v9);
}

- (void)didDismissSearchController:(id)a3
{
  v4 = self + OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    (*(v5 + 32))(self, a3, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = a3;
    v8 = self;
  }

  sub_219B5F1FC(0, 0xE000000000000000, 0, *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_searchOrigination));
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v6 = sub_219BF5414();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_219B62014(v6, v8);
}

- (void)searchBarTextDidBeginEditing:(id)a3
{
  v4 = self + OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    swift_getObjectType();
    v6 = *(v5 + 40);
    v7 = self;
    v6();
    swift_unknownObjectRelease();
  }
}

@end