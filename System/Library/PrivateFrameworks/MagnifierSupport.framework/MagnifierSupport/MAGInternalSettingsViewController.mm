@interface MAGInternalSettingsViewController
- (_TtC16MagnifierSupport33MAGInternalSettingsViewController)initWithCoder:(id)coder;
- (_TtC16MagnifierSupport33MAGInternalSettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation MAGInternalSettingsViewController

- (id)specifiers
{
  selfCopy = self;
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_257ECCEB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  viewCopy = view;
  selfCopy = self;
  sub_257EB0080(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (_TtC16MagnifierSupport33MAGInternalSettingsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    sub_257ECF500();
    bundleCopy = bundle;
    name = sub_257ECF4C0();
  }

  else
  {
    bundleCopy2 = bundle;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(MAGInternalSettingsViewController *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (_TtC16MagnifierSupport33MAGInternalSettingsViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(MAGInternalSettingsViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end