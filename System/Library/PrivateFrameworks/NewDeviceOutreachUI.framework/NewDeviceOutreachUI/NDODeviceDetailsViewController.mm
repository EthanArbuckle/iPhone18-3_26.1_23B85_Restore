@interface NDODeviceDetailsViewController
- (NDODeviceDetailsViewController)initWithCoder:(id)a3;
- (NDODeviceDetailsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (NDODeviceDetailsViewController)initWithViewControllerCreation:(id)a3;
- (id)createViewController;
- (id)refreshSpecifiers;
- (void)embedViewControllerWithController:(id)a3;
- (void)loadCoverageDetailsContentViewController;
- (void)setCreateViewController:(id)a3;
- (void)viewDidLoad;
@end

@implementation NDODeviceDetailsViewController

- (id)createViewController
{
  if (*(self + OBJC_IVAR___NDODeviceDetailsViewController_createViewController))
  {
    v2 = *(self + OBJC_IVAR___NDODeviceDetailsViewController_createViewController + 8);
    v5[4] = *(self + OBJC_IVAR___NDODeviceDetailsViewController_createViewController);
    v5[5] = v2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_25BDCFF74;
    v5[3] = &block_descriptor_24;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCreateViewController:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_25BDD1D84;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___NDODeviceDetailsViewController_createViewController);
  v8 = *(self + OBJC_IVAR___NDODeviceDetailsViewController_createViewController);
  v9 = *(self + OBJC_IVAR___NDODeviceDetailsViewController_createViewController + 8);
  *v7 = v6;
  v7[1] = v4;
  v10 = self;
  sub_25BDA8480(v8);
}

- (id)refreshSpecifiers
{
  v2 = self;
  v3 = sub_25BDD022C();
  v5 = v4;

  if (v3)
  {
    v7[4] = v3;
    v7[5] = v5;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_25BDA2E38;
    v7[3] = &block_descriptor_14_0;
    v3 = _Block_copy(v7);
  }

  return v3;
}

- (void)viewDidLoad
{
  v2 = self;
  NDODeviceDetailsViewController.viewDidLoad()();
}

- (NDODeviceDetailsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_25BDDFE48();
    v6 = (self + OBJC_IVAR___NDODeviceDetailsViewController_createViewController);
    *v6 = 0;
    v6[1] = 0;
    v7 = a4;
    v8 = sub_25BDDFE38();
  }

  else
  {
    v9 = (self + OBJC_IVAR___NDODeviceDetailsViewController_createViewController);
    *v9 = 0;
    v9[1] = 0;
    v10 = a4;
    v8 = 0;
  }

  v13.receiver = self;
  v13.super_class = NDODeviceDetailsViewController;
  v11 = [(NDODeviceDetailsViewController *)&v13 initWithNibName:v8 bundle:a4];

  return v11;
}

- (NDODeviceDetailsViewController)initWithCoder:(id)a3
{
  v3 = (self + OBJC_IVAR___NDODeviceDetailsViewController_createViewController);
  *v3 = 0;
  v3[1] = 0;
  v7.receiver = self;
  v7.super_class = NDODeviceDetailsViewController;
  v4 = a3;
  v5 = [(NDODeviceDetailsViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (NDODeviceDetailsViewController)initWithViewControllerCreation:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = [(NDODeviceDetailsViewController *)self init];
  v7 = (v6 + OBJC_IVAR___NDODeviceDetailsViewController_createViewController);
  v8 = *(v6 + OBJC_IVAR___NDODeviceDetailsViewController_createViewController);
  v9 = *(v6 + OBJC_IVAR___NDODeviceDetailsViewController_createViewController + 8);
  *v7 = sub_25BDD1CDC;
  v7[1] = v5;
  v10 = v6;
  sub_25BDA8480(v8);

  return v10;
}

- (void)loadCoverageDetailsContentViewController
{
  v2 = self;
  sub_25BDD0FF0();
}

- (void)embedViewControllerWithController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_25BDD14A4(a3);
}

@end