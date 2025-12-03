@interface FIUIHealthSettingsBirthDatePickerController
- (FIUIHealthSettingsBirthDatePickerController)init;
- (void)setDateOfBirth:(id)birth;
@end

@implementation FIUIHealthSettingsBirthDatePickerController

- (FIUIHealthSettingsBirthDatePickerController)init
{
  v10.receiver = self;
  v10.super_class = FIUIHealthSettingsBirthDatePickerController;
  v2 = [(FIUIHealthSettingsBirthDatePickerController *)&v10 init];
  if (v2)
  {
    v3 = [FIUIHealthSettingsDatePicker alloc];
    v4 = [(FIUIHealthSettingsDatePicker *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    datePickerView = v2->_datePickerView;
    v2->_datePickerView = v4;

    objc_initWeak(&location, v2);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__FIUIHealthSettingsBirthDatePickerController_init__block_invoke;
    v7[3] = &unk_1E878BE70;
    objc_copyWeak(&v8, &location);
    [(FIUIHealthSettingsDatePicker *)v2->_datePickerView setDateUpdateHandler:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __51__FIUIHealthSettingsBirthDatePickerController_init__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained dateOfBirthUpdateHandler];

    if (v5)
    {
      v6 = [v4 dateOfBirthUpdateHandler];
      (v6)[2](v6, v7);
    }
  }
}

- (void)setDateOfBirth:(id)birth
{
  birthCopy = birth;
  if (!birthCopy)
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    date = [MEMORY[0x1E695DF00] date];
    v7 = [currentCalendar dateByAddingUnit:4 value:-30 toDate:date options:0];

    birthCopy = v7;
  }

  v8 = birthCopy;
  [(FIUIHealthSettingsDatePicker *)self->_datePickerView setDate:birthCopy];
}

@end