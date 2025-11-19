@interface MAGInternalSettingsViewController
- (_TtC16MagnifierSupport33MAGInternalSettingsViewController)initWithCoder:(id)a3;
- (_TtC16MagnifierSupport33MAGInternalSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation MAGInternalSettingsViewController

- (id)specifiers
{
  v2 = self;
  v3 = sub_257EAF708();

  if (v3)
  {
    v4 = sub_257ECF7F0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
  sub_257EB0080(v10);

  (*(v7 + 8))(v9, v6);
}

- (_TtC16MagnifierSupport33MAGInternalSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_257ECF500();
    v8 = a4;
    a3 = sub_257ECF4C0();
  }

  else
  {
    v9 = a4;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(MAGInternalSettingsViewController *)&v12 initWithNibName:a3 bundle:a4];

  return v10;
}

- (_TtC16MagnifierSupport33MAGInternalSettingsViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(MAGInternalSettingsViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end