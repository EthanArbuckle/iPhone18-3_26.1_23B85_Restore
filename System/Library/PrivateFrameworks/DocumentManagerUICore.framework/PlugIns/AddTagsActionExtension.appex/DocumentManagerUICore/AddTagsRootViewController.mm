@interface AddTagsRootViewController
- (_TtC22AddTagsActionExtension25AddTagsRootViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC22AddTagsActionExtension25AddTagsRootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC22AddTagsActionExtension25AddTagsRootViewController)initWithRootViewController:(id)controller;
- (void)done:(id)done;
- (void)viewDidLoad;
@end

@implementation AddTagsRootViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100001DD0();
}

- (void)done:(id)done
{
  if (done)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_100004288();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
    selfCopy2 = self;
  }

  [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC22AddTagsActionExtension25AddTagsRootViewController_addTagsViewController) dismissViewControllerAnimated:1 completion:{0, v6, v7}];
  sub_100003EA8(&v6, &qword_10000C5B8, &qword_100004890);
}

- (_TtC22AddTagsActionExtension25AddTagsRootViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  if (!class)
  {
    ObjCClassMetadata = 0;
    if (toolbarClass)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return sub_10000287C(ObjCClassMetadata, v6);
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  if (!toolbarClass)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = swift_getObjCClassMetadata();
  return sub_10000287C(ObjCClassMetadata, v6);
}

- (_TtC22AddTagsActionExtension25AddTagsRootViewController)initWithRootViewController:(id)controller
{
  v5 = OBJC_IVAR____TtC22AddTagsActionExtension25AddTagsRootViewController_actionExtensionController;
  v6 = objc_allocWithZone(type metadata accessor for AddTagsActionExtensionController());
  controllerCopy = controller;
  *(&self->super.super.super.super.isa + v5) = [v6 init];
  v8 = OBJC_IVAR____TtC22AddTagsActionExtension25AddTagsRootViewController_addTagsViewController;
  type metadata accessor for AddTagsActionViewController();
  *(&self->super.super.super.super.isa + v8) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11.receiver = self;
  v11.super_class = type metadata accessor for AddTagsRootViewController();
  v9 = [(AddTagsRootViewController *)&v11 initWithRootViewController:controllerCopy];

  return v9;
}

- (_TtC22AddTagsActionExtension25AddTagsRootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1000041A8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100002A50(v5, v7, bundle);
}

@end