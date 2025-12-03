@interface CharacteristicTypeDetailViewController
- (CharacteristicTypeDetailViewController)initWithCoder:(id)coder;
- (CharacteristicTypeDetailViewController)initWithHealthStore:(id)store characteristicType:(id)type identifier:(int64_t)identifier firstName:(id)name lastName:(id)lastName;
- (CharacteristicTypeDetailViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CharacteristicTypeDetailViewControllerDelegate)delegate;
- (id)getBiologicalSex:(id)sex;
- (id)getBloodType:(id)type;
- (id)getFitzpatrickSkinType:(id)type;
- (id)getWheelchairUse:(id)use;
- (id)specifierForBiologicalSex;
- (id)specifierForBloodType;
- (id)specifierForFirstName;
- (id)specifierForFitzpatrickSkinType;
- (id)specifierForLastName;
- (id)specifierForWheelchairUse;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_updateFirstName:(id)name lastName:(id)lastName completion:(id)completion;
- (void)didUpdateName;
- (void)setBiologicalSex:(id)sex specifier:(id)specifier;
- (void)setBloodType:(id)type specifier:(id)specifier;
- (void)setFirstName:(id)name specifier:(id)specifier;
- (void)setFitzpatrickSkinType:(id)type specifier:(id)specifier;
- (void)setLastName:(id)name specifier:(id)specifier;
- (void)setWheelchairUse:(id)use specifier:(id)specifier;
@end

@implementation CharacteristicTypeDetailViewController

- (CharacteristicTypeDetailViewController)initWithHealthStore:(id)store characteristicType:(id)type identifier:(int64_t)identifier firstName:(id)name lastName:(id)lastName
{
  storeCopy = store;
  typeCopy = type;
  nameCopy = name;
  lastNameCopy = lastName;
  v25.receiver = self;
  v25.super_class = CharacteristicTypeDetailViewController;
  v17 = [(CharacteristicTypeDetailViewController *)&v25 initWithNibName:0 bundle:0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_healthStore, store);
    objc_storeStrong(&v18->_characteristicType, type);
    v19 = [objc_alloc(MEMORY[0x1E69A4048]) initWithHealthStore:storeCopy];
    userDefaults = v18->_userDefaults;
    v18->_userDefaults = v19;

    v18->_specifierID = identifier;
    objc_storeStrong(&v18->_firstName, name);
    objc_storeStrong(&v18->_lastName, lastName);
  }

  title = [(CharacteristicTypeDetailViewController *)v18 title];
  navigationItem = [(CharacteristicTypeDetailViewController *)v18 navigationItem];
  [navigationItem setTitle:title];

  navigationItem2 = [(CharacteristicTypeDetailViewController *)v18 navigationItem];
  [navigationItem2 setStyle:0];

  return v18;
}

- (CharacteristicTypeDetailViewController)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = CharacteristicTypeDetailViewController;
  return [(CharacteristicTypeDetailViewController *)&v4 initWithCoder:coder];
}

- (CharacteristicTypeDetailViewController)initWithNibName:(id)name bundle:(id)bundle
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
          specifierForBloodType = [(CharacteristicTypeDetailViewController *)self specifierForBloodType];
          goto LABEL_15;
        case 5:
          specifierForBloodType = [(CharacteristicTypeDetailViewController *)self specifierForFitzpatrickSkinType];
          goto LABEL_15;
        case 6:
          specifierForBloodType = [(CharacteristicTypeDetailViewController *)self specifierForWheelchairUse];
          goto LABEL_15;
      }
    }

    else
    {
      switch(specifierID)
      {
        case 1:
          specifierForBloodType = [(CharacteristicTypeDetailViewController *)self specifierForFirstName];
          goto LABEL_15;
        case 2:
          specifierForBloodType = [(CharacteristicTypeDetailViewController *)self specifierForLastName];
          goto LABEL_15;
        case 3:
          specifierForBloodType = [(CharacteristicTypeDetailViewController *)self specifierForBiologicalSex];
LABEL_15:
          v8 = specifierForBloodType;
          [v5 addObject:specifierForBloodType];

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

  array = [MEMORY[0x1E695DF70] array];
  for (i = 0; i != 4; ++i)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:i];
    [array addObject:v9];
  }

  array2 = [MEMORY[0x1E695DF70] array];
  for (j = 0; j != 4; ++j)
  {
    delegate = [(CharacteristicTypeDetailViewController *)self delegate];
    v13 = [delegate _displayStringForBiologicalSex:j];

    [array2 addObject:v13];
  }

  [v6 setValues:array titles:array2];

  return v6;
}

- (id)specifierForBloodType
{
  v3 = MEMORY[0x1E69C5748];
  v4 = HKHealthKitFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"BLOOD_TYPE" value:&stru_1F3823B88 table:*MEMORY[0x1E696B910]];
  v6 = [v3 preferenceSpecifierNamed:v5 target:self set:sel_setBloodType_specifier_ get:sel_getBloodType_ detail:objc_opt_class() cell:2 edit:0];

  array = [MEMORY[0x1E695DF70] array];
  for (i = 0; i != 9; ++i)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:i];
    [array addObject:v9];
  }

  array2 = [MEMORY[0x1E695DF70] array];
  for (j = 0; j != 9; ++j)
  {
    delegate = [(CharacteristicTypeDetailViewController *)self delegate];
    v13 = [delegate _displayStringForBloodType:j];

    [array2 addObject:v13];
  }

  [v6 setValues:array titles:array2];

  return v6;
}

- (id)specifierForFitzpatrickSkinType
{
  v3 = MEMORY[0x1E69C5748];
  v4 = HKHealthKitFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"FITZPATRICK_SKIN_TYPE" value:&stru_1F3823B88 table:*MEMORY[0x1E696B910]];
  v6 = [v3 preferenceSpecifierNamed:v5 target:self set:sel_setFitzpatrickSkinType_specifier_ get:sel_getFitzpatrickSkinType_ detail:objc_opt_class() cell:2 edit:0];

  array = [MEMORY[0x1E695DF70] array];
  for (i = 0; i != 7; ++i)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:i];
    [array addObject:v9];
  }

  array2 = [MEMORY[0x1E695DF70] array];
  for (j = 0; j != 7; ++j)
  {
    delegate = [(CharacteristicTypeDetailViewController *)self delegate];
    v13 = [delegate _displayStringForFitzpatrickSkinType:j];

    [array2 addObject:v13];
  }

  [v6 setValues:array titles:array2];

  return v6;
}

- (id)specifierForWheelchairUse
{
  v3 = MEMORY[0x1E69C5748];
  v4 = HKHealthKitFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"WHEELCHAIR_USE" value:&stru_1F3823B88 table:*MEMORY[0x1E696B910]];
  v6 = [v3 preferenceSpecifierNamed:v5 target:self set:sel_setWheelchairUse_specifier_ get:sel_getWheelchairUse_ detail:objc_opt_class() cell:2 edit:0];

  array = [MEMORY[0x1E695DF70] array];
  for (i = 0; i != 3; ++i)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:i];
    [array addObject:v9];
  }

  array2 = [MEMORY[0x1E695DF70] array];
  for (j = 0; j != 3; ++j)
  {
    delegate = [(CharacteristicTypeDetailViewController *)self delegate];
    v13 = [delegate _displayStringForWheelchairUse:j];

    [array2 addObject:v13];
  }

  [v6 setValues:array titles:array2];

  return v6;
}

- (void)setFirstName:(id)name specifier:(id)specifier
{
  nameCopy = name;
  specifierCopy = specifier;
  if (nameCopy)
  {
    v8 = nameCopy;
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
  v16 = nameCopy;
  v17 = specifierCopy;
  v11 = specifierCopy;
  v12 = nameCopy;
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

- (void)setLastName:(id)name specifier:(id)specifier
{
  nameCopy = name;
  specifierCopy = specifier;
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
  if (nameCopy)
  {
    v9 = nameCopy;
  }

  else
  {
    v9 = &stru_1F3823B88;
  }

  v14[4] = self;
  v15 = nameCopy;
  v16 = specifierCopy;
  v10 = specifierCopy;
  v11 = nameCopy;
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

- (void)setBiologicalSex:(id)sex specifier:(id)specifier
{
  healthStore = self->_healthStore;
  v13 = 0;
  v6 = -[HKHealthStore _setBiologicalSex:error:](healthStore, "_setBiologicalSex:error:", [sex integerValue], &v13);
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

- (id)getBiologicalSex:(id)sex
{
  healthStore = self->_healthStore;
  v12 = 0;
  v5 = [(HKHealthStore *)healthStore biologicalSexWithError:&v12];
  v6 = v12;
  biologicalSexObject = self->_biologicalSexObject;
  self->_biologicalSexObject = v5;

  v8 = MEMORY[0x1E696AD98];
  biologicalSex = [(HKBiologicalSexObject *)self->_biologicalSexObject biologicalSex];

  v10 = [v8 numberWithInteger:biologicalSex];

  return v10;
}

- (void)setBloodType:(id)type specifier:(id)specifier
{
  healthStore = self->_healthStore;
  v13 = 0;
  v6 = -[HKHealthStore _setBloodType:error:](healthStore, "_setBloodType:error:", [type integerValue], &v13);
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

- (id)getBloodType:(id)type
{
  healthStore = self->_healthStore;
  v12 = 0;
  v5 = [(HKHealthStore *)healthStore bloodTypeWithError:&v12];
  v6 = v12;
  bloodTypeObject = self->_bloodTypeObject;
  self->_bloodTypeObject = v5;

  v8 = MEMORY[0x1E696AD98];
  bloodType = [(HKBloodTypeObject *)self->_bloodTypeObject bloodType];

  v10 = [v8 numberWithInteger:bloodType];

  return v10;
}

- (void)setFitzpatrickSkinType:(id)type specifier:(id)specifier
{
  healthStore = self->_healthStore;
  v13 = 0;
  v6 = -[HKHealthStore _setFitzpatrickSkinType:error:](healthStore, "_setFitzpatrickSkinType:error:", [type integerValue], &v13);
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

- (id)getFitzpatrickSkinType:(id)type
{
  healthStore = self->_healthStore;
  v12 = 0;
  v5 = [(HKHealthStore *)healthStore fitzpatrickSkinTypeWithError:&v12];
  v6 = v12;
  fitzpatrickSkinTypeObject = self->_fitzpatrickSkinTypeObject;
  self->_fitzpatrickSkinTypeObject = v5;

  v8 = MEMORY[0x1E696AD98];
  skinType = [(HKFitzpatrickSkinTypeObject *)self->_fitzpatrickSkinTypeObject skinType];

  v10 = [v8 numberWithInteger:skinType];

  return v10;
}

- (void)setWheelchairUse:(id)use specifier:(id)specifier
{
  healthStore = self->_healthStore;
  v13 = 0;
  v6 = -[HKHealthStore _setWheelchairUse:error:](healthStore, "_setWheelchairUse:error:", [use integerValue], &v13);
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

- (id)getWheelchairUse:(id)use
{
  healthStore = self->_healthStore;
  v12 = 0;
  v5 = [(HKHealthStore *)healthStore wheelchairUseWithError:&v12];
  v6 = v12;
  wheelchairUseObject = self->_wheelchairUseObject;
  self->_wheelchairUseObject = v5;

  v8 = MEMORY[0x1E696AD98];
  wheelchairUse = [(HKWheelchairUseObject *)self->_wheelchairUseObject wheelchairUse];

  v10 = [v8 numberWithInteger:wheelchairUse];

  return v10;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = CharacteristicTypeDetailViewController;
  v4 = [(CharacteristicTypeDetailViewController *)&v7 tableView:view cellForRowAtIndexPath:path];
  if ([v4 tag] == 8)
  {
    editableTextField = [v4 editableTextField];
    [editableTextField setAutocapitalizationType:2];
    [editableTextField setAutocorrectionType:1];
    [editableTextField setAdjustsFontSizeToFitWidth:1];
    [editableTextField setTextAlignment:4];
    [editableTextField setReturnKeyType:9];
    [editableTextField setClearButtonMode:3];
  }

  return v4;
}

- (void)_updateFirstName:(id)name lastName:(id)lastName completion:(id)completion
{
  v18[2] = *MEMORY[0x1E69E9840];
  healthStore = self->_healthStore;
  completionCopy = completion;
  lastNameCopy = lastName;
  nameCopy = name;
  profileIdentifier = [(HKHealthStore *)healthStore profileIdentifier];
  type = [profileIdentifier type];

  if (type == 1)
  {
    v14 = *MEMORY[0x1E696C908];
    v17[0] = *MEMORY[0x1E696C900];
    v17[1] = v14;
    v18[0] = nameCopy;
    v18[1] = lastNameCopy;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
    [(WDUserDefaults *)self->_userDefaults setValue:v15 forKey:*MEMORY[0x1E696C918] completion:completionCopy];
  }

  else
  {
    v16 = [objc_alloc(MEMORY[0x1E696C340]) initWithHealthStore:self->_healthStore];
    [v16 setDisplayFirstName:nameCopy lastName:lastNameCopy completion:completionCopy];
  }
}

- (void)didUpdateName
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x1E696C910] object:0];
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