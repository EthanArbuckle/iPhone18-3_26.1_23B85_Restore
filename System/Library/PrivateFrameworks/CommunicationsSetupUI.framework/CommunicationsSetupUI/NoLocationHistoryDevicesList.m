@interface NoLocationHistoryDevicesList
- (NoLocationHistoryDevicesList)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)setUpConstraints;
@end

@implementation NoLocationHistoryDevicesList

- (NoLocationHistoryDevicesList)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v9.receiver = self;
  v9.super_class = NoLocationHistoryDevicesList;
  v5 = [(PSTableCell *)&v9 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  if (v5)
  {
    v6 = [[_TtC21CommunicationsSetupUI28CKSettingsCheckInDevicesList alloc] initWithFullDataSharing:0];
    devicesList = v5->_devicesList;
    v5->_devicesList = v6;

    [(NoLocationHistoryDevicesList *)v5 setUpConstraints];
  }

  return v5;
}

- (void)setUpConstraints
{
  v32[4] = *MEMORY[0x277D85DE8];
  v3 = [(NoLocationHistoryDevicesList *)self devicesList];
  v4 = [v3 getView];

  v5 = [v4 view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(NoLocationHistoryDevicesList *)self inputViewController];
  [v6 addChildViewController:v4];

  v7 = [(NoLocationHistoryDevicesList *)self contentView];
  v8 = [v4 view];
  [v7 addSubview:v8];

  v22 = MEMORY[0x277CCAAD0];
  v31 = [v4 view];
  v29 = [v31 centerYAnchor];
  v30 = [(NoLocationHistoryDevicesList *)self contentView];
  v28 = [v30 centerYAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v32[0] = v27;
  v26 = [v4 view];
  v24 = [v26 centerXAnchor];
  v25 = [(NoLocationHistoryDevicesList *)self contentView];
  v23 = [v25 centerXAnchor];
  v21 = [v24 constraintEqualToAnchor:v23];
  v32[1] = v21;
  v20 = [v4 view];
  v19 = [v20 widthAnchor];
  v9 = [(NoLocationHistoryDevicesList *)self contentView];
  v10 = [v9 widthAnchor];
  v11 = [v19 constraintEqualToAnchor:v10];
  v32[2] = v11;
  v12 = [(NoLocationHistoryDevicesList *)self contentView];
  v13 = [v12 heightAnchor];
  v14 = [v4 view];
  v15 = [v14 heightAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v32[3] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:4];
  [v22 activateConstraints:v17];

  v18 = *MEMORY[0x277D85DE8];
}

@end