@interface NoLocationHistoryDevicesList
- (NoLocationHistoryDevicesList)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)setUpConstraints;
@end

@implementation NoLocationHistoryDevicesList

- (NoLocationHistoryDevicesList)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v9.receiver = self;
  v9.super_class = NoLocationHistoryDevicesList;
  v5 = [(PSTableCell *)&v9 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
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
  devicesList = [(NoLocationHistoryDevicesList *)self devicesList];
  getView = [devicesList getView];

  view = [getView view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  inputViewController = [(NoLocationHistoryDevicesList *)self inputViewController];
  [inputViewController addChildViewController:getView];

  contentView = [(NoLocationHistoryDevicesList *)self contentView];
  view2 = [getView view];
  [contentView addSubview:view2];

  v22 = MEMORY[0x277CCAAD0];
  view3 = [getView view];
  centerYAnchor = [view3 centerYAnchor];
  contentView2 = [(NoLocationHistoryDevicesList *)self contentView];
  centerYAnchor2 = [contentView2 centerYAnchor];
  v27 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v32[0] = v27;
  view4 = [getView view];
  centerXAnchor = [view4 centerXAnchor];
  contentView3 = [(NoLocationHistoryDevicesList *)self contentView];
  centerXAnchor2 = [contentView3 centerXAnchor];
  v21 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v32[1] = v21;
  view5 = [getView view];
  widthAnchor = [view5 widthAnchor];
  contentView4 = [(NoLocationHistoryDevicesList *)self contentView];
  widthAnchor2 = [contentView4 widthAnchor];
  v11 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v32[2] = v11;
  contentView5 = [(NoLocationHistoryDevicesList *)self contentView];
  heightAnchor = [contentView5 heightAnchor];
  view6 = [getView view];
  heightAnchor2 = [view6 heightAnchor];
  v16 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v32[3] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:4];
  [v22 activateConstraints:v17];

  v18 = *MEMORY[0x277D85DE8];
}

@end