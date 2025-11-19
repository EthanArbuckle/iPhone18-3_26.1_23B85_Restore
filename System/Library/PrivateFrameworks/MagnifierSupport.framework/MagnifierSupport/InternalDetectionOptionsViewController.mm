@interface InternalDetectionOptionsViewController
- (_TtC16MagnifierSupport38InternalDetectionOptionsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)didTapPhotoSelector:(id)a3;
- (void)didToggleAutomationSwitch:(id)a3;
- (void)didToggleFreezeFrameSwitch:(id)a3;
- (void)didToggleRecordingSwitch:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation InternalDetectionOptionsViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_257E64750();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(InternalDetectionOptionsViewController *)&v7 viewWillAppear:v3];
  v5 = [v4 navigationItem];
  v6 = sub_257ECF4C0();
  [v5 setTitle_];
}

- (_TtC16MagnifierSupport38InternalDetectionOptionsViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_257E649BC(v5, v7, a4);
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_257E6913C(a4);

  return v8;
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
  v12 = sub_257E64D18(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)didToggleRecordingSwitch:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257E692B8(v4);
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (*(*(self + OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_availableInternalDetectionSections) + 16) <= a4)
  {
    v6 = 0;

    return v6;
  }

  if ((a4 & 0x8000000000000000) == 0)
  {
    sub_257E644F4();
    v5 = sub_257ECF4C0();

    v6 = v5;

    return v6;
  }

  __break(1u);
  return self;
}

- (void)didToggleAutomationSwitch:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257E66D24(v4, &unk_286914CE8, sub_257E69B08, &block_descriptor_40);
}

- (void)didTapPhotoSelector:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257E668D0(v4);
}

- (void)didToggleFreezeFrameSwitch:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257E66D24(v4, &unk_286914C98, sub_257E69AB8, &block_descriptor_33_4);
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
  sub_257E672F8(v10);

  (*(v7 + 8))(v9, v6);
}

@end