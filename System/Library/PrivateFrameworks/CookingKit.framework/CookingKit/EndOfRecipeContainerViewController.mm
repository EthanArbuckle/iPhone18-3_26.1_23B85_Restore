@interface EndOfRecipeContainerViewController
- (_TtC10CookingKitP33_6C32768279A34A304DA1EE2F1863B55F34EndOfRecipeContainerViewController)initWithCoder:(id)coder;
- (_TtC10CookingKitP33_6C32768279A34A304DA1EE2F1863B55F34EndOfRecipeContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
@end

@implementation EndOfRecipeContainerViewController

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v4 = v5.receiver;
  [(EndOfRecipeContainerViewController *)&v5 preferredContentSizeDidChangeForChildContentContainer:container];
  [container preferredContentSize];
  [v4 setPreferredContentSize_];
  swift_unknownObjectRelease();
}

- (_TtC10CookingKitP33_6C32768279A34A304DA1EE2F1863B55F34EndOfRecipeContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    sub_21A2F78E4();
    v8 = (&self->super.super.super.isa + OBJC_IVAR____TtC10CookingKitP33_6C32768279A34A304DA1EE2F1863B55F34EndOfRecipeContainerViewController_endOfRecipeViewController);
    *v8 = 0;
    v8[1] = 0;
    bundleCopy = bundle;
    name = sub_21A2F78A4();
  }

  else
  {
    v10 = (&self->super.super.super.isa + OBJC_IVAR____TtC10CookingKitP33_6C32768279A34A304DA1EE2F1863B55F34EndOfRecipeContainerViewController_endOfRecipeViewController);
    *v10 = 0;
    v10[1] = 0;
    bundleCopy2 = bundle;
  }

  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(EndOfRecipeContainerViewController *)&v14 initWithNibName:name bundle:bundle];

  return v12;
}

- (_TtC10CookingKitP33_6C32768279A34A304DA1EE2F1863B55F34EndOfRecipeContainerViewController)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  v6 = (&self->super.super.super.isa + OBJC_IVAR____TtC10CookingKitP33_6C32768279A34A304DA1EE2F1863B55F34EndOfRecipeContainerViewController_endOfRecipeViewController);
  *v6 = 0;
  v6[1] = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  coderCopy = coder;
  v8 = [(EndOfRecipeContainerViewController *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end