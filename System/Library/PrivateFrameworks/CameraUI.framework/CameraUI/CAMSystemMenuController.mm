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
- (id)valueForCommand:(id)command;
- (void)installCameraMenuCommandsWithBuilder:(id)builder;
- (void)validateCameraMenuCommand:(id)command;
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
  selfCopy = self;
  v3 = sub_1A396B790();

  return v3;
}

- (UIMenu)captureModeMenu
{
  selfCopy = self;
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
  selfCopy = self;
  menuControllerDelegate = [(CAMSystemMenuController *)selfCopy menuControllerDelegate];
  if (menuControllerDelegate)
  {
    CAMCaptureIsStillCaptureMode([(CAMSystemMenuControllerDelegate *)menuControllerDelegate currentCaptureMode]);
    swift_unknownObjectRelease();
  }

  v4 = sub_1A3A31810();

  return v4;
}

- (void)installCameraMenuCommandsWithBuilder:(id)builder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1A396C3E8(builder);
  swift_unknownObjectRelease();
}

- (void)validateCameraMenuCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  sub_1A396C8E4(commandCopy);
}

- (id)valueForCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  sub_1A396D57C(commandCopy, &v13);

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