@interface CAFUIStatusViewController
+ (id)sharedInstance;
- (CAFCar)car;
- (CAFCarManager)carManager;
- (CAFUIStatusTableView)tableView;
- (UITextView)textView;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)appendStringWithFormat:(id)a3;
- (void)carDidUpdate:(id)a3 accessory:(id)a4 service:(id)a5 characteristic:(id)a6;
- (void)carDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
- (void)carDidUpdateAccessories:(id)a3;
- (void)carManager:(id)a3 didUpdateCurrentCar:(id)a4;
- (void)loadView;
- (void)setCarManager:(id)a3;
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
  v9 = [MEMORY[0x277D75348] systemGreenColor];
  [v8 setTextColor:v9];

  v10 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
  [v8 setFont:v10];

  [v8 setTextContainerInset:{8.0, 8.0, 8.0, 8.0}];
  v11 = [(CAFUIStatusViewController *)self view];
  [v11 addSubview:v8];

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
  v15 = [(CAFUIStatusViewController *)self view];
  [v15 addSubview:v12];

  [(CAFUIStatusViewController *)self setTableView:v12];
  v44 = MEMORY[0x277CCAAD0];
  v59 = [v8 topAnchor];
  v60 = [(CAFUIStatusViewController *)self view];
  v58 = [v60 safeAreaLayoutGuide];
  v57 = [v58 topAnchor];
  v56 = [v59 constraintEqualToAnchor:v57];
  v69[0] = v56;
  v54 = [v8 bottomAnchor];
  v55 = [(CAFUIStatusViewController *)self view];
  v53 = [v55 safeAreaLayoutGuide];
  v52 = [v53 bottomAnchor];
  v51 = [v54 constraintEqualToAnchor:v52];
  v69[1] = v51;
  v49 = [v8 leadingAnchor];
  v50 = [(CAFUIStatusViewController *)self view];
  v48 = [v50 safeAreaLayoutGuide];
  v47 = [v48 leadingAnchor];
  v46 = [v49 constraintEqualToAnchor:v47];
  v69[2] = v46;
  v43 = [v8 widthAnchor];
  v45 = [(CAFUIStatusViewController *)self view];
  v42 = [v45 safeAreaLayoutGuide];
  v41 = [v42 widthAnchor];
  v40 = [v43 constraintEqualToAnchor:v41 multiplier:0.67];
  v69[3] = v40;
  v38 = [(CAFUIStatusTableView *)v12 topAnchor];
  v39 = [(CAFUIStatusViewController *)self view];
  v37 = [v39 safeAreaLayoutGuide];
  v36 = [v37 topAnchor];
  v35 = [v38 constraintEqualToAnchor:v36];
  v69[4] = v35;
  v33 = [(CAFUIStatusTableView *)v12 bottomAnchor];
  v34 = [(CAFUIStatusViewController *)self view];
  v32 = [v34 safeAreaLayoutGuide];
  v31 = [v32 bottomAnchor];
  v30 = [v33 constraintEqualToAnchor:v31];
  v69[5] = v30;
  v16 = [(CAFUIStatusTableView *)v12 leadingAnchor];
  v62 = v8;
  v17 = [v8 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  v69[6] = v18;
  v61 = v12;
  v19 = [(CAFUIStatusTableView *)v12 trailingAnchor];
  v20 = [(CAFUIStatusViewController *)self view];
  v21 = [v20 safeAreaLayoutGuide];
  v22 = [v21 trailingAnchor];
  v23 = [v19 constraintEqualToAnchor:v22];
  v69[7] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:8];
  [v44 activateConstraints:v24];

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v25 = [(CAFUIStatusViewController *)self pendingMessages];
  v26 = [v25 countByEnumeratingWithState:&v63 objects:v68 count:16];
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
          objc_enumerationMutation(v25);
        }

        [(CAFUIStatusViewController *)self appendStringWithFormat:*(*(&v63 + 1) + 8 * i)];
      }

      v27 = [v25 countByEnumeratingWithState:&v63 objects:v68 count:16];
    }

    while (v27);
  }

  [(CAFUIStatusViewController *)self setPendingMessages:0];
}

- (void)appendStringWithFormat:(id)a3
{
  v10 = &v11;
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v11];

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

- (void)setCarManager:(id)a3
{
  obj = a3;
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

- (void)carManager:(id)a3 didUpdateCurrentCar:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a4;
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
  if (WeakRetained != v5)
  {
    v9 = objc_loadWeakRetained(&self->_car);

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_car);
      [v10 unregisterObserver:self];
    }

    v11 = objc_storeWeak(&self->_car, v5);
    [v5 registerObserver:self];
  }
}

- (void)carDidUpdateAccessories:(id)a3
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

- (void)carDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = CAFUIStatusLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[CAFUIStatusViewController carDidUpdate:receivedAllValues:]";
    v16 = 1024;
    v17 = [v5 receivedAllValues];
    _os_log_impl(&dword_24234D000, v6, OS_LOG_TYPE_DEFAULT, "%s: %u", buf, 0x12u);
  }

  v7 = +[CAFUIStatusViewController sharedInstance];
  [v7 appendStringWithFormat:@"%s: %u", "-[CAFUIStatusViewController carDidUpdate:receivedAllValues:]", objc_msgSend(v5, "receivedAllValues")];

  if ([v5 receivedAllValues])
  {
    v8 = CAFUIStatusLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 accessories];
      v10 = [v9 count];
      *buf = 134217984;
      v15 = v10;
      _os_log_impl(&dword_24234D000, v8, OS_LOG_TYPE_DEFAULT, "✅ Car received all values with %lu accessories", buf, 0xCu);
    }

    v11 = +[CAFUIStatusViewController sharedInstance];
    v12 = [v5 accessories];
    [v11 appendStringWithFormat:@"✅ Car received all values with %lu accessories", objc_msgSend(v12, "count")];
  }

  v13 = [(CAFUIStatusViewController *)self tableView];
  [v13 update];
}

- (void)carDidUpdate:(id)a3 accessory:(id)a4 service:(id)a5 characteristic:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = CAFUIStatusLogForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v9 name];
    v14 = [v10 name];
    v15 = [v11 name];
    v16 = [v11 value];
    *buf = 136316162;
    v24 = "[CAFUIStatusViewController carDidUpdate:accessory:service:characteristic:]";
    v25 = 2112;
    v26 = v13;
    v27 = 2112;
    v28 = v14;
    v29 = 2112;
    v30 = v15;
    v31 = 2112;
    v32 = v16;
    _os_log_impl(&dword_24234D000, v12, OS_LOG_TYPE_DEFAULT, "%s\n\tAccessory: %@\n\tService: %@\n\tCharacteristic: %@\n\tValue: %@", buf, 0x34u);
  }

  v17 = +[CAFUIStatusViewController sharedInstance];
  v18 = [v9 name];
  v19 = [v10 name];
  v20 = [v11 name];
  v21 = [v11 value];
  [v17 appendStringWithFormat:@"%s\n\tAccessory: %@\n\tService: %@\n\tCharacteristic: %@\n\tValue: %@", "-[CAFUIStatusViewController carDidUpdate:accessory:service:characteristic:]", v18, v19, v20, v21];

  v22 = [(CAFUIStatusViewController *)self tableView];
  [v22 update];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = 1;
  if (a4 && a4 != 2)
  {
    if (a4 == 1)
    {
      v8 = [(CAFUIStatusViewController *)self car];
      v9 = [v8 accessories];
      v7 = [v9 count];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[CAFUIStatusTableCell identifier];
  v9 = [v7 dequeueReusableCellWithIdentifier:v8];

  v10 = [v9 defaultContentConfiguration];
  if ([v6 section])
  {
    if ([v6 section] == 1)
    {
      v11 = [(CAFUIStatusViewController *)self car];
      v12 = [v11 sortedAccessories];
      v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

      v14 = [MEMORY[0x277D755B8] systemImageNamed:@"a.circle"];
      [v10 setImage:v14];

      if ([v13 receivedAllValues])
      {
        [MEMORY[0x277D75348] systemGreenColor];
      }

      else
      {
        [MEMORY[0x277D75348] systemRedColor];
      }
      v32 = ;
      v33 = [v10 imageProperties];
      [v33 setTintColor:v32];

      v34 = [v13 name];
      [v10 setText:v34];

      if ([v13 receivedAllValues])
      {
        v35 = @"Yes";
      }

      else
      {
        v35 = @"No";
      }

      [v10 setSecondaryText:v35];
    }

    else
    {
      if ([v6 section] != 2)
      {
        goto LABEL_22;
      }

      v21 = [(CAFUIStatusViewController *)self car];
      v22 = [v21 accessories];
      v23 = [v22 count];

      v24 = MEMORY[0x277CCACA8];
      v25 = MEMORY[0x277CCABB0];
      v13 = [(CAFUIStatusViewController *)self car];
      v26 = [v13 accessories];
      v27 = [v25 numberWithUnsignedInteger:{objc_msgSend(v26, "count")}];
      v28 = v27;
      v29 = @"accessories";
      if (v23 == 1)
      {
        v29 = @"accessory";
      }

      v30 = [v24 stringWithFormat:@"%@ %@", v27, v29];
      [v10 setText:v30];
    }
  }

  else
  {
    v15 = [(CAFUIStatusViewController *)self car];
    v16 = [v15 receivedAllValues];

    if (v16)
    {
      v17 = @"checkmark.square";
    }

    else
    {
      v17 = @"xmark.square";
    }

    v18 = [MEMORY[0x277D755B8] systemImageNamed:v17];
    [v10 setImage:v18];

    if (v16)
    {
      v19 = [MEMORY[0x277D75348] systemGreenColor];
      v20 = @"ready";
    }

    else
    {
      v19 = [MEMORY[0x277D75348] systemRedColor];
      v20 = @"not ready";
    }

    v31 = [v10 imageProperties];
    [v31 setTintColor:v19];

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Car %@", v20];
    [v10 setText:v13];
  }

LABEL_22:
  v36 = [v10 imageProperties];
  [v36 setMaximumSize:{12.0, 12.0}];

  v37 = [v10 imageProperties];
  [v37 setReservedLayoutSize:{12.0, 12.0}];

  v38 = [MEMORY[0x277D74300] systemFontOfSize:9.0];
  v39 = [v10 textProperties];
  [v39 setFont:v38];

  v40 = [MEMORY[0x277D74300] systemFontOfSize:9.0];
  v41 = [v10 secondaryTextProperties];
  [v41 setFont:v40];

  [v10 setImageToTextPadding:6.0];
  [v10 setTextToSecondaryTextHorizontalPadding:0.0];
  [v10 setTextToSecondaryTextVerticalPadding:0.0];
  [v10 setDirectionalLayoutMargins:{2.0, 2.0, 3.0, 2.0}];
  [v9 setContentConfiguration:v10];

  return v9;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = [a4 section];
  result = 18.0;
  if (v4 == 1)
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