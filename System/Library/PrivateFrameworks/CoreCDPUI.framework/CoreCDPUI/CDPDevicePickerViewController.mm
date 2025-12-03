@interface CDPDevicePickerViewController
- (CDPDevicePickerViewController)initWithDevices:(id)devices delegate:(id)delegate tableViewStyle:(int64_t)style;
- (double)heightForFooterInTableView:(id)view;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)escapeOffers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)viewForFooterInTableView:(id)view;
- (void)setDevices:(id)devices;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation CDPDevicePickerViewController

- (CDPDevicePickerViewController)initWithDevices:(id)devices delegate:(id)delegate tableViewStyle:(int64_t)style
{
  devicesCopy = devices;
  delegateCopy = delegate;
  prevailingLocalSecretType = [devicesCopy prevailingLocalSecretType];
  v11 = CDPLocalizedString();
  if (prevailingLocalSecretType == 2)
  {
    v12 = @"DEVICE_PICKER_SUBTITLE_ALL_MAC";
  }

  else
  {
    v12 = @"DEVICE_PICKER_SUBTITLE";
  }

  v13 = [MEMORY[0x277CFD508] builderForKey:v12];
  mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
  deviceClass = [mEMORY[0x277CFD4F8] deviceClass];
  v16 = [v13 addDeviceClass:deviceClass];
  localizedString = [v16 localizedString];
  v18 = [(CDPTableViewController *)self initWithTitle:v11 subTitle:localizedString];

  if (v18)
  {
    objc_storeStrong(&v18->_devices, devices);
    objc_storeWeak(&v18->_delegate, delegateCopy);
    [(CDPTableViewController *)v18 setTableViewStyle:style];
  }

  return v18;
}

- (id)escapeOffers
{
  escapeOffers = self->_escapeOffers;
  if (!escapeOffers)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [WeakRetained devicePicker:self escapeOffersForDevices:self->_devices];
    v6 = self->_escapeOffers;
    self->_escapeOffers = v5;

    escapeOffers = self->_escapeOffers;
  }

  return escapeOffers;
}

- (double)heightForFooterInTableView:(id)view
{
  escapeOffers = [(CDPDevicePickerViewController *)self escapeOffers];
  v4 = [escapeOffers count] * 45.0;

  return v4;
}

- (id)viewForFooterInTableView:(id)view
{
  escapeOffers = [(CDPDevicePickerViewController *)self escapeOffers];
  v5 = [escapeOffers count];

  if (v5)
  {
    escapeOffers2 = [(CDPDevicePickerViewController *)self escapeOffers];
    v7 = [escapeOffers2 aaf_map:&__block_literal_global_1];

    v8 = [objc_alloc(MEMORY[0x277D75A68]) initWithArrangedSubviews:v7];
    [v8 setAxis:1];
    [v8 setAlignment:3];
    [v8 setDistribution:4];
    if ([MEMORY[0x277CFD560] isNaturalUIEnabled])
    {
      [v8 setAlignment:1];
      [v8 setLayoutMargins:{0.0, 24.0, 0.0, 0.0}];
      [v8 setLayoutMarginsRelativeArrangement:1];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __58__CDPDevicePickerViewController_viewForFooterInTableView___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D75220];
  v3 = a2;
  v4 = [v2 buttonWithType:1];
  v5 = [v3 escapeOfferName];
  [v4 setTitle:v5 forState:0];

  v6 = [v4 titleLabel];
  v7 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
  [v6 setFont:v7];

  [v4 addTarget:v3 action:sel_handleEscapeAction_ forControlEvents:64];
  [v4 sizeToFit];

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  tableView = [(CDPTableViewController *)self tableView];
  v9 = [tableView dequeueReusableCellWithIdentifier:@"CDPDeviceCell"];

  if (!v9)
  {
    v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:@"CDPDeviceCell"];
    [v9 setAccessoryType:1];
  }

  v10 = -[NSArray objectAtIndexedSubscript:](self->_devices, "objectAtIndexedSubscript:", [pathCopy row]);
  localizedName = [v10 localizedName];
  textLabel = [v9 textLabel];
  [textLabel setText:localizedName];

  v13 = MEMORY[0x277D74300];
  textLabel2 = [v9 textLabel];
  font = [textLabel2 font];
  [font pointSize];
  v16 = [v13 boldSystemFontOfSize:?];
  textLabel3 = [v9 textLabel];
  [textLabel3 setFont:v16];

  model = [v10 model];
  detailTextLabel = [v9 detailTextLabel];
  [detailTextLabel setText:model];

  style = [viewCopy style];
  if (style == 2)
  {
    [MEMORY[0x277D75348] systemGray6Color];
  }

  else
  {
    [MEMORY[0x277D75348] systemBackgroundColor];
  }
  v21 = ;
  [v9 setBackgroundColor:v21];

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  devices = self->_devices;
  v7 = [pathCopy row];

  v8 = [(NSArray *)devices objectAtIndexedSubscript:v7];
  [WeakRetained devicePicker:self didSelectDevice:v8];
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v4 = [(CDPDevicePickerViewController *)self traitCollection:view];
  preferredContentSizeCategory = [v4 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    v6 = *MEMORY[0x277D76F30];
  }

  else
  {
    v6 = 60.0;
  }

  return v6;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  result = 0.0;
  if (!section)
  {
    [(UIButton *)self->_remoteApprovalButton frame:view];
    return v7 + 45.0;
  }

  return result;
}

- (void)setDevices:(id)devices
{
  objc_storeStrong(&self->_devices, devices);
  devicesCopy = devices;
  escapeOffers = self->_escapeOffers;
  self->_escapeOffers = 0;

  tableView = [(CDPTableViewController *)self tableView];
  [tableView reloadData];
}

@end