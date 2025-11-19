uint64_t HKMCTodayIndex(void *a1)
{
  v1 = MEMORY[0x277CBEAA8];
  v2 = a1;
  v3 = [v1 date];
  v4 = [v3 hk_dayIndexWithCalendar:v2];

  return v4;
}

id HDMenstrualCyclesPluginServerInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2863EA8C8];
  v1 = [v0 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_fetchScheduledNotificationsWithCompletion_ argumentIndex:0 ofReply:1];
  v2 = [v0 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_saveDaySummaries_canOverrideCreationDate_completion_ argumentIndex:0 ofReply:0];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v0 setClasses:v5 forSelector:sel_remote_saveBleedingFlowByDayIndex_forBleedingType_completion_ argumentIndex:0 ofReply:0];

  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v0 setClasses:v8 forSelector:sel_remote_confirmAndSaveDeviationWithMenstrualFlowByDayIndex_intermenstrualBleedingByDayIndex_addedCycleFactors_initialAnalysisWindow_completion_ argumentIndex:0 ofReply:0];

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  [v0 setClasses:v11 forSelector:sel_remote_confirmAndSaveDeviationWithMenstrualFlowByDayIndex_intermenstrualBleedingByDayIndex_addedCycleFactors_initialAnalysisWindow_completion_ argumentIndex:1 ofReply:0];

  v12 = [v0 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_confirmAndSaveDeviationWithMenstrualFlowByDayIndex_intermenstrualBleedingByDayIndex_addedCycleFactors_initialAnalysisWindow_completion_ argumentIndex:2 ofReply:0];
  v13 = [v0 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_confirmAndSaveDeviationWithMenstrualFlowByDayIndex_intermenstrualBleedingByDayIndex_addedCycleFactors_initialAnalysisWindow_completion_ argumentIndex:0 ofReply:1];

  return v0;
}

id HKMCAllNotificationCategories()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = HKMCPeriodNotificationCategories();
  v1 = HKMCFertileWindowNotificationCategories();
  v2 = [v0 arrayByAddingObjectsFromArray:v1];

  v7[0] = @"MenstrualCyclesAppPlugin.UnconfirmedDeviation";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v4 = [v2 arrayByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

id HKMCPeriodNotificationCategories()
{
  v5[3] = *MEMORY[0x277D85DE8];
  v0 = HKMCBeforePeriodStartNotificationCategories();
  v5[0] = @"MenstrualCyclesAppPlugin.AfterPeriodStart";
  v5[1] = @"MenstrualCyclesAppPlugin.AfterLoggedPeriodEnd";
  v5[2] = @"MenstrualCyclesAppPlugin.AfterUnloggedPeriodEnd";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v2 = [v0 arrayByAddingObjectsFromArray:v1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id HKMCFertileWindowNotificationCategories()
{
  v0 = HKMCBeforeFertileWindowStartDaysNotificationCategories();
  v1 = HKMCSensorBasedFertileWindowNotificationCategories();
  v2 = [v0 arrayByAddingObjectsFromArray:v1];

  return v2;
}

id HKMCBeforePeriodStartNotificationCategories()
{
  v0 = HKMCBeforePeriodStartDaysNotificationCategories();
  v1 = HKMCBeforePeriodStartWeeksNotificationCategories();
  v2 = [v0 arrayByAddingObjectsFromArray:v1];

  return v2;
}

id HKMCBeforePeriodStartDaysNotificationCategories()
{
  v3[10] = *MEMORY[0x277D85DE8];
  v3[0] = @"MenstrualCyclesAppPlugin.BeforePeriodStart1Day";
  v3[1] = @"MenstrualCyclesAppPlugin.BeforePeriodStart2Days";
  v3[2] = @"MenstrualCyclesAppPlugin.BeforePeriodStart3Days";
  v3[3] = @"MenstrualCyclesAppPlugin.BeforePeriodStart4Days";
  v3[4] = @"MenstrualCyclesAppPlugin.BeforePeriodStart5Days";
  v3[5] = @"MenstrualCyclesAppPlugin.BeforePeriodStart6Days";
  v3[6] = @"MenstrualCyclesAppPlugin.BeforePeriodStart7Days";
  v3[7] = @"MenstrualCyclesAppPlugin.BeforePeriodStart8Days";
  v3[8] = @"MenstrualCyclesAppPlugin.BeforePeriodStart9Days";
  v3[9] = @"MenstrualCyclesAppPlugin.BeforePeriodStart10Days";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:10];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id HKMCBeforePeriodStartWeeksNotificationCategories()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v3[0] = @"MenstrualCyclesAppPlugin.BeforePeriodStart2Weeks";
  v3[1] = @"MenstrualCyclesAppPlugin.BeforePeriodStart3Weeks";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:2];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id HKMCBeforeFertileWindowStartDaysNotificationCategories()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = @"MenstrualCyclesAppPlugin.BeforeFertileWindowStart3Days";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id HKMCSensorBasedFertileWindowNotificationCategories()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v3[0] = @"MenstrualCyclesAppPlugin.UpdatedFertileWindowEnd";
  v3[1] = @"MenstrualCyclesAppPlugin.OvulationConfirmed";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:2];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id HKMCSharedPredictionNotificationCategories()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v3[0] = @"MenstrualCyclesAppPlugin.SharedPeriodPrediction";
  v3[1] = @"MenstrualCyclesAppPlugin.SharedFertileWindowPrediction";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:2];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

uint64_t HKMCNotificationDateComponentScalarFromCategory(uint64_t a1)
{
  v1 = [MEMORY[0x277CCAC80] scannerWithString:a1];
  v2 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  [v1 scanUpToCharactersFromSet:v2 intoString:0];

  v5 = 0;
  [v1 scanInteger:&v5];
  v3 = v5;

  return v3;
}

__CFString *HKMCNotificationCategoryBeforePeriodStartForDays(uint64_t a1)
{
  v1 = a1 - 2;
  if (a1 < 2)
  {
    return @"MenstrualCyclesAppPlugin.BeforePeriodStart1Day";
  }

  if (a1 > 0x11)
  {
    return @"MenstrualCyclesAppPlugin.BeforePeriodStart3Weeks";
  }

  if (v1 > 8)
  {
    return @"MenstrualCyclesAppPlugin.BeforePeriodStart2Weeks";
  }

  return off_2796D48C0[v1];
}

__CFString *HKMCNotificationIdentifierForCategory(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"MenstrualCyclesAppPlugin.UnconfirmedDeviation"])
  {
    v2 = @"MenstrualCyclesAppPlugin.UnconfirmedDeviation";
  }

  else
  {
    v3 = HKMCPeriodNotificationCategories();
    v4 = [v3 containsObject:v1];

    if (v4)
    {
      v2 = @"MenstrualCyclesAppPlugin.Period";
    }

    else
    {
      v5 = HKMCFertileWindowNotificationCategories();
      v6 = [v5 containsObject:v1];

      if (v6)
      {
        v2 = @"MenstrualCyclesAppPlugin.FertileWindow";
      }

      else
      {
        v2 = v1;
      }
    }
  }

  return v2;
}

id HKMCGenerateHeartRateSamplesMatchingTenthPercentile(void *a1, uint64_t a2, float a3)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v4 = a1;
  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [v4 startDate];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;

  v30 = v4;
  v8 = [v4 endDate];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  v11 = objc_alloc(MEMORY[0x277CCD2E8]);
  v12 = [MEMORY[0x277CCAD78] UUID];
  v13 = [v12 UUIDString];
  v14 = [v11 initWithName:@"Apple Watch" manufacturer:@"Apple Inc" model:0 hardwareVersion:0 firmwareVersion:0 softwareVersion:0 localIdentifier:v13 UDIDeviceIdentifier:0];

  v15 = [MEMORY[0x277CCDAB0] unitFromString:@"count/min"];
  if (v7 < v10 && a2 >= 1)
  {
    v16 = 0;
    v17 = *MEMORY[0x277CCE030];
    v18 = 0.0;
    do
    {
      v19 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v7];
      if (v16 <= a2 / 0xAuLL)
      {
        v20 = a3;
      }

      else
      {
        if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * (~(a2 / 0xAuLL) + v16) + 0x1999999999999998, 1) < 0x1999999999999999uLL)
        {
          v18 = v18 + 1.0;
        }

        v20 = v18 + a3;
      }

      v21 = MEMORY[0x277CCD800];
      v22 = [MEMORY[0x277CCD830] heartRateType];
      v23 = [MEMORY[0x277CCD7E8] quantityWithUnit:v15 doubleValue:v20];
      v33 = v17;
      v34[0] = &unk_2863D2D80;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
      v25 = [v21 quantitySampleWithType:v22 quantity:v23 startDate:v19 endDate:v19 device:v14 metadata:v24];

      [v31 addObject:v25];
      v7 = v7 + 300.0;
      ++v16;
    }

    while (v7 < v10 && v16 < a2);
  }

  v27 = [v31 copy];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

void sub_251904B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_251905C20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 handleFailureInFunction:v5 file:a4 lineNumber:46 description:?];
}

unint64_t HAMenstrualAlgorithmsFlowFromHKMCMenstrualFlow(unint64_t a1)
{
  v1 = 0x40302010500uLL >> (8 * a1);
  if (a1 >= 6)
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 7;
}

unint64_t HAMenstrualAlgorithmsOvulationTestResultFromHKMCOvulationTestResult(unint64_t a1)
{
  v1 = 0x203010300uLL >> (8 * a1);
  if (a1 >= 5)
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 3;
}

uint64_t HAMenstrualAlgorithmsPregnancyTestResultFromHKMCPregnancyTestResult(unint64_t a1)
{
  v1 = 0x2010300u >> (8 * a1);
  if (a1 >= 4)
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 3;
}

uint64_t HKMCCycleFactorFromHAMenstrualAlgorithmsCycleFactor(char a1)
{
  if ((a1 - 1) > 7u)
  {
    return 2;
  }

  else
  {
    return qword_25192B338[(a1 - 1)];
  }
}

uint64_t HAMenstrualAlgorithmsPhaseFromHKMCCycleFactor(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return 0;
  }

  else
  {
    return byte_25192B378[a1 - 1];
  }
}

uint64_t HKMCPredictionPrimarySourceFromHAMenstrualAlgorithmsPredictionPrimarySource(unsigned int a1)
{
  v1 = a1;
  if (a1 < 4)
  {
    return (a1 + 1);
  }

  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_FAULT))
  {
    HKMCPredictionPrimarySourceFromHAMenstrualAlgorithmsPredictionPrimarySource_cold_1(v3, v1);
  }

  return 1;
}

void HKMCAppendCycleFactorsPhaseFromDaySummary(void *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [v4 startedCycleFactors];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v3 beginPhase:HAMenstrualAlgorithmsPhaseFromHKMCCycleFactor(objc_msgSend(*(*(&v20 + 1) + 8 * v9++) onJulianDay:{"integerValue")), objc_msgSend(v4, "dayIndex")}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [v4 endedCycleFactors];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [v3 endPhase:HAMenstrualAlgorithmsPhaseFromHKMCCycleFactor(objc_msgSend(*(*(&v16 + 1) + 8 * v14++) onJulianDay:{"integerValue")), objc_msgSend(v4, "dayIndex")}];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

id OUTLINED_FUNCTION_0_0(id a1)
{

  return a1;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id HKMCDaySummarySymptomArrayFromSymptoms(int a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = v2;
  if (a1)
  {
    [v2 addObject:&unk_2863D2D98];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:&unk_2863D2DB0];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  [v3 addObject:&unk_2863D2DC8];
  if ((a1 & 0x100000) == 0)
  {
LABEL_5:
    if ((a1 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v3 addObject:&unk_2863D2DE0];
  if ((a1 & 8) == 0)
  {
LABEL_6:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  [v3 addObject:&unk_2863D2DF8];
  if ((a1 & 0x10) == 0)
  {
LABEL_7:
    if ((a1 & 0x20000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v3 addObject:&unk_2863D2E10];
  if ((a1 & 0x20000) == 0)
  {
LABEL_8:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v3 addObject:&unk_2863D2E28];
  if ((a1 & 0x20) == 0)
  {
LABEL_9:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v3 addObject:&unk_2863D2E40];
  if ((a1 & 0x40) == 0)
  {
LABEL_10:
    if ((a1 & 0x80000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  [v3 addObject:&unk_2863D2E58];
  if ((a1 & 0x80000) == 0)
  {
LABEL_11:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  [v3 addObject:&unk_2863D2E70];
  if ((a1 & 0x4000) == 0)
  {
LABEL_12:
    if ((a1 & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v3 addObject:&unk_2863D2E88];
  if ((a1 & 0x40000) == 0)
  {
LABEL_13:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  [v3 addObject:&unk_2863D2EA0];
  if ((a1 & 0x80) == 0)
  {
LABEL_14:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  [v3 addObject:&unk_2863D2EB8];
  if ((a1 & 0x100) == 0)
  {
LABEL_15:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  [v3 addObject:&unk_2863D2ED0];
  if ((a1 & 0x200) == 0)
  {
LABEL_16:
    if ((a1 & 0x200000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  [v3 addObject:&unk_2863D2EE8];
  if ((a1 & 0x200000) == 0)
  {
LABEL_17:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  [v3 addObject:&unk_2863D2F00];
  if ((a1 & 0x400) == 0)
  {
LABEL_18:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  [v3 addObject:&unk_2863D2F18];
  if ((a1 & 0x800) == 0)
  {
LABEL_19:
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  [v3 addObject:&unk_2863D2F30];
  if ((a1 & 0x10000) == 0)
  {
LABEL_20:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  [v3 addObject:&unk_2863D2F48];
  if ((a1 & 0x1000) == 0)
  {
LABEL_21:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  [v3 addObject:&unk_2863D2F60];
  if ((a1 & 0x2000) == 0)
  {
LABEL_22:
    if ((a1 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_47:
  [v3 addObject:&unk_2863D2F78];
  if ((a1 & 0x8000) != 0)
  {
LABEL_23:
    [v3 addObject:&unk_2863D2F90];
  }

LABEL_24:

  return v3;
}

void sub_25190C390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25191091C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t OUTLINED_FUNCTION_4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_0()
{

  return objc_opt_class();
}

id HKMCAllDisplayTypeIdentifiers()
{
  v3[12] = *MEMORY[0x277D85DE8];
  v3[0] = @"DisplayTypeIdentifierMenstrualFlow";
  v3[1] = @"DisplayTypeIdentifierBleedingInPregnancyFlow";
  v3[2] = @"DisplayTypeIdentifierBleedingAfterPregnancyFlow";
  v3[3] = @"DisplayTypeIdentifierSymptoms";
  v3[4] = @"DisplayTypeIdentifierIntermenstrualBleeding";
  v3[5] = @"DisplayTypeIdentifierSexualActivity";
  v3[6] = @"DisplayTypeIdentifierOvulationTestResult";
  v3[7] = @"DisplayTypeIdentifierProgesteroneTestResult";
  v3[8] = @"DisplayTypeIdentifierPregnancyTestResult";
  v3[9] = @"DisplayTypeIdentifierCervicalMucusQuality";
  v3[10] = @"DisplayTypeIdentifierBasalBodyTemperature";
  v3[11] = @"DisplayTypeIdentifierCycleFactors";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:12];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

__CFString *HKMCDisplayTypeIdentifierForSampleType(void *a1)
{
  v1 = a1;
  v2 = [v1 code];
  if (v2 > 96)
  {
    if (v2 <= 243)
    {
      if (v2 == 97)
      {
        v3 = @"DisplayTypeIdentifierSexualActivity";
        goto LABEL_31;
      }

      if (v2 == 243)
      {
        v3 = @"DisplayTypeIdentifierPregnancyTestResult";
        goto LABEL_31;
      }
    }

    else
    {
      switch(v2)
      {
        case 244:
          v3 = @"DisplayTypeIdentifierProgesteroneTestResult";
          goto LABEL_31;
        case 314:
          v3 = @"DisplayTypeIdentifierBleedingAfterPregnancyFlow";
          goto LABEL_31;
        case 313:
          v3 = @"DisplayTypeIdentifierBleedingInPregnancyFlow";
          goto LABEL_31;
      }
    }
  }

  else if (v2 <= 91)
  {
    if (v2 == 90)
    {
      v3 = @"DisplayTypeIdentifierBasalBodyTemperature";
      goto LABEL_31;
    }

    if (v2 == 91)
    {
      v3 = @"DisplayTypeIdentifierCervicalMucusQuality";
      goto LABEL_31;
    }
  }

  else
  {
    switch(v2)
    {
      case '\\':
        v3 = @"DisplayTypeIdentifierOvulationTestResult";
        goto LABEL_31;
      case '_':
        v3 = @"DisplayTypeIdentifierMenstrualFlow";
        goto LABEL_31;
        v3 = @"DisplayTypeIdentifierIntermenstrualBleeding";
        goto LABEL_31;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = HKMCSymptomSampleTypes();
    v5 = [v4 containsObject:v1];

    if (v5)
    {
      v3 = @"DisplayTypeIdentifierSymptoms";
    }

    else
    {
      v6 = HKMCCycleFactorsTypes();
      v7 = [v6 containsObject:v1];

      if (v7)
      {
        v3 = @"DisplayTypeIdentifierCycleFactors";
      }

      else
      {
        v3 = 0;
      }
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_31:

  return v3;
}

id HKMCSymptomSampleTypes()
{
  v25[22] = *MEMORY[0x277D85DE8];
  v24 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB8C8]];
  v25[0] = v24;
  v23 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB8D0]];
  v25[1] = v23;
  v22 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB8D8]];
  v25[2] = v22;
  v21 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB8F0]];
  v25[3] = v21;
  v20 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB908]];
  v25[4] = v20;
  v19 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB910]];
  v25[5] = v19;
  v18 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB928]];
  v25[6] = v18;
  v17 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB930]];
  v25[7] = v17;
  v16 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB948]];
  v25[8] = v16;
  v15 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB958]];
  v25[9] = v15;
  v14 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB970]];
  v25[10] = v14;
  v13 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB988]];
  v25[11] = v13;
  v0 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB998]];
  v25[12] = v0;
  v1 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB9C0]];
  v25[13] = v1;
  v2 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBA18]];
  v25[14] = v2;
  v3 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBA20]];
  v25[15] = v3;
  v4 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBA38]];
  v25[16] = v4;
  v5 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBA40]];
  v25[17] = v5;
  v6 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBA48]];
  v25[18] = v6;
  v7 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBA58]];
  v25[19] = v7;
  v8 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBAC8]];
  v25[20] = v8;
  v9 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBAE8]];
  v25[21] = v9;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:22];

  v10 = *MEMORY[0x277D85DE8];

  return v12;
}

id HKMCCycleFactorsTypes()
{
  v6[3] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBA68]];
  v1 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:{*MEMORY[0x277CCB9F0], v0}];
  v6[1] = v1;
  v2 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB938]];
  v6[2] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:3];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

uint64_t HKMCCategoryValueVaginalBleedingFromBleedingFlow(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_25192B418[a1 - 1];
  }
}

uint64_t HKMCCategoryValueCervicalMucusQualityFromCervicalMucusQuality(uint64_t result)
{
  if ((result - 1) >= 5)
  {
    return 0;
  }

  return result;
}

uint64_t HKMCCategoryValueOvulationTestResultFromOvulationTestResult(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_25192B440[a1 - 1];
  }
}

uint64_t HKMCCategoryValuePregnancyTestResultFromPregnancyTestResult(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_25192B460[a1 - 1];
  }
}

uint64_t HKMCCategoryValueProgesteroneTestResultFromProgesteroneTestResult(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_25192B460[a1 - 1];
  }
}

uint64_t HKMCCategoryValueContraceptiveFromCycleFactor(uint64_t a1)
{
  v2 = 1;
  if (a1 > 5)
  {
    v4 = 6;
    v5 = 7;
    if (a1 != 9)
    {
      v5 = 1;
    }

    if (a1 != 8)
    {
      v4 = v5;
    }

    if (a1 == 7)
    {
      v2 = 5;
    }

    if (a1 == 6)
    {
      v2 = 4;
    }

    if (a1 <= 7)
    {
      return v2;
    }

    else
    {
      return v4;
    }
  }

  else if ((a1 - 1) < 2)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"HKCategoryValueContraceptive HKMCCategoryValueContraceptiveFromCycleFactor(HKMCCycleFactor)"];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
    [v6 handleFailureInFunction:v7 file:@"HKMCDefines.m" lineNumber:200 description:{@"%s: Invalid cycle factor: %@", "HKCategoryValueContraceptive HKMCCategoryValueContraceptiveFromCycleFactor(HKMCCycleFactor)", v8}];

    return 0;
  }

  else
  {
    if (a1 == 5)
    {
      v2 = 3;
    }

    if (a1 == 4)
    {
      return 2;
    }

    else
    {
      return v2;
    }
  }
}

__CFString *NSStringFromCycleFactor(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return @"Pregnancy";
  }

  else
  {
    return off_2796D50C8[a1 - 1];
  }
}

id NSStringFromCycleFactors(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = NSStringFromCycleFactor([*(*(&v12 + 1) + 8 * i) integerValue]);
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [MEMORY[0x277CCACA8] pathWithComponents:v2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t HKMCAlgorithmSuppressPeriodPredictionsFromCycleFactorSamples(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = *v9;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v8 + 1) + 8 * i);
        if ([v5 hkmc_cycleFactor] == 2 && (objc_msgSend(v5, "hasUndeterminedDuration") & 1) != 0)
        {
          v2 = 1;
          goto LABEL_12;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t HKMCForceDisablePeriodProjectionsFromCycleFactorSamples(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = *v11;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v11 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v10 + 1) + 8 * i);
        v6 = [v5 hkmc_cycleFactor];
        v7 = v6 == 8 || v6 == 2;
        if (v7 && ([v5 hasUndeterminedDuration] & 1) != 0)
        {
          v2 = 1;
          goto LABEL_16;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t HKMCForceDisableFertileWindowProjectionsFromCycleFactorSamples(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = *v11;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v11 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v10 + 1) + 8 * i);
        v6 = [v5 hkmc_cycleFactor];
        v7 = (v6 - 4) < 6 || v6 == 2;
        if (v7 && ([v5 hasUndeterminedDuration] & 1) != 0)
        {
          v2 = 1;
          goto LABEL_16;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

__CFString *NSStringFromDeviationType(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Prolonged";
  }

  else
  {
    return off_2796D5110[a1 - 1];
  }
}

id HKCategoryTypeFromDeviationType(void *a1)
{
  if (a1 <= 3)
  {
    a1 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:{**(&unk_2796D5128 + a1), v1}];
  }

  return a1;
}

id HKMCDeviationSampleTypes()
{
  v7[4] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBA80]];
  v7[0] = v0;
  v1 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBA60]];
  v7[1] = v1;
  v2 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB9E8]];
  v7[2] = v2;
  v3 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB9D0]];
  v7[3] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t HKMCBleedingFlowFromCategoryValueVaginalBleeding(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_25192B478[a1 - 1];
  }
}

uint64_t HKMCCervicalMucusQualityFromCategoryValueCervicalMucusQuality(uint64_t result)
{
  if ((result - 1) >= 5)
  {
    return 0;
  }

  return result;
}

uint64_t HKMCOvulationTestResultFromCategoryValueOvulationTestResult(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_25192B4A0[a1 - 1];
  }
}

uint64_t HKMCPregnancyTestResultFromCategoryValuePregnancyTestResult(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_25192B4C0[a1 - 1];
  }
}

uint64_t HKMCProgesteroneTestResultFromCategoryValueProgesteroneTestResult(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_25192B4C0[a1 - 1];
  }
}

uint64_t HKMCDataTypeCodeFromMenstrualSymptom(uint64_t a1)
{
  v2 = HKMCDaySummarySymptomArrayFromSymptoms(a1);
  v3 = [v2 count];

  if (v3 != 1)
  {
    HKMCDataTypeCodeFromMenstrualSymptom_cold_1(a1);
  }

  result = 157;
  if (a1 > 2047)
  {
    if (a1 < 0x10000)
    {
      if (a1 < 0x2000)
      {
        v6 = 163;
        if (a1 != 4096)
        {
          v6 = 157;
        }

        if (a1 == 2048)
        {
          return 168;
        }

        else
        {
          return v6;
        }
      }

      else
      {
        switch(a1)
        {
          case 0x2000:
            return 169;
          case 0x4000:
            return 167;
          case 0x8000:
            return 229;
        }
      }
    }

    else if (a1 >= 0x80000)
    {
      switch(a1)
      {
        case 0x80000:
          return 233;
        case 0x100000:
          return 234;
        case 0x200000:
          return 235;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x10000:
          return 230;
        case 0x20000:
          return 231;
        case 0x40000:
          return 232;
      }
    }
  }

  else if (a1 <= 31)
  {
    if (a1 <= 3)
    {
      v5 = 161;
      if (a1 != 2)
      {
        v5 = 157;
      }

      if (a1)
      {
        return v5;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      switch(a1)
      {
        case 4:
          return 170;
        case 8:
          return 159;
        case 16:
          return 158;
      }
    }
  }

  else if (a1 > 255)
  {
    switch(a1)
    {
      case 256:
        return 171;
      case 512:
        return 162;
      case 1024:
        return 164;
    }
  }

  else
  {
    switch(a1)
    {
      case 32:
        return 165;
      case 64:
        return 166;
      case 128:
        return 160;
    }
  }

  return result;
}

uint64_t HKMCMenstrualSymptomFromDataTypeCode(uint64_t a1)
{
  if (a1 > 228)
  {
    if (a1 <= 231)
    {
      if (a1 == 229)
      {
        return 0x8000;
      }

      else if (a1 == 230)
      {
        return 0x10000;
      }

      else
      {
        return 0x20000;
      }
    }

    else if (a1 > 233)
    {
      if (a1 == 234)
      {
        return 0x100000;
      }

      else if (a1 == 235)
      {
        return 0x200000;
      }

      else
      {
LABEL_31:
        v3 = [MEMORY[0x277CCA890] currentHandler];
        v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"HKMCDaySummarySymptoms HKMCMenstrualSymptomFromDataTypeCode(_HKDataTypeCode)"];
        v5 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
        [v3 handleFailureInFunction:v4 file:@"HKMCDefines.m" lineNumber:536 description:{@"%s: Invalid data type code: %@", "HKMCDaySummarySymptoms HKMCMenstrualSymptomFromDataTypeCode(_HKDataTypeCode)", v5}];

        return 0;
      }
    }

    else if (a1 == 232)
    {
      return 0x40000;
    }

    else
    {
      return 0x80000;
    }
  }

  else
  {
    result = 1;
    switch(a1)
    {
      case 157:
        return result;
      case 158:
        result = 16;
        break;
      case 159:
        result = 8;
        break;
      case 160:
        result = 128;
        break;
      case 161:
        result = 2;
        break;
      case 162:
        result = 512;
        break;
      case 163:
        result = 4096;
        break;
      case 164:
        result = 1024;
        break;
      case 165:
        result = 32;
        break;
      case 166:
        result = 64;
        break;
      case 167:
        result = 0x4000;
        break;
      case 168:
        result = 2048;
        break;
      case 169:
        result = 0x2000;
        break;
      case 170:
        result = 4;
        break;
      case 171:
        result = 256;
        break;
      default:
        goto LABEL_31;
    }
  }

  return result;
}

uint64_t HKMCDataTypeCodeFromCycleFactors(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return 191;
  }

  else
  {
    return qword_25192B4D8[a1 - 1];
  }
}

id HKMCLocalizedString(void *a1)
{
  v1 = MEMORY[0x277CCA8D8];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:v2 value:&stru_2863CB240 table:0];

  return v4;
}

id HKMCLocalizedStringSelene(void *a1)
{
  v1 = MEMORY[0x277CCA8D8];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:v2 value:&stru_2863CB240 table:@"Localizable-Selene"];

  return v4;
}

id HKMCCycleTrackingSampleTypes()
{
  v0 = HKMCDaySummarySampleTypes();
  v1 = HKMCCycleFactorsTypes();
  v2 = [v0 arrayByAddingObjectsFromArray:v1];

  v3 = HKMCDeviationSampleTypes();
  v4 = [v2 arrayByAddingObjectsFromArray:v3];

  return v4;
}

id HKMCDaySummarySampleTypes()
{
  v0 = HKMCDaySummaryCategoryTypes();
  v1 = HKMCDaySummaryQuantityTypes(1);
  v2 = [v0 arrayByAddingObjectsFromArray:v1];

  return v2;
}

id HKMCDaySummaryCategoryTypes()
{
  v17[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBA28]];
  v17[0] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];

  v15 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB900]];
  v16[0] = v15;
  v14 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB8F8]];
  v16[1] = v14;
  v13 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB9D8]];
  v16[2] = v13;
  v2 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBA98]];
  v16[3] = v2;
  v3 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB918]];
  v16[4] = v3;
  v4 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBA50]];
  v16[5] = v4;
  v5 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBA70]];
  v16[6] = v5;
  v6 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBA78]];
  v16[7] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:8];
  v8 = [v1 arrayByAddingObjectsFromArray:v7];
  v9 = HKMCSymptomSampleTypes();
  v10 = [v8 arrayByAddingObjectsFromArray:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

id HKMCDaySummaryQuantityTypes(int a1)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC958]];
  v3 = v2;
  if (a1)
  {
    v9[0] = v2;
    v4 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC938]];
    v9[1] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  }

  else
  {
    v8 = v2;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

id HKMCCycleChartMainTypes()
{
  v17[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBA28]];
  v17[0] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];

  v15 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB900]];
  v16[0] = v15;
  v14 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB8F8]];
  v16[1] = v14;
  v13 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB9D8]];
  v16[2] = v13;
  v2 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC958]];
  v16[3] = v2;
  v3 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC938]];
  v16[4] = v3;
  v4 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBA98]];
  v16[5] = v4;
  v5 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBA50]];
  v16[6] = v5;
  v6 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBA78]];
  v16[7] = v6;
  v7 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBA70]];
  v16[8] = v7;
  v8 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB918]];
  v16[9] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:10];
  v10 = [v1 arrayByAddingObjectsFromArray:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t HKMCIsAlgorithmsVersionSameOnPairedDevice(void *a1)
{
  v1 = [a1 valueForProperty:*MEMORY[0x277D2BB98]];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 isEqualToString:*MEMORY[0x277CCC418]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id HKMCActiveWatchPairedProductType()
{
  v0 = [MEMORY[0x277D2BCF8] sharedInstance];
  v1 = [v0 getActivePairedDevice];

  v2 = [v1 valueForProperty:*MEMORY[0x277D2BBC0]];

  return v2;
}

__CFString *NSStringFromPredictionPrimarySource(uint64_t a1)
{
  if ((a1 - 2) > 2)
  {
    return @"Calendar";
  }

  else
  {
    return off_2796D5148[a1 - 2];
  }
}

__CFString *HKFeatureSettingsKeyForDeviationDetectionTypeEnabled(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown-%ld", a1];
  }

  else
  {
    v2 = off_2796D5160[a1];
  }

  return v2;
}

void sub_251916A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _HKMCMenstruationDisplayTypeIdentifiers()
{
  if (_HKMCMenstruationDisplayTypeIdentifiers_onceToken != -1)
  {
    _HKMCMenstruationDisplayTypeIdentifiers_cold_1();
  }

  v1 = _HKMCMenstruationDisplayTypeIdentifiers_displayTypeIdentifiers;

  return v1;
}

id _HKMCFertilityDisplayTypeIdentifiers()
{
  v3[5] = *MEMORY[0x277D85DE8];
  v3[0] = @"DisplayTypeIdentifierOvulationTestResult";
  v3[1] = @"DisplayTypeIdentifierPregnancyTestResult";
  v3[2] = @"DisplayTypeIdentifierProgesteroneTestResult";
  v3[3] = @"DisplayTypeIdentifierCervicalMucusQuality";
  v3[4] = @"DisplayTypeIdentifierBasalBodyTemperature";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:5];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id _AnalysisSettingKeys()
{
  v3[10] = *MEMORY[0x277D85DE8];
  v3[0] = @"MenstruationProjectionsEnabled";
  v3[1] = @"FertileWindowProjectionsEnabled";
  v3[2] = @"SensorBasedProjectionsEnabled";
  v3[3] = @"WristTemperatureBasedProjectionsEnabled";
  v3[4] = @"InternalCycleFactorsOverrideEnabled";
  v3[5] = @"InternalIgnoreOvulationTestResultsEnabled";
  v3[6] = @"ProlongedDeviationDetectionEnabled";
  v3[7] = @"SpottingDeviationDetectionEnabled";
  v3[8] = @"IrregularDeviationDetectionEnabled";
  v3[9] = @"InfrequentDeviationDetectionEnabled";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:10];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id _NotificationSettingKeys()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = @"MenstruationNotificationsEnabled";
  v3[1] = @"MenstruationNotificationTimeOfDay";
  v3[2] = @"FertileWindowNotificationsEnabled";
  v3[3] = @"FertileWindowNotificationTimeOfDay";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:4];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id _HiddenDisplayTypeSettingKeys()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = @"ShouldHideByDisplayTypeIdentifier";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id _AlgorithmVersionMismatchSettingKeys()
{
  v3[7] = *MEMORY[0x277D85DE8];
  v3[0] = @"MenstruationProjectionsDisabledForVersionMismatch";
  v3[1] = @"FertileWindowProjectionsDisabledForVersionMismatch";
  v3[2] = @"LocalizedTextForVersionMismatchAndDisabledProjections";
  v3[3] = @"MenstruationProjectionsAlgorithmAttributesPhone";
  v3[4] = @"FertileWindowProjectionsAlgorithmAttributesPhone";
  v3[5] = @"MenstruationProjectionsAlgorithmAttributesWatch";
  v3[6] = @"FertileWindowProjectionsAlgorithmAttributesWatch";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:7];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

void sub_2519195E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_3_1()
{

  return objc_opt_class();
}

void sub_25191E410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id OUTLINED_FUNCTION_0_4(id a1)
{

  return a1;
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x16u);
}

uint64_t OUTLINED_FUNCTION_3_2()
{

  return objc_opt_class();
}

id OUTLINED_FUNCTION_4_1(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  return a2;
}

__CFString *HKMCDeviationDetectionAnalyticsKeyFromDeviationType(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"ProlongedDeviationDetectedDayIndices";
  }

  else
  {
    return off_2796D55F8[a1 - 1];
  }
}

void HKMCPredictionPrimarySourceFromHAMenstrualAlgorithmsPredictionPrimarySource_cold_1(void *a1, unsigned __int8 a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [v3 numberWithUnsignedChar:a2];
  v7 = 138412290;
  v8 = v5;
  _os_log_fault_impl(&dword_2518FC000, v4, OS_LOG_TYPE_FAULT, "Passed an unknown primary source: %@", &v7, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

void HKMCDataTypeCodeFromMenstrualSymptom_cold_1(uint64_t a1)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"_HKDataTypeCode HKMCDataTypeCodeFromMenstrualSymptom(HKMCDaySummarySymptoms)"];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  [v4 handleFailureInFunction:v2 file:@"HKMCDefines.m" lineNumber:438 description:{@"%s: Invalid symptom: %@", "_HKDataTypeCode HKMCDataTypeCodeFromMenstrualSymptom(HKMCDaySummarySymptoms)", v3}];
}