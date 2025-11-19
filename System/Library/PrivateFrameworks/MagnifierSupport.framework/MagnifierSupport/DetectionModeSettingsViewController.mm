@interface DetectionModeSettingsViewController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldIndentWhileEditingRowAtIndexPath:(id)a4;
- (_TtC16MagnifierSupport35DetectionModeSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (void)didToggleDetectLanguagesSwitch:(id)a3;
- (void)didToggleDetectionSwitch:(id)a3;
- (void)didToggleFeedbackSwitch:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation DetectionModeSettingsViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_257CACA5C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_257C5F9C8(a3);
}

- (void)didToggleDetectionSwitch:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257CAE1AC(v4);
}

- (void)didToggleFeedbackSwitch:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257CAE694(v4);
}

- (void)didToggleDetectLanguagesSwitch:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257CAEA74(v4);
}

- (_TtC16MagnifierSupport35DetectionModeSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_257CAD110(v5, v7, a4);
}

- (void)presentationControllerDidDismiss:(id)a3
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = self;
    sub_257D3AC80();
    swift_unknownObjectRelease();
  }
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

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v4 = sub_257ECCEB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  (*(v5 + 8))(v7, v4);
  return 0;
}

- (BOOL)tableView:(id)a3 shouldIndentWhileEditingRowAtIndexPath:(id)a4
{
  v4 = sub_257ECCEB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  (*(v5 + 8))(v7, v4);
  return 0;
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
  sub_257CAD984(v10);

  (*(v7 + 8))(v9, v6);
}

@end