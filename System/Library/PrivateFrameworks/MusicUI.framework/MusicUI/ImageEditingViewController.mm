@interface ImageEditingViewController
- (_TtC7MusicUI26ImageEditingViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC7MusicUI26ImageEditingViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation ImageEditingViewController

- (_TtC7MusicUI26ImageEditingViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
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
    return sub_21694C694(ObjCClassMetadata, v6);
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  if (!toolbarClass)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = swift_getObjCClassMetadata();
  return sub_21694C694(ObjCClassMetadata, v6);
}

- (_TtC7MusicUI26ImageEditingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_21700E514();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_21694C7E8(v5, v7, bundle);
}

@end