@interface WDBuddyFlowUserInfo
+ (id)buddyFlowUserInfoWithDemographicsInformation:(id)a3;
- (WDBuddyFlowUserInfo)init;
- (WDBuddyFlowUserInfoDelegate)delegate;
- (id)_createDateOfBirthEntryItem;
- (id)_createSexEntryItem;
- (id)_dataEntryItemForRegistrantField:(unint64_t)a3;
- (id)_todayBirthdayDateComponents;
- (id)defaultDataEntryItems;
- (void)dataEntryItemDidUpdateValue:(id)a3;
- (void)saveChangesToHealthStore:(id)a3 andSaveNameCompletion:(id)a4 andOverallCompletion:(id)a5;
@end

@implementation WDBuddyFlowUserInfo

- (WDBuddyFlowUserInfo)init
{
  v8.receiver = self;
  v8.super_class = WDBuddyFlowUserInfo;
  v2 = [(WDBuddyFlowUserInfo *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    dataEntryItems = v2->_dataEntryItems;
    v2->_dataEntryItems = v3;

    v5 = HKCreateSerialDispatchQueueWithQOSClass();
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

+ (id)buddyFlowUserInfoWithDemographicsInformation:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(WDBuddyFlowUserInfo);
  v5 = [v3 firstName];
  [(WDBuddyFlowUserInfo *)v4 setFirstName:v5];

  v6 = [v3 lastName];
  [(WDBuddyFlowUserInfo *)v4 setLastName:v6];

  v7 = [v3 dateOfBirthComponents];
  [(WDBuddyFlowUserInfo *)v4 setDateOfBirthComponents:v7];

  v8 = MEMORY[0x277CCABB0];
  v9 = [v3 biologicalSexObject];
  v10 = [v8 numberWithInteger:{objc_msgSend(v9, "biologicalSex")}];
  [(WDBuddyFlowUserInfo *)v4 setSex:v10];

  v11 = MEMORY[0x277CCABB0];
  v12 = [v3 heightQuantity];
  v13 = [MEMORY[0x277CCDAB0] meterUnitWithMetricPrefix:5];
  [v12 doubleValueForUnit:v13];
  v14 = [v11 numberWithDouble:?];

  v15 = MEMORY[0x277CCABB0];
  v16 = [v3 weightQuantity];

  v17 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:9];
  [v16 doubleValueForUnit:v17];
  v18 = [v15 numberWithDouble:?];

  [(WDBuddyFlowUserInfo *)v4 setOriginalHeightInCm:v14];
  [(WDBuddyFlowUserInfo *)v4 setOriginalWeightInKg:v18];
  if (v14)
  {
    [v14 doubleValue];
    if (v19 > 0.0)
    {
      [(WDBuddyFlowUserInfo *)v4 setHeightInCm:v14];
    }
  }

  if (v18)
  {
    [v18 doubleValue];
    if (v20 > 0.0)
    {
      [(WDBuddyFlowUserInfo *)v4 setWeightInKg:v18];
    }
  }

  return v4;
}

- (id)defaultDataEntryItems
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc_init(MEMORY[0x277CCAC00]);
  v5 = [v4 isGivenNameFirst];
  v6 = v5;
  v7 = [(WDBuddyFlowUserInfo *)self _dataEntryItemForRegistrantField:v5 ^ 1];
  [v3 addObject:v7];

  v8 = [(WDBuddyFlowUserInfo *)self _dataEntryItemForRegistrantField:v6];
  [v3 addObject:v8];

  v9 = [(WDBuddyFlowUserInfo *)self _dataEntryItemForRegistrantField:2];
  [v3 addObject:v9];

  v10 = [(WDBuddyFlowUserInfo *)self _dataEntryItemForRegistrantField:3];
  [v3 addObject:v10];

  v11 = [(WDBuddyFlowUserInfo *)self _dataEntryItemForRegistrantField:4];
  [v3 addObject:v11];

  v12 = [(WDBuddyFlowUserInfo *)self _dataEntryItemForRegistrantField:5];
  [v3 addObject:v12];

  return v3;
}

- (void)saveChangesToHealthStore:(id)a3 andSaveNameCompletion:(id)a4 andOverallCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v30 = a5;
  v10 = [MEMORY[0x277CBEAA8] date];
  v11 = [(NSString *)self->_firstName hk_copyNonEmptyString];
  v12 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v13 = [v11 stringByTrimmingCharactersInSet:v12];

  v14 = [(NSString *)self->_lastName hk_copyNonEmptyString];
  v15 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v16 = [v14 stringByTrimmingCharactersInSet:v15];

  v17 = [MEMORY[0x277CBEB38] dictionary];
  v18 = v17;
  if (v13)
  {
    [v17 setObject:v13 forKeyedSubscript:*MEMORY[0x277CCE598]];
  }

  if (v16)
  {
    [v18 setObject:v16 forKeyedSubscript:*MEMORY[0x277CCE5A0]];
  }

  v19 = dispatch_group_create();
  v20 = [MEMORY[0x277CCD570] healthAppDefaultsDomainWithHealthStore:v8];
  dispatch_group_enter(v19);
  v21 = *MEMORY[0x277CCE5A8];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __91__WDBuddyFlowUserInfo_saveChangesToHealthStore_andSaveNameCompletion_andOverallCompletion___block_invoke;
  v37[3] = &unk_2796E7F38;
  v39 = v9;
  v22 = v19;
  v38 = v22;
  v23 = v9;
  [v20 setPropertyListValue:v18 forKey:v21 completion:v37];
  dispatch_group_enter(v22);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__WDBuddyFlowUserInfo_saveChangesToHealthStore_andSaveNameCompletion_andOverallCompletion___block_invoke_319;
  block[3] = &unk_2796E7148;
  block[4] = self;
  v34 = v8;
  v35 = v10;
  v36 = v22;
  v25 = v22;
  v26 = v10;
  v27 = v8;
  dispatch_async(queue, block);
  v28 = self->_queue;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __91__WDBuddyFlowUserInfo_saveChangesToHealthStore_andSaveNameCompletion_andOverallCompletion___block_invoke_325;
  v31[3] = &unk_2796E7F60;
  v32 = v30;
  v29 = v30;
  dispatch_group_notify(v25, v28, v31);
}

void __91__WDBuddyFlowUserInfo_saveChangesToHealthStore_andSaveNameCompletion_andOverallCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __91__WDBuddyFlowUserInfo_saveChangesToHealthStore_andSaveNameCompletion_andOverallCompletion___block_invoke_cold_1();
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void __91__WDBuddyFlowUserInfo_saveChangesToHealthStore_andSaveNameCompletion_andOverallCompletion___block_invoke_319(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (v2)
  {
    v3 = *(a1 + 40);
    v33 = 0;
    [v3 _setDateOfBirthComponents:v2 error:&v33];
    v4 = v33;
    if (v4)
    {
      _HKInitializeLogging();
      v5 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __91__WDBuddyFlowUserInfo_saveChangesToHealthStore_andSaveNameCompletion_andOverallCompletion___block_invoke_319_cold_1();
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = *(a1 + 40);
  v7 = [*(*(a1 + 32) + 56) integerValue];
  v32 = v4;
  [v6 _setBiologicalSex:v7 error:&v32];
  v8 = v32;

  if (v8)
  {
    _HKInitializeLogging();
    v9 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __91__WDBuddyFlowUserInfo_saveChangesToHealthStore_andSaveNameCompletion_andOverallCompletion___block_invoke_319_cold_2();
    }
  }

  v10 = [MEMORY[0x277CBEB18] array];
  [*(*(a1 + 32) + 64) doubleValue];
  v12 = v11;
  [*(*(a1 + 32) + 80) doubleValue];
  v14 = vabdd_f64(v12, v13);
  [*(*(a1 + 32) + 72) doubleValue];
  v16 = v15;
  [*(*(a1 + 32) + 88) doubleValue];
  v18 = vabdd_f64(v16, v17);
  if (v14 > 0.00000011920929)
  {
    v19 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCBA8]];
    v20 = MEMORY[0x277CCD7E8];
    v21 = [MEMORY[0x277CCDAB0] meterUnitWithMetricPrefix:5];
    [*(*(a1 + 32) + 64) doubleValue];
    v22 = [v20 quantityWithUnit:v21 doubleValue:?];

    v23 = [MEMORY[0x277CCD800] quantitySampleWithType:v19 quantity:v22 startDate:*(a1 + 48) endDate:*(a1 + 48)];
    [v10 addObject:v23];
  }

  if (v18 > 0.00000011920929)
  {
    v24 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC990]];
    v25 = MEMORY[0x277CCD7E8];
    v26 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:9];
    [*(*(a1 + 32) + 72) doubleValue];
    v27 = [v25 quantityWithUnit:v26 doubleValue:?];

    v28 = [MEMORY[0x277CCD800] quantitySampleWithType:v24 quantity:v27 startDate:*(a1 + 48) endDate:*(a1 + 48)];
    [v10 addObject:v28];
  }

  if ([v10 count])
  {
    dispatch_group_enter(*(a1 + 56));
    v29 = *(a1 + 40);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __91__WDBuddyFlowUserInfo_saveChangesToHealthStore_andSaveNameCompletion_andOverallCompletion___block_invoke_323;
    v30[3] = &unk_2796E6CC8;
    v31 = *(a1 + 56);
    [v29 saveObjects:v10 withCompletion:v30];
  }

  dispatch_group_leave(*(a1 + 56));
}

void __91__WDBuddyFlowUserInfo_saveChangesToHealthStore_andSaveNameCompletion_andOverallCompletion___block_invoke_323(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    _HKInitializeLogging();
    v5 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __91__WDBuddyFlowUserInfo_saveChangesToHealthStore_andSaveNameCompletion_andOverallCompletion___block_invoke_323_cold_1();
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

- (id)_dataEntryItemForRegistrantField:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v6 = [(NSMutableDictionary *)self->_dataEntryItems objectForKeyedSubscript:v5];
  if (!v6)
  {
    if (a3 > 2)
    {
      switch(a3)
      {
        case 3uLL:
          v7 = [(WDBuddyFlowUserInfo *)self _createSexEntryItem];
          v6 = v7;
          v8 = @"SexEntry";
          goto LABEL_13;
        case 4uLL:
          v22 = objc_alloc(MEMORY[0x277D12A58]);
          v23 = WDBundle();
          v24 = [v23 localizedStringForKey:@"HEIGHT" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
          v25 = [(WDBuddyFlowUserInfo *)self heightInCm];
          v6 = [v22 initWithTitle:v24 registrantModelKey:@"heightInCm" heightInCm:v25 defaultHeightInCm:0];

          v13 = @"HeightEntry";
          break;
        case 5uLL:
          v9 = objc_alloc(MEMORY[0x277D12A70]);
          v10 = WDBundle();
          v11 = [v10 localizedStringForKey:@"WEIGHT" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
          v12 = [(WDBuddyFlowUserInfo *)self weightInKg];
          v6 = [v9 initWithTitle:v11 registrantModelKey:@"weightInKg" weightInKg:v12 defaultWeightInKg:0];

          v13 = @"WeightEntry";
          break;
        default:
          goto LABEL_17;
      }
    }

    else if (a3)
    {
      if (a3 != 1)
      {
        if (a3 == 2)
        {
          v7 = [(WDBuddyFlowUserInfo *)self _createDateOfBirthEntryItem];
          v6 = v7;
          v8 = @"DateOfBirthEntry";
LABEL_13:
          [v7 setAccessibilityIdentifier:v8];
        }

LABEL_17:
        [v6 setPlaceholderType:0];
        [(NSMutableDictionary *)self->_dataEntryItems setObject:v6 forKeyedSubscript:v5];
        goto LABEL_18;
      }

      v18 = objc_alloc(MEMORY[0x277D12A68]);
      v19 = WDBundle();
      v20 = [v19 localizedStringForKey:@"LAST_NAME" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
      v21 = [(WDBuddyFlowUserInfo *)self lastName];
      v6 = [v18 initWithTitle:v20 registrantModelKey:@"lastName" defaultText:v21 intention:2];

      v13 = @"LastNameEntry";
    }

    else
    {
      v14 = objc_alloc(MEMORY[0x277D12A68]);
      v15 = WDBundle();
      v16 = [v15 localizedStringForKey:@"FIRST_NAME" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
      v17 = [(WDBuddyFlowUserInfo *)self firstName];
      v6 = [v14 initWithTitle:v16 registrantModelKey:@"firstName" defaultText:v17 intention:0];

      v13 = @"FirstNameEntry";
    }

    [v6 setAccessibilityIdentifier:v13];
    [v6 setDelegate:self];
    goto LABEL_17;
  }

LABEL_18:

  return v6;
}

- (id)_createDateOfBirthEntryItem
{
  v3 = [(WDBuddyFlowUserInfo *)self _todayBirthdayDateComponents];
  v4 = [MEMORY[0x277D12A50] gregorianGMTCalendar];
  v15 = v3;
  v5 = [v4 dateFromComponents:v3];
  v6 = [v4 dateByAddingUnit:4 value:-130 toDate:v5 options:0];
  v7 = [v4 dateByAddingUnit:4 value:-30 toDate:v5 options:0];
  if (self->_dateOfBirthComponents)
  {
    v8 = [v4 dateFromComponents:?];
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_alloc(MEMORY[0x277D12A50]);
  v10 = HKHealthKitFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"DATE_OF_BIRTH" value:&stru_28641D9B8 table:*MEMORY[0x277CCC1B0]];
  v12 = [MEMORY[0x277D12B30] valueRangeWithMinValue:v6 maxValue:v5];
  v13 = [v9 initWithTitle:v11 registrantModelKey:@"dateOfBirthComponents" date:v8 defaultDate:v7 dateRange:v12 exportFormatter:0];

  [v13 setDelegate:self];

  return v13;
}

- (id)_createSexEntryItem
{
  v20[4] = *MEMORY[0x277D85DE8];
  v3 = WDBundle();
  v4 = [v3 localizedStringForKey:@"BIOLOGICAL_SEX_NOT_SET" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  v20[0] = v4;
  v5 = WDBundle();
  v6 = [v5 localizedStringForKey:@"FEMALE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  v20[1] = v6;
  v7 = WDBundle();
  v8 = [v7 localizedStringForKey:@"MALE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  v20[2] = v8;
  v9 = WDBundle();
  v10 = [v9 localizedStringForKey:@"OTHER" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  v20[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];

  v12 = [(WDBuddyFlowUserInfo *)self sex];
  if ([v12 isEqualToNumber:&unk_28642DDB0])
  {
    v13 = 0;
  }

  else
  {
    v13 = [(WDBuddyFlowUserInfo *)self sex];
  }

  v14 = objc_alloc(MEMORY[0x277D12A60]);
  v15 = HKHealthKitFrameworkBundle();
  v16 = [v15 localizedStringForKey:@"BIOLOGICAL_SEX" value:&stru_28641D9B8 table:*MEMORY[0x277CCC1B0]];
  v17 = [v14 initWithTitle:v16 registrantModelKey:@"sex" choices:&unk_28642E008 choiceDisplayNames:v11 defaultChoice:v13];

  [v17 setDelegate:self];
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_todayBirthdayDateComponents
{
  v2 = [MEMORY[0x277D12A50] gregorianGMTCalendar];
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [v2 hk_dateOfBirthDateComponentsWithDate:v3];

  return v4;
}

- (void)dataEntryItemDidUpdateValue:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [a3 formattedKeyAndValue];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v4 objectForKeyedSubscript:v9];
        v11 = [(WDBuddyFlowUserInfo *)self valueForKey:v9];
        if (([v10 isEqual:v11] & 1) == 0)
        {
          [(WDBuddyFlowUserInfo *)self setValue:v10 forKey:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (WDBuddyFlowUserInfoDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __91__WDBuddyFlowUserInfo_saveChangesToHealthStore_andSaveNameCompletion_andOverallCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1(&dword_251E85000, v0, v1, "Failed to save first/last name in buddy: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __91__WDBuddyFlowUserInfo_saveChangesToHealthStore_andSaveNameCompletion_andOverallCompletion___block_invoke_319_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1(&dword_251E85000, v0, v1, "Failed to save date of birth in buddy: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __91__WDBuddyFlowUserInfo_saveChangesToHealthStore_andSaveNameCompletion_andOverallCompletion___block_invoke_319_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1(&dword_251E85000, v0, v1, "Failed to save biological sex in buddy: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __91__WDBuddyFlowUserInfo_saveChangesToHealthStore_andSaveNameCompletion_andOverallCompletion___block_invoke_323_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1(&dword_251E85000, v0, v1, "Failed to save height and weight samples in buddy: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end