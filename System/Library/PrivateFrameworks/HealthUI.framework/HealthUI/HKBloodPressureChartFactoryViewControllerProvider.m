@interface HKBloodPressureChartFactoryViewControllerProvider
+ (BOOL)featureAvailableForUsage:(id)a3;
+ (BOOL)healthFactorsIncludePregnancy:(id)a3;
+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)a3 chartFactory:(id)a4 applicationItems:(id)a5 displayDate:(id)a6 preferredOverlay:(int64_t)a7 restorationUserActivity:(id)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10 additionalChartOptions:(unint64_t)a11;
@end

@implementation HKBloodPressureChartFactoryViewControllerProvider

+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)a3 chartFactory:(id)a4 applicationItems:(id)a5 displayDate:(id)a6 preferredOverlay:(int64_t)a7 restorationUserActivity:(id)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10 additionalChartOptions:(unint64_t)a11
{
  v34 = a3;
  v33 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = [v16 healthStore];
  v22 = [a1 featureAvailableForUsage:v21];

  v23 = objc_alloc(MEMORY[0x1E696BF60]);
  v24 = [v16 healthStore];
  v25 = [v23 initWithHealthStore:v24];

  v26 = [v25 isClassificationAgeGated];
  v27 = [a1 healthFactorsIncludePregnancy:v20];
  if (v22 && ((v27 | v26 ^ 1) & 1) != 0)
  {
    v28 = [[HKOverlayRoomBloodPressureViewController alloc] initWithDisplayDate:v17 applicationItems:v16 factorDisplayTypes:v20 mode:1 classificationAgeGated:v26 & 1];
    [(HKOverlayRoomViewController *)v28 setRestorationUserActivity:v18];
    [(HKOverlayRoomViewController *)v28 setAdditionalChartOptions:a11];
    v30 = v33;
    v29 = v34;
  }

  else
  {
    v30 = v33;
    v29 = v34;
    v28 = [v33 createInteractiveChartViewControllerForTypeIdentifier:v34 chartFactory:v33 applicationItems:v16 displayDate:v17 preferredOverlay:a7 restorationUserActivity:v18 trendModel:v19 factorDisplayTypes:v20 additionalChartOptions:a11];
  }

  return v28;
}

+ (BOOL)featureAvailableForUsage:(id)a3
{
  v4 = MEMORY[0x1E696C178];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v6 initWithFeatureIdentifier:*MEMORY[0x1E696B880] healthStore:v5];

  v13 = 0;
  v8 = [v7 featureStatusWithError:&v13];
  v9 = v13;
  if (v8)
  {
    v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696B800]];
    v11 = [v10 areAllRequirementsSatisfied];
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(HKBloodPressureChartFactoryViewControllerProvider *)a1 featureAvailableForUsage:v9, v10];
    }

    v11 = 0;
  }

  return v11;
}

+ (BOOL)healthFactorsIncludePregnancy:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) displayTypeIdentifier] == 191)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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