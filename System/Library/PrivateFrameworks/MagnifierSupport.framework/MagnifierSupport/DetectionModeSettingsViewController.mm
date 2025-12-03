@interface DetectionModeSettingsViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path;
- (_TtC16MagnifierSupport35DetectionModeSettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)didToggleDetectLanguagesSwitch:(id)switch;
- (void)didToggleDetectionSwitch:(id)switch;
- (void)didToggleFeedbackSwitch:(id)switch;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation DetectionModeSettingsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_257CACA5C();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_257C5F9C8(appear);
}

- (void)didToggleDetectionSwitch:(id)switch
{
  switchCopy = switch;
  selfCopy = self;
  sub_257CAE1AC(switchCopy);
}

- (void)didToggleFeedbackSwitch:(id)switch
{
  switchCopy = switch;
  selfCopy = self;
  sub_257CAE694(switchCopy);
}

- (void)didToggleDetectLanguagesSwitch:(id)switch
{
  switchCopy = switch;
  selfCopy = self;
  sub_257CAEA74(switchCopy);
}

- (_TtC16MagnifierSupport35DetectionModeSettingsViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_257CAD110(v5, v7, bundle);
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    sub_257D3AC80();
    swift_unknownObjectRelease();
  }
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v4 = sub_257ECCEB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  (*(v5 + 8))(v7, v4);
  return 1;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v4 = sub_257ECCEB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  (*(v5 + 8))(v7, v4);
  return 0;
}

- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path
{
  v4 = sub_257ECCEB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  (*(v5 + 8))(v7, v4);
  return 0;
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
  sub_257CAD984(viewCopy);

  (*(v7 + 8))(v9, v6);
}

@end