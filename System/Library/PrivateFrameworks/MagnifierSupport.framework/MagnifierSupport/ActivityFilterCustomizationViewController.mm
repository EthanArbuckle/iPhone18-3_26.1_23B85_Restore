@interface ActivityFilterCustomizationViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (_TtC16MagnifierSupport41ActivityFilterCustomizationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)loadView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ActivityFilterCustomizationViewController

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(ActivityFilterCustomizationViewController *)&v3 loadView];
  sub_257CF09A8();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_257CF0CCC();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_257CF0E68(appear);
}

- (_TtC16MagnifierSupport41ActivityFilterCustomizationViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_257CF1040(v5, v7, bundle);
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section >= 2)
  {
    return 0;
  }

  else
  {
    return 6;
  }
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
  v12 = sub_257CF1448(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section > 1)
  {
    v7 = 0;
  }

  else
  {
    sub_257CF08A4();
    if (v5)
    {
      v6 = sub_257ECF4C0();

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  sub_257CF1F2C(section);
  if (v4)
  {
    v5 = sub_257ECF4C0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v6 = sub_257ECCEB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_257CF2034();

  (*(v7 + 8))(v9, v6);
  return self & 1;
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
  sub_257CF19A8(viewCopy);

  (*(v7 + 8))(v9, v6);
}

@end