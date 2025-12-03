@interface InternalDetectionOptionsViewController
- (_TtC16MagnifierSupport38InternalDetectionOptionsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)didTapPhotoSelector:(id)selector;
- (void)didToggleAutomationSwitch:(id)switch;
- (void)didToggleFreezeFrameSwitch:(id)switch;
- (void)didToggleRecordingSwitch:(id)switch;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation InternalDetectionOptionsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_257E64750();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(InternalDetectionOptionsViewController *)&v7 viewWillAppear:appearCopy];
  navigationItem = [v4 navigationItem];
  v6 = sub_257ECF4C0();
  [navigationItem setTitle_];
}

- (_TtC16MagnifierSupport38InternalDetectionOptionsViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_257E649BC(v5, v7, bundle);
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_257E6913C(section);

  return v8;
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
  v12 = sub_257E64D18(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)didToggleRecordingSwitch:(id)switch
{
  switchCopy = switch;
  selfCopy = self;
  sub_257E692B8(switchCopy);
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (*(*(self + OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_availableInternalDetectionSections) + 16) <= section)
  {
    v6 = 0;

    return v6;
  }

  if ((section & 0x8000000000000000) == 0)
  {
    sub_257E644F4();
    v5 = sub_257ECF4C0();

    v6 = v5;

    return v6;
  }

  __break(1u);
  return self;
}

- (void)didToggleAutomationSwitch:(id)switch
{
  switchCopy = switch;
  selfCopy = self;
  sub_257E66D24(switchCopy, &unk_286914CE8, sub_257E69B08, &block_descriptor_40);
}

- (void)didTapPhotoSelector:(id)selector
{
  selectorCopy = selector;
  selfCopy = self;
  sub_257E668D0(selectorCopy);
}

- (void)didToggleFreezeFrameSwitch:(id)switch
{
  switchCopy = switch;
  selfCopy = self;
  sub_257E66D24(switchCopy, &unk_286914C98, sub_257E69AB8, &block_descriptor_33_4);
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
  sub_257E672F8(viewCopy);

  (*(v7 + 8))(v9, v6);
}

@end