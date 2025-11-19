@interface LinkAcceleratorHostingController
- (_TtC11NotesEditor32LinkAcceleratorHostingController)initWithCoder:(id)a3;
- (_TtC11NotesEditor32LinkAcceleratorHostingController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation LinkAcceleratorHostingController

- (_TtC11NotesEditor32LinkAcceleratorHostingController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_2154A1D6C();
    v8 = self + OBJC_IVAR____TtC11NotesEditor32LinkAcceleratorHostingController_acceleratorHostingDelegate;
    *v8 = 0u;
    *(v8 + 1) = 0u;
    *(v8 + 4) = 0;
    v9 = a4;
    a3 = sub_2154A1D2C();
  }

  else
  {
    v10 = self + OBJC_IVAR____TtC11NotesEditor32LinkAcceleratorHostingController_acceleratorHostingDelegate;
    *v10 = 0u;
    *(v10 + 1) = 0u;
    *(v10 + 4) = 0;
    v11 = a4;
  }

  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(LinkAcceleratorHostingController *)&v14 initWithNibName:a3 bundle:a4];

  return v12;
}

- (_TtC11NotesEditor32LinkAcceleratorHostingController)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = self + OBJC_IVAR____TtC11NotesEditor32LinkAcceleratorHostingController_acceleratorHostingDelegate;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v7 = a3;
  v8 = [(LinkAcceleratorHostingController *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end