@interface UserNotificationManagerDelegate
- (_TtC13CoreIDVSharedP33_881EC008BCF5B7587B4DE56AEEEE7BAF31UserNotificationManagerDelegate)init;
- (void)userNotificationCenter:(UNUserNotificationCenter *)a3 didReceiveNotificationResponse:(UNNotificationResponse *)a4 withCompletionHandler:(id)a5;
@end

@implementation UserNotificationManagerDelegate

- (void)userNotificationCenter:(UNUserNotificationCenter *)a3 didReceiveNotificationResponse:(UNNotificationResponse *)a4 withCompletionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_225CCE994();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_225CF9CC8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_225CF9CD0;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_225CBCC70(0, 0, v12, &unk_225D02030, v17);
}

- (_TtC13CoreIDVSharedP33_881EC008BCF5B7587B4DE56AEEEE7BAF31UserNotificationManagerDelegate)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC13CoreIDVSharedP33_881EC008BCF5B7587B4DE56AEEEE7BAF31UserNotificationManagerDelegate_continuations;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FDF8);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = MEMORY[0x277D84F98];
  *(&self->super.isa + v4) = v5;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(UserNotificationManagerDelegate *)&v7 init];
}

@end