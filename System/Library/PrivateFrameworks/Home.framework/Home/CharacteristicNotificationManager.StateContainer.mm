@interface CharacteristicNotificationManager.StateContainer
- (BOOL)cacheUpToDateWithNotificationsEnabledForCharacteristic:(id)characteristic inHome:(id)home;
- (BOOL)notificationsEnabledForCharacteristic:(id)characteristic inHome:(id)home;
- (_TtCC4Home33CharacteristicNotificationManager14StateContainer)init;
- (id)lastNotificationsEnableRequestDateForCharacteristic:(id)characteristic forHome:(id)home;
@end

@implementation CharacteristicNotificationManager.StateContainer

- (BOOL)notificationsEnabledForCharacteristic:(id)characteristic inHome:(id)home
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  characteristicCopy = characteristic;
  homeCopy = home;
  selfCopy = self;
  sub_20D9DED48(characteristicCopy, homeCopy, v10);

  v14 = sub_20DD636C4();
  LOBYTE(selfCopy) = (*(*(v14 - 8) + 48))(v10, 1, v14) != 1;
  sub_20D9D76EC(v10, &unk_27C843810, &qword_20DD93F00);
  return selfCopy;
}

- (id)lastNotificationsEnableRequestDateForCharacteristic:(id)characteristic forHome:(id)home
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - v9;
  characteristicCopy = characteristic;
  homeCopy = home;
  selfCopy = self;
  sub_20D9DED48(characteristicCopy, homeCopy, v10);

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

- (BOOL)cacheUpToDateWithNotificationsEnabledForCharacteristic:(id)characteristic inHome:(id)home
{
  characteristicCopy = characteristic;
  homeCopy = home;
  selfCopy = self;
  v9 = sub_20D9DF358(characteristicCopy, homeCopy);

  return v9;
}

- (_TtCC4Home33CharacteristicNotificationManager14StateContainer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end