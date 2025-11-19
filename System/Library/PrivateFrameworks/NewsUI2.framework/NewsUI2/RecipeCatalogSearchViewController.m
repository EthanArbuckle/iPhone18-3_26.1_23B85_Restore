@interface RecipeCatalogSearchViewController
- (_TtC7NewsUI233RecipeCatalogSearchViewController)initWithCoder:(id)a3;
- (_TtC7NewsUI233RecipeCatalogSearchViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)contentScrollViewForEdge:(unint64_t)a3;
- (void)filterButtonTapped;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation RecipeCatalogSearchViewController

- (_TtC7NewsUI233RecipeCatalogSearchViewController)initWithCoder:(id)a3
{
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC7NewsUI233RecipeCatalogSearchViewController_delegate) = 0;
  swift_unknownObjectWeakInit();
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (_TtC7NewsUI233RecipeCatalogSearchViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_218CAD540();
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(RecipeCatalogSearchViewController *)&v15 viewWillLayoutSubviews];
  v3 = [*&v2[OBJC_IVAR____TtC7NewsUI233RecipeCatalogSearchViewController_searchHomeContainerController] view];
  if (v3)
  {
    v4 = v3;
    v5 = [v2 view];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
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

- (id)contentScrollViewForEdge:(unint64_t)a3
{
  v3 = self;
  v4 = sub_219B61F1C();

  return v4;
}

- (void)filterButtonTapped
{
  __swift_project_boxed_opaque_existential_1(*(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI233RecipeCatalogSearchViewController_eventHandler) + 6, (*(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI233RecipeCatalogSearchViewController_eventHandler))[9]);
  v3 = self;
  sub_218CACA24();
}

@end