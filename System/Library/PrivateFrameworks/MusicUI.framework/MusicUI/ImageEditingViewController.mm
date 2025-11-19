@interface ImageEditingViewController
- (_TtC7MusicUI26ImageEditingViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC7MusicUI26ImageEditingViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation ImageEditingViewController

- (_TtC7MusicUI26ImageEditingViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
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
    return sub_21694C694(ObjCClassMetadata, v6);
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = swift_getObjCClassMetadata();
  return sub_21694C694(ObjCClassMetadata, v6);
}

- (_TtC7MusicUI26ImageEditingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_21700E514();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_21694C7E8(v5, v7, a4);
}

@end