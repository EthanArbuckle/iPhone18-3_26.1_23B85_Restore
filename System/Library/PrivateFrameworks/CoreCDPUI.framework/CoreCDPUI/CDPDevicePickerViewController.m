@interface CDPDevicePickerViewController
- (CDPDevicePickerViewController)initWithDevices:(id)a3 delegate:(id)a4 tableViewStyle:(int64_t)a5;
- (double)heightForFooterInTableView:(id)a3;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)escapeOffers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)viewForFooterInTableView:(id)a3;
- (void)setDevices:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation CDPDevicePickerViewController

- (CDPDevicePickerViewController)initWithDevices:(id)a3 delegate:(id)a4 tableViewStyle:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 prevailingLocalSecretType];
  v11 = CDPLocalizedString();
  if (v10 == 2)
  {
    v12 = @"DEVICE_PICKER_SUBTITLE_ALL_MAC";
  }

  else
  {
    v12 = @"DEVICE_PICKER_SUBTITLE";
  }

  v13 = [MEMORY[0x277CFD508] builderForKey:v12];
  v14 = [MEMORY[0x277CFD4F8] sharedInstance];
  v15 = [v14 deviceClass];
  v16 = [v13 addDeviceClass:v15];
  v17 = [v16 localizedString];
  v18 = [(CDPTableViewController *)self initWithTitle:v11 subTitle:v17];

  if (v18)
  {
    objc_storeStrong(&v18->_devices, a3);
    objc_storeWeak(&v18->_delegate, v9);
    [(CDPTableViewController *)v18 setTableViewStyle:a5];
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

- (double)heightForFooterInTableView:(id)a3
{
  v3 = [(CDPDevicePickerViewController *)self escapeOffers];
  v4 = [v3 count] * 45.0;

  return v4;
}

- (id)viewForFooterInTableView:(id)a3
{
  v4 = [(CDPDevicePickerViewController *)self escapeOffers];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(CDPDevicePickerViewController *)self escapeOffers];
    v7 = [v6 aaf_map:&__block_literal_global_1];

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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CDPTableViewController *)self tableView];
  v9 = [v8 dequeueReusableCellWithIdentifier:@"CDPDeviceCell"];

  if (!v9)
  {
    v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:@"CDPDeviceCell"];
    [v9 setAccessoryType:1];
  }

  v10 = -[NSArray objectAtIndexedSubscript:](self->_devices, "objectAtIndexedSubscript:", [v6 row]);
  v11 = [v10 localizedName];
  v12 = [v9 textLabel];
  [v12 setText:v11];

  v13 = MEMORY[0x277D74300];
  v14 = [v9 textLabel];
  v15 = [v14 font];
  [v15 pointSize];
  v16 = [v13 boldSystemFontOfSize:?];
  v17 = [v9 textLabel];
  [v17 setFont:v16];

  v18 = [v10 model];
  v19 = [v9 detailTextLabel];
  [v19 setText:v18];

  v20 = [v7 style];
  if (v20 == 2)
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  devices = self->_devices;
  v7 = [v5 row];

  v8 = [(NSArray *)devices objectAtIndexedSubscript:v7];
  [WeakRetained devicePicker:self didSelectDevice:v8];
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = [(CDPDevicePickerViewController *)self traitCollection:a3];
  v5 = [v4 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v5))
  {
    v6 = *MEMORY[0x277D76F30];
  }

  else
  {
    v6 = 60.0;
  }

  return v6;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  result = 0.0;
  if (!a4)
  {
    [(UIButton *)self->_remoteApprovalButton frame:a3];
    return v7 + 45.0;
  }

  return result;
}

- (void)setDevices:(id)a3
{
  objc_storeStrong(&self->_devices, a3);
  v5 = a3;
  escapeOffers = self->_escapeOffers;
  self->_escapeOffers = 0;

  v7 = [(CDPTableViewController *)self tableView];
  [v7 reloadData];
}

@end