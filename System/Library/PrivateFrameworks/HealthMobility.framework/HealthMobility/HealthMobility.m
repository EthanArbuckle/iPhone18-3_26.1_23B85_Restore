id HKMobilityAllWalkingSteadinessNotificationCategories()
{
  v0 = HKMobilityWalkingSteadinessInitialNotificationCategories();
  v1 = HKMobilityWalkingSteadinessRepeatNotificationCategories();
  v2 = [v0 arrayByAddingObjectsFromArray:v1];

  return v2;
}

id HKMobilityWalkingSteadinessInitialNotificationCategories()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v3[0] = @"MobilityAppPlugin.WalkingSteadinessInitial.VeryLow";
  v3[1] = @"MobilityAppPlugin.WalkingSteadinessInitial.Low";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:2];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id HKMobilityWalkingSteadinessRepeatNotificationCategories()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v3[0] = @"MobilityAppPlugin.WalkingSteadinessRepeat.VeryLow";
  v3[1] = @"MobilityAppPlugin.WalkingSteadinessRepeat.Low";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:2];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

uint64_t HKMobilityNotificationCategoryForWalkingSteadinessEventValue(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_2796D8310 + a1 - 1);
  }
}

const char *HMMobilityLogCategoryForCategory(unint64_t a1)
{
  if (a1 >= 0xF)
  {
    HMMobilityLogCategoryForCategory_cold_1();
  }

  if (a1 - 1 > 0xD)
  {
    return "default";
  }

  else
  {
    return off_2796D8410[a1 - 1];
  }
}

id HMMobilityLogForCategory(unint64_t a1)
{
  if (a1 >= 0xF)
  {
    HMMobilityLogForCategory_cold_2();
  }

  if (HMMobilityLogForCategory_onceToken != -1)
  {
    HMMobilityLogForCategory_cold_1();
  }

  v2 = HMMobilityLogForCategory_logObjects[a1];

  return v2;
}

void __HMMobilityLogForCategory_block_invoke()
{
  for (i = 0; i != 15; ++i)
  {
    v1 = HMMobilityLogCategoryForCategory(i);
    v2 = os_log_create("com.apple.health.Mobility", v1);
    v3 = HMMobilityLogForCategory_logObjects[i];
    HMMobilityLogForCategory_logObjects[i] = v2;
  }
}

void sub_251954688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25195494C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_251954BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_251954E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_2519550F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id HKMobilityLocalizedNotificationDuringPregnancyBodyForCategory(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"MobilityAppPlugin.WalkingSteadinessInitial.Low"])
  {
    v2 = @"WALKING_STEADINESS_NOTIFICATION_BODY_INITIAL_LOW_PREGNANCY";
LABEL_9:
    v3 = HKMobilityLocalizedNotificationString(v2);
    goto LABEL_10;
  }

  if ([v1 isEqualToString:@"MobilityAppPlugin.WalkingSteadinessInitial.VeryLow"])
  {
    v2 = @"WALKING_STEADINESS_NOTIFICATION_BODY_INITIAL_VERY_LOW_PREGNANCY";
    goto LABEL_9;
  }

  if ([v1 isEqualToString:@"MobilityAppPlugin.WalkingSteadinessRepeat.Low"])
  {
    v2 = @"WALKING_STEADINESS_NOTIFICATION_BODY_REPEAT_LOW_PREGNANCY";
    goto LABEL_9;
  }

  if ([v1 isEqualToString:@"MobilityAppPlugin.WalkingSteadinessRepeat.VeryLow"])
  {
    v2 = @"WALKING_STEADINESS_NOTIFICATION_BODY_REPEAT_VERY_LOW_PREGNANCY";
    goto LABEL_9;
  }

  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_FAULT))
  {
    HKMobilityLocalizedNotificationDuringPregnancyBodyForCategory_cold_1();
  }

  v3 = 0;
LABEL_10:

  return v3;
}

id HKMobilityLocalizedNotificationBodyForCategory(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"MobilityAppPlugin.WalkingSteadinessInitial.Low"])
  {
    v2 = @"WALKING_STEADINESS_NOTIFICATION_BODY_INITIAL_LOW";
LABEL_9:
    v3 = HKMobilityLocalizedNotificationString(v2);
    goto LABEL_10;
  }

  if ([v1 isEqualToString:@"MobilityAppPlugin.WalkingSteadinessInitial.VeryLow"])
  {
    v2 = @"WALKING_STEADINESS_NOTIFICATION_BODY_INITIAL_VERY_LOW";
    goto LABEL_9;
  }

  if ([v1 isEqualToString:@"MobilityAppPlugin.WalkingSteadinessRepeat.Low"])
  {
    v2 = @"WALKING_STEADINESS_NOTIFICATION_BODY_REPEAT_LOW";
    goto LABEL_9;
  }

  if ([v1 isEqualToString:@"MobilityAppPlugin.WalkingSteadinessRepeat.VeryLow"])
  {
    v2 = @"WALKING_STEADINESS_NOTIFICATION_BODY_REPEAT_VERY_LOW";
    goto LABEL_9;
  }

  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_FAULT))
  {
    HKMobilityLocalizedNotificationDuringPregnancyBodyForCategory_cold_1();
  }

  v3 = 0;
LABEL_10:

  return v3;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

__CFString *HKMobilityNotificationIdentifierForCategory(void *a1)
{
  v1 = a1;
  v2 = HKMobilityWalkingSteadinessInitialNotificationCategories();
  v3 = [v2 containsObject:v1];

  if (v3)
  {
    v4 = @"MobilityAppPlugin.WalkingSteadinessInitial";
  }

  else
  {
    v5 = HKMobilityWalkingSteadinessRepeatNotificationCategories();
    v6 = [v5 containsObject:v1];

    if (v6)
    {
      v4 = @"MobilityAppPlugin.WalkingSteadinessRepeat";
    }

    else
    {
      v4 = v1;
    }
  }

  return v4;
}

void HKMobilityLocalizedNotificationDuringPregnancyBodyForCategory_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_251952000, v0, v1, "[UNNotificationRequest+HKMobility] Unable to localize notification body prefix for category: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}