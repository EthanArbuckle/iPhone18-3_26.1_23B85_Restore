@interface AdContainerViewController
- (_TtC10CookingKitP33_04E1833260F82E278E94C0F09760429C25AdContainerViewController)initWithCoder:(id)coder;
- (_TtC10CookingKitP33_04E1833260F82E278E94C0F09760429C25AdContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
@end

@implementation AdContainerViewController

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v4 = v5.receiver;
  [(AdContainerViewController *)&v5 preferredContentSizeDidChangeForChildContentContainer:container];
  [container preferredContentSize];
  [v4 setPreferredContentSize_];
  swift_unknownObjectRelease();
}

- (_TtC10CookingKitP33_04E1833260F82E278E94C0F09760429C25AdContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    sub_21A2F78E4();
    bundleCopy = bundle;
    name = sub_21A2F78A4();
  }

  else
  {
    bundleCopy2 = bundle;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(AdContainerViewController *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (_TtC10CookingKitP33_04E1833260F82E278E94C0F09760429C25AdContainerViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(AdContainerViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end