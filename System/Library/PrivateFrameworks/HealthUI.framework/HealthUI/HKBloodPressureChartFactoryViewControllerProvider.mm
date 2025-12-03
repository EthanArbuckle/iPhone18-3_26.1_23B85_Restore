@interface HKBloodPressureChartFactoryViewControllerProvider
+ (BOOL)featureAvailableForUsage:(id)usage;
+ (BOOL)healthFactorsIncludePregnancy:(id)pregnancy;
+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)identifier chartFactory:(id)factory applicationItems:(id)items displayDate:(id)date preferredOverlay:(int64_t)overlay restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)self0 additionalChartOptions:(unint64_t)self1;
@end

@implementation HKBloodPressureChartFactoryViewControllerProvider

+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)identifier chartFactory:(id)factory applicationItems:(id)items displayDate:(id)date preferredOverlay:(int64_t)overlay restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)self0 additionalChartOptions:(unint64_t)self1
{
  identifierCopy = identifier;
  factoryCopy = factory;
  itemsCopy = items;
  dateCopy = date;
  activityCopy = activity;
  modelCopy = model;
  typesCopy = types;
  healthStore = [itemsCopy healthStore];
  v22 = [self featureAvailableForUsage:healthStore];

  v23 = objc_alloc(MEMORY[0x1E696BF60]);
  healthStore2 = [itemsCopy healthStore];
  v25 = [v23 initWithHealthStore:healthStore2];

  isClassificationAgeGated = [v25 isClassificationAgeGated];
  v27 = [self healthFactorsIncludePregnancy:typesCopy];
  if (v22 && ((v27 | isClassificationAgeGated ^ 1) & 1) != 0)
  {
    v28 = [[HKOverlayRoomBloodPressureViewController alloc] initWithDisplayDate:dateCopy applicationItems:itemsCopy factorDisplayTypes:typesCopy mode:1 classificationAgeGated:isClassificationAgeGated & 1];
    [(HKOverlayRoomViewController *)v28 setRestorationUserActivity:activityCopy];
    [(HKOverlayRoomViewController *)v28 setAdditionalChartOptions:options];
    v30 = factoryCopy;
    v29 = identifierCopy;
  }

  else
  {
    v30 = factoryCopy;
    v29 = identifierCopy;
    v28 = [factoryCopy createInteractiveChartViewControllerForTypeIdentifier:identifierCopy chartFactory:factoryCopy applicationItems:itemsCopy displayDate:dateCopy preferredOverlay:overlay restorationUserActivity:activityCopy trendModel:modelCopy factorDisplayTypes:typesCopy additionalChartOptions:options];
  }

  return v28;
}

+ (BOOL)featureAvailableForUsage:(id)usage
{
  v4 = MEMORY[0x1E696C178];
  usageCopy = usage;
  v6 = [v4 alloc];
  v7 = [v6 initWithFeatureIdentifier:*MEMORY[0x1E696B880] healthStore:usageCopy];

  v13 = 0;
  v8 = [v7 featureStatusWithError:&v13];
  v9 = v13;
  if (v8)
  {
    v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696B800]];
    areAllRequirementsSatisfied = [v10 areAllRequirementsSatisfied];
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(HKBloodPressureChartFactoryViewControllerProvider *)self featureAvailableForUsage:v9, v10];
    }

    areAllRequirementsSatisfied = 0;
  }

  return areAllRequirementsSatisfied;
}

+ (BOOL)healthFactorsIncludePregnancy:(id)pregnancy
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  pregnancyCopy = pregnancy;
  v4 = [pregnancyCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(pregnancyCopy);
        }

        if ([*(*(&v8 + 1) + 8 * i) displayTypeIdentifier] == 191)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [pregnancyCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

+ (void)featureAvailableForUsage:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1C3942000, log, OS_LOG_TYPE_ERROR, "%{public}@: Could not fetch feature status error : %{public}@", &v3, 0x16u);
}

@end