@interface ClinicalSharingServer
- (_TtC19HealthRecordsDaemon21ClinicalSharingServer)init;
- (id)exportedInterface;
- (void)remote_gatherQueryDiagnosticsWithOptions:(unint64_t)a3 date:(id)a4 completion:(id)a5;
- (void)remote_scheduleSharingHealthDataWithReason:(int64_t)a3 completion:(id)a4;
- (void)remote_shareHealthDataWithOptions:(unint64_t)a3 reason:(int64_t)a4 date:(id)a5 completion:(id)a6;
- (void)remote_submitDailyAnalyticsWithCompletion:(id)a3;
- (void)remote_submitOnboardingAnalyticsForStepIdentifier:(id)a3 context:(id)a4 completion:(id)a5;
@end

@implementation ClinicalSharingServer

- (_TtC19HealthRecordsDaemon21ClinicalSharingServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)remote_shareHealthDataWithOptions:(unint64_t)a3 reason:(int64_t)a4 date:(id)a5 completion:(id)a6
{
  sub_251B3F274(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - v13;
  v15 = _Block_copy(a6);
  if (a5)
  {
    sub_251C6FFE4();
    v16 = sub_251C70014();
    (*(*(v16 - 8) + 56))(v14, 0, 1, v16);
  }

  else
  {
    v17 = sub_251C70014();
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  }

  _Block_copy(v15);
  v18 = self;
  sub_251B3E1BC(a3, a4, v14, v18, v15);
  _Block_release(v15);
  _Block_release(v15);

  sub_251B3F168(v14, &qword_2813E7500, MEMORY[0x277CC9578]);
}

- (void)remote_scheduleSharingHealthDataWithReason:(int64_t)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = self;
  sub_251B3E790(a3, v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)remote_gatherQueryDiagnosticsWithOptions:(unint64_t)a3 date:(id)a4 completion:(id)a5
{
  v8 = sub_251C70014();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a5);
  sub_251C6FFE4();
  _Block_copy(v13);
  v14 = self;
  sub_251B3EB60(a3, v12, v14, v13);
  _Block_release(v13);
  _Block_release(v13);

  (*(v9 + 8))(v12, v8);
}

- (void)remote_submitDailyAnalyticsWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_251B3CCF4(sub_251B3F358, v5);
}

- (void)remote_submitOnboardingAnalyticsForStepIdentifier:(id)a3 context:(id)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_251C70F14();
  v9 = v8;
  v10 = sub_251C70F14();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  v14 = self;
  sub_251B3D360(v7, v9, v10, v12, sub_251B3DF78, v13);
}

- (id)exportedInterface
{
  v2 = HKClinicalSharingServerInterface();

  return v2;
}

@end