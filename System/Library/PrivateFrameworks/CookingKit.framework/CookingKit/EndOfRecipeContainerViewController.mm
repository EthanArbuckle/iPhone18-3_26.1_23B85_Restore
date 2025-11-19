@interface EndOfRecipeContainerViewController
- (_TtC10CookingKitP33_6C32768279A34A304DA1EE2F1863B55F34EndOfRecipeContainerViewController)initWithCoder:(id)a3;
- (_TtC10CookingKitP33_6C32768279A34A304DA1EE2F1863B55F34EndOfRecipeContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
@end

@implementation EndOfRecipeContainerViewController

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v4 = v5.receiver;
  [(EndOfRecipeContainerViewController *)&v5 preferredContentSizeDidChangeForChildContentContainer:a3];
  [a3 preferredContentSize];
  [v4 setPreferredContentSize_];
  swift_unknownObjectRelease();
}

- (_TtC10CookingKitP33_6C32768279A34A304DA1EE2F1863B55F34EndOfRecipeContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_21A2F78E4();
    v8 = (&self->super.super.super.isa + OBJC_IVAR____TtC10CookingKitP33_6C32768279A34A304DA1EE2F1863B55F34EndOfRecipeContainerViewController_endOfRecipeViewController);
    *v8 = 0;
    v8[1] = 0;
    v9 = a4;
    a3 = sub_21A2F78A4();
  }

  else
  {
    v10 = (&self->super.super.super.isa + OBJC_IVAR____TtC10CookingKitP33_6C32768279A34A304DA1EE2F1863B55F34EndOfRecipeContainerViewController_endOfRecipeViewController);
    *v10 = 0;
    v10[1] = 0;
    v11 = a4;
  }

  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(EndOfRecipeContainerViewController *)&v14 initWithNibName:a3 bundle:a4];

  return v12;
}

- (_TtC10CookingKitP33_6C32768279A34A304DA1EE2F1863B55F34EndOfRecipeContainerViewController)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = (&self->super.super.super.isa + OBJC_IVAR____TtC10CookingKitP33_6C32768279A34A304DA1EE2F1863B55F34EndOfRecipeContainerViewController_endOfRecipeViewController);
  *v6 = 0;
  v6[1] = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v7 = a3;
  v8 = [(EndOfRecipeContainerViewController *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end