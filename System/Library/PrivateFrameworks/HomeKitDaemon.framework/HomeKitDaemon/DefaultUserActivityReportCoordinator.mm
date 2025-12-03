@interface DefaultUserActivityReportCoordinator
- (_TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator)init;
- (void)beginCoordinationWithCompletion:(id)completion;
- (void)configureWithDetectors:(id)detectors removeDetectors:(id)removeDetectors;
- (void)endCoordinationWithReason:(unint64_t)reason completion:(id)completion;
- (void)handleBackgroundTaskManagerTimerFiredWithNotification:(id)notification;
- (void)handleStateChangeForDetectorOfType:(unint64_t)type withReason:(unint64_t)reason;
- (void)isCoordinatingWithCompletion:(id)completion;
- (void)sendCoordinatedReportsForReason:(unint64_t)reason;
@end

@implementation DefaultUserActivityReportCoordinator

- (void)configureWithDetectors:(id)detectors removeDetectors:(id)removeDetectors
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  sub_229562F68(0, &qword_27D881388, off_278666358);
  v9 = sub_22A4DD83C();
  v10 = sub_22A4DD83C();
  v11 = sub_22A4DD9DC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = self;
  v12[5] = v9;
  v12[6] = v10;

  sub_22957F3C0(0, 0, v8, &unk_22A583AC0, v12);
}

- (void)sendCoordinatedReportsForReason:(unint64_t)reason
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v11 - v7;
  v9 = sub_22A4DD9DC();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = self;
  v10[5] = reason;

  sub_22957F3C0(0, 0, v8, &unk_22A583AB0, v10);
}

- (void)beginCoordinationWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_22A4DD9DC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22A583A90;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22A583A98;
  v13[5] = v12;

  sub_229859F70(0, 0, v8, &unk_22A583AA0, v13);
}

- (void)endCoordinationWithReason:(unint64_t)reason completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = reason;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22A4DD9DC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22A583A70;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22A583A78;
  v15[5] = v14;

  sub_229859F70(0, 0, v10, &unk_22A583A80, v15);
}

- (void)isCoordinatingWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_22A4DD9DC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22A583A60;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22A57B590;
  v13[5] = v12;

  sub_229859F70(0, 0, v8, &unk_22A581CC0, v13);
}

- (_TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleBackgroundTaskManagerTimerFiredWithNotification:(id)notification
{
  notificationCopy = notification;

  sub_2297BFD58(notificationCopy);
}

- (void)handleStateChangeForDetectorOfType:(unint64_t)type withReason:(unint64_t)reason
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v13 - v9;
  v11 = sub_22A4DD9DC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = self;
  v12[5] = type;
  v12[6] = reason;

  sub_22957F3C0(0, 0, v10, &unk_22A5839F8, v12);
}

@end