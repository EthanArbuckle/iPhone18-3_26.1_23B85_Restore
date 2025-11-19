@interface MSDThisDeviceViewController
- (MSDThisDeviceViewController)init;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
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
  v5 = [(MSDThisDeviceViewController *)self view];
  [v5 addSubview:v4];

  v26 = [v4 topAnchor];
  v27 = [(MSDThisDeviceViewController *)self view];
  v25 = [v27 safeAreaLayoutGuide];
  v24 = [v25 topAnchor];
  v23 = [v26 constraintEqualToAnchor:v24];
  v29[0] = v23;
  v21 = [v4 bottomAnchor];
  v22 = [(MSDThisDeviceViewController *)self view];
  v20 = [v22 safeAreaLayoutGuide];
  v19 = [v20 bottomAnchor];
  v18 = [v21 constraintEqualToAnchor:v19];
  v29[1] = v18;
  v16 = [v4 leftAnchor];
  v6 = [(MSDThisDeviceViewController *)self view];
  v7 = [v6 safeAreaLayoutGuide];
  v8 = [v7 leftAnchor];
  v9 = [v16 constraintEqualToAnchor:v8];
  v29[2] = v9;
  v10 = [v4 rightAnchor];
  v11 = [(MSDThisDeviceViewController *)self view];
  v12 = [v11 safeAreaLayoutGuide];
  v13 = [v12 rightAnchor];
  v14 = [v10 constraintEqualToAnchor:v13];
  v29[3] = v14;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v17];
  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"ThisDeviceViewTableCell"];

  v15 = *MEMORY[0x277D85DE8];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([v5 row] > 2)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v6 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"ThisDeviceViewTableCell"];
  v7 = [v6 defaultContentConfiguration];
  if (![v5 row])
  {
    v10 = [MSDSetupUILocalization localizedStringForKey:@"MODEL_OPTION"];
    [v7 setText:v10];

    v9 = [(MSDThisDeviceViewController *)self deviceModel];
    goto LABEL_9;
  }

  if ([v5 row] == 1)
  {
    v8 = [MSDSetupUILocalization localizedStringForKey:@"OS_OPTION"];
    [v7 setText:v8];

    v9 = [(MSDThisDeviceViewController *)self osString];
LABEL_9:
    v12 = v9;
    [v7 setSecondaryText:v9];

    goto LABEL_10;
  }

  if ([v5 row] == 2)
  {
    v11 = [MSDSetupUILocalization localizedStringForKey:@"SERIAL_NUMBER_OPTION"];
    [v7 setText:v11];

    v9 = [(MSDThisDeviceViewController *)self serialNumber];
    goto LABEL_9;
  }

LABEL_10:
  [v6 setContentConfiguration:v7];

LABEL_11:

  return v6;
}

@end