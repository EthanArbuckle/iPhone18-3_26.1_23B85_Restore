@interface NotificationServiceClient.ExportedObject
- (_TtCC24FaceTimeNotificationCore25NotificationServiceClient14ExportedObject)init;
- (void)receivedActionWithAlertIdentifier:(id)a3 action:(id)a4;
@end

@implementation NotificationServiceClient.ExportedObject

- (void)receivedActionWithAlertIdentifier:(id)a3 action:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82898, &qword_24AA00D88);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22 - v9;
  v11 = sub_24A9FED40();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v13 = *(&self->super.isa + OBJC_IVAR____TtCC24FaceTimeNotificationCore25NotificationServiceClient14ExportedObject_onReceiveAction);
  v12 = *&self->onReceiveAction[OBJC_IVAR____TtCC24FaceTimeNotificationCore25NotificationServiceClient14ExportedObject_onReceiveAction];
  sub_24A9FED20();
  v14 = a3;
  v15 = a4;
  v16 = v14;
  v17 = v15;
  v18 = self;

  v19 = sub_24A9FED10();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v13;
  v20[5] = v12;
  v20[6] = v16;
  v20[7] = v17;
  sub_24A9CAA28(0, 0, v10, &unk_24AA013E8, v20);
}

- (_TtCC24FaceTimeNotificationCore25NotificationServiceClient14ExportedObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end