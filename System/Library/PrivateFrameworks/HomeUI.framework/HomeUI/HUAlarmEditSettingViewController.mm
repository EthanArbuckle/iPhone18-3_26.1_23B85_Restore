@interface HUAlarmEditSettingViewController
- (HUAlarmEditSettingViewController)initWithAlarm:(id)a3 setting:(int64_t)a4 mediaProfileContainer:(id)a5 selectedRoom:(id)a6 loggedInAppleMusicAccountDSID:(id)a7;
- (HUAlarmEditSettingViewControllerDelegate)delegate;
- (id)initPlayInSettingWithMediaProfileContainer:(id)a3 selectedRoom:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_commonInitialization;
- (void)_dismiss;
- (void)_keyboardWillHide:(id)a3;
- (void)_keyboardWillShow:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)textValueChanged:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidUnload;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation HUAlarmEditSettingViewController

- (HUAlarmEditSettingViewController)initWithAlarm:(id)a3 setting:(int64_t)a4 mediaProfileContainer:(id)a5 selectedRoom:(id)a6 loggedInAppleMusicAccountDSID:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v24.receiver = self;
  v24.super_class = HUAlarmEditSettingViewController;
  v16 = [(HUAlarmEditSettingViewController *)&v24 init];
  if (v16)
  {
    v17 = [v15 copy];
    loggedInAppleMusicAccountDSID = v16->_loggedInAppleMusicAccountDSID;
    v16->_loggedInAppleMusicAccountDSID = v17;

    v16->_setting = a4;
    v19 = [v12 mutableCopy];
    alarm = v16->_alarm;
    v16->_alarm = v19;

    objc_storeStrong(&v16->_selectedRoom, a6);
    v21 = objc_opt_new();
    roomsList = v16->_roomsList;
    v16->_roomsList = v21;

    if (v13 && v16->_setting == 3)
    {
      [(HUAlarmEditSettingViewController *)v16 _setupPlayInSettingWithMediaProfileContainer:v13];
    }

    [(HUAlarmEditSettingViewController *)v16 _commonInitialization];
  }

  return v16;
}

- (id)initPlayInSettingWithMediaProfileContainer:(id)a3 selectedRoom:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = HUAlarmEditSettingViewController;
  v8 = [(HUAlarmEditSettingViewController *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_setting = 3;
    objc_storeStrong(&v8->_selectedRoom, a4);
    v10 = objc_opt_new();
    roomsList = v9->_roomsList;
    v9->_roomsList = v10;

    [(HUAlarmEditSettingViewController *)v9 _setupPlayInSettingWithMediaProfileContainer:v6];
    [(HUAlarmEditSettingViewController *)v9 _commonInitialization];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = HUAlarmEditSettingViewController;
  [(HUAlarmEditSettingViewController *)&v4 dealloc];
}

- (void)_commonInitialization
{
  setting = self->_setting;
  switch(setting)
  {
    case 3:
      v4 = @"HUAlarmPlayInLabel";
      goto LABEL_7;
    case 2:
      v7 = _HULocalizedStringWithDefaultValue(@"HUAlarmEditLabel", @"HUAlarmEditLabel", 1);
      v5 = [MEMORY[0x277CCAB98] defaultCenter];
      [v5 addObserver:self selector:sel__keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];
      [v5 addObserver:self selector:sel__keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];

      v6 = v7;
      goto LABEL_9;
    case 1:
      v4 = @"HUAlarmEditRepeat";
LABEL_7:
      v6 = _HULocalizedStringWithDefaultValue(v4, v4, 1);
      goto LABEL_9;
  }

  v6 = 0;
LABEL_9:
  v8 = v6;
  [(HUAlarmEditSettingViewController *)self setTitle:v6];
}

- (void)loadView
{
  v9 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v9 setAutoresizingMask:18];
  setting = self->_setting;
  if ((setting - 1) <= 2)
  {
    if (setting == 3)
    {
      v5 = 0x277D75B40;
    }

    else
    {
      if (setting == 1)
      {
        v4 = [(HUAlarmEditSettingViewController *)self alarm];
        self->_repeatSchedule = [v4 repeatSchedule];
        v5 = 0x277D75B40;
      }

      else
      {
        v4 = [MEMORY[0x277CCAB98] defaultCenter];
        [v4 addObserver:self selector:sel__dismiss name:kHUEditAlarmTitleFinishedNotification object:0];
        v5 = off_277DB01E0;
      }
    }

    v6 = objc_alloc(*v5);
    v7 = [v6 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    tableView = self->_tableView;
    self->_tableView = v7;

    [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"kHUAlarmEditSettingViewControllerTableViewCellIdentifier"];
    [(UITableView *)self->_tableView setAutoresizingMask:18];
    [(UITableView *)self->_tableView setDataSource:self];
    [(UITableView *)self->_tableView setDelegate:self];
    [v9 addSubview:self->_tableView];
  }

  [(HUAlarmEditSettingViewController *)self setView:v9];
}

- (void)viewWillAppear:(BOOL)a3
{
  v20.receiver = self;
  v20.super_class = HUAlarmEditSettingViewController;
  [(HUAlarmEditSettingViewController *)&v20 viewWillAppear:a3];
  setting = self->_setting;
  if (setting == 1)
  {
    v17 = objc_alloc(MEMORY[0x277CBEA80]);
    v18 = [v17 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    v19 = [MEMORY[0x277CBEAF8] currentLocale];
    [v18 setLocale:v19];

    self->_firstWeekday = [v18 firstWeekday];
  }

  else if (setting == 2)
  {
    v5 = [(HUAlarmEditSettingViewController *)self editingCell];

    if (!v5)
    {
      v6 = objc_opt_new();
      [(HUAlarmEditSettingViewController *)self setEditingCell:v6];

      v7 = [(HUAlarmEditSettingViewController *)self alarm];
      v8 = [v7 title];
      v9 = [(HUAlarmEditSettingViewController *)self editingCell];
      v10 = [v9 textField];
      [v10 setText:v8];

      v11 = [(HUAlarmEditSettingViewController *)self editingCell];
      v12 = [v11 textField];
      [v12 setAutocapitalizationType:2];

      v13 = [MEMORY[0x277CCAB98] defaultCenter];
      v14 = *MEMORY[0x277D770B0];
      v15 = [(HUAlarmEditableTextCell *)self->_editingCell textField];
      [v13 addObserver:self selector:sel_textValueChanged_ name:v14 object:v15];
    }

    if ((HUIsPadIdiom() & 1) == 0 && ([MEMORY[0x277D14CE8] isProxHandOffV2Config] & 1) == 0)
    {
      v16 = [(HUAlarmEditableTextCell *)self->_editingCell textField];
      [v16 becomeFirstResponder];
    }

    if ([MEMORY[0x277D14CE8] isProxHandOffV2Config])
    {
      [(HUAlarmEditableTextCell *)self->_editingCell setEnabled:0];
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HUAlarmEditSettingViewController;
  [(HUAlarmEditSettingViewController *)&v5 viewDidAppear:a3];
  if (self->_setting == 2 && HUIsPadIdiom() && ([MEMORY[0x277D14CE8] isProxHandOffV2Config] & 1) == 0)
  {
    v4 = [(HUAlarmEditableTextCell *)self->_editingCell textField];
    [v4 becomeFirstResponder];
  }
}

- (void)viewDidUnload
{
  tableView = self->_tableView;
  self->_tableView = 0;

  v4.receiver = self;
  v4.super_class = HUAlarmEditSettingViewController;
  [(HUAlarmEditSettingViewController *)&v4 viewDidUnload];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v6.receiver = self;
  v6.super_class = HUAlarmEditSettingViewController;
  [(HUAlarmEditSettingViewController *)&v6 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  if ((HUIsPadIdiom() & 1) == 0 && ([MEMORY[0x277D14CE8] isProxHandOffV2Config] & 1) == 0)
  {
    v5 = [(HUAlarmEditableTextCell *)self->_editingCell textField];
    [v5 becomeFirstResponder];
  }
}

- (void)_dismiss
{
  v3 = [(HUAlarmEditSettingViewController *)self navigationController];
  v2 = [v3 popViewControllerAnimated:1];
}

- (void)_keyboardWillShow:(id)a3
{
  v16 = a3;
  if (!HUIsPadIdiom() || (-[HUAlarmEditSettingViewController traitCollection](self, "traitCollection"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 horizontalSizeClass], v4, v5 != 2))
  {
    v6 = [v16 userInfo];
    v7 = [v6 objectForKey:*MEMORY[0x277D76BB8]];
    [v7 CGRectValue];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [(UITableView *)self->_tableView setKeyboardFrame:v9, v11, v13, v15];
    [(UITableView *)self->_tableView layoutSubviews];
  }
}

- (void)_keyboardWillHide:(id)a3
{
  v4 = a3;
  if (!HUIsPadIdiom() || (-[HUAlarmEditSettingViewController traitCollection](self, "traitCollection"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 horizontalSizeClass], v5, v6 != 2))
  {
    v7 = [v4 userInfo];
    v8 = [v7 objectForKey:*MEMORY[0x277D76BB0]];
    [v8 CGRectValue];
    v10 = v9;

    v11 = [v7 objectForKey:*MEMORY[0x277D76BB8]];
    [v11 CGRectValue];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    if (vabdd_f64(v15, v10) >= 1.0)
    {
      v20 = MEMORY[0x277D75D18];
      v21 = [v7 objectForKey:*MEMORY[0x277D76B78]];
      [v21 floatValue];
      v23 = v22;
      v24 = [v7 objectForKey:*MEMORY[0x277D76B70]];
      v25 = [v24 intValue];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __54__HUAlarmEditSettingViewController__keyboardWillHide___block_invoke;
      v26[3] = &unk_277DBFB10;
      v26[4] = self;
      v26[5] = v13;
      *&v26[6] = v15;
      v26[7] = v17;
      v26[8] = v19;
      [v20 animateWithDuration:v25 delay:v26 options:0 animations:v23 completion:0.0];
    }
  }
}

void __54__HUAlarmEditSettingViewController__keyboardWillHide___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 setKeyboardFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];

  v3 = [*(a1 + 32) tableView];
  [v3 layoutSubviews];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  setting = self->_setting;
  if (setting == 1)
  {
    return 7;
  }

  if (setting != 3)
  {
    return 1;
  }

  v5 = [(HUAlarmEditSettingViewController *)self roomsList:a3];
  v6 = [v5 count];

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  setting = self->_setting;
  if (setting == 3)
  {
    v11 = [v6 dequeueReusableCellWithIdentifier:@"kHUAlarmEditSettingViewControllerTableViewCellIdentifier"];
    v16 = [(HUAlarmEditSettingViewController *)self roomsList];
    v17 = [v16 objectAtIndexedSubscript:{objc_msgSend(v8, "row")}];
    v18 = [v17 name];
    v19 = [(HUAlarmEditableTextCell *)v11 textLabel];
    [v19 setText:v18];

    v20 = [(HUAlarmEditSettingViewController *)self selectedRoom];
    if (v20)
    {
      v21 = [(HUAlarmEditSettingViewController *)self roomsList];
      v22 = [v21 objectAtIndexedSubscript:{objc_msgSend(v8, "row")}];
      v23 = [v22 uniqueIdentifier];
      v24 = [(HUAlarmEditSettingViewController *)self selectedRoom];
      v25 = [v24 uniqueIdentifier];
      if ([v23 hmf_isEqualToUUID:v25])
      {
        v26 = 3;
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }

    [(HUAlarmEditableTextCell *)v11 setAccessoryType:v26];
  }

  else if (setting == 1)
  {
    v10 = -[HUAlarmEditSettingViewController maskForRow:](self, "maskForRow:", [v7 row]);
    v11 = [v6 dequeueReusableCellWithIdentifier:@"kHUAlarmEditSettingViewControllerTableViewCellIdentifier"];
    v12 = DateMaskToString();
    v13 = [(HUAlarmEditableTextCell *)v11 textLabel];
    [v13 setText:v12];

    v14 = [(HUAlarmEditSettingViewController *)self alarm];
    if (([v14 repeatSchedule] & v10) != 0)
    {
      v15 = 3;
    }

    else
    {
      v15 = 0;
    }

    [(HUAlarmEditableTextCell *)v11 setAccessoryType:v15];
  }

  else
  {
    v11 = self->_editingCell;
  }

  v27 = [MEMORY[0x277D75348] hu_alarmsPrimaryTextColor];
  v28 = [(HUAlarmEditableTextCell *)v11 textLabel];
  [v28 setTextColor:v27];

  return v11;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v23 = a3;
  v6 = a4;
  if (v6)
  {
    setting = self->_setting;
    if (setting == 3)
    {
      [v23 deselectRowAtIndexPath:v6 animated:1];
      v12 = [(HUAlarmEditSettingViewController *)self selectedRoom];

      if (v12)
      {
        v13 = [(HUAlarmEditSettingViewController *)self roomsList];
        v14 = [(HUAlarmEditSettingViewController *)self selectedRoom];
        v15 = [v13 indexOfObject:v14];

        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v16 = [MEMORY[0x277CCAA70] indexPathForRow:v15 inSection:0];
          v17 = [v23 cellForRowAtIndexPath:v16];

          [v17 setAccessoryType:0];
        }
      }

      v8 = [v23 cellForRowAtIndexPath:v6];
      [v8 setAccessoryType:3];
      v18 = [(HUAlarmEditSettingViewController *)self roomsList];
      v19 = [v18 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
      [(HUAlarmEditSettingViewController *)self setSelectedRoom:v19];
    }

    else
    {
      if (setting != 1)
      {
        goto LABEL_16;
      }

      v8 = [v23 cellForRowAtIndexPath:v6];
      if ([v8 accessoryType] == 3)
      {
        v9 = 0;
      }

      else
      {
        v9 = 3;
      }

      [v8 setAccessoryType:v9];
      [v23 deselectRowAtIndexPath:v6 animated:1];
      v10 = -[HUAlarmEditSettingViewController maskForRow:](self, "maskForRow:", [v6 row]);
      if ([v8 accessoryType] == 3)
      {
        v11 = [(HUAlarmEditSettingViewController *)self repeatSchedule]| v10;
      }

      else
      {
        v11 = [(HUAlarmEditSettingViewController *)self repeatSchedule]& ~v10;
      }

      [(HUAlarmEditSettingViewController *)self setRepeatSchedule:v11];
      v20 = [(HUAlarmEditSettingViewController *)self repeatSchedule];
      v18 = [(HUAlarmEditSettingViewController *)self alarm];
      [v18 setRepeatSchedule:v20];
    }

    v21 = [(HUAlarmEditSettingViewController *)self delegate];
    v22 = [(HUAlarmEditSettingViewController *)self alarm];
    [v21 alarmEditSettingController:self didEditAlarm:v22];
  }

LABEL_16:
}

- (void)textValueChanged:(id)a3
{
  v12 = [a3 object];
  v4 = [v12 text];
  v5 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  v7 = [v6 length];
  if (v7)
  {
    v8 = [v12 text];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(HUAlarmEditSettingViewController *)self alarm];
  [v9 setTitle:v8];

  if (v7)
  {
  }

  v10 = [(HUAlarmEditSettingViewController *)self delegate];
  v11 = [(HUAlarmEditSettingViewController *)self alarm];
  [v10 alarmEditSettingController:self didEditAlarm:v11];
}

- (HUAlarmEditSettingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end