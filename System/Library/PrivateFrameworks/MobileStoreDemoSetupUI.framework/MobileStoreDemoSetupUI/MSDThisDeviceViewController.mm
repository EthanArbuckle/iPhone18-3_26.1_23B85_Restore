@interface MSDThisDeviceViewController
- (MSDThisDeviceViewController)init;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation MSDThisDeviceViewController

- (MSDThisDeviceViewController)init
{
  v10.receiver = self;
  v10.super_class = MSDThisDeviceViewController;
  v2 = [(MSDThisDeviceViewController *)&v10 init];
  if (v2)
  {
    v3 = MGCopyAnswer();
    v4 = MGCopyAnswer();
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v3, v4];
    [(MSDThisDeviceViewController *)v2 setOsString:v5];

    v6 = MGCopyAnswer();
    [(MSDThisDeviceViewController *)v2 setSerialNumber:v6];

    v7 = MGCopyAnswer();
    [(MSDThisDeviceViewController *)v2 setDeviceModel:v7];

    v8 = [MSDSetupUILocalization localizedStringForKey:@"THIS_DEVICE_HEADER"];
    [(MSDThisDeviceViewController *)v2 setTitle:v8];
  }

  return v2;
}

- (void)viewDidLoad
{
  v29[4] = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = MSDThisDeviceViewController;
  [(MSDThisDeviceViewController *)&v28 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setDataSource:self];
  [v4 setScrollEnabled:0];
  [v4 setUserInteractionEnabled:0];
  view = [(MSDThisDeviceViewController *)self view];
  [view addSubview:v4];

  topAnchor = [v4 topAnchor];
  view2 = [(MSDThisDeviceViewController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v29[0] = v23;
  bottomAnchor = [v4 bottomAnchor];
  view3 = [(MSDThisDeviceViewController *)self view];
  safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide2 bottomAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v29[1] = v18;
  leftAnchor = [v4 leftAnchor];
  view4 = [(MSDThisDeviceViewController *)self view];
  safeAreaLayoutGuide3 = [view4 safeAreaLayoutGuide];
  leftAnchor2 = [safeAreaLayoutGuide3 leftAnchor];
  v9 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v29[2] = v9;
  rightAnchor = [v4 rightAnchor];
  view5 = [(MSDThisDeviceViewController *)self view];
  safeAreaLayoutGuide4 = [view5 safeAreaLayoutGuide];
  rightAnchor2 = [safeAreaLayoutGuide4 rightAnchor];
  v14 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v29[3] = v14;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v17];
  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"ThisDeviceViewTableCell"];

  v15 = *MEMORY[0x277D85DE8];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy row] > 2)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v6 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"ThisDeviceViewTableCell"];
  defaultContentConfiguration = [v6 defaultContentConfiguration];
  if (![pathCopy row])
  {
    v10 = [MSDSetupUILocalization localizedStringForKey:@"MODEL_OPTION"];
    [defaultContentConfiguration setText:v10];

    deviceModel = [(MSDThisDeviceViewController *)self deviceModel];
    goto LABEL_9;
  }

  if ([pathCopy row] == 1)
  {
    v8 = [MSDSetupUILocalization localizedStringForKey:@"OS_OPTION"];
    [defaultContentConfiguration setText:v8];

    deviceModel = [(MSDThisDeviceViewController *)self osString];
LABEL_9:
    v12 = deviceModel;
    [defaultContentConfiguration setSecondaryText:deviceModel];

    goto LABEL_10;
  }

  if ([pathCopy row] == 2)
  {
    v11 = [MSDSetupUILocalization localizedStringForKey:@"SERIAL_NUMBER_OPTION"];
    [defaultContentConfiguration setText:v11];

    deviceModel = [(MSDThisDeviceViewController *)self serialNumber];
    goto LABEL_9;
  }

LABEL_10:
  [v6 setContentConfiguration:defaultContentConfiguration];

LABEL_11:

  return v6;
}

@end