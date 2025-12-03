@interface CNUITonePickerViewController
- (CNUITonePickerViewController)initWithAlertType:(int64_t)type activityAlert:(id)alert;
- (void)cancelButton:(id)button;
- (void)doneButton:(id)button;
@end

@implementation CNUITonePickerViewController

- (CNUITonePickerViewController)initWithAlertType:(int64_t)type activityAlert:(id)alert
{
  alertCopy = alert;
  v25.receiver = self;
  v25.super_class = CNUITonePickerViewController;
  v7 = [(CNUITonePickerViewController *)&v25 initWithNibName:0 bundle:0];
  if (v7)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2050000000;
    v8 = getTKTonePickerViewControllerClass_softClass;
    v30 = getTKTonePickerViewControllerClass_softClass;
    if (!getTKTonePickerViewControllerClass_softClass)
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __getTKTonePickerViewControllerClass_block_invoke;
      v26[3] = &unk_1E76E79E0;
      v26[4] = &v27;
      __getTKTonePickerViewControllerClass_block_invoke(v26);
      v8 = v28[3];
    }

    v9 = v8;
    _Block_object_dispose(&v27, 8);
    v10 = [[v8 alloc] initWithAlertType:type];
    tonePicker = v7->_tonePicker;
    v7->_tonePicker = v10;

    [(TKTonePickerViewController *)v7->_tonePicker setAccessibilityIdentifierBlock:&__block_literal_global_63];
    v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v13 = v12;
    if (type == 1)
    {
      v14 = [v12 localizedStringForKey:@"EDIT_RINGTONE" value:&stru_1F162C170 table:@"Localized"];
      navigationItem = [(TKTonePickerViewController *)v7->_tonePicker navigationItem];
      [navigationItem setTitle:v14];

      [(TKTonePickerViewController *)v7->_tonePicker setShowsNone:0];
    }

    else
    {
      v16 = [v12 localizedStringForKey:@"EDIT_TEXTTONE" value:&stru_1F162C170 table:@"Localized"];
      navigationItem2 = [(TKTonePickerViewController *)v7->_tonePicker navigationItem];
      [navigationItem2 setTitle:v16];

      [(TKTonePickerViewController *)v7->_tonePicker setShowsNone:1];
      [(TKTonePickerViewController *)v7->_tonePicker setNoneAtTop:1];
    }

    [(TKTonePickerViewController *)v7->_tonePicker setShowsIgnoreMute:1];
    -[TKTonePickerViewController setIgnoreMute:](v7->_tonePicker, "setIgnoreMute:", [alertCopy ignoreMute]);
    [(TKTonePickerViewController *)v7->_tonePicker setShowsVibrations:+[CNCapabilities hasVibratorCapability]];
    [(TKTonePickerViewController *)v7->_tonePicker setShowsDefault:1];
    sound = [alertCopy sound];
    [(TKTonePickerViewController *)v7->_tonePicker setSelectedToneIdentifier:sound];

    vibration = [alertCopy vibration];
    [(TKTonePickerViewController *)v7->_tonePicker setSelectedVibrationIdentifier:vibration];

    v20 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v7 action:sel_doneButton_];
    [v20 setAccessibilityIdentifier:@"TonePickerDoneButton"];
    navigationItem3 = [(TKTonePickerViewController *)v7->_tonePicker navigationItem];
    [navigationItem3 setRightBarButtonItem:v20];

    v22 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v7 action:sel_cancelButton_];
    [v22 setAccessibilityIdentifier:@"TonePickerCancelButton"];
    navigationItem4 = [(TKTonePickerViewController *)v7->_tonePicker navigationItem];
    [navigationItem4 setLeftBarButtonItem:v22];

    [(CNUITonePickerViewController *)v7 pushViewController:v7->_tonePicker animated:0];
  }

  return v7;
}

- (void)doneButton:(id)button
{
  v4 = objc_alloc(MEMORY[0x1E695CD18]);
  tonePicker = [(CNUITonePickerViewController *)self tonePicker];
  selectedToneIdentifier = [tonePicker selectedToneIdentifier];
  tonePicker2 = [(CNUITonePickerViewController *)self tonePicker];
  selectedVibrationIdentifier = [tonePicker2 selectedVibrationIdentifier];
  tonePicker3 = [(CNUITonePickerViewController *)self tonePicker];
  v11 = [v4 initWithSound:selectedToneIdentifier vibration:selectedVibrationIdentifier ignoreMute:{objc_msgSend(tonePicker3, "ignoreMute")}];

  delegate = [(CNUITonePickerViewController *)self delegate];
  [delegate picker:self didPickItem:v11];

  [(CNUITonePickerViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)cancelButton:(id)button
{
  delegate = [(CNUITonePickerViewController *)self delegate];
  [delegate pickerDidCancel:self];

  [(CNUITonePickerViewController *)self dismissViewControllerAnimated:1 completion:0];
}

@end