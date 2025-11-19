@interface CosmeticDiagnosticsViewController
- (_TtC18CosmeticAssessment33CosmeticDiagnosticsViewController)initWithCoder:(id)a3;
- (_TtC18CosmeticAssessment33CosmeticDiagnosticsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CosmeticDiagnosticsViewController

- (_TtC18CosmeticAssessment33CosmeticDiagnosticsViewController)initWithCoder:(id)a3
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  sub_247C5E538();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  ObjectType = swift_getObjectType();
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7.receiver = self;
  v7.super_class = ObjectType;
  v6 = self;
  [(CosmeticDiagnosticsViewController *)&v7 viewIsAppearing:v3];
  sub_247C444F8();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FF0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  sub_247D1FEA8();
  sub_247D1FE98();
  v9 = MEMORY[0x277D85700];
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15.receiver = self;
  v15.super_class = ObjectType;
  v10 = self;
  [(CosmeticDiagnosticsViewController *)&v15 viewWillAppear:v3];
  v11 = sub_247D1FEC8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = v10;
  v13 = sub_247D1FE98();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = v9;
  v14[4] = v12;
  sub_247CD082C(0, 0, v8, &unk_247D244B0, v14);
}

- (void)viewDidLayoutSubviews
{
  ObjectType = swift_getObjectType();
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18.receiver = self;
  v18.super_class = ObjectType;
  v4 = self;
  [(CosmeticDiagnosticsViewController *)&v18 viewDidLayoutSubviews];
  v5 = sub_247C41308();
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = *(&v4->super.super.super.isa + OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_protectedProperties);
  v15 = *(*v14 + *MEMORY[0x277D841D0] + 16);
  v16 = (*(*v14 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v14 + v16));
  v17 = (v14 + *(type metadata accessor for CosmeticDiagnosticsViewController.CaptureBufferQueueProperties(0) + 36) + v15);
  *v17 = v7;
  v17[1] = v9;
  v17[2] = v11;
  v17[3] = v13;
  os_unfair_lock_unlock((v14 + v16));
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  ObjectType = swift_getObjectType();
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14.receiver = self;
  v14.super_class = ObjectType;
  swift_unknownObjectRetain();
  v9 = self;
  [(CosmeticDiagnosticsViewController *)&v14 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v13[4] = sub_247C60F60;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_247C9451C;
  v13[3] = &block_descriptor_107;
  v11 = _Block_copy(v13);
  v12 = v9;

  [a4 animateAlongsideTransition:v11 completion:0];
  swift_unknownObjectRelease();

  _Block_release(v11);
}

- (_TtC18CosmeticAssessment33CosmeticDiagnosticsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end