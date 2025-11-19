@interface CAMSystemMenuController
- (CAMSystemMenuController)init;
- (CAMSystemMenuControllerDelegate)menuControllerDelegate;
- (NSString)captureMenuOptionSymbolName;
- (UICommand)cameraSettingsCommand;
- (UIMenu)cameraRollMenu;
- (UIMenu)captureMenu;
- (UIMenu)captureModeMenu;
- (UIMenu)flashModeMenu;
- (UIMenu)flipCameraMenu;
- (UIMenu)livePhotoModeMenu;
- (UIMenu)timerMenu;
- (id)valueForCommand:(id)a3;
- (void)installCameraMenuCommandsWithBuilder:(id)a3;
- (void)validateCameraMenuCommand:(id)a3;
@end

@implementation CAMSystemMenuController

- (CAMSystemMenuControllerDelegate)menuControllerDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIMenu)cameraRollMenu
{
  v2 = sub_1A396D9C8();

  return v2;
}

- (UIMenu)captureMenu
{
  v2 = self;
  v3 = sub_1A396B790();

  return v3;
}

- (UIMenu)captureModeMenu
{
  v2 = self;
  v3 = sub_1A396BA08();

  return v3;
}

- (UIMenu)flashModeMenu
{
  v2 = sub_1A396DE30();

  return v2;
}

- (UIMenu)flipCameraMenu
{
  v2 = sub_1A396E3A8();

  return v2;
}

- (UIMenu)livePhotoModeMenu
{
  v2 = sub_1A396E630();

  return v2;
}

- (UIMenu)timerMenu
{
  v2 = sub_1A396EAA4();

  return v2;
}

- (UICommand)cameraSettingsCommand
{
  v2 = sub_1A396F35C();

  return v2;
}

- (NSString)captureMenuOptionSymbolName
{
  v2 = self;
  v3 = [(CAMSystemMenuController *)v2 menuControllerDelegate];
  if (v3)
  {
    CAMCaptureIsStillCaptureMode([(CAMSystemMenuControllerDelegate *)v3 currentCaptureMode]);
    swift_unknownObjectRelease();
  }

  v4 = sub_1A3A31810();

  return v4;
}

- (void)installCameraMenuCommandsWithBuilder:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1A396C3E8(a3);
  swift_unknownObjectRelease();
}

- (void)validateCameraMenuCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A396C8E4(v4);
}

- (id)valueForCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A396D57C(v4, &v13);

  v6 = v14;
  if (v14)
  {
    v7 = __swift_project_boxed_opaque_existential_1(&v13, v14);
    v8 = *(v6 - 8);
    MEMORY[0x1EEE9AC00](v7);
    v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_1A3A321B0();
    (*(v8 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_0(&v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CAMSystemMenuController)init
{
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = CAMSystemMenuController;
  return [(CAMSystemMenuController *)&v4 init];
}

@end