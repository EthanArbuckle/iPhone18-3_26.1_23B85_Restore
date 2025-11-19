@interface CharacteristicTypeDetailViewController
- (CharacteristicTypeDetailViewController)initWithCoder:(id)a3;
- (CharacteristicTypeDetailViewController)initWithHealthStore:(id)a3 characteristicType:(id)a4 identifier:(int64_t)a5 firstName:(id)a6 lastName:(id)a7;
- (CharacteristicTypeDetailViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (CharacteristicTypeDetailViewControllerDelegate)delegate;
- (id)getBiologicalSex:(id)a3;
- (id)getBloodType:(id)a3;
- (id)getFitzpatrickSkinType:(id)a3;
- (id)getWheelchairUse:(id)a3;
- (id)specifierForBiologicalSex;
- (id)specifierForBloodType;
- (id)specifierForFirstName;
- (id)specifierForFitzpatrickSkinType;
- (id)specifierForLastName;
- (id)specifierForWheelchairUse;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_updateFirstName:(id)a3 lastName:(id)a4 completion:(id)a5;
- (void)didUpdateName;
- (void)setBiologicalSex:(id)a3 specifier:(id)a4;
- (void)setBloodType:(id)a3 specifier:(id)a4;
- (void)setFirstName:(id)a3 specifier:(id)a4;
- (void)setFitzpatrickSkinType:(id)a3 specifier:(id)a4;
- (void)setLastName:(id)a3 specifier:(id)a4;
- (void)setWheelchairUse:(id)a3 specifier:(id)a4;
@end

@implementation CharacteristicTypeDetailViewController

- (CharacteristicTypeDetailViewController)initWithHealthStore:(id)a3 characteristicType:(id)a4 identifier:(int64_t)a5 firstName:(id)a6 lastName:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v25.receiver = self;
  v25.super_class = CharacteristicTypeDetailViewController;
  v17 = [(CharacteristicTypeDetailViewController *)&v25 initWithNibName:0 bundle:0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_healthStore, a3);
    objc_storeStrong(&v18->_characteristicType, a4);
    v19 = [objc_alloc(MEMORY[0x1E69A4048]) initWithHealthStore:v13];
    userDefaults = v18->_userDefaults;
    v18->_userDefaults = v19;

    v18->_specifierID = a5;
    objc_storeStrong(&v18->_firstName, a6);
    objc_storeStrong(&v18->_lastName, a7);
  }

  v21 = [(CharacteristicTypeDetailViewController *)v18 title];
  v22 = [(CharacteristicTypeDetailViewController *)v18 navigationItem];
  [v22 setTitle:v21];

  v23 = [(CharacteristicTypeDetailViewController *)v18 navigationItem];
  [v23 setStyle:0];

  return v18;
}

- (CharacteristicTypeDetailViewController)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = CharacteristicTypeDetailViewController;
  return [(CharacteristicTypeDetailViewController *)&v4 initWithCoder:a3];
}

- (CharacteristicTypeDetailViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D940];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (id)specifiers
{
  v3 = *MEMORY[0x1E69C57B8];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    specifierID = self->_specifierID;
    if (specifierID > 3)
    {
      switch(specifierID)
      {
        case 4:
          v7 = [(CharacteristicTypeDetailViewController *)self specifierForBloodType];
          goto LABEL_15;
        case 5:
          v7 = [(CharacteristicTypeDetailViewController *)self specifierForFitzpatrickSkinType];
          goto LABEL_15;
        case 6:
          v7 = [(CharacteristicTypeDetailViewController *)self specifierForWheelchairUse];
          goto LABEL_15;
      }
    }

    else
    {
      switch(specifierID)
      {
        case 1:
          v7 = [(CharacteristicTypeDetailViewController *)self specifierForFirstName];
          goto LABEL_15;
        case 2:
          v7 = [(CharacteristicTypeDetailViewController *)self specifierForLastName];
          goto LABEL_15;
        case 3:
          v7 = [(CharacteristicTypeDetailViewController *)self specifierForBiologicalSex];
LABEL_15:
          v8 = v7;
          [v5 addObject:v7];

          break;
      }
    }

    v9 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)specifierForFirstName
{
  v2 = [MEMORY[0x1E69C5748] preferenceSpecifierNamed:&stru_1F3823B88 target:self set:sel_setFirstName_specifier_ get:sel_getFirstName_ detail:0 cell:8 edit:0];
  [v2 setProperty:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69C58C0]];

  return v2;
}

- (id)specifierForLastName
{
  v2 = [MEMORY[0x1E69C5748] preferenceSpecifierNamed:&stru_1F3823B88 target:self set:sel_setLastName_specifier_ get:sel_getLastName_ detail:0 cell:8 edit:0];
  [v2 setProperty:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69C58C0]];

  return v2;
}

- (id)specifierForBiologicalSex
{
  v3 = MEMORY[0x1E69C5748];
  v4 = HKHealthKitFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"BIOLOGICAL_SEX" value:&stru_1F3823B88 table:*MEMORY[0x1E696B910]];
  v6 = [v3 preferenceSpecifierNamed:v5 target:self set:sel_setBiologicalSex_specifier_ get:sel_getBiologicalSex_ detail:objc_opt_class() cell:2 edit:0];

  v7 = [MEMORY[0x1E695DF70] array];
  for (i = 0; i != 4; ++i)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:i];
    [v7 addObject:v9];
  }

  v10 = [MEMORY[0x1E695DF70] array];
  for (j = 0; j != 4; ++j)
  {
    v12 = [(CharacteristicTypeDetailViewController *)self delegate];
    v13 = [v12 _displayStringForBiologicalSex:j];

    [v10 addObject:v13];
  }

  [v6 setValues:v7 titles:v10];

  return v6;
}

- (id)specifierForBloodType
{
  v3 = MEMORY[0x1E69C5748];
  v4 = HKHealthKitFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"BLOOD_TYPE" value:&stru_1F3823B88 table:*MEMORY[0x1E696B910]];
  v6 = [v3 preferenceSpecifierNamed:v5 target:self set:sel_setBloodType_specifier_ get:sel_getBloodType_ detail:objc_opt_class() cell:2 edit:0];

  v7 = [MEMORY[0x1E695DF70] array];
  for (i = 0; i != 9; ++i)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:i];
    [v7 addObject:v9];
  }

  v10 = [MEMORY[0x1E695DF70] array];
  for (j = 0; j != 9; ++j)
  {
    v12 = [(CharacteristicTypeDetailViewController *)self delegate];
    v13 = [v12 _displayStringForBloodType:j];

    [v10 addObject:v13];
  }

  [v6 setValues:v7 titles:v10];

  return v6;
}

- (id)specifierForFitzpatrickSkinType
{
  v3 = MEMORY[0x1E69C5748];
  v4 = HKHealthKitFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"FITZPATRICK_SKIN_TYPE" value:&stru_1F3823B88 table:*MEMORY[0x1E696B910]];
  v6 = [v3 preferenceSpecifierNamed:v5 target:self set:sel_setFitzpatrickSkinType_specifier_ get:sel_getFitzpatrickSkinType_ detail:objc_opt_class() cell:2 edit:0];

  v7 = [MEMORY[0x1E695DF70] array];
  for (i = 0; i != 7; ++i)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:i];
    [v7 addObject:v9];
  }

  v10 = [MEMORY[0x1E695DF70] array];
  for (j = 0; j != 7; ++j)
  {
    v12 = [(CharacteristicTypeDetailViewController *)self delegate];
    v13 = [v12 _displayStringForFitzpatrickSkinType:j];

    [v10 addObject:v13];
  }

  [v6 setValues:v7 titles:v10];

  return v6;
}

- (id)specifierForWheelchairUse
{
  v3 = MEMORY[0x1E69C5748];
  v4 = HKHealthKitFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"WHEELCHAIR_USE" value:&stru_1F3823B88 table:*MEMORY[0x1E696B910]];
  v6 = [v3 preferenceSpecifierNamed:v5 target:self set:sel_setWheelchairUse_specifier_ get:sel_getWheelchairUse_ detail:objc_opt_class() cell:2 edit:0];

  v7 = [MEMORY[0x1E695DF70] array];
  for (i = 0; i != 3; ++i)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:i];
    [v7 addObject:v9];
  }

  v10 = [MEMORY[0x1E695DF70] array];
  for (j = 0; j != 3; ++j)
  {
    v12 = [(CharacteristicTypeDetailViewController *)self delegate];
    v13 = [v12 _displayStringForWheelchairUse:j];

    [v10 addObject:v13];
  }

  [v6 setValues:v7 titles:v10];

  return v6;
}

- (void)setFirstName:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_1F3823B88;
  }

  lastName = self->_lastName;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__CharacteristicTypeDetailViewController_setFirstName_specifier___block_invoke;
  v15[3] = &unk_1E7EEB2D0;
  if (lastName)
  {
    v10 = lastName;
  }

  else
  {
    v10 = &stru_1F3823B88;
  }

  v15[4] = self;
  v16 = v6;
  v17 = v7;
  v11 = v7;
  v12 = v6;
  v13 = v10;
  v14 = v8;
  [(CharacteristicTypeDetailViewController *)self _updateFirstName:v14 lastName:v13 completion:v15];
}

void __65__CharacteristicTypeDetailViewController_setFirstName_specifier___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__CharacteristicTypeDetailViewController_setFirstName_specifier___block_invoke_2;
  block[3] = &unk_1E7EEB2A8;
  v12 = a2;
  v6 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v9 = v6;
  v7 = v5;
  v10 = v7;
  v11 = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  if (a2)
  {
    [*(a1 + 32) didUpdateName];
  }
}

void __65__CharacteristicTypeDetailViewController_setFirstName_specifier___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 40);
    v3 = (*(a1 + 32) + 1488);

    objc_storeStrong(v3, v2);
  }

  else
  {
    _HKInitializeLogging();
    v4 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __65__CharacteristicTypeDetailViewController_setFirstName_specifier___block_invoke_2_cold_1();
    }

    [*(a1 + 32) reloadSpecifier:*(a1 + 56)];
  }
}

- (void)setLastName:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_firstName)
  {
    firstName = self->_firstName;
  }

  else
  {
    firstName = &stru_1F3823B88;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__CharacteristicTypeDetailViewController_setLastName_specifier___block_invoke;
  v14[3] = &unk_1E7EEB2D0;
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = &stru_1F3823B88;
  }

  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v10 = v7;
  v11 = v6;
  v12 = v9;
  v13 = firstName;
  [(CharacteristicTypeDetailViewController *)self _updateFirstName:v13 lastName:v12 completion:v14];
}

void __64__CharacteristicTypeDetailViewController_setLastName_specifier___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__CharacteristicTypeDetailViewController_setLastName_specifier___block_invoke_2;
  block[3] = &unk_1E7EEB2A8;
  v12 = a2;
  v6 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v9 = v6;
  v7 = v5;
  v10 = v7;
  v11 = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  if (a2)
  {
    [*(a1 + 32) didUpdateName];
  }
}

void __64__CharacteristicTypeDetailViewController_setLastName_specifier___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 40);
    v3 = (*(a1 + 32) + 1496);

    objc_storeStrong(v3, v2);
  }

  else
  {
    _HKInitializeLogging();
    v4 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __65__CharacteristicTypeDetailViewController_setFirstName_specifier___block_invoke_2_cold_1();
    }

    [*(a1 + 32) reloadSpecifier:*(a1 + 56)];
  }
}

- (void)setBiologicalSex:(id)a3 specifier:(id)a4
{
  healthStore = self->_healthStore;
  v13 = 0;
  v6 = -[HKHealthStore _setBiologicalSex:error:](healthStore, "_setBiologicalSex:error:", [a3 integerValue], &v13);
  v7 = v13;
  if (v6)
  {
    v8 = self->_healthStore;
    v12 = v7;
    v9 = [(HKHealthStore *)v8 biologicalSexWithError:&v12];
    v10 = v12;

    biologicalSexObject = self->_biologicalSexObject;
    self->_biologicalSexObject = v9;

    v7 = v10;
  }
}

- (id)getBiologicalSex:(id)a3
{
  healthStore = self->_healthStore;
  v12 = 0;
  v5 = [(HKHealthStore *)healthStore biologicalSexWithError:&v12];
  v6 = v12;
  biologicalSexObject = self->_biologicalSexObject;
  self->_biologicalSexObject = v5;

  v8 = MEMORY[0x1E696AD98];
  v9 = [(HKBiologicalSexObject *)self->_biologicalSexObject biologicalSex];

  v10 = [v8 numberWithInteger:v9];

  return v10;
}

- (void)setBloodType:(id)a3 specifier:(id)a4
{
  healthStore = self->_healthStore;
  v13 = 0;
  v6 = -[HKHealthStore _setBloodType:error:](healthStore, "_setBloodType:error:", [a3 integerValue], &v13);
  v7 = v13;
  if (v6)
  {
    v8 = self->_healthStore;
    v12 = v7;
    v9 = [(HKHealthStore *)v8 bloodTypeWithError:&v12];
    v10 = v12;

    bloodTypeObject = self->_bloodTypeObject;
    self->_bloodTypeObject = v9;

    v7 = v10;
  }
}

- (id)getBloodType:(id)a3
{
  healthStore = self->_healthStore;
  v12 = 0;
  v5 = [(HKHealthStore *)healthStore bloodTypeWithError:&v12];
  v6 = v12;
  bloodTypeObject = self->_bloodTypeObject;
  self->_bloodTypeObject = v5;

  v8 = MEMORY[0x1E696AD98];
  v9 = [(HKBloodTypeObject *)self->_bloodTypeObject bloodType];

  v10 = [v8 numberWithInteger:v9];

  return v10;
}

- (void)setFitzpatrickSkinType:(id)a3 specifier:(id)a4
{
  healthStore = self->_healthStore;
  v13 = 0;
  v6 = -[HKHealthStore _setFitzpatrickSkinType:error:](healthStore, "_setFitzpatrickSkinType:error:", [a3 integerValue], &v13);
  v7 = v13;
  if (v6)
  {
    v8 = self->_healthStore;
    v12 = v7;
    v9 = [(HKHealthStore *)v8 fitzpatrickSkinTypeWithError:&v12];
    v10 = v12;

    p_super = &self->_fitzpatrickSkinTypeObject->super;
    self->_fitzpatrickSkinTypeObject = v9;
    v7 = v10;
  }

  else
  {
    _HKInitializeLogging();
    p_super = HKLogWellnessDashboard();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      [CharacteristicTypeDetailViewController setFitzpatrickSkinType:specifier:];
    }
  }
}

- (id)getFitzpatrickSkinType:(id)a3
{
  healthStore = self->_healthStore;
  v12 = 0;
  v5 = [(HKHealthStore *)healthStore fitzpatrickSkinTypeWithError:&v12];
  v6 = v12;
  fitzpatrickSkinTypeObject = self->_fitzpatrickSkinTypeObject;
  self->_fitzpatrickSkinTypeObject = v5;

  v8 = MEMORY[0x1E696AD98];
  v9 = [(HKFitzpatrickSkinTypeObject *)self->_fitzpatrickSkinTypeObject skinType];

  v10 = [v8 numberWithInteger:v9];

  return v10;
}

- (void)setWheelchairUse:(id)a3 specifier:(id)a4
{
  healthStore = self->_healthStore;
  v13 = 0;
  v6 = -[HKHealthStore _setWheelchairUse:error:](healthStore, "_setWheelchairUse:error:", [a3 integerValue], &v13);
  v7 = v13;
  if (v6)
  {
    v8 = self->_healthStore;
    v12 = v7;
    v9 = [(HKHealthStore *)v8 wheelchairUseWithError:&v12];
    v10 = v12;

    p_super = &self->_wheelchairUseObject->super;
    self->_wheelchairUseObject = v9;
    v7 = v10;
  }

  else
  {
    _HKInitializeLogging();
    p_super = HKLogWellnessDashboard();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      [CharacteristicTypeDetailViewController setWheelchairUse:specifier:];
    }
  }
}

- (id)getWheelchairUse:(id)a3
{
  healthStore = self->_healthStore;
  v12 = 0;
  v5 = [(HKHealthStore *)healthStore wheelchairUseWithError:&v12];
  v6 = v12;
  wheelchairUseObject = self->_wheelchairUseObject;
  self->_wheelchairUseObject = v5;

  v8 = MEMORY[0x1E696AD98];
  v9 = [(HKWheelchairUseObject *)self->_wheelchairUseObject wheelchairUse];

  v10 = [v8 numberWithInteger:v9];

  return v10;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7.receiver = self;
  v7.super_class = CharacteristicTypeDetailViewController;
  v4 = [(CharacteristicTypeDetailViewController *)&v7 tableView:a3 cellForRowAtIndexPath:a4];
  if ([v4 tag] == 8)
  {
    v5 = [v4 editableTextField];
    [v5 setAutocapitalizationType:2];
    [v5 setAutocorrectionType:1];
    [v5 setAdjustsFontSizeToFitWidth:1];
    [v5 setTextAlignment:4];
    [v5 setReturnKeyType:9];
    [v5 setClearButtonMode:3];
  }

  return v4;
}

- (void)_updateFirstName:(id)a3 lastName:(id)a4 completion:(id)a5
{
  v18[2] = *MEMORY[0x1E69E9840];
  healthStore = self->_healthStore;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(HKHealthStore *)healthStore profileIdentifier];
  v13 = [v12 type];

  if (v13 == 1)
  {
    v14 = *MEMORY[0x1E696C908];
    v17[0] = *MEMORY[0x1E696C900];
    v17[1] = v14;
    v18[0] = v11;
    v18[1] = v10;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
    [(WDUserDefaults *)self->_userDefaults setValue:v15 forKey:*MEMORY[0x1E696C918] completion:v9];
  }

  else
  {
    v16 = [objc_alloc(MEMORY[0x1E696C340]) initWithHealthStore:self->_healthStore];
    [v16 setDisplayFirstName:v11 lastName:v10 completion:v9];
  }
}

- (void)didUpdateName
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:*MEMORY[0x1E696C910] object:0];
}

- (CharacteristicTypeDetailViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __65__CharacteristicTypeDetailViewController_setFirstName_specifier___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end