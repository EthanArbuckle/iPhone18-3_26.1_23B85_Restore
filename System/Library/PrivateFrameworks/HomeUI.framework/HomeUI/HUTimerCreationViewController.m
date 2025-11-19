@interface HUTimerCreationViewController
- (BOOL)textFieldShouldReturn:(id)a3;
- (HUTimerCreationDelegate)delegate;
- (HUTimerCreationViewController)initWithMediaProfileContainer:(id)a3;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (void)alarmEditSettingController:(id)a3 didEditAlarm:(id)a4;
- (void)cancelTimerCreation:(id)a3;
- (void)createTimer:(id)a3;
- (void)pickerView:(id)a3 didChangeSelectedDuration:(double)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)textFieldDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation HUTimerCreationViewController

- (HUTimerCreationViewController)initWithMediaProfileContainer:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HUTimerCreationViewController;
  v6 = [(HUTimerCreationViewController *)&v11 initWithStyle:2];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaProfileContainer, a3);
    v8 = [v5 hf_parentRoom];
    selectedRoom = v7->_selectedRoom;
    v7->_selectedRoom = v8;
  }

  return v7;
}

- (void)viewDidLoad
{
  v27.receiver = self;
  v27.super_class = HUTimerCreationViewController;
  [(HUTimerCreationViewController *)&v27 viewDidLoad];
  v3 = [(HUTimerCreationViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"HUTimerContainerCellIdentifier"];

  v4 = [HUTimerIntervalPickerView alloc];
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  v9 = [(HUTimerIntervalPickerView *)v4 initWithFrame:*MEMORY[0x277CBF3A0], v6, v7, v8];
  [(HUTimerCreationViewController *)self setTimePickerView:v9];

  v10 = [(HUTimerCreationViewController *)self timePickerView];
  [v10 setDelegate:self];

  [(HUTimerCreationViewController *)self setEdgesForExtendedLayout:0];
  v11 = [objc_alloc(MEMORY[0x277D75BB8]) initWithFrame:{v5, v6, v7, v8}];
  [(HUTimerCreationViewController *)self setNameField:v11];

  v12 = _HULocalizedStringWithDefaultValue(@"HUTimerLabelPlaceholder", @"HUTimerLabelPlaceholder", 1);
  v13 = [(HUTimerCreationViewController *)self nameField];
  [v13 setPlaceholder:v12];

  v14 = [(HUTimerCreationViewController *)self nameField];
  [v14 setAutocapitalizationType:1];

  v15 = [(HUTimerCreationViewController *)self nameField];
  [v15 setClearButtonMode:1];

  v16 = [(HUTimerCreationViewController *)self nameField];
  [v16 setDelegate:self];

  v17 = _HULocalizedStringWithDefaultValue(@"HUNewTimer", @"HUNewTimer", 1);
  v18 = [(HUTimerCreationViewController *)self navigationItem];
  [v18 setTitle:v17];

  v19 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelTimerCreation_];
  v20 = [(HUTimerCreationViewController *)self navigationItem];
  [v20 setLeftBarButtonItem:v19];

  v21 = objc_alloc(MEMORY[0x277D751E0]);
  v22 = _HULocalizedStringWithDefaultValue(@"HUStartTimer", @"HUStartTimer", 1);
  v23 = [v21 initWithTitle:v22 style:2 target:self action:sel_createTimer_];
  v24 = [(HUTimerCreationViewController *)self navigationItem];
  [v24 setRightBarButtonItem:v23];

  v25 = [(HUTimerCreationViewController *)self navigationItem];
  v26 = [v25 rightBarButtonItem];
  [v26 setEnabled:0];
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4 == 2)
  {
    v5 = _HULocalizedStringWithDefaultValue(@"HUTimerToneHeaderLabel", @"HUTimerToneHeaderLabel", 1);
  }

  else
  {
    v5 = &stru_2823E0EE8;
  }

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"HUTimerContainerCellIdentifier" forIndexPath:v6];
  if (![v6 section])
  {
    v13 = [v7 contentView];
    v14 = [(HUTimerCreationViewController *)self nameField];
    [v13 addSubview:v14];

    v15 = [(HUTimerCreationViewController *)self nameField];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

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
      v19 = [(HUTimerCreationViewController *)self nameField];
      [v19 setEnabled:0];

      v20 = [(HUTimerCreationViewController *)self nameField];
      [v20 setUserInteractionEnabled:0];

      v21 = [MEMORY[0x277D75348] systemGrayColor];
      v22 = [(HUTimerCreationViewController *)self nameField];
      [v22 setTextColor:v21];

      [v17 setSelectionStyle:0];
    }

    v23 = v37;
    goto LABEL_10;
  }

  if ([v6 section] != 1)
  {
    goto LABEL_11;
  }

  if (![v6 row])
  {
    v24 = [v7 contentView];
    v25 = [(HUTimerCreationViewController *)self timePickerView];
    [v24 addSubview:v25];

    v26 = [(HUTimerCreationViewController *)self timePickerView];
    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

    v27 = MEMORY[0x277CCAAD0];
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __65__HUTimerCreationViewController_tableView_cellForRowAtIndexPath___block_invoke_2;
    v33 = &unk_277DC0BD8;
    v34 = self;
    v35 = v7;
    v28 = __65__HUTimerCreationViewController_tableView_cellForRowAtIndexPath___block_invoke_2(&v30);
    [v27 activateConstraints:{v28, v30, v31, v32, v33, v34}];

    v23 = v35;
LABEL_10:

    goto LABEL_11;
  }

  if ([v6 row] == 1)
  {
    v8 = _HULocalizedStringWithDefaultValue(@"HUAlarmPlayInLabel", @"HUAlarmPlayInLabel", 1);
    v9 = [v7 textLabel];
    [v9 setText:v8];

    v10 = [(HUTimerCreationViewController *)self selectedRoom];
    v11 = [v10 name];
    v12 = [v7 detailTextLabel];
    [v12 setText:v11];

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

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([v5 section] == 1)
  {
    if ([v5 row])
    {
      v6 = *MEMORY[0x277D76F30];
    }

    else
    {
      v10 = [(HUTimerCreationViewController *)self timePickerView];
      [v10 bounds];
      v6 = v11;
    }
  }

  else
  {
    v7 = [MEMORY[0x277D756E0] cellConfiguration];
    v8 = [(HUTimerCreationViewController *)self traitCollection];
    [v7 _minimumHeightForTraitCollection:v8];
    v6 = v9;
  }

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = a4;
  if ([v10 section] == 1 && objc_msgSend(v10, "row") == 1)
  {
    v5 = [HUAlarmEditSettingViewController alloc];
    v6 = [(HUTimerCreationViewController *)self mediaProfileContainer];
    v7 = [(HUTimerCreationViewController *)self selectedRoom];
    v8 = [(HUAlarmEditSettingViewController *)v5 initPlayInSettingWithMediaProfileContainer:v6 selectedRoom:v7];

    [v8 setDelegate:self];
    [(HUTimerCreationViewController *)self preferredContentSize];
    [v8 setPreferredContentSize:?];
    v9 = [(HUTimerCreationViewController *)self navigationController];
    [v9 pushViewController:v8 animated:1];
  }
}

- (void)textFieldDidChange:(id)a3
{
  v5 = [a3 object];
  v4 = [v5 text];
  [(HUTimerCreationViewController *)self setTimerTitle:v4];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = [v4 text];
  [(HUTimerCreationViewController *)self setTimerTitle:v5];

  [v4 resignFirstResponder];
  return 1;
}

- (void)pickerView:(id)a3 didChangeSelectedDuration:(double)a4
{
  [(HUTimerCreationViewController *)self setTimerDuration:a3];
  v7 = [(HUTimerCreationViewController *)self navigationItem];
  v6 = [v7 rightBarButtonItem];
  [v6 setEnabled:a4 > 0.0];
}

- (void)cancelTimerCreation:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[HUTimerCreationViewController cancelTimerCreation:]";
    v7 = 2112;
    v8 = self;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%s(%@): Cancelling timer creation", &v5, 0x16u);
  }

  [(HUTimerCreationViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)alarmEditSettingController:(id)a3 didEditAlarm:(id)a4
{
  v9[1] = *MEMORY[0x277D85DE8];
  v5 = [a3 selectedRoom];
  [(HUTimerCreationViewController *)self setSelectedRoom:v5];

  v6 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:1];
  v7 = [(HUTimerCreationViewController *)self tableView];
  v9[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v7 reloadRowsAtIndexPaths:v8 withRowAnimation:5];
}

- (void)createTimer:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136315394;
    v22 = "[HUTimerCreationViewController createTimer:]";
    v23 = 2112;
    v24 = self;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%s(%@) done", &v21, 0x16u);
  }

  [(HUTimerCreationViewController *)self timerDuration];
  if (v5 > 0.0)
  {
    v6 = [(HUTimerCreationViewController *)self nameField];
    v7 = [v6 isEditing];

    if (v7)
    {
      v8 = [(HUTimerCreationViewController *)self nameField];
      v9 = [v8 text];
      [(HUTimerCreationViewController *)self setTimerTitle:v9];

      v10 = [(HUTimerCreationViewController *)self nameField];
      [v10 endEditing:1];
    }

    v11 = objc_alloc(MEMORY[0x277D29700]);
    [(HUTimerCreationViewController *)self timerDuration];
    v12 = [v11 initWithState:3 duration:?];
    v13 = [(HUTimerCreationViewController *)self timerTitle];
    [v12 setTitle:v13];

    v14 = [MEMORY[0x277D29708] toneSoundWithIdentifier:0 vibrationIdentifer:0 volume:0];
    [v12 setSound:v14];

    v15 = [(HUTimerCreationViewController *)self selectedRoom];
    v16 = [(HUTimerCreationViewController *)self mediaProfileContainer];
    [v12 hf_moveToRoom:v15 withMediaProfileContainer:v16];

    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315650;
      v22 = "[HUTimerCreationViewController createTimer:]";
      v23 = 2112;
      v24 = self;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "%s(%@): Creating timer %@", &v21, 0x20u);
    }

    v18 = [(HUTimerCreationViewController *)self delegate];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      v20 = [(HUTimerCreationViewController *)self delegate];
      [v20 timerCreationViewController:self didCreateTimer:v12];
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