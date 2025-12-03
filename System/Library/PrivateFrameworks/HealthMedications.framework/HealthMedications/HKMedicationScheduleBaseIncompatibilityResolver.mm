@interface HKMedicationScheduleBaseIncompatibilityResolver
+ (id)computeIncompatibleSchedulesFromSchedules:(id)schedules devices:(id)devices;
- (HKMedicationScheduleBaseIncompatibilityResolver)init;
- (id)_updatedSchedules:(void *)schedules withReplacementCompatibilityRanges:(void *)ranges;
- (void)_resolveIncompatibleScheduleResultsFromSchedules:(id)schedules scheduleError:(id)error devices:(id)devices deviceError:(id)deviceError completion:(id)completion;
- (void)checkIncompatibilityForSchedule:(id)schedule completion:(id)completion;
@end

@implementation HKMedicationScheduleBaseIncompatibilityResolver

- (HKMedicationScheduleBaseIncompatibilityResolver)init
{
  v6.receiver = self;
  v6.super_class = HKMedicationScheduleBaseIncompatibilityResolver;
  v2 = [(HKMedicationScheduleBaseIncompatibilityResolver *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    unitTestScheduleCompatibilityRanges = v2->_unitTestScheduleCompatibilityRanges;
    v2->_unitTestScheduleCompatibilityRanges = dictionary;
  }

  return v2;
}

+ (id)computeIncompatibleSchedulesFromSchedules:(id)schedules devices:(id)devices
{
  v34 = *MEMORY[0x277D85DE8];
  schedulesCopy = schedules;
  devicesCopy = devices;
  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = schedulesCopy;
  v6 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        if (([v10 isUnavailable] & 1) == 0)
        {
          v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v12 = devicesCopy;
          v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v25;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v25 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v24 + 1) + 8 * j);
                if (([v17 isCompatibleWithSchedule:v10] & 1) == 0)
                {
                  [v11 addObject:v17];
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v14);
          }

          if ([v11 count])
          {
            v18 = [[HKMedicationScheduleIncompatibilityResult alloc] initWithSchedule:v10 incompatibleDevices:v11];
            [v21 addObject:v18];
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)_resolveIncompatibleScheduleResultsFromSchedules:(id)schedules scheduleError:(id)error devices:(id)devices deviceError:(id)deviceError completion:(id)completion
{
  schedulesCopy = schedules;
  errorCopy = error;
  devicesCopy = devices;
  deviceErrorCopy = deviceError;
  completionCopy = completion;
  if (schedulesCopy)
  {
    if (devicesCopy)
    {
      v16 = [devicesCopy hk_filter:&__block_literal_global];
      allKeys = [(NSDictionary *)self->_unitTestScheduleCompatibilityRanges allKeys];
      v18 = [allKeys count];

      if (v18)
      {
        v23 = [HKMedicationScheduleBaseIncompatibilityResolver _updatedSchedules:schedulesCopy withReplacementCompatibilityRanges:?];

        schedulesCopy = v23;
      }

      v19 = [objc_opt_class() computeIncompatibleSchedulesFromSchedules:schedulesCopy devices:v16];
      completionCopy[2](completionCopy, v19, 0);
    }

    else
    {
      if (deviceErrorCopy)
      {
        v21 = deviceErrorCopy;
      }

      else
      {
        v21 = [MEMORY[0x277CCA9B8] hk_error:0 description:@"Unknown error occured while fetching Apple Account devices"];
      }

      v22 = v21;
      (completionCopy)[2](completionCopy, 0, v21);
    }
  }

  else
  {
    if (errorCopy)
    {
      v20 = errorCopy;
    }

    else
    {
      v20 = [MEMORY[0x277CCA9B8] hk_error:0 description:@"Unknown error occured while fetching schedules"];
    }

    schedulesCopy = v20;
    (completionCopy)[2](completionCopy, 0, v20);
  }
}

BOOL __145__HKMedicationScheduleBaseIncompatibilityResolver__resolveIncompatibleScheduleResultsFromSchedules_scheduleError_devices_deviceError_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 deviceType];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue] < 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __104__HKMedicationScheduleBaseIncompatibilityResolver__updatedSchedules_withReplacementCompatibilityRanges___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = [v3 UUID];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [v3 _copyByReplacingCompatibilityVersionRange:{objc_msgSend(v6, "integerValue"), objc_msgSend(v6, "integerValue")}];
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  return v8;
}

- (void)checkIncompatibilityForSchedule:(id)schedule completion:(id)completion
{
  v6 = objc_opt_class();

  MEMORY[0x28211F870](self, a2, v6);
}

- (id)_updatedSchedules:(void *)schedules withReplacementCompatibilityRanges:(void *)ranges
{
  if (schedules)
  {
    var28[0] = MEMORY[0x277D85DD0];
    var28[1] = 3221225472;
    var28[2] = __104__HKMedicationScheduleBaseIncompatibilityResolver__updatedSchedules_withReplacementCompatibilityRanges___block_invoke;
    var28[3] = &unk_2796CA010;
    var28[4] = schedules;
    schedules = [ranges hk_map:var28];
    v2 = var28[6];
  }

  return schedules;
}

@end