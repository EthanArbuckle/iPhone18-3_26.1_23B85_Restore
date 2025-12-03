@interface BPSMultipleWatchMigrationView
- (BPSMultipleWatchMigrationView)initWithFrame:(CGRect)frame andStyle:(unint64_t)style;
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)selectedMigrationDevices;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)layoutSubviews;
- (void)setMigratableDevices:(id)devices;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation BPSMultipleWatchMigrationView

- (BPSMultipleWatchMigrationView)initWithFrame:(CGRect)frame andStyle:(unint64_t)style
{
  v11.receiver = self;
  v11.super_class = BPSMultipleWatchMigrationView;
  v5 = [(BPSMultipleWatchMigrationView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_style = style;
    v7 = [BPSMultipleWatchMigrationPickerTableView alloc];
    v8 = [(BPSMultipleWatchMigrationPickerTableView *)v7 initWithFrame:0 style:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    devicesTable = v6->_devicesTable;
    v6->_devicesTable = v8;

    [(BPSMultipleWatchMigrationPickerTableView *)v6->_devicesTable setAlwaysBounceVertical:0];
    [(BPSMultipleWatchMigrationPickerTableView *)v6->_devicesTable registerClass:objc_opt_class() forCellReuseIdentifier:@"COSMultipleWatchViewCellID"];
    [(BPSMultipleWatchMigrationPickerTableView *)v6->_devicesTable setAutoresizingMask:18];
    [(BPSMultipleWatchMigrationPickerTableView *)v6->_devicesTable setDelegate:v6];
    [(BPSMultipleWatchMigrationPickerTableView *)v6->_devicesTable setDataSource:v6];
    [(BPSMultipleWatchMigrationView *)v6 addSubview:v6->_devicesTable];
  }

  return v6;
}

- (void)layoutSubviews
{
  [(BPSMultipleWatchMigrationView *)self bounds];
  devicesTable = self->_devicesTable;

  [(BPSMultipleWatchMigrationPickerTableView *)devicesTable setFrame:?];
}

- (void)setMigratableDevices:(id)devices
{
  devicesCopy = devices;
  objc_storeStrong(&self->_migratableDevices, devices);
  v5 = [(NSArray *)self->_migratableDevices count];
  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v5];
  selectedStates = self->_selectedStates;
  self->_selectedStates = v6;

  if (v5 >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x277CBEC38];
    do
    {
      v10 = self->_selectedStates;
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
      [(NSMutableDictionary *)v10 setObject:v9 forKey:v11];

      ++v8;
    }

    while (v5 != v8);
  }

  [(BPSMultipleWatchMigrationPickerTableView *)self->_devicesTable reloadData];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  keyWindow = [mEMORY[0x277D75128] keyWindow];
  [keyWindow bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v22.origin.x = v7;
  v22.origin.y = v9;
  v22.size.width = v11;
  v22.size.height = v13;
  Width = CGRectGetWidth(v22);
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  maxPairedDeviceCount = [mEMORY[0x277D2BCF8] maxPairedDeviceCount];
  [(BPSMultipleWatchMigrationView *)self tableHeight];
  v18 = v17 * maxPairedDeviceCount;

  v19 = Width;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v16[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  viewCopy = view;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  selectedStates = self->_selectedStates;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(pathCopy, "row")}];
  v10 = [(NSMutableDictionary *)selectedStates objectForKeyedSubscript:v9];
  bOOLValue = [v10 BOOLValue];

  v12 = self->_selectedStates;
  v13 = [MEMORY[0x277CCABB0] numberWithInt:bOOLValue ^ 1u];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(pathCopy, "row")}];
  [(NSMutableDictionary *)v12 setObject:v13 forKey:v14];

  v16[0] = pathCopy;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];

  [viewCopy reloadRowsAtIndexPaths:v15 withRowAnimation:5];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"COSMultipleWatchViewCellID" forIndexPath:pathCopy];
  v8 = pathCopy;
  v9 = -[NSArray objectAtIndex:](self->_migratableDevices, "objectAtIndex:", [pathCopy row]);
  v10 = [v9 valueForProperty:*MEMORY[0x277D2BA78]];
  v11 = [v9 valueForProperty:*MEMORY[0x277D2BBA8]];
  textLabel = [v7 textLabel];
  v31 = v11;
  [textLabel setText:v11];

  v13 = [v9 valueForProperty:*MEMORY[0x277D2BBC0]];
  v29 = [v9 valueForProperty:*MEMORY[0x277D2BAC0]];
  v14 = BPSLocalizedShortEdition([MEMORY[0x277D37A78] materialFromDevice:v9], objc_msgSend(v29, "integerValue"), v13);
  v30 = v13;
  v15 = BPSShortLocalizedVariantSizeForProductType(v13);
  v16 = v15;
  if ([v14 length])
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.BridgePreferences"];
    [v18 localizedStringForKey:@"BIXBY_SIZE_EDITION_FORMATTER_%@_%@" value:&stru_285406330 table:@"Localizable"];
    v20 = v19 = self;
    v16 = [v17 stringWithFormat:v20, v14, v15];

    self = v19;
  }

  deviceDetailLabel = [v7 deviceDetailLabel];
  [deviceDetailLabel setText:v16];

  watchView = [v7 watchView];
  [watchView setAdvertisingName:v10];

  checkmarkView = [v7 checkmarkView];
  selectedStates = self->_selectedStates;
  v25 = v10;
  v26 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "row")}];
  v27 = [(NSMutableDictionary *)selectedStates objectForKeyedSubscript:v26];
  [checkmarkView setIsChecked:{objc_msgSend(v27, "BOOLValue")}];

  return v7;
}

- (id)selectedMigrationDevices
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [(NSMutableDictionary *)self->_selectedStates allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_selectedStates objectForKeyedSubscript:v9];
        bOOLValue = [v10 BOOLValue];

        if (bOOLValue)
        {
          v12 = -[NSArray objectAtIndexedSubscript:](self->_migratableDevices, "objectAtIndexedSubscript:", [v9 integerValue]);
          [v3 addObject:v12];
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

@end