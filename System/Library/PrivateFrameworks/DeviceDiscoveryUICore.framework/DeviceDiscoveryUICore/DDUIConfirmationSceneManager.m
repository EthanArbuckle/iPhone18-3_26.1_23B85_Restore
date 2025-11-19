@interface DDUIConfirmationSceneManager
- (_TtC21DeviceDiscoveryUICore28DDUIConfirmationSceneManager)init;
- (id)scene:(id)a3 handleActions:(id)a4;
- (void)sceneDidDeactivate:(id)a3 withContext:(id)a4;
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

- (id)scene:(id)a3 handleActions:(id)a4
{
  sub_230F38538();
  sub_230F38584();
  v6 = sub_230F39778();
  v7 = a3;
  v8 = self;
  sub_230F36054(v7, v6);
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

- (void)sceneDidDeactivate:(id)a3 withContext:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = self;
  v8 = [v9 identifier];
  sub_230F39608();

  LOBYTE(v8) = sub_230F368AC();

  if (v8)
  {
    sub_230F36AE4(v9, 1);
  }
}

@end