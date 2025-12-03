@interface DDUIConfirmationSceneManager
- (_TtC21DeviceDiscoveryUICore28DDUIConfirmationSceneManager)init;
- (id)scene:(id)scene handleActions:(id)actions;
- (void)sceneDidDeactivate:(id)deactivate withContext:(id)context;
@end

@implementation DDUIConfirmationSceneManager

- (_TtC21DeviceDiscoveryUICore28DDUIConfirmationSceneManager)init
{
  v3 = OBJC_IVAR____TtC21DeviceDiscoveryUICore28DDUIConfirmationSceneManager_continuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82A48, &qword_230F3EAB0);
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v6.receiver = self;
  v6.super_class = type metadata accessor for DDUIConfirmationSceneManager();
  return [(DDUIConfirmationSceneManager *)&v6 init];
}

- (id)scene:(id)scene handleActions:(id)actions
{
  sub_230F38538();
  sub_230F38584();
  v6 = sub_230F39778();
  sceneCopy = scene;
  selfCopy = self;
  sub_230F36054(sceneCopy, v6);
  v10 = v9;

  if (v10)
  {
    v11 = sub_230F39768();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)sceneDidDeactivate:(id)deactivate withContext:(id)context
{
  deactivateCopy = deactivate;
  contextCopy = context;
  selfCopy = self;
  identifier = [deactivateCopy identifier];
  sub_230F39608();

  LOBYTE(identifier) = sub_230F368AC();

  if (identifier)
  {
    sub_230F36AE4(deactivateCopy, 1);
  }
}

@end