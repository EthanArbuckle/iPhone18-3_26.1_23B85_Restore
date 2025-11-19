@interface ActivityDoorAttributeCustomizationViewController
- (_TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ActivityDoorAttributeCustomizationViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_257E6E998();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_257C001B4(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(ActivityDoorAttributeCustomizationViewController *)&v8 viewWillDisappear:v3];
  v5 = v4 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_delegate;
  swift_beginAccess();
  if (*(v5 + 24))
  {
    sub_257C024BC(v5, v7);
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v6 = off_286910FD8;
    type metadata accessor for ActivityDoorDetectionCustomizationViewController();
    v6();

    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
  }
}

- (_TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_257ECF500();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_257E6FD4C(v5, v7, a4);
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    return 0;
  }

  v5 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_doorAttributes;
  swift_beginAccess();
  return (*(&self->super.super.super.isa + v5))[2];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_257ECCEB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  v10 = a3;
  v11 = self;
  v12 = sub_257E701F4(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if (a4)
  {
    v5 = 0;
  }

  else
  {
    sub_257C023CC();
    if (v7)
    {
      v8 = sub_257ECF4C0();

      v5 = v8;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_257ECCEB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  v10 = a3;
  v11 = self;
  sub_257E70624(v10);

  (*(v7 + 8))(v9, v6);
}

@end