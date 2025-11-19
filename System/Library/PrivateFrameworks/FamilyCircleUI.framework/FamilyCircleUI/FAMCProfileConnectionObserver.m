@interface FAMCProfileConnectionObserver
- (_TtC14FamilyCircleUI29FAMCProfileConnectionObserver)init;
- (void)dealloc;
- (void)profileConnectionDidReceiveRestrictionChangedNotification:(id)a3 userInfo:(id)a4;
@end

@implementation FAMCProfileConnectionObserver

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  sub_21BB3A35C(self + OBJC_IVAR____TtC14FamilyCircleUI29FAMCProfileConnectionObserver_connection, v9);
  v4 = v10;
  v5 = v11;
  __swift_project_boxed_opaque_existential_1Tm(v9, v10);
  v6 = *(v5 + 24);
  v7 = self;
  v6(self, v4, v5);

  __swift_destroy_boxed_opaque_existential_0Tm(v9);
  v8.receiver = v7;
  v8.super_class = ObjectType;
  [(FAMCProfileConnectionObserver *)&v8 dealloc];
}

- (_TtC14FamilyCircleUI29FAMCProfileConnectionObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)profileConnectionDidReceiveRestrictionChangedNotification:(id)a3 userInfo:(id)a4
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_21BE28DAC();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = self;
  v11 = self;
  sub_21BBA932C(0, 0, v8, &unk_21BE4BC00, v10);
}

@end