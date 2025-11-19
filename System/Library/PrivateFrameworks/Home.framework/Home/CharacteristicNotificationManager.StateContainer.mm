@interface CharacteristicNotificationManager.StateContainer
- (BOOL)cacheUpToDateWithNotificationsEnabledForCharacteristic:(id)a3 inHome:(id)a4;
- (BOOL)notificationsEnabledForCharacteristic:(id)a3 inHome:(id)a4;
- (_TtCC4Home33CharacteristicNotificationManager14StateContainer)init;
- (id)lastNotificationsEnableRequestDateForCharacteristic:(id)a3 forHome:(id)a4;
@end

@implementation CharacteristicNotificationManager.StateContainer

- (BOOL)notificationsEnabledForCharacteristic:(id)a3 inHome:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  v11 = a3;
  v12 = a4;
  v13 = self;
  sub_20D9DED48(v11, v12, v10);

  v14 = sub_20DD636C4();
  LOBYTE(v13) = (*(*(v14 - 8) + 48))(v10, 1, v14) != 1;
  sub_20D9D76EC(v10, &unk_27C843810, &qword_20DD93F00);
  return v13;
}

- (id)lastNotificationsEnableRequestDateForCharacteristic:(id)a3 forHome:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - v9;
  v11 = a3;
  v12 = a4;
  v13 = self;
  sub_20D9DED48(v11, v12, v10);

  v14 = sub_20DD636C4();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v10, 1, v14);
  v17 = 0;
  if (v16 != 1)
  {
    v18 = sub_20DD63624();
    (*(v15 + 8))(v10, v14);
    v17 = v18;
  }

  return v17;
}

- (BOOL)cacheUpToDateWithNotificationsEnabledForCharacteristic:(id)a3 inHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_20D9DF358(v6, v7);

  return v9;
}

- (_TtCC4Home33CharacteristicNotificationManager14StateContainer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end