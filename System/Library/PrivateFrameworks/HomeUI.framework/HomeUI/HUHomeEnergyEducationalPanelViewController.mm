@interface HUHomeEnergyEducationalPanelViewController
- (HUHomeEnergyEducationalPanelViewController)initWithCoder:(id)coder;
- (HUHomeEnergyEducationalPanelViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
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

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8207C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for HomeEnergyEducationalPanelViewController();
  v13.receiver = self;
  v13.super_class = v8;
  selfCopy = self;
  [(HUHomeEnergyEducationalPanelViewController *)&v13 viewDidAppear:appearCopy];
  sub_20D563798();
  v10 = sub_20D5637A8();
  (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  v11 = OBJC_IVAR___HUHomeEnergyEducationalPanelViewController_modelInformationSheetStartTime;
  swift_beginAccess();
  sub_20CFAF29C(v7, selfCopy + v11);
  swift_endAccess();
  [objc_opt_self() saveViewVisitEvent_];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_20CFAE854(disappear);
}

- (HUHomeEnergyEducationalPanelViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_20D567838();
    v6 = OBJC_IVAR___HUHomeEnergyEducationalPanelViewController_modelInformationSheetStartTime;
    v7 = sub_20D5637A8();
    (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
    bundleCopy = bundle;
    v9 = sub_20D5677F8();
  }

  else
  {
    v10 = OBJC_IVAR___HUHomeEnergyEducationalPanelViewController_modelInformationSheetStartTime;
    v11 = sub_20D5637A8();
    (*(*(v11 - 8) + 56))(self + v10, 1, 1, v11);
    bundleCopy2 = bundle;
    v9 = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for HomeEnergyEducationalPanelViewController();
  v13 = [(HUHomeEnergyEducationalPanelViewController *)&v15 initWithNibName:v9 bundle:bundle];

  return v13;
}

- (HUHomeEnergyEducationalPanelViewController)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR___HUHomeEnergyEducationalPanelViewController_modelInformationSheetStartTime;
  v6 = sub_20D5637A8();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v10.receiver = self;
  v10.super_class = type metadata accessor for HomeEnergyEducationalPanelViewController();
  coderCopy = coder;
  v8 = [(HUHomeEnergyEducationalPanelViewController *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end