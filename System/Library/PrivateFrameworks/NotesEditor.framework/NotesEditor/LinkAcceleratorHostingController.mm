@interface LinkAcceleratorHostingController
- (_TtC11NotesEditor32LinkAcceleratorHostingController)initWithCoder:(id)coder;
- (_TtC11NotesEditor32LinkAcceleratorHostingController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation LinkAcceleratorHostingController

- (_TtC11NotesEditor32LinkAcceleratorHostingController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    sub_2154A1D6C();
    v8 = self + OBJC_IVAR____TtC11NotesEditor32LinkAcceleratorHostingController_acceleratorHostingDelegate;
    *v8 = 0u;
    *(v8 + 1) = 0u;
    *(v8 + 4) = 0;
    bundleCopy = bundle;
    name = sub_2154A1D2C();
  }

  else
  {
    v10 = self + OBJC_IVAR____TtC11NotesEditor32LinkAcceleratorHostingController_acceleratorHostingDelegate;
    *v10 = 0u;
    *(v10 + 1) = 0u;
    *(v10 + 4) = 0;
    bundleCopy2 = bundle;
  }

  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(LinkAcceleratorHostingController *)&v14 initWithNibName:name bundle:bundle];

  return v12;
}

- (_TtC11NotesEditor32LinkAcceleratorHostingController)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  v6 = self + OBJC_IVAR____TtC11NotesEditor32LinkAcceleratorHostingController_acceleratorHostingDelegate;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  coderCopy = coder;
  v8 = [(LinkAcceleratorHostingController *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end