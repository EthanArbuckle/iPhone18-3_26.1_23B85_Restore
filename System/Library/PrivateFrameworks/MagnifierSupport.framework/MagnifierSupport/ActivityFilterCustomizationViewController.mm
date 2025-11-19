@interface ActivityFilterCustomizationViewController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (_TtC16MagnifierSupport41ActivityFilterCustomizationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)loadView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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
  v2 = self;
  sub_257CF0CCC();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_257CF0E68(a3);
}

- (_TtC16MagnifierSupport41ActivityFilterCustomizationViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_257CF1040(v5, v7, a4);
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4 >= 2)
  {
    return 0;
  }

  else
  {
    return 6;
  }
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
  v12 = sub_257CF1448(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4 > 1)
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

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  sub_257CF1F2C(a4);
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

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v6 = sub_257ECCEB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  v10 = a3;
  v11 = self;
  LOBYTE(self) = sub_257CF2034();

  (*(v7 + 8))(v9, v6);
  return self & 1;
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
  sub_257CF19A8(v10);

  (*(v7 + 8))(v9, v6);
}

@end