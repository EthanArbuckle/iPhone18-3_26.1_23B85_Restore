@interface HomeActivityStateAdapter
- (void)homeActivityStateManager:(id)a3 didMoveToState:(id)a4;
@end

@implementation HomeActivityStateAdapter

- (void)homeActivityStateManager:(id)a3 didMoveToState:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882030, &qword_22A586C30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882038, &qword_22A586C38);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v19 - v13;
  sub_229564F88(self + OBJC_IVAR____TtC13HomeKitDaemonP33_748D0C001171CDD48878909A76481E9024HomeActivityStateAdapter_continuation, v9, &qword_27D882030, &qword_22A586C30);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881F80, &qword_22A586A80);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    __break(1u);
  }

  else
  {
    v19[1] = a4;
    v17 = a4;
    v18 = self;
    sub_22A4DDA0C();

    (*(v11 + 8))(v14, v10);
    (*(v16 + 8))(v9, v15);
  }
}

@end