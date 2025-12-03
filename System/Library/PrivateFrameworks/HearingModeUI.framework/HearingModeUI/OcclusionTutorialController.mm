@interface OcclusionTutorialController
- (_TtC13HearingModeUI27OcclusionTutorialController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (void)viewDidLoad;
@end

@implementation OcclusionTutorialController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2520418D0();
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_252063E34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252063E14();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_252043810();

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_252043A08(section);
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

- (_TtC13HearingModeUI27OcclusionTutorialController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end