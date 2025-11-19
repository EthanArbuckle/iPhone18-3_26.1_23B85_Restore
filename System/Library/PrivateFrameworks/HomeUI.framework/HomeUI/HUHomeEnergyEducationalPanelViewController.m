@interface HUHomeEnergyEducationalPanelViewController
- (HUHomeEnergyEducationalPanelViewController)initWithCoder:(id)a3;
- (HUHomeEnergyEducationalPanelViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation HUHomeEnergyEducationalPanelViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HomeEnergyEducationalPanelViewController();
  v2 = v3.receiver;
  [(HUHomeEnergyEducationalPanelViewController *)&v3 viewDidLoad];
  sub_20CFAF0B8();
  sub_20CFAEC2C();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8207C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for HomeEnergyEducationalPanelViewController();
  v13.receiver = self;
  v13.super_class = v8;
  v9 = self;
  [(HUHomeEnergyEducationalPanelViewController *)&v13 viewDidAppear:v3];
  sub_20D563798();
  v10 = sub_20D5637A8();
  (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  v11 = OBJC_IVAR___HUHomeEnergyEducationalPanelViewController_modelInformationSheetStartTime;
  swift_beginAccess();
  sub_20CFAF29C(v7, v9 + v11);
  swift_endAccess();
  [objc_opt_self() saveViewVisitEvent_];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_20CFAE854(a3);
}

- (HUHomeEnergyEducationalPanelViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_20D567838();
    v6 = OBJC_IVAR___HUHomeEnergyEducationalPanelViewController_modelInformationSheetStartTime;
    v7 = sub_20D5637A8();
    (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
    v8 = a4;
    v9 = sub_20D5677F8();
  }

  else
  {
    v10 = OBJC_IVAR___HUHomeEnergyEducationalPanelViewController_modelInformationSheetStartTime;
    v11 = sub_20D5637A8();
    (*(*(v11 - 8) + 56))(self + v10, 1, 1, v11);
    v12 = a4;
    v9 = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for HomeEnergyEducationalPanelViewController();
  v13 = [(HUHomeEnergyEducationalPanelViewController *)&v15 initWithNibName:v9 bundle:a4];

  return v13;
}

- (HUHomeEnergyEducationalPanelViewController)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR___HUHomeEnergyEducationalPanelViewController_modelInformationSheetStartTime;
  v6 = sub_20D5637A8();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v10.receiver = self;
  v10.super_class = type metadata accessor for HomeEnergyEducationalPanelViewController();
  v7 = a3;
  v8 = [(HUHomeEnergyEducationalPanelViewController *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end