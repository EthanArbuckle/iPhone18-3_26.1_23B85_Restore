@interface OcclusionTutorialController
- (_TtC13HearingModeUI27OcclusionTutorialController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (void)viewDidLoad;
@end

@implementation OcclusionTutorialController

- (void)viewDidLoad
{
  v2 = self;
  sub_2520418D0();
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_252063E34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252063E14();
  v11 = a3;
  v12 = self;
  v13 = sub_252043810();

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_252043A08(a4);
  v9 = v8;

  if (v9)
  {
    v10 = sub_2520646F4();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (_TtC13HearingModeUI27OcclusionTutorialController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end