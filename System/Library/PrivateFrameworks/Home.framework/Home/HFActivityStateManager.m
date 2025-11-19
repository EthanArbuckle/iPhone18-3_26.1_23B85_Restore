@interface HFActivityStateManager
- (HFActivityStateManager)init;
- (void)fetchActivityState;
- (void)fetchHomeActivityStateStatusWithCompletionHandler:(id)a3;
- (void)home:(id)a3 didUpdateHomeActivityState:(unint64_t)a4 isActivityStateHoldActive:(BOOL)a5 activityStateHoldEndDate:(id)a6 transitionalStateEndDate:(id)a7;
- (void)homeKitDispatcher:(id)a3 manager:(id)a4 didChangeHome:(id)a5;
- (void)residentDevice:(id)a3 didUpdateStatus:(unint64_t)a4;
- (void)updateHomeActivityHoldStateWithCompletionHandler:(id)a3;
- (void)updateHomeActivityStateTo:(unint64_t)a3 completionHandler:(id)a4;
@end

@implementation HFActivityStateManager

- (void)fetchHomeActivityStateStatusWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_20DD65114();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20DD969E8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_20DD969F0;
  v13[5] = v12;
  v14 = self;
  sub_20DAB35AC(0, 0, v8, &unk_20DD969F8, v13);
}

- (void)fetchActivityState
{
  v2 = self;
  sub_20DA8D3EC();
}

- (void)updateHomeActivityStateTo:(unint64_t)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_20DD65114();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_20DD969C8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_20DD969D0;
  v15[5] = v14;
  v16 = self;
  sub_20DAB35AC(0, 0, v10, &unk_20DD969D8, v15);
}

- (void)updateHomeActivityHoldStateWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_20DD65114();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20DD969B8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_20DD94D90;
  v13[5] = v12;
  v14 = self;
  sub_20DAB35AC(0, 0, v8, &unk_20DD95520, v13);
}

- (void)home:(id)a3 didUpdateHomeActivityState:(unint64_t)a4 isActivityStateHoldActive:(BOOL)a5 activityStateHoldEndDate:(id)a6 transitionalStateEndDate:(id)a7
{
  v9 = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - v18;
  if (a6)
  {
    sub_20DD63674();
    v20 = sub_20DD636C4();
    (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  }

  else
  {
    v21 = sub_20DD636C4();
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  }

  if (a7)
  {
    sub_20DD63674();
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = sub_20DD636C4();
  (*(*(v23 - 8) + 56))(v17, v22, 1, v23);
  v24 = a3;
  v25 = self;
  sub_20DA907CC(v24, a4, v9, v19, v17);

  sub_20D9D76EC(v17, &unk_27C843810, &qword_20DD93F00);
  sub_20D9D76EC(v19, &unk_27C843810, &qword_20DD93F00);
}

- (void)residentDevice:(id)a3 didUpdateStatus:(unint64_t)a4
{
  v5 = a3;
  v6 = self;
  sub_20DA92880();
}

- (void)homeKitDispatcher:(id)a3 manager:(id)a4 didChangeHome:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_20DA92F24(a5);
}

- (HFActivityStateManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end