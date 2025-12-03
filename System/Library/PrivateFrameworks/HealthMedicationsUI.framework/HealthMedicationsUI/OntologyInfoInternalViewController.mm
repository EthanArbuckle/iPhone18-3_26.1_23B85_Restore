@interface OntologyInfoInternalViewController
- (_TtC19HealthMedicationsUI34OntologyInfoInternalViewController)initWithCoder:(id)coder;
- (_TtC19HealthMedicationsUI34OntologyInfoInternalViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC19HealthMedicationsUI34OntologyInfoInternalViewController)initWithStyle:(int64_t)style;
- (_TtC19HealthMedicationsUI34OntologyInfoInternalViewController)initWithUsingInsetStyling:(BOOL)styling;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)viewDidLoad;
@end

@implementation OntologyInfoInternalViewController

- (_TtC19HealthMedicationsUI34OntologyInfoInternalViewController)initWithCoder:(id)coder
{
  result = sub_228393300();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(HKTableViewController *)&v3 viewDidLoad];
  sub_2282477F4();
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = (*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI34OntologyInfoInternalViewController_conceptsDataSource))[11];
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, 2);
    result = v5 + 2;
    if (!v6)
    {
      return result;
    }

LABEL_6:
    __break(1u);
    return result;
  }

  v8 = sub_2283930D0();
  v6 = __OFADD__(v8, 2);
  result = v8 + 2;
  if (v6)
  {
    goto LABEL_6;
  }

  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_22838F760();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F720();
  viewCopy = view;
  selfCopy = self;
  v13 = OntologyInfoInternalViewController.tableView(_:cellForRowAt:)(viewCopy, v10);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (_TtC19HealthMedicationsUI34OntologyInfoInternalViewController)initWithUsingInsetStyling:(BOOL)styling
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC19HealthMedicationsUI34OntologyInfoInternalViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC19HealthMedicationsUI34OntologyInfoInternalViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end