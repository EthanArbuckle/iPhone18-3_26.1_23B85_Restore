@interface AdContainerViewController
- (_TtC10CookingKitP33_04E1833260F82E278E94C0F09760429C25AdContainerViewController)initWithCoder:(id)a3;
- (_TtC10CookingKitP33_04E1833260F82E278E94C0F09760429C25AdContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
@end

@implementation AdContainerViewController

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v4 = v5.receiver;
  [(AdContainerViewController *)&v5 preferredContentSizeDidChangeForChildContentContainer:a3];
  [a3 preferredContentSize];
  [v4 setPreferredContentSize_];
  swift_unknownObjectRelease();
}

- (_TtC10CookingKitP33_04E1833260F82E278E94C0F09760429C25AdContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_21A2F78E4();
    v8 = a4;
    a3 = sub_21A2F78A4();
  }

  else
  {
    v9 = a4;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(AdContainerViewController *)&v12 initWithNibName:a3 bundle:a4];

  return v10;
}

- (_TtC10CookingKitP33_04E1833260F82E278E94C0F09760429C25AdContainerViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(AdContainerViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end