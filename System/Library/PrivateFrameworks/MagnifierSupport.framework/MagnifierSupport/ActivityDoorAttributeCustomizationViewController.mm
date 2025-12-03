@interface ActivityDoorAttributeCustomizationViewController
- (_TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ActivityDoorAttributeCustomizationViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_257E6E998();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_257C001B4(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(ActivityDoorAttributeCustomizationViewController *)&v8 viewWillDisappear:disappearCopy];
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

- (_TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_257ECF500();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_257E6FD4C(v5, v7, bundle);
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
  {
    return 0;
  }

  v5 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_doorAttributes;
  swift_beginAccess();
  return (*(&self->super.super.super.isa + v5))[2];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_257ECCEB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_257E701F4(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if (section)
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_257ECCEB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  viewCopy = view;
  selfCopy = self;
  sub_257E70624(viewCopy);

  (*(v7 + 8))(v9, v6);
}

@end