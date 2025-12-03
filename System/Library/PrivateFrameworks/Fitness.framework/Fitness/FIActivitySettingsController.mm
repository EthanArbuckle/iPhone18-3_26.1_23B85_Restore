@interface FIActivitySettingsController
- (BOOL)_commitValue:(id)value forPropertyKey:(id)key error:(id *)error;
- (BOOL)_hasDirtyPropertyForPropertyKey:(id)key;
- (BOOL)_logAndNilError:(id *)error operationDescription:(id)description;
- (BOOL)commmitWithError:(id *)error;
- (FIActivitySettingsController)init;
- (FIActivitySettingsController)initWithHealthStore:(id)store;
- (HKQuantity)leanBodyMass;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)experienceType;
- (void)_setUncommitedValue:(id)value forPropertyKey:(id)key;
- (void)populateExistingCharacteristics;
- (void)setBiologicalSex:(int64_t)sex;
- (void)setDateOfBirth:(id)birth;
- (void)setHeight:(id)height;
- (void)setWeight:(id)weight;
- (void)setWheelchairUse:(int64_t)use;
@end

@implementation FIActivitySettingsController

- (FIActivitySettingsController)init
{
  v3 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  v4 = [(FIActivitySettingsController *)self initWithHealthStore:v3];

  return v4;
}

- (FIActivitySettingsController)initWithHealthStore:(id)store
{
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = FIActivitySettingsController;
  v6 = [(FIActivitySettingsController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
    v8 = objc_opt_new();
    dirtyPropertiesMap = v7->_dirtyPropertiesMap;
    v7->_dirtyPropertiesMap = v8;
  }

  return v7;
}

- (void)setDateOfBirth:(id)birth
{
  objc_storeStrong(&self->_dateOfBirth, birth);
  birthCopy = birth;
  [(FIActivitySettingsController *)self _setUncommitedValue:birthCopy forPropertyKey:@"dateOfBirth"];
}

- (void)setHeight:(id)height
{
  objc_storeStrong(&self->_height, height);
  heightCopy = height;
  [(FIActivitySettingsController *)self _setUncommitedValue:heightCopy forPropertyKey:@"height"];
}

- (void)setWeight:(id)weight
{
  objc_storeStrong(&self->_weight, weight);
  weightCopy = weight;
  [(FIActivitySettingsController *)self _setUncommitedValue:self->_weight forPropertyKey:@"weight"];
}

- (void)setBiologicalSex:(int64_t)sex
{
  self->_biologicalSex = sex;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  [(FIActivitySettingsController *)self _setUncommitedValue:v4 forPropertyKey:@"biologicalSexObject"];
}

- (void)setWheelchairUse:(int64_t)use
{
  self->_wheelchairUse = use;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  [(FIActivitySettingsController *)self _setUncommitedValue:v4 forPropertyKey:@"wheelchairUse"];
}

- (BOOL)_hasDirtyPropertyForPropertyKey:(id)key
{
  v3 = [(NSMutableDictionary *)self->_dirtyPropertiesMap objectForKeyedSubscript:key];
  v4 = v3 != 0;

  return v4;
}

- (void)_setUncommitedValue:(id)value forPropertyKey:(id)key
{
  [(NSMutableDictionary *)self->_dirtyPropertiesMap setObject:value forKeyedSubscript:key];
  updateHandler = self->_updateHandler;
  if (updateHandler)
  {
    v6 = *(updateHandler + 2);

    v6();
  }
}

- (BOOL)_commitValue:(id)value forPropertyKey:(id)key error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  keyCopy = key;
  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC270];
  if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = keyCopy;
    _os_log_impl(&dword_24B35E000, v9, OS_LOG_TYPE_DEFAULT, "Storing property %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__4;
  v50 = __Block_byref_object_dispose__4;
  v51 = 0;
  v45[0] = @"height";
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__FIActivitySettingsController__commitValue_forPropertyKey_error___block_invoke;
  aBlock[3] = &unk_279004ED8;
  aBlock[4] = self;
  v10 = valueCopy;
  v43 = v10;
  p_buf = &buf;
  v11 = _Block_copy(aBlock);
  v46[0] = v11;
  v45[1] = @"weight";
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __66__FIActivitySettingsController__commitValue_forPropertyKey_error___block_invoke_2;
  v39[3] = &unk_279004ED8;
  v39[4] = self;
  v12 = v10;
  v40 = v12;
  v41 = &buf;
  v13 = _Block_copy(v39);
  v46[1] = v13;
  v45[2] = @"dateOfBirth";
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __66__FIActivitySettingsController__commitValue_forPropertyKey_error___block_invoke_3;
  v35[3] = &unk_279004ED8;
  v14 = v12;
  v36 = v14;
  selfCopy = self;
  v38 = &buf;
  v15 = _Block_copy(v35);
  v46[2] = v15;
  v45[3] = @"biologicalSexObject";
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __66__FIActivitySettingsController__commitValue_forPropertyKey_error___block_invoke_4;
  v31[3] = &unk_279004ED8;
  v16 = v14;
  v32 = v16;
  selfCopy2 = self;
  v34 = &buf;
  v17 = _Block_copy(v31);
  v46[3] = v17;
  v45[4] = @"wheelchairUse";
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __66__FIActivitySettingsController__commitValue_forPropertyKey_error___block_invoke_5;
  v27[3] = &unk_279004ED8;
  v18 = v16;
  v28 = v18;
  selfCopy3 = self;
  v30 = &buf;
  v19 = _Block_copy(v27);
  v46[4] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:5];

  v21 = [v20 objectForKeyedSubscript:keyCopy];
  v22 = v21;
  if (!v21)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"No action defined for unknown property key %@", keyCopy}];
    goto LABEL_10;
  }

  (*(v21 + 16))(v21);
  if (!*(*(&buf + 1) + 40))
  {
LABEL_10:
    v23 = 1;
    goto LABEL_11;
  }

  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_ERROR))
  {
    [FIActivitySettingsController _commitValue:keyCopy forPropertyKey:&buf + 8 error:?];
  }

  v23 = 0;
  if (error)
  {
    *error = *(*(&buf + 1) + 40);
  }

LABEL_11:

  _Block_object_dispose(&buf, 8);
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

void __66__FIActivitySettingsController__commitValue_forPropertyKey_error___block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = *(a1[4] + 8);
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  [v2 _setHeightCharacteristicQuantity:v1 error:&obj];
  objc_storeStrong((v3 + 40), obj);
}

void __66__FIActivitySettingsController__commitValue_forPropertyKey_error___block_invoke_2(void *a1)
{
  v1 = a1[5];
  v2 = *(a1[4] + 8);
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  [v2 _setBodyMassCharacteristicQuantity:v1 error:&obj];
  objc_storeStrong((v3 + 40), obj);
}

void __66__FIActivitySettingsController__commitValue_forPropertyKey_error___block_invoke_3(void *a1)
{
  v2 = [MEMORY[0x277CBEA80] hk_canonicalDateOfBirthDateComponentsWithDate:a1[4]];
  v3 = *(a1[5] + 8);
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  [v3 _setDateOfBirthComponents:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
}

void __66__FIActivitySettingsController__commitValue_forPropertyKey_error___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) integerValue];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  [v3 _setBiologicalSex:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
}

void __66__FIActivitySettingsController__commitValue_forPropertyKey_error___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) integerValue];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  [v3 _setWheelchairUse:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
}

- (void)populateExistingCharacteristics
{
  healthStore = self->_healthStore;
  v37 = 0;
  v4 = [(HKHealthStore *)healthStore dateOfBirthComponentsWithError:&v37];
  v5 = v37;
  if (v4)
  {
    v6 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
    v7 = [v6 dateFromComponents:v4];
    dateOfBirth = self->_dateOfBirth;
    self->_dateOfBirth = v7;
  }

  v36 = v5;
  [(FIActivitySettingsController *)self _logAndNilError:&v36 operationDescription:@"fetch birth date"];
  v9 = v36;

  v10 = self->_healthStore;
  v35 = v9;
  v11 = [(HKHealthStore *)v10 _heightCharacteristicQuantityWithError:&v35];
  v12 = v35;

  height = self->_height;
  self->_height = v11;

  v34 = v12;
  [(FIActivitySettingsController *)self _logAndNilError:&v34 operationDescription:@"fetch height"];
  v14 = v34;

  v15 = self->_healthStore;
  v33 = v14;
  v16 = [(HKHealthStore *)v15 _bodyMassCharacteristicQuantityWithError:&v33];
  v17 = v33;

  weight = self->_weight;
  self->_weight = v16;

  v32 = v17;
  [(FIActivitySettingsController *)self _logAndNilError:&v32 operationDescription:@"fetch weight"];
  v19 = v32;

  v20 = self->_healthStore;
  v31 = v19;
  v21 = [(HKHealthStore *)v20 biologicalSexWithError:&v31];
  v22 = v31;

  self->_biologicalSex = [v21 biologicalSex];
  v30 = v22;
  [(FIActivitySettingsController *)self _logAndNilError:&v30 operationDescription:@"fetch sex"];
  v23 = v30;

  v24 = self->_healthStore;
  v29 = v23;
  v25 = [(HKHealthStore *)v24 wheelchairUseWithError:&v29];
  v26 = v29;

  self->_wheelchairUse = [v25 wheelchairUse];
  v28 = v26;
  [(FIActivitySettingsController *)self _logAndNilError:&v28 operationDescription:@"fetch wheelchair use"];
  v27 = v28;

  [(NSMutableDictionary *)self->_dirtyPropertiesMap removeAllObjects];
  if (!self->_wheelchairUse)
  {
    [(FIActivitySettingsController *)self setWheelchairUse:1];
  }
}

- (BOOL)_logAndNilError:(id *)error operationDescription:(id)description
{
  descriptionCopy = description;
  if (error)
  {
    v6 = *error == 0;
    if (*error)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_ERROR))
      {
        [FIActivitySettingsController _logAndNilError:descriptionCopy operationDescription:error];
      }
    }

    *error = 0;
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC270];
    if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_ERROR))
    {
      [FIActivitySettingsController _logAndNilError:descriptionCopy operationDescription:v7];
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)commmitWithError:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  allKeys = [(NSMutableDictionary *)self->_dirtyPropertiesMap allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v20;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v19 + 1) + 8 * v10);
        v13 = [(NSMutableDictionary *)self->_dirtyPropertiesMap objectForKeyedSubscript:v12];
        v18 = v11;
        [(FIActivitySettingsController *)self _commitValue:v13 forPropertyKey:v12 error:&v18];
        v8 = v18;

        if (error && v8)
        {
          v14 = v8;
          *error = v8;

          v15 = 0;
          goto LABEL_14;
        }

        ++v10;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

  [(NSMutableDictionary *)self->_dirtyPropertiesMap removeAllObjects];
  v15 = 1;
LABEL_14:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (unint64_t)experienceType
{
  result = FIExperienceTypeWithHealthStore(self->_healthStore);
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

- (HKQuantity)leanBodyMass
{
  v27[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCBC8]];
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277CCCD50] ascending:0];
  v5 = dispatch_semaphore_create(0);
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__4;
  v25 = __Block_byref_object_dispose__4;
  v26 = 0;
  v6 = objc_alloc(MEMORY[0x277CCD8D0]);
  v27[0] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __44__FIActivitySettingsController_leanBodyMass__block_invoke;
  v18 = &unk_279004F00;
  v20 = &v21;
  v8 = v5;
  v19 = v8;
  v9 = [v6 initWithSampleType:v3 predicate:0 limit:1 sortDescriptors:v7 resultsHandler:&v15];

  [(HKHealthStore *)self->_healthStore executeQuery:v9, v15, v16, v17, v18];
  v10 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC270];
    if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_ERROR))
    {
      [(FIActivitySettingsController *)v11 leanBodyMass];
    }
  }

  v12 = v22[5];

  _Block_object_dispose(&v21, 8);
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

intptr_t __44__FIActivitySettingsController_leanBodyMass__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 lastObject];
  v5 = [v4 quantity];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(a1 + 32);

  return dispatch_semaphore_signal(v8);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[FIActivitySettingsController alloc] initWithHealthStore:self->_healthStore];
  objc_storeStrong(&v4->_dateOfBirth, self->_dateOfBirth);
  objc_storeStrong(&v4->_height, self->_height);
  objc_storeStrong(&v4->_weight, self->_weight);
  v4->_biologicalSex = self->_biologicalSex;
  v4->_wheelchairUse = self->_wheelchairUse;
  v5 = [(NSMutableDictionary *)self->_dirtyPropertiesMap mutableCopy];
  dirtyPropertiesMap = v4->_dirtyPropertiesMap;
  v4->_dirtyPropertiesMap = v5;

  v7 = _Block_copy(self->_updateHandler);
  updateHandler = v4->_updateHandler;
  v4->_updateHandler = v7;

  return v4;
}

- (void)_commitValue:(uint64_t)a1 forPropertyKey:(uint64_t)a2 error:.cold.1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_24B35E000, v3, v4, "[HealthSettings] Failed to store characteristic %@ with error %{public}@");
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_logAndNilError:(uint64_t)a1 operationDescription:(uint64_t *)a2 .cold.1(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_24B35E000, v3, v4, "[HealthSettings] Failed operation: %{public}@ with error %{public}@");
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_logAndNilError:(uint64_t)a1 operationDescription:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_24B35E000, a2, OS_LOG_TYPE_ERROR, "[HealthSettings] Internal error: no error argument passed for operation %{public}@, assuming the worst", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end