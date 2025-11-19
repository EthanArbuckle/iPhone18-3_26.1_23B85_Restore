@interface HKBirthdateChangeManager
+ (id)_birthdayCalendar;
+ (void)showDisabledWarningWithAge:(int64_t)a3 isHealthChecklistAvailable:(BOOL)a4 presentingViewController:(id)a5 withAlertActions:(id)a6;
+ (void)showDisabledWarningWithAge:(int64_t)a3 presentingViewController:(id)a4;
+ (void)showDisabledWarningWithHealthChecklistWithAge:(int64_t)a3 presentingViewController:(id)a4 openHealthChecklistInContext:(BOOL)a5;
- (HKBirthdateChangeManager)initWithHealthStore:(id)a3;
- (id)setBirthdate:(id)a3 withError:(id *)a4;
- (int64_t)_ageFromBirthDate:(id)a3;
- (int64_t)_ageFromBirthDateComponents:(id)a3;
@end

@implementation HKBirthdateChangeManager

- (HKBirthdateChangeManager)initWithHealthStore:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HKBirthdateChangeManager;
  v5 = [(HKBirthdateChangeManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HKBirthdateChangeManager *)v5 setHealthStore:v4];
  }

  return v6;
}

- (id)setBirthdate:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = [(HKBirthdateChangeManager *)self healthStore];
  v24 = 0;
  v8 = [v7 dateOfBirthComponentsWithError:&v24];
  v9 = v24;

  v10 = [(HKBirthdateChangeManager *)self healthStore];
  v23 = v9;
  v11 = [v10 _setDateOfBirthComponents:v6 error:&v23];
  v12 = v23;

  v13 = [(HKBirthdateChangeManager *)self _ageFromBirthDateComponents:v8];
  v14 = [(HKBirthdateChangeManager *)self _ageFromBirthDateComponents:v6];

  v15 = objc_alloc_init(HKBirthdateChangeStatus);
  v16 = v15;
  if (v12)
  {
    v17 = 0;
  }

  else
  {
    v17 = v11;
  }

  [(HKBirthdateChangeStatus *)v15 setSuccess:v17];
  if ([(HKBirthdateChangeStatus *)v16 success])
  {
    v19 = v13 >= *MEMORY[0x1E696C8B8] && v14 < *MEMORY[0x1E696C8B8];
  }

  else
  {
    v19 = 0;
  }

  [(HKBirthdateChangeStatus *)v16 setShouldShowWarning:v19];
  [(HKBirthdateChangeStatus *)v16 setNewAge:v14];
  v20 = v12;
  if (v12)
  {
    if (a4)
    {
      v21 = v20;
      *a4 = v20;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v16;
}

+ (void)showDisabledWarningWithAge:(int64_t)a3 presentingViewController:(id)a4
{
  v5 = a4;
  [objc_opt_class() showDisabledWarningWithAge:a3 isHealthChecklistAvailable:0 presentingViewController:v5 withAlertActions:MEMORY[0x1E695E0F0]];
}

+ (void)showDisabledWarningWithHealthChecklistWithAge:(int64_t)a3 presentingViewController:(id)a4 openHealthChecklistInContext:(BOOL)a5
{
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69DC648];
  v8 = MEMORY[0x1E696AAE8];
  v9 = a4;
  v10 = [v8 bundleWithIdentifier:@"com.apple.HealthUI"];
  v11 = [v10 localizedStringForKey:@"EDIT_DETAILS_ACTION_CHECKLIST" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __128__HKBirthdateChangeManager_showDisabledWarningWithHealthChecklistWithAge_presentingViewController_openHealthChecklistInContext___block_invoke;
  v15[3] = &__block_descriptor_33_e23_v16__0__UIAlertAction_8l;
  v16 = a5;
  v12 = [v7 actionWithTitle:v11 style:0 handler:v15];

  v13 = objc_opt_class();
  v17[0] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  [v13 showDisabledWarningWithAge:a3 isHealthChecklistAvailable:1 presentingViewController:v9 withAlertActions:v14];
}

void __128__HKBirthdateChangeManager_showDisabledWarningWithHealthChecklistWithAge_presentingViewController_openHealthChecklistInContext___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = @"x-apple-health://HealthChecklist/CurrentContext";
  }

  else
  {
    v1 = @"x-apple-health://HealthChecklist";
  }

  v2 = MEMORY[0x1E6963608];
  v3 = v1;
  v5 = [v2 defaultWorkspace];
  v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];

  [v5 openSensitiveURL:v4 withOptions:MEMORY[0x1E695E0F8]];
}

+ (void)showDisabledWarningWithAge:(int64_t)a3 isHealthChecklistAvailable:(BOOL)a4 presentingViewController:(id)a5 withAlertActions:(id)a6
{
  v7 = a4;
  v36 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a6;
  v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v12 = [v11 localizedStringForKey:@"EDIT_DETAILS_AGE_UNDER_13_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  if (a3 < 0 && v7)
  {
    v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v14 = v13;
    v15 = @"EDIT_DETAILS_AGE_REMOVED_TEXT_CHECKLIST_AVAILABLE";
LABEL_4:
    v16 = [v13 localizedStringForKey:v15 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    goto LABEL_10;
  }

  if (v7)
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v14 = v18;
    v19 = @"EDIT_DETAILS_AGE_%ld_UNDER_13_BODY_CHECKLIST_AVAILABLE";
  }

  else
  {
    if (a3 < 0)
    {
      v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v14 = v13;
      v15 = @"EDIT_DETAILS_AGE_REMOVED_TEXT_CHECKLIST_UNAVAILABLE";
      goto LABEL_4;
    }

    v17 = MEMORY[0x1E696AEC0];
    v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v14 = v18;
    v19 = @"EDIT_DETAILS_AGE_%ld_UNDER_13_BODY_CHECKLIST_UNAVAILABLE";
  }

  v20 = [v18 localizedStringForKey:v19 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v16 = [v17 localizedStringWithFormat:v20, a3];

LABEL_10:
  v21 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v12 message:v16 preferredStyle:1];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v22 = v10;
  v23 = [v22 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v32;
    do
    {
      v26 = 0;
      do
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [v21 addAction:*(*(&v31 + 1) + 8 * v26++)];
      }

      while (v24 != v26);
      v24 = [v22 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v24);
  }

  v27 = MEMORY[0x1E69DC648];
  v28 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v29 = [v28 localizedStringForKey:@"EDIT_DETAILS_ALERT_ACTION_OK" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v30 = [v27 actionWithTitle:v29 style:0 handler:0];

  [v21 addAction:v30];
  [v21 setPreferredAction:v30];
  [v9 presentViewController:v21 animated:1 completion:0];
}

- (int64_t)_ageFromBirthDateComponents:(id)a3
{
  if (!a3)
  {
    return -1;
  }

  v4 = a3;
  v5 = +[HKBirthdateChangeManager _birthdayCalendar];
  v6 = [v5 dateFromComponents:v4];

  v7 = [(HKBirthdateChangeManager *)self _ageFromBirthDate:v6];
  return v7;
}

- (int64_t)_ageFromBirthDate:(id)a3
{
  v4 = a3;
  v5 = +[HKBirthdateChangeManager _birthdayCalendar];
  v6 = [(HKBirthdateChangeManager *)self _nowDate];
  v7 = [v5 components:4 fromDate:v4 toDate:v6 options:0];

  v8 = [v7 year];
  return v8;
}

+ (id)_birthdayCalendar
{
  if (_birthdayCalendar_onceToken != -1)
  {
    +[HKBirthdateChangeManager _birthdayCalendar];
  }

  v3 = _birthdayCalendar_calendar;

  return v3;
}

uint64_t __45__HKBirthdateChangeManager__birthdayCalendar__block_invoke()
{
  v0 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v1 = _birthdayCalendar_calendar;
  _birthdayCalendar_calendar = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end