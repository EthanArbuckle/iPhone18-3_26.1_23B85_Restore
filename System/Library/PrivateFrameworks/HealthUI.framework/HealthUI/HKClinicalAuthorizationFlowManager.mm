@interface HKClinicalAuthorizationFlowManager
+ (id)tableViewHeaderIcon;
- (HKClinicalAuthorizationFlowManager)init;
- (HKClinicalAuthorizationFlowManager)initWithHealthStore:(id)a3 healthRecordsStore:(id)a4;
- (id)createInitialViewControllerWithContext:(id)a3 delegate:(id)a4;
- (void)healthRecordsStore:(id)a3 observedAccountsEvent:(unint64_t)a4;
- (void)registerIngestionStatusObserver:(id)a3;
- (void)removeIngestionStatusObserver:(id)a3;
@end

@implementation HKClinicalAuthorizationFlowManager

- (HKClinicalAuthorizationFlowManager)initWithHealthStore:(id)a3 healthRecordsStore:(id)a4
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_1C3C47738(a3, a4);

  return v6;
}

+ (id)tableViewHeaderIcon
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 0;
}

- (void)registerIngestionStatusObserver:(id)a3
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  v5 = self;
  sub_1C3C481D8(a3);

  swift_unknownObjectRelease();
}

- (void)removeIngestionStatusObserver:(id)a3
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [*(&self->super.isa + OBJC_IVAR___HKClinicalAuthorizationFlowManager_ingestionObserverSet) unregisterObserver_];
}

- (id)createInitialViewControllerWithContext:(id)a3 delegate:(id)a4
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = objc_allocWithZone(type metadata accessor for ClinicalAuthorizationAccountsOverviewViewController());
  v7 = a3;
  swift_unknownObjectRetain_n();
  v8 = v7;
  sub_1C3CD9360(a4, v8);
  v10 = v9;
  v11 = objc_allocWithZone(type metadata accessor for ClinicalAuthorizationAccountsIntroViewController());
  v12 = v10;
  sub_1C3C8852C(a4, v12);
  v14 = v13;

  return v14;
}

- (void)healthRecordsStore:(id)a3 observedAccountsEvent:(unint64_t)a4
{
  ObjectType = swift_getObjectType();
  sub_1C3C48E9C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C3D203A4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_1C3D20374();
  v11 = self;
  v12 = sub_1C3D20364();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a4;
  v13[5] = v11;
  v13[6] = ObjectType;
  sub_1C3CD907C(0, 0, v9, &unk_1C3D5F8B0, v13);
}

- (HKClinicalAuthorizationFlowManager)init
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end