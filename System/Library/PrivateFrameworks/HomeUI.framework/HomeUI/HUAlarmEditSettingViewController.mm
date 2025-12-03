@interface HUAlarmEditSettingViewController
- (HUAlarmEditSettingViewController)initWithAlarm:(id)alarm setting:(int64_t)setting mediaProfileContainer:(id)container selectedRoom:(id)room loggedInAppleMusicAccountDSID:(id)d;
- (HUAlarmEditSettingViewControllerDelegate)delegate;
- (id)initPlayInSettingWithMediaProfileContainer:(id)container selectedRoom:(id)room;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_commonInitialization;
- (void)_dismiss;
- (void)_keyboardWillHide:(id)hide;
- (void)_keyboardWillShow:(id)show;
- (void)dealloc;
- (void)loadView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)textValueChanged:(id)changed;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidUnload;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation HUAlarmEditSettingViewController

- (HUAlarmEditSettingViewController)initWithAlarm:(id)alarm setting:(int64_t)setting mediaProfileContainer:(id)container selectedRoom:(id)room loggedInAppleMusicAccountDSID:(id)d
{
  alarmCopy = alarm;
  containerCopy = container;
  roomCopy = room;
  dCopy = d;
  v24.receiver = self;
  v24.super_class = HUAlarmEditSettingViewController;
  v16 = [(HUAlarmEditSettingViewController *)&v24 init];
  if (v16)
  {
    v17 = [dCopy copy];
    loggedInAppleMusicAccountDSID = v16->_loggedInAppleMusicAccountDSID;
    v16->_loggedInAppleMusicAccountDSID = v17;

    v16->_setting = setting;
    v19 = [alarmCopy mutableCopy];
    alarm = v16->_alarm;
    v16->_alarm = v19;

    objc_storeStrong(&v16->_selectedRoom, room);
    v21 = objc_opt_new();
    roomsList = v16->_roomsList;
    v16->_roomsList = v21;

    if (containerCopy && v16->_setting == 3)
    {
      [(HUAlarmEditSettingViewController *)v16 _setupPlayInSettingWithMediaProfileContainer:containerCopy];
    }

    [(HUAlarmEditSettingViewController *)v16 _commonInitialization];
  }

  return v16;
}

- (id)initPlayInSettingWithMediaProfileContainer:(id)container selectedRoom:(id)room
{
  containerCopy = container;
  roomCopy = room;
  v13.receiver = self;
  v13.super_class = HUAlarmEditSettingViewController;
  v8 = [(HUAlarmEditSettingViewController *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_setting = 3;
    objc_storeStrong(&v8->_selectedRoom, room);
    v10 = objc_opt_new();
    roomsList = v9->_roomsList;
    v9->_roomsList = v10;

    [(HUAlarmEditSettingViewController *)v9 _setupPlayInSettingWithMediaProfileContainer:containerCopy];
    [(HUAlarmEditSettingViewController *)v9 _commonInitialization];
  }

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

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
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:self selector:sel__keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];
      [defaultCenter addObserver:self selector:sel__keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];

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
        alarm = [(HUAlarmEditSettingViewController *)self alarm];
        self->_repeatSchedule = [alarm repeatSchedule];
        v5 = 0x277D75B40;
      }

      else
      {
        alarm = [MEMORY[0x277CCAB98] defaultCenter];
        [alarm addObserver:self selector:sel__dismiss name:kHUEditAlarmTitleFinishedNotification object:0];
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

- (void)viewWillAppear:(BOOL)appear
{
  v20.receiver = self;
  v20.super_class = HUAlarmEditSettingViewController;
  [(HUAlarmEditSettingViewController *)&v20 viewWillAppear:appear];
  setting = self->_setting;
  if (setting == 1)
  {
    v17 = objc_alloc(MEMORY[0x277CBEA80]);
    v18 = [v17 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    [v18 setLocale:currentLocale];

    self->_firstWeekday = [v18 firstWeekday];
  }

  else if (setting == 2)
  {
    editingCell = [(HUAlarmEditSettingViewController *)self editingCell];

    if (!editingCell)
    {
      v6 = objc_opt_new();
      [(HUAlarmEditSettingViewController *)self setEditingCell:v6];

      alarm = [(HUAlarmEditSettingViewController *)self alarm];
      title = [alarm title];
      editingCell2 = [(HUAlarmEditSettingViewController *)self editingCell];
      textField = [editingCell2 textField];
      [textField setText:title];

      editingCell3 = [(HUAlarmEditSettingViewController *)self editingCell];
      textField2 = [editingCell3 textField];
      [textField2 setAutocapitalizationType:2];

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v14 = *MEMORY[0x277D770B0];
      textField3 = [(HUAlarmEditableTextCell *)self->_editingCell textField];
      [defaultCenter addObserver:self selector:sel_textValueChanged_ name:v14 object:textField3];
    }

    if ((HUIsPadIdiom() & 1) == 0 && ([MEMORY[0x277D14CE8] isProxHandOffV2Config] & 1) == 0)
    {
      textField4 = [(HUAlarmEditableTextCell *)self->_editingCell textField];
      [textField4 becomeFirstResponder];
    }

    if ([MEMORY[0x277D14CE8] isProxHandOffV2Config])
    {
      [(HUAlarmEditableTextCell *)self->_editingCell setEnabled:0];
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = HUAlarmEditSettingViewController;
  [(HUAlarmEditSettingViewController *)&v5 viewDidAppear:appear];
  if (self->_setting == 2 && HUIsPadIdiom() && ([MEMORY[0x277D14CE8] isProxHandOffV2Config] & 1) == 0)
  {
    textField = [(HUAlarmEditableTextCell *)self->_editingCell textField];
    [textField becomeFirstResponder];
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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v6.receiver = self;
  v6.super_class = HUAlarmEditSettingViewController;
  [(HUAlarmEditSettingViewController *)&v6 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  if ((HUIsPadIdiom() & 1) == 0 && ([MEMORY[0x277D14CE8] isProxHandOffV2Config] & 1) == 0)
  {
    textField = [(HUAlarmEditableTextCell *)self->_editingCell textField];
    [textField becomeFirstResponder];
  }
}

- (void)_dismiss
{
  navigationController = [(HUAlarmEditSettingViewController *)self navigationController];
  v2 = [navigationController popViewControllerAnimated:1];
}

- (void)_keyboardWillShow:(id)show
{
  showCopy = show;
  if (!HUIsPadIdiom() || (-[HUAlarmEditSettingViewController traitCollection](self, "traitCollection"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 horizontalSizeClass], v4, v5 != 2))
  {
    userInfo = [showCopy userInfo];
    v7 = [userInfo objectForKey:*MEMORY[0x277D76BB8]];
    [v7 CGRectValue];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [(UITableView *)self->_tableView setKeyboardFrame:v9, v11, v13, v15];
    [(UITableView *)self->_tableView layoutSubviews];
  }
}

- (void)_keyboardWillHide:(id)hide
{
  hideCopy = hide;
  if (!HUIsPadIdiom() || (-[HUAlarmEditSettingViewController traitCollection](self, "traitCollection"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 horizontalSizeClass], v5, v6 != 2))
  {
    userInfo = [hideCopy userInfo];
    v8 = [userInfo objectForKey:*MEMORY[0x277D76BB0]];
    [v8 CGRectValue];
    v10 = v9;

    v11 = [userInfo objectForKey:*MEMORY[0x277D76BB8]];
    [v11 CGRectValue];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    if (vabdd_f64(v15, v10) >= 1.0)
    {
      v20 = MEMORY[0x277D75D18];
      v21 = [userInfo objectForKey:*MEMORY[0x277D76B78]];
      [v21 floatValue];
      v23 = v22;
      v24 = [userInfo objectForKey:*MEMORY[0x277D76B70]];
      intValue = [v24 intValue];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __54__HUAlarmEditSettingViewController__keyboardWillHide___block_invoke;
      v26[3] = &unk_277DBFB10;
      v26[4] = self;
      v26[5] = v13;
      *&v26[6] = v15;
      v26[7] = v17;
      v26[8] = v19;
      [v20 animateWithDuration:intValue delay:v26 options:0 animations:v23 completion:0.0];
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
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

  v5 = [(HUAlarmEditSettingViewController *)self roomsList:view];
  v6 = [v5 count];

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = pathCopy;
  setting = self->_setting;
  if (setting == 3)
  {
    v11 = [viewCopy dequeueReusableCellWithIdentifier:@"kHUAlarmEditSettingViewControllerTableViewCellIdentifier"];
    roomsList = [(HUAlarmEditSettingViewController *)self roomsList];
    v17 = [roomsList objectAtIndexedSubscript:{objc_msgSend(v8, "row")}];
    name = [v17 name];
    textLabel = [(HUAlarmEditableTextCell *)v11 textLabel];
    [textLabel setText:name];

    selectedRoom = [(HUAlarmEditSettingViewController *)self selectedRoom];
    if (selectedRoom)
    {
      roomsList2 = [(HUAlarmEditSettingViewController *)self roomsList];
      v22 = [roomsList2 objectAtIndexedSubscript:{objc_msgSend(v8, "row")}];
      uniqueIdentifier = [v22 uniqueIdentifier];
      selectedRoom2 = [(HUAlarmEditSettingViewController *)self selectedRoom];
      uniqueIdentifier2 = [selectedRoom2 uniqueIdentifier];
      if ([uniqueIdentifier hmf_isEqualToUUID:uniqueIdentifier2])
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
    v10 = -[HUAlarmEditSettingViewController maskForRow:](self, "maskForRow:", [pathCopy row]);
    v11 = [viewCopy dequeueReusableCellWithIdentifier:@"kHUAlarmEditSettingViewControllerTableViewCellIdentifier"];
    v12 = DateMaskToString();
    textLabel2 = [(HUAlarmEditableTextCell *)v11 textLabel];
    [textLabel2 setText:v12];

    alarm = [(HUAlarmEditSettingViewController *)self alarm];
    if (([alarm repeatSchedule] & v10) != 0)
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

  hu_alarmsPrimaryTextColor = [MEMORY[0x277D75348] hu_alarmsPrimaryTextColor];
  textLabel3 = [(HUAlarmEditableTextCell *)v11 textLabel];
  [textLabel3 setTextColor:hu_alarmsPrimaryTextColor];

  return v11;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (pathCopy)
  {
    setting = self->_setting;
    if (setting == 3)
    {
      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
      selectedRoom = [(HUAlarmEditSettingViewController *)self selectedRoom];

      if (selectedRoom)
      {
        roomsList = [(HUAlarmEditSettingViewController *)self roomsList];
        selectedRoom2 = [(HUAlarmEditSettingViewController *)self selectedRoom];
        v15 = [roomsList indexOfObject:selectedRoom2];

        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v16 = [MEMORY[0x277CCAA70] indexPathForRow:v15 inSection:0];
          v17 = [viewCopy cellForRowAtIndexPath:v16];

          [v17 setAccessoryType:0];
        }
      }

      v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
      [v8 setAccessoryType:3];
      roomsList2 = [(HUAlarmEditSettingViewController *)self roomsList];
      v19 = [roomsList2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
      [(HUAlarmEditSettingViewController *)self setSelectedRoom:v19];
    }

    else
    {
      if (setting != 1)
      {
        goto LABEL_16;
      }

      v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
      if ([v8 accessoryType] == 3)
      {
        v9 = 0;
      }

      else
      {
        v9 = 3;
      }

      [v8 setAccessoryType:v9];
      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
      v10 = -[HUAlarmEditSettingViewController maskForRow:](self, "maskForRow:", [pathCopy row]);
      if ([v8 accessoryType] == 3)
      {
        v11 = [(HUAlarmEditSettingViewController *)self repeatSchedule]| v10;
      }

      else
      {
        v11 = [(HUAlarmEditSettingViewController *)self repeatSchedule]& ~v10;
      }

      [(HUAlarmEditSettingViewController *)self setRepeatSchedule:v11];
      repeatSchedule = [(HUAlarmEditSettingViewController *)self repeatSchedule];
      roomsList2 = [(HUAlarmEditSettingViewController *)self alarm];
      [roomsList2 setRepeatSchedule:repeatSchedule];
    }

    delegate = [(HUAlarmEditSettingViewController *)self delegate];
    alarm = [(HUAlarmEditSettingViewController *)self alarm];
    [delegate alarmEditSettingController:self didEditAlarm:alarm];
  }

LABEL_16:
}

- (void)textValueChanged:(id)changed
{
  object = [changed object];
  text = [object text];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v6 = [text stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  v7 = [v6 length];
  if (v7)
  {
    text2 = [object text];
  }

  else
  {
    text2 = 0;
  }

  alarm = [(HUAlarmEditSettingViewController *)self alarm];
  [alarm setTitle:text2];

  if (v7)
  {
  }

  delegate = [(HUAlarmEditSettingViewController *)self delegate];
  alarm2 = [(HUAlarmEditSettingViewController *)self alarm];
  [delegate alarmEditSettingController:self didEditAlarm:alarm2];
}

- (HUAlarmEditSettingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end