@interface CAFUIStatusViewController
+ (id)sharedInstance;
- (CAFCar)car;
- (CAFCarManager)carManager;
- (CAFUIStatusTableView)tableView;
- (UITextView)textView;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)appendStringWithFormat:(id)format;
- (void)carDidUpdate:(id)update accessory:(id)accessory service:(id)service characteristic:(id)characteristic;
- (void)carDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)carDidUpdateAccessories:(id)accessories;
- (void)carManager:(id)manager didUpdateCurrentCar:(id)car;
- (void)loadView;
- (void)setCarManager:(id)manager;
- (void)viewDidLoad;
@end

@implementation CAFUIStatusViewController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[CAFUIStatusViewController sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __43__CAFUIStatusViewController_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(CAFUIStatusViewController);

  return MEMORY[0x2821F96F8]();
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(CAFUIStatusViewController *)self setView:v4];
}

- (void)viewDidLoad
{
  v69[8] = *MEMORY[0x277D85DE8];
  v67.receiver = self;
  v67.super_class = CAFUIStatusViewController;
  [(CAFUIStatusViewController *)&v67 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D75C40]);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setEditable:0];
  systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
  [v8 setTextColor:systemGreenColor];

  v10 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
  [v8 setFont:v10];

  [v8 setTextContainerInset:{8.0, 8.0, 8.0, 8.0}];
  view = [(CAFUIStatusViewController *)self view];
  [view addSubview:v8];

  [(CAFUIStatusViewController *)self setTextView:v8];
  v12 = [[CAFUIStatusTableView alloc] initWithFrame:v4, v5, v6, v7];
  [(CAFUIStatusTableView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = objc_opt_class();
  v14 = +[CAFUIStatusTableCell identifier];
  [(CAFUIStatusTableView *)v12 registerClass:v13 forCellReuseIdentifier:v14];

  [(CAFUIStatusTableView *)v12 setDataSource:self];
  [(CAFUIStatusTableView *)v12 setDelegate:self];
  [(CAFUIStatusTableView *)v12 setAllowsSelection:0];
  [(CAFUIStatusTableView *)v12 setContentInset:4.0, 0.0, 4.0, 0.0];
  view2 = [(CAFUIStatusViewController *)self view];
  [view2 addSubview:v12];

  [(CAFUIStatusViewController *)self setTableView:v12];
  v44 = MEMORY[0x277CCAAD0];
  topAnchor = [v8 topAnchor];
  view3 = [(CAFUIStatusViewController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v56 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v69[0] = v56;
  bottomAnchor = [v8 bottomAnchor];
  view4 = [(CAFUIStatusViewController *)self view];
  safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide2 bottomAnchor];
  v51 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v69[1] = v51;
  leadingAnchor = [v8 leadingAnchor];
  view5 = [(CAFUIStatusViewController *)self view];
  safeAreaLayoutGuide3 = [view5 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide3 leadingAnchor];
  v46 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v69[2] = v46;
  widthAnchor = [v8 widthAnchor];
  view6 = [(CAFUIStatusViewController *)self view];
  safeAreaLayoutGuide4 = [view6 safeAreaLayoutGuide];
  widthAnchor2 = [safeAreaLayoutGuide4 widthAnchor];
  v40 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.67];
  v69[3] = v40;
  topAnchor3 = [(CAFUIStatusTableView *)v12 topAnchor];
  view7 = [(CAFUIStatusViewController *)self view];
  safeAreaLayoutGuide5 = [view7 safeAreaLayoutGuide];
  topAnchor4 = [safeAreaLayoutGuide5 topAnchor];
  v35 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v69[4] = v35;
  bottomAnchor3 = [(CAFUIStatusTableView *)v12 bottomAnchor];
  view8 = [(CAFUIStatusViewController *)self view];
  safeAreaLayoutGuide6 = [view8 safeAreaLayoutGuide];
  bottomAnchor4 = [safeAreaLayoutGuide6 bottomAnchor];
  v30 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v69[5] = v30;
  leadingAnchor3 = [(CAFUIStatusTableView *)v12 leadingAnchor];
  v62 = v8;
  trailingAnchor = [v8 trailingAnchor];
  v18 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor];
  v69[6] = v18;
  v61 = v12;
  trailingAnchor2 = [(CAFUIStatusTableView *)v12 trailingAnchor];
  view9 = [(CAFUIStatusViewController *)self view];
  safeAreaLayoutGuide7 = [view9 safeAreaLayoutGuide];
  trailingAnchor3 = [safeAreaLayoutGuide7 trailingAnchor];
  v23 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v69[7] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:8];
  [v44 activateConstraints:v24];

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  pendingMessages = [(CAFUIStatusViewController *)self pendingMessages];
  v26 = [pendingMessages countByEnumeratingWithState:&v63 objects:v68 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v64;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v64 != v28)
        {
          objc_enumerationMutation(pendingMessages);
        }

        [(CAFUIStatusViewController *)self appendStringWithFormat:*(*(&v63 + 1) + 8 * i)];
      }

      v27 = [pendingMessages countByEnumeratingWithState:&v63 objects:v68 count:16];
    }

    while (v27);
  }

  [(CAFUIStatusViewController *)self setPendingMessages:0];
}

- (void)appendStringWithFormat:(id)format
{
  v10 = &v11;
  v4 = MEMORY[0x277CCACA8];
  formatCopy = format;
  v6 = [[v4 alloc] initWithFormat:formatCopy arguments:&v11];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__CAFUIStatusViewController_appendStringWithFormat___block_invoke;
  block[3] = &unk_278D49768;
  block[4] = self;
  v9 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __52__CAFUIStatusViewController_appendStringWithFormat___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textView];

  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 textView];
    v5 = [*(a1 + 40) stringByAppendingString:@"\n"];
    [v4 insertText:v5];

    v6 = [*(a1 + 32) textView];
    v7 = [v6 text];
    v8 = [v7 length] - 1;

    v11 = [*(a1 + 32) textView];
    [v11 scrollRangeToVisible:{v8, 1}];
  }

  else
  {
    v9 = [v3 pendingMessages];

    if (!v9)
    {
      v10 = objc_opt_new();
      [*(a1 + 32) setPendingMessages:v10];
    }

    v11 = [*(a1 + 32) pendingMessages];
    [v11 addObject:*(a1 + 40)];
  }
}

- (void)setCarManager:(id)manager
{
  obj = manager;
  WeakRetained = objc_loadWeakRetained(&self->_carManager);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = objc_loadWeakRetained(&self->_carManager);

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_carManager);
      [v7 unregisterObserver:self];
    }

    v8 = objc_storeWeak(&self->_carManager, obj);
    [obj registerObserver:self];

    v5 = obj;
  }
}

- (void)carManager:(id)manager didUpdateCurrentCar:(id)car
{
  v14 = *MEMORY[0x277D85DE8];
  carCopy = car;
  v6 = CAFUIStatusLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[CAFUIStatusViewController carManager:didUpdateCurrentCar:]";
    _os_log_impl(&dword_24234D000, v6, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v7 = +[CAFUIStatusViewController sharedInstance];
  [v7 appendStringWithFormat:@"%s", "-[CAFUIStatusViewController carManager:didUpdateCurrentCar:]"];

  WeakRetained = objc_loadWeakRetained(&self->_car);
  if (WeakRetained != carCopy)
  {
    v9 = objc_loadWeakRetained(&self->_car);

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_car);
      [v10 unregisterObserver:self];
    }

    v11 = objc_storeWeak(&self->_car, carCopy);
    [carCopy registerObserver:self];
  }
}

- (void)carDidUpdateAccessories:(id)accessories
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = CAFUIStatusLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[CAFUIStatusViewController carDidUpdateAccessories:]";
    _os_log_impl(&dword_24234D000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v4 = +[CAFUIStatusViewController sharedInstance];
  [v4 appendStringWithFormat:@"%s", "-[CAFUIStatusViewController carDidUpdateAccessories:]"];
}

- (void)carDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  v18 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v6 = CAFUIStatusLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[CAFUIStatusViewController carDidUpdate:receivedAllValues:]";
    v16 = 1024;
    receivedAllValues = [updateCopy receivedAllValues];
    _os_log_impl(&dword_24234D000, v6, OS_LOG_TYPE_DEFAULT, "%s: %u", buf, 0x12u);
  }

  v7 = +[CAFUIStatusViewController sharedInstance];
  [v7 appendStringWithFormat:@"%s: %u", "-[CAFUIStatusViewController carDidUpdate:receivedAllValues:]", objc_msgSend(updateCopy, "receivedAllValues")];

  if ([updateCopy receivedAllValues])
  {
    v8 = CAFUIStatusLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      accessories = [updateCopy accessories];
      v10 = [accessories count];
      *buf = 134217984;
      v15 = v10;
      _os_log_impl(&dword_24234D000, v8, OS_LOG_TYPE_DEFAULT, "✅ Car received all values with %lu accessories", buf, 0xCu);
    }

    v11 = +[CAFUIStatusViewController sharedInstance];
    accessories2 = [updateCopy accessories];
    [v11 appendStringWithFormat:@"✅ Car received all values with %lu accessories", objc_msgSend(accessories2, "count")];
  }

  tableView = [(CAFUIStatusViewController *)self tableView];
  [tableView update];
}

- (void)carDidUpdate:(id)update accessory:(id)accessory service:(id)service characteristic:(id)characteristic
{
  v33 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  serviceCopy = service;
  characteristicCopy = characteristic;
  v12 = CAFUIStatusLogForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    name = [accessoryCopy name];
    name2 = [serviceCopy name];
    name3 = [characteristicCopy name];
    value = [characteristicCopy value];
    *buf = 136316162;
    v24 = "[CAFUIStatusViewController carDidUpdate:accessory:service:characteristic:]";
    v25 = 2112;
    v26 = name;
    v27 = 2112;
    v28 = name2;
    v29 = 2112;
    v30 = name3;
    v31 = 2112;
    v32 = value;
    _os_log_impl(&dword_24234D000, v12, OS_LOG_TYPE_DEFAULT, "%s\n\tAccessory: %@\n\tService: %@\n\tCharacteristic: %@\n\tValue: %@", buf, 0x34u);
  }

  v17 = +[CAFUIStatusViewController sharedInstance];
  name4 = [accessoryCopy name];
  name5 = [serviceCopy name];
  name6 = [characteristicCopy name];
  value2 = [characteristicCopy value];
  [v17 appendStringWithFormat:@"%s\n\tAccessory: %@\n\tService: %@\n\tCharacteristic: %@\n\tValue: %@", "-[CAFUIStatusViewController carDidUpdate:accessory:service:characteristic:]", name4, name5, name6, value2];

  tableView = [(CAFUIStatusViewController *)self tableView];
  [tableView update];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v3 = [(CAFUIStatusViewController *)self car];
  if ([v3 receivedAllValues])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  v7 = 1;
  if (section && section != 2)
  {
    if (section == 1)
    {
      v8 = [(CAFUIStatusViewController *)self car];
      accessories = [v8 accessories];
      v7 = [accessories count];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[CAFUIStatusTableCell identifier];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8];

  defaultContentConfiguration = [v9 defaultContentConfiguration];
  if ([pathCopy section])
  {
    if ([pathCopy section] == 1)
    {
      v11 = [(CAFUIStatusViewController *)self car];
      sortedAccessories = [v11 sortedAccessories];
      v13 = [sortedAccessories objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

      v14 = [MEMORY[0x277D755B8] systemImageNamed:@"a.circle"];
      [defaultContentConfiguration setImage:v14];

      if ([v13 receivedAllValues])
      {
        [MEMORY[0x277D75348] systemGreenColor];
      }

      else
      {
        [MEMORY[0x277D75348] systemRedColor];
      }
      v32 = ;
      imageProperties = [defaultContentConfiguration imageProperties];
      [imageProperties setTintColor:v32];

      name = [v13 name];
      [defaultContentConfiguration setText:name];

      if ([v13 receivedAllValues])
      {
        v35 = @"Yes";
      }

      else
      {
        v35 = @"No";
      }

      [defaultContentConfiguration setSecondaryText:v35];
    }

    else
    {
      if ([pathCopy section] != 2)
      {
        goto LABEL_22;
      }

      v21 = [(CAFUIStatusViewController *)self car];
      accessories = [v21 accessories];
      v23 = [accessories count];

      v24 = MEMORY[0x277CCACA8];
      v25 = MEMORY[0x277CCABB0];
      v13 = [(CAFUIStatusViewController *)self car];
      accessories2 = [v13 accessories];
      v27 = [v25 numberWithUnsignedInteger:{objc_msgSend(accessories2, "count")}];
      v28 = v27;
      v29 = @"accessories";
      if (v23 == 1)
      {
        v29 = @"accessory";
      }

      v30 = [v24 stringWithFormat:@"%@ %@", v27, v29];
      [defaultContentConfiguration setText:v30];
    }
  }

  else
  {
    v15 = [(CAFUIStatusViewController *)self car];
    receivedAllValues = [v15 receivedAllValues];

    if (receivedAllValues)
    {
      v17 = @"checkmark.square";
    }

    else
    {
      v17 = @"xmark.square";
    }

    v18 = [MEMORY[0x277D755B8] systemImageNamed:v17];
    [defaultContentConfiguration setImage:v18];

    if (receivedAllValues)
    {
      systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
      v20 = @"ready";
    }

    else
    {
      systemGreenColor = [MEMORY[0x277D75348] systemRedColor];
      v20 = @"not ready";
    }

    imageProperties2 = [defaultContentConfiguration imageProperties];
    [imageProperties2 setTintColor:systemGreenColor];

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Car %@", v20];
    [defaultContentConfiguration setText:v13];
  }

LABEL_22:
  imageProperties3 = [defaultContentConfiguration imageProperties];
  [imageProperties3 setMaximumSize:{12.0, 12.0}];

  imageProperties4 = [defaultContentConfiguration imageProperties];
  [imageProperties4 setReservedLayoutSize:{12.0, 12.0}];

  v38 = [MEMORY[0x277D74300] systemFontOfSize:9.0];
  textProperties = [defaultContentConfiguration textProperties];
  [textProperties setFont:v38];

  v40 = [MEMORY[0x277D74300] systemFontOfSize:9.0];
  secondaryTextProperties = [defaultContentConfiguration secondaryTextProperties];
  [secondaryTextProperties setFont:v40];

  [defaultContentConfiguration setImageToTextPadding:6.0];
  [defaultContentConfiguration setTextToSecondaryTextHorizontalPadding:0.0];
  [defaultContentConfiguration setTextToSecondaryTextVerticalPadding:0.0];
  [defaultContentConfiguration setDirectionalLayoutMargins:{2.0, 2.0, 3.0, 2.0}];
  [v9 setContentConfiguration:defaultContentConfiguration];

  return v9;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  section = [path section];
  result = 18.0;
  if (section == 1)
  {
    return 25.0;
  }

  return result;
}

- (CAFCarManager)carManager
{
  WeakRetained = objc_loadWeakRetained(&self->_carManager);

  return WeakRetained;
}

- (UITextView)textView
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);

  return WeakRetained;
}

- (CAFUIStatusTableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

- (CAFCar)car
{
  WeakRetained = objc_loadWeakRetained(&self->_car);

  return WeakRetained;
}

@end