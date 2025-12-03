@interface SearchHomeContainerController
- (_TtC7NewsUI229SearchHomeContainerController)initWithNibName:(id)name bundle:(id)bundle;
- (id)contentScrollViewForEdge:(unint64_t)edge;
- (void)dealloc;
- (void)didDismissSearchController:(id)controller;
- (void)didPresentSearchController:(id)controller;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarTextDidBeginEditing:(id)editing;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)willDismissSearchController:(id)controller;
- (void)willPresentSearchController:(id)controller;
@end

@implementation SearchHomeContainerController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_219B5F708();
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_filterProvider);
  v5 = swift_getObjectType();
  v6 = *(v4 + 32);
  selfCopy = self;
  swift_unknownObjectRetain();
  v6(selfCopy, &off_282AA0698, v5, v4);
  swift_unknownObjectRelease();

  v8.receiver = selfCopy;
  v8.super_class = ObjectType;
  [(SearchHomeContainerController *)&v8 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_219B60300(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_219B605D4(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_219B608D0(disappear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_219B60B68();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_219B60D24();
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  changeCopy = change;
  [(SearchHomeContainerController *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [v4 traitCollection];
  sub_219B5FDC8(traitCollection);

  view = [v4 view];
  if (view)
  {
    v8 = view;
    [view setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

- (id)contentScrollViewForEdge:(unint64_t)edge
{
  selfCopy = self;
  v4 = sub_219B61F1C();

  return v4;
}

- (_TtC7NewsUI229SearchHomeContainerController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)willPresentSearchController:(id)controller
{
  v5 = self + OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    swift_getObjectType();
    v7 = *(v6 + 8);
    controllerCopy = controller;
    selfCopy = self;
    v7();
    swift_unknownObjectRelease();
  }
}

- (void)didPresentSearchController:(id)controller
{
  v5 = self + OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    swift_getObjectType();
    v7 = *(v6 + 16);
    controllerCopy = controller;
    selfCopy = self;
    v7();
    swift_unknownObjectRelease();
  }
}

- (void)willDismissSearchController:(id)controller
{
  v4 = self + OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(self, controller, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    controllerCopy = controller;
    selfCopy = self;
  }

  v9 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_filterProvider);
  v10 = swift_getObjectType();
  (*(v9 + 48))(v10, v9);
}

- (void)didDismissSearchController:(id)controller
{
  v4 = self + OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    (*(v5 + 32))(self, controller, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    controllerCopy = controller;
    selfCopy = self;
  }

  sub_219B5F1FC(0, 0xE000000000000000, 0, *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_searchOrigination));
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  v6 = sub_219BF5414();
  v8 = v7;
  barCopy = bar;
  selfCopy = self;
  sub_219B62014(v6, v8);
}

- (void)searchBarTextDidBeginEditing:(id)editing
{
  v4 = self + OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    swift_getObjectType();
    v6 = *(v5 + 40);
    selfCopy = self;
    v6();
    swift_unknownObjectRelease();
  }
}

@end