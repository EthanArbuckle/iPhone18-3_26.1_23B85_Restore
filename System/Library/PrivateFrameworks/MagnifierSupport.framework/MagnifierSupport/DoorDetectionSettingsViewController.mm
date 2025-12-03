@interface DoorDetectionSettingsViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (_TtC16MagnifierSupport35DoorDetectionSettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)colorPickerViewControllerDidSelectColor:(id)color;
- (void)didToggleBackTapSwitch:(id)switch;
- (void)didToggleDecorationsSwitch:(id)switch;
- (void)didToggleFeedbackSwitch:(id)switch;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation DoorDetectionSettingsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_257BF46F4();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_257BF5118(appear);
}

- (_TtC16MagnifierSupport35DoorDetectionSettingsViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_257BF52D4(v5, v7, bundle);
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_257BF9778(section);

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
  v12 = sub_257BF5A80(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)didToggleFeedbackSwitch:(id)switch
{
  switchCopy = switch;
  selfCopy = self;
  sub_257BFA4C4(switchCopy);
}

- (void)didToggleBackTapSwitch:(id)switch
{
  switchCopy = switch;
  selfCopy = self;
  sub_257BFA8A4(switchCopy);
}

- (void)didToggleDecorationsSwitch:(id)switch
{
  switchCopy = switch;
  selfCopy = self;
  sub_257BFAA88(switchCopy);
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v4 = sub_257ECCEB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  v8 = sub_257BFB094();
  (*(v5 + 8))(v7, v4);
  return v8;
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
  sub_257BF7F40(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (void)colorPickerViewControllerDidSelectColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_257BF8BA4(colorCopy);
}

@end