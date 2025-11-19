@interface InternalPeopleDetectionOptionsViewController
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (_TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation InternalPeopleDetectionOptionsViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_257CAFD5C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  [(InternalPeopleDetectionOptionsViewController *)&v9 viewWillAppear:v3];
  v5 = [v4 navigationItem];
  v6 = sub_257ECF4C0();
  [v5 setTitle_];

  v7 = sub_257CB4058();
  v8 = OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_recordedFileArray;
  swift_beginAccess();
  *&v4[v8] = v7;
}

- (_TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_257CAFFEC(v5, v7, a4);
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
  v12 = sub_257CB0334(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (*(*(self + OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_availableInternalPeopleDetectionSections) + 16) <= a4)
  {
    v6 = 0;

    return v6;
  }

  if ((a4 & 0x8000000000000000) == 0)
  {
    sub_257C69B84();
    v5 = sub_257ECF4C0();

    v6 = v5;

    return v6;
  }

  __break(1u);
  return self;
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
  sub_257CB0D68(v10);

  (*(v7 + 8))(v9, v6);
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v6 = sub_257ECCEB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  v10 = a3;
  v11 = self;
  LOBYTE(self) = sub_257CB4954();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v4 = sub_257ECCEB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  (*(v5 + 8))(v7, v4);
  return 1;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v8 = sub_257ECCEB0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  v12 = a3;
  v13 = self;
  sub_257CB2040(v12, a4, v11);

  (*(v9 + 8))(v11, v8);
}

@end