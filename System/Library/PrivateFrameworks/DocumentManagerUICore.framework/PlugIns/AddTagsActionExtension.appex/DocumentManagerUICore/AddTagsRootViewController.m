@interface AddTagsRootViewController
- (_TtC22AddTagsActionExtension25AddTagsRootViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC22AddTagsActionExtension25AddTagsRootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC22AddTagsActionExtension25AddTagsRootViewController)initWithRootViewController:(id)a3;
- (void)done:(id)a3;
- (void)viewDidLoad;
@end

@implementation AddTagsRootViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100001DD0();
}

- (void)done:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_100004288();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
    v5 = self;
  }

  [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC22AddTagsActionExtension25AddTagsRootViewController_addTagsViewController) dismissViewControllerAnimated:1 completion:{0, v6, v7}];
  sub_100003EA8(&v6, &qword_10000C5B8, &qword_100004890);
}

- (_TtC22AddTagsActionExtension25AddTagsRootViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  if (!a3)
  {
    ObjCClassMetadata = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return sub_10000287C(ObjCClassMetadata, v6);
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = swift_getObjCClassMetadata();
  return sub_10000287C(ObjCClassMetadata, v6);
}

- (_TtC22AddTagsActionExtension25AddTagsRootViewController)initWithRootViewController:(id)a3
{
  v5 = OBJC_IVAR____TtC22AddTagsActionExtension25AddTagsRootViewController_actionExtensionController;
  v6 = objc_allocWithZone(type metadata accessor for AddTagsActionExtensionController());
  v7 = a3;
  *(&self->super.super.super.super.isa + v5) = [v6 init];
  v8 = OBJC_IVAR____TtC22AddTagsActionExtension25AddTagsRootViewController_addTagsViewController;
  type metadata accessor for AddTagsActionViewController();
  *(&self->super.super.super.super.isa + v8) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11.receiver = self;
  v11.super_class = type metadata accessor for AddTagsRootViewController();
  v9 = [(AddTagsRootViewController *)&v11 initWithRootViewController:v7];

  return v9;
}

- (_TtC22AddTagsActionExtension25AddTagsRootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1000041A8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100002A50(v5, v7, a4);
}

@end