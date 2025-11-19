@interface HelpfulRemoteUiHostingVC
- (_TtC14FamilyCircleUI24HelpfulRemoteUiHostingVC)initWithCoder:(id)a3;
- (_TtC14FamilyCircleUI24HelpfulRemoteUiHostingVC)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dismissModalRUIController:(RUINavigationController *)a3 completion:(id)a4;
- (void)presentModalRUIController:(RUINavigationController *)a3 completion:(id)a4;
- (void)replaceModalRUIController:(RUINavigationController *)a3 byController:(RUINavigationController *)a4 completion:(id)a5;
- (void)viewDidLoad;
@end

@implementation HelpfulRemoteUiHostingVC

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HelpfulRemoteUiHostingVC();
  v2 = v3.receiver;
  [(HelpfulRemoteUiHostingVC *)&v3 viewDidLoad];
  sub_21BD8E2C4();
}

- (void)presentModalRUIController:(RUINavigationController *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_21BE28DAC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_21BE4A080;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_21BE4A088;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_21BDC4F90(0, 0, v10, &unk_21BE4A090, v15);
}

- (void)replaceModalRUIController:(RUINavigationController *)a3 byController:(RUINavigationController *)a4 completion:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_21BE28DAC();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_21BE4A060;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_21BE4A068;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_21BDC4F90(0, 0, v12, &unk_21BE4A070, v17);
}

- (void)dismissModalRUIController:(RUINavigationController *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_21BE28DAC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_21BE4A050;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_21BE32A10;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_21BDC4F90(0, 0, v10, &unk_21BE391F0, v15);
}

- (_TtC14FamilyCircleUI24HelpfulRemoteUiHostingVC)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_21BE28A0C();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC14FamilyCircleUI24HelpfulRemoteUiHostingVC_progressView) = 0;
    *(&self->super.super.super.isa + OBJC_IVAR____TtC14FamilyCircleUI24HelpfulRemoteUiHostingVC_shouldAddSpinner) = 0;
    v6 = a4;
    v7 = sub_21BE289CC();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC14FamilyCircleUI24HelpfulRemoteUiHostingVC_progressView) = 0;
    *(&self->super.super.super.isa + OBJC_IVAR____TtC14FamilyCircleUI24HelpfulRemoteUiHostingVC_shouldAddSpinner) = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for HelpfulRemoteUiHostingVC();
  v9 = [(HelpfulRemoteUiHostingVC *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC14FamilyCircleUI24HelpfulRemoteUiHostingVC)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14FamilyCircleUI24HelpfulRemoteUiHostingVC_progressView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14FamilyCircleUI24HelpfulRemoteUiHostingVC_shouldAddSpinner) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for HelpfulRemoteUiHostingVC();
  v4 = a3;
  v5 = [(HelpfulRemoteUiHostingVC *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end