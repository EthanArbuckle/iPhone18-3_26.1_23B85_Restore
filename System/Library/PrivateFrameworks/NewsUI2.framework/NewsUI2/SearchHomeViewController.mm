@interface SearchHomeViewController
- (_TtC7NewsUI224SearchHomeViewController)initWithCoder:(id)coder;
- (_TtC7NewsUI224SearchHomeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)contentScrollView;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SearchHomeViewController

- (_TtC7NewsUI224SearchHomeViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC7NewsUI224SearchHomeViewController_delegate) = 0;
  swift_unknownObjectWeakInit();
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (_TtC7NewsUI224SearchHomeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_219A60F54();
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(SearchHomeViewController *)&v15 viewWillLayoutSubviews];
  view = [*&v2[OBJC_IVAR____TtC7NewsUI224SearchHomeViewController_blueprintViewController] view];
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
  [(SearchHomeViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_219A62974();
}

- (id)contentScrollView
{
  selfCopy = self;
  sub_219BE8664();
  v3 = sub_219BE7BC4();

  return v3;
}

@end