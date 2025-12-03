@interface HUTimerCreationViewController
- (BOOL)textFieldShouldReturn:(id)return;
- (HUTimerCreationDelegate)delegate;
- (HUTimerCreationViewController)initWithMediaProfileContainer:(id)container;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (void)alarmEditSettingController:(id)controller didEditAlarm:(id)alarm;
- (void)cancelTimerCreation:(id)creation;
- (void)createTimer:(id)timer;
- (void)pickerView:(id)view didChangeSelectedDuration:(double)duration;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)textFieldDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation HUTimerCreationViewController

- (HUTimerCreationViewController)initWithMediaProfileContainer:(id)container
{
  containerCopy = container;
  v11.receiver = self;
  v11.super_class = HUTimerCreationViewController;
  v6 = [(HUTimerCreationViewController *)&v11 initWithStyle:2];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaProfileContainer, container);
    hf_parentRoom = [containerCopy hf_parentRoom];
    selectedRoom = v7->_selectedRoom;
    v7->_selectedRoom = hf_parentRoom;
  }

  return v7;
}

- (void)viewDidLoad
{
  v27.receiver = self;
  v27.super_class = HUTimerCreationViewController;
  [(HUTimerCreationViewController *)&v27 viewDidLoad];
  tableView = [(HUTimerCreationViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"HUTimerContainerCellIdentifier"];

  v4 = [HUTimerIntervalPickerView alloc];
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  v9 = [(HUTimerIntervalPickerView *)v4 initWithFrame:*MEMORY[0x277CBF3A0], v6, v7, v8];
  [(HUTimerCreationViewController *)self setTimePickerView:v9];

  timePickerView = [(HUTimerCreationViewController *)self timePickerView];
  [timePickerView setDelegate:self];

  [(HUTimerCreationViewController *)self setEdgesForExtendedLayout:0];
  v11 = [objc_alloc(MEMORY[0x277D75BB8]) initWithFrame:{v5, v6, v7, v8}];
  [(HUTimerCreationViewController *)self setNameField:v11];

  v12 = _HULocalizedStringWithDefaultValue(@"HUTimerLabelPlaceholder", @"HUTimerLabelPlaceholder", 1);
  nameField = [(HUTimerCreationViewController *)self nameField];
  [nameField setPlaceholder:v12];

  nameField2 = [(HUTimerCreationViewController *)self nameField];
  [nameField2 setAutocapitalizationType:1];

  nameField3 = [(HUTimerCreationViewController *)self nameField];
  [nameField3 setClearButtonMode:1];

  nameField4 = [(HUTimerCreationViewController *)self nameField];
  [nameField4 setDelegate:self];

  v17 = _HULocalizedStringWithDefaultValue(@"HUNewTimer", @"HUNewTimer", 1);
  navigationItem = [(HUTimerCreationViewController *)self navigationItem];
  [navigationItem setTitle:v17];

  v19 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelTimerCreation_];
  navigationItem2 = [(HUTimerCreationViewController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v19];

  v21 = objc_alloc(MEMORY[0x277D751E0]);
  v22 = _HULocalizedStringWithDefaultValue(@"HUStartTimer", @"HUStartTimer", 1);
  v23 = [v21 initWithTitle:v22 style:2 target:self action:sel_createTimer_];
  navigationItem3 = [(HUTimerCreationViewController *)self navigationItem];
  [navigationItem3 setRightBarButtonItem:v23];

  navigationItem4 = [(HUTimerCreationViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem4 rightBarButtonItem];
  [rightBarButtonItem setEnabled:0];
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section == 2)
  {
    v5 = _HULocalizedStringWithDefaultValue(@"HUTimerToneHeaderLabel", @"HUTimerToneHeaderLabel", 1);
  }

  else
  {
    v5 = &stru_2823E0EE8;
  }

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"HUTimerContainerCellIdentifier" forIndexPath:pathCopy];
  if (![pathCopy section])
  {
    contentView = [v7 contentView];
    nameField = [(HUTimerCreationViewController *)self nameField];
    [contentView addSubview:nameField];

    nameField2 = [(HUTimerCreationViewController *)self nameField];
    [nameField2 setTranslatesAutoresizingMaskIntoConstraints:0];

    v16 = MEMORY[0x277CCAAD0];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __65__HUTimerCreationViewController_tableView_cellForRowAtIndexPath___block_invoke;
    v36[3] = &unk_277DC0F70;
    v36[4] = self;
    v17 = v7;
    v37 = v17;
    v18 = __65__HUTimerCreationViewController_tableView_cellForRowAtIndexPath___block_invoke(v36);
    [v16 activateConstraints:v18];

    if ([MEMORY[0x277D14CE8] isProxHandOffV2Config])
    {
      nameField3 = [(HUTimerCreationViewController *)self nameField];
      [nameField3 setEnabled:0];

      nameField4 = [(HUTimerCreationViewController *)self nameField];
      [nameField4 setUserInteractionEnabled:0];

      systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
      nameField5 = [(HUTimerCreationViewController *)self nameField];
      [nameField5 setTextColor:systemGrayColor];

      [v17 setSelectionStyle:0];
    }

    v23 = v37;
    goto LABEL_10;
  }

  if ([pathCopy section] != 1)
  {
    goto LABEL_11;
  }

  if (![pathCopy row])
  {
    contentView2 = [v7 contentView];
    timePickerView = [(HUTimerCreationViewController *)self timePickerView];
    [contentView2 addSubview:timePickerView];

    timePickerView2 = [(HUTimerCreationViewController *)self timePickerView];
    [timePickerView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    v27 = MEMORY[0x277CCAAD0];
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __65__HUTimerCreationViewController_tableView_cellForRowAtIndexPath___block_invoke_2;
    v33 = &unk_277DC0BD8;
    selfCopy = self;
    v35 = v7;
    v28 = __65__HUTimerCreationViewController_tableView_cellForRowAtIndexPath___block_invoke_2(&v30);
    [v27 activateConstraints:{v28, v30, v31, v32, v33, selfCopy}];

    v23 = v35;
LABEL_10:

    goto LABEL_11;
  }

  if ([pathCopy row] == 1)
  {
    v8 = _HULocalizedStringWithDefaultValue(@"HUAlarmPlayInLabel", @"HUAlarmPlayInLabel", 1);
    textLabel = [v7 textLabel];
    [textLabel setText:v8];

    selectedRoom = [(HUTimerCreationViewController *)self selectedRoom];
    name = [selectedRoom name];
    detailTextLabel = [v7 detailTextLabel];
    [detailTextLabel setText:name];

    [v7 setAccessoryType:1];
  }

LABEL_11:

  return v7;
}

id __65__HUTimerCreationViewController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v25 = [*(a1 + 32) nameField];
  v23 = [v25 leadingAnchor];
  v24 = [*(a1 + 40) contentView];
  v22 = [v24 layoutMarginsGuide];
  v21 = [v22 leadingAnchor];
  v20 = [v23 constraintEqualToAnchor:v21];
  v26[0] = v20;
  v19 = [*(a1 + 32) nameField];
  v17 = [v19 trailingAnchor];
  v18 = [*(a1 + 40) contentView];
  v16 = [v18 layoutMarginsGuide];
  v15 = [v16 trailingAnchor];
  v14 = [v17 constraintEqualToAnchor:v15];
  v26[1] = v14;
  v2 = [*(a1 + 32) nameField];
  v3 = [v2 bottomAnchor];
  v4 = [*(a1 + 40) contentView];
  v5 = [v4 bottomAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  v26[2] = v6;
  v7 = [*(a1 + 32) nameField];
  v8 = [v7 topAnchor];
  v9 = [*(a1 + 40) contentView];
  v10 = [v9 topAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v26[3] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];

  return v13;
}

id __65__HUTimerCreationViewController_tableView_cellForRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) timePickerView];
  v4 = [v3 leadingAnchor];
  v5 = [*(a1 + 40) contentView];
  v6 = [v5 leadingAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  [v2 addObject:v7];

  v8 = [*(a1 + 32) timePickerView];
  v9 = [v8 trailingAnchor];
  v10 = [*(a1 + 40) contentView];
  v11 = [v10 trailingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  [v2 addObject:v12];

  v13 = [*(a1 + 32) timePickerView];
  v14 = [v13 bottomAnchor];
  v15 = [*(a1 + 40) contentView];
  v16 = [v15 bottomAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  [v2 addObject:v17];

  v18 = [*(a1 + 32) timePickerView];
  v19 = [v18 topAnchor];
  v20 = [*(a1 + 40) contentView];
  v21 = [v20 topAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
  [v2 addObject:v22];

  return v2;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section] == 1)
  {
    if ([pathCopy row])
    {
      v6 = *MEMORY[0x277D76F30];
    }

    else
    {
      timePickerView = [(HUTimerCreationViewController *)self timePickerView];
      [timePickerView bounds];
      v6 = v11;
    }
  }

  else
  {
    cellConfiguration = [MEMORY[0x277D756E0] cellConfiguration];
    traitCollection = [(HUTimerCreationViewController *)self traitCollection];
    [cellConfiguration _minimumHeightForTraitCollection:traitCollection];
    v6 = v9;
  }

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section] == 1 && objc_msgSend(pathCopy, "row") == 1)
  {
    v5 = [HUAlarmEditSettingViewController alloc];
    mediaProfileContainer = [(HUTimerCreationViewController *)self mediaProfileContainer];
    selectedRoom = [(HUTimerCreationViewController *)self selectedRoom];
    v8 = [(HUAlarmEditSettingViewController *)v5 initPlayInSettingWithMediaProfileContainer:mediaProfileContainer selectedRoom:selectedRoom];

    [v8 setDelegate:self];
    [(HUTimerCreationViewController *)self preferredContentSize];
    [v8 setPreferredContentSize:?];
    navigationController = [(HUTimerCreationViewController *)self navigationController];
    [navigationController pushViewController:v8 animated:1];
  }
}

- (void)textFieldDidChange:(id)change
{
  object = [change object];
  text = [object text];
  [(HUTimerCreationViewController *)self setTimerTitle:text];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  text = [returnCopy text];
  [(HUTimerCreationViewController *)self setTimerTitle:text];

  [returnCopy resignFirstResponder];
  return 1;
}

- (void)pickerView:(id)view didChangeSelectedDuration:(double)duration
{
  [(HUTimerCreationViewController *)self setTimerDuration:view];
  navigationItem = [(HUTimerCreationViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:duration > 0.0];
}

- (void)cancelTimerCreation:(id)creation
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[HUTimerCreationViewController cancelTimerCreation:]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%s(%@): Cancelling timer creation", &v5, 0x16u);
  }

  [(HUTimerCreationViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)alarmEditSettingController:(id)controller didEditAlarm:(id)alarm
{
  v9[1] = *MEMORY[0x277D85DE8];
  selectedRoom = [controller selectedRoom];
  [(HUTimerCreationViewController *)self setSelectedRoom:selectedRoom];

  v6 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:1];
  tableView = [(HUTimerCreationViewController *)self tableView];
  v9[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [tableView reloadRowsAtIndexPaths:v8 withRowAnimation:5];
}

- (void)createTimer:(id)timer
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136315394;
    v22 = "[HUTimerCreationViewController createTimer:]";
    v23 = 2112;
    selfCopy2 = self;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%s(%@) done", &v21, 0x16u);
  }

  [(HUTimerCreationViewController *)self timerDuration];
  if (v5 > 0.0)
  {
    nameField = [(HUTimerCreationViewController *)self nameField];
    isEditing = [nameField isEditing];

    if (isEditing)
    {
      nameField2 = [(HUTimerCreationViewController *)self nameField];
      text = [nameField2 text];
      [(HUTimerCreationViewController *)self setTimerTitle:text];

      nameField3 = [(HUTimerCreationViewController *)self nameField];
      [nameField3 endEditing:1];
    }

    v11 = objc_alloc(MEMORY[0x277D29700]);
    [(HUTimerCreationViewController *)self timerDuration];
    v12 = [v11 initWithState:3 duration:?];
    timerTitle = [(HUTimerCreationViewController *)self timerTitle];
    [v12 setTitle:timerTitle];

    v14 = [MEMORY[0x277D29708] toneSoundWithIdentifier:0 vibrationIdentifer:0 volume:0];
    [v12 setSound:v14];

    selectedRoom = [(HUTimerCreationViewController *)self selectedRoom];
    mediaProfileContainer = [(HUTimerCreationViewController *)self mediaProfileContainer];
    [v12 hf_moveToRoom:selectedRoom withMediaProfileContainer:mediaProfileContainer];

    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315650;
      v22 = "[HUTimerCreationViewController createTimer:]";
      v23 = 2112;
      selfCopy2 = self;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "%s(%@): Creating timer %@", &v21, 0x20u);
    }

    delegate = [(HUTimerCreationViewController *)self delegate];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      delegate2 = [(HUTimerCreationViewController *)self delegate];
      [delegate2 timerCreationViewController:self didCreateTimer:v12];
    }

    [(HUTimerCreationViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (HUTimerCreationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end