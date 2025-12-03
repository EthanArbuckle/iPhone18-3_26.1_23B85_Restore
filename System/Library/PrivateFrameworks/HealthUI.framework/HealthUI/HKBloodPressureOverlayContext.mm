@interface HKBloodPressureOverlayContext
- (HKBloodPressureOverlayContext)initWithMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller classificationManager:(id)manager;
- (id)_bloodPressureContextItemWithCategory:(id)category count:(id)count unitString:(id)string;
- (id)_countedCategoriesForChartPoints:(id)points classificationManager:(id)manager guidelines:(int64_t)guidelines dateOfBirth:(id)birth includeMinCategories:(BOOL)categories;
- (id)contextItemForLastUpdate;
- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion;
@end

@implementation HKBloodPressureOverlayContext

- (HKBloodPressureOverlayContext)initWithMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller classificationManager:(id)manager
{
  itemsCopy = items;
  controllerCopy = controller;
  managerCopy = manager;
  v20.receiver = self;
  v20.super_class = HKBloodPressureOverlayContext;
  v13 = [(HKBloodPressureOverlayContext *)&v20 init];
  v14 = v13;
  if (v13)
  {
    v13->_mode = mode;
    objc_storeStrong(&v13->_overlayChartController, controller);
    objc_storeStrong(&v14->_classificationManager, manager);
    healthStore = [itemsCopy healthStore];
    healthStore = v14->_healthStore;
    v14->_healthStore = healthStore;

    v17 = [MEMORY[0x1E696C2E0] correlationTypeForIdentifier:*MEMORY[0x1E696B730]];
    monitoringSampleType = v14->_monitoringSampleType;
    v14->_monitoringSampleType = v17;
  }

  return v14;
}

- (id)contextItemForLastUpdate
{
  lastUpdatedItem = [(HKBloodPressureOverlayContext *)self lastUpdatedItem];

  if (!lastUpdatedItem)
  {
    v4 = [(HKBloodPressureOverlayContext *)self _bloodPressureContextItemWithCategory:*MEMORY[0x1E696B538] count:0 unitString:&stru_1F42FFBE0];
    [(HKBloodPressureOverlayContext *)self setLastUpdatedItem:v4];
  }

  return [(HKBloodPressureOverlayContext *)self lastUpdatedItem];
}

- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HKBloodPressureOverlayContext.m" lineNumber:103 description:@"subclass must implement this"];
}

- (id)_bloodPressureContextItemWithCategory:(id)category count:(id)count unitString:(id)string
{
  categoryCopy = category;
  countCopy = count;
  stringCopy = string;
  v11 = objc_alloc_init(HKDisplayTypeContextItem);
  v12 = [HKBloodPressureClassificationUtilities localizedStringForBloodPressureClassificationCategoryTitle:categoryCopy];
  [(HKDisplayTypeContextItem *)v11 setTitle:v12];

  [(HKDisplayTypeContextItem *)v11 setInfoHidden:1];
  if ([countCopy integerValue])
  {
    [(HKDisplayTypeContextItem *)v11 setUnit:stringCopy];
    [countCopy stringValue];
  }

  else
  {
    [(HKDisplayTypeContextItem *)v11 setUnit:&stru_1F42FFBE0];
    HKLocalizedNoDataString();
  }
  v13 = ;
  [(HKDisplayTypeContextItem *)v11 setValue:v13];

  v14 = MEMORY[0x1E696AEC0];
  v15 = [HKBloodPressureClassificationUtilities analyticsStringForCategory:categoryCopy];
  v16 = [v14 hk_chartOverlayBloodPressureAccessibilityIdentifier:v15];
  [(HKDisplayTypeContextItem *)v11 setAccessibilityIdentifier:v16];

  v17 = [HKBloodPressureClassificationUtilities analyticsStringForCategory:categoryCopy];
  [(HKDisplayTypeContextItem *)v11 setAnalyticsIdentifier:v17];

  v18 = [HKOverlayContextUtilities defaultMetricColorsForOverlayMode:[(HKBloodPressureOverlayContext *)self mode]];
  [(HKDisplayTypeContextItem *)v11 setMetricColors:v18];

  v19 = [HKBloodPressureClassificationUtilities metricColorsForCategory:categoryCopy];
  [(HKDisplayTypeContextItem *)v11 setSelectedMetricColors:v19];

  return v11;
}

- (id)_countedCategoriesForChartPoints:(id)points classificationManager:(id)manager guidelines:(int64_t)guidelines dateOfBirth:(id)birth includeMinCategories:(BOOL)categories
{
  categoriesCopy = categories;
  v73 = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  managerCopy = manager;
  birthCopy = birth;
  millimeterOfMercuryUnit = [MEMORY[0x1E696C510] millimeterOfMercuryUnit];
  v60 = objc_alloc_init(MEMORY[0x1E696AB50]);
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v12 = pointsCopy;
  v13 = [v12 countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v67;
    v58 = v12;
    v59 = birthCopy;
    v57 = categoriesCopy;
    v61 = *v67;
    do
    {
      v16 = 0;
      do
      {
        if (*v67 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v66 + 1) + 8 * v16);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          userInfo = [v17 userInfo];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v20 = v17;
            userInfo2 = [v20 userInfo];
            v65 = v20;
            if (birthCopy)
            {
              v22 = MEMORY[0x1E696AD98];
              date = [v20 date];
              v24 = [v22 numberWithInteger:{objc_msgSend(birthCopy, "hk_ageWithCurrentDate:", date)}];
            }

            else
            {
              v24 = 0;
            }

            if (_HKBloodPressureOverlayClassificationUsesMinMax())
            {
              systolicRange = [userInfo2 systolicRange];
              maxValue = [systolicRange maxValue];
              [maxValue doubleValue];
              v28 = v27;

              diastolicRange = [userInfo2 diastolicRange];
              maxValue2 = [diastolicRange maxValue];
              [maxValue2 doubleValue];
              v32 = v31;

              systolicAverage = [MEMORY[0x1E696C348] quantityWithUnit:millimeterOfMercuryUnit doubleValue:v28];
              v34 = [MEMORY[0x1E696C348] quantityWithUnit:millimeterOfMercuryUnit doubleValue:v32];
              v35 = [managerCopy categoryForClassificationGuidelines:guidelines systolic:systolicAverage diastolic:v34 age:v24];
              if (v35)
              {
                [v60 addObject:v35];
              }

              if (categoriesCopy)
              {
                systolicRange2 = [userInfo2 systolicRange];
                minValue = [systolicRange2 minValue];
                [minValue doubleValue];
                v39 = v38;

                diastolicRange2 = [userInfo2 diastolicRange];
                minValue2 = [diastolicRange2 minValue];
                [minValue2 doubleValue];
                v43 = v42;

                v44 = [MEMORY[0x1E696C348] quantityWithUnit:millimeterOfMercuryUnit doubleValue:v39];
                v45 = [MEMORY[0x1E696C348] quantityWithUnit:millimeterOfMercuryUnit doubleValue:v43];
                v46 = [managerCopy categoryForClassificationGuidelines:guidelines systolic:v44 diastolic:v45 age:v24];
                v47 = v46;
                if (v46 && ([v46 isEqual:v35] & 1) == 0)
                {
                  [v60 addObject:v47];
                }

                categoriesCopy = v57;
                v12 = v58;
                birthCopy = v59;
              }
            }

            else
            {
              systolicAverage = [userInfo2 systolicAverage];
              diastolicAverage = [userInfo2 diastolicAverage];
              v34 = diastolicAverage;
              if (systolicAverage && diastolicAverage)
              {
                v49 = MEMORY[0x1E696C348];
                [systolicAverage doubleValue];
                v50 = [v49 quantityWithUnit:millimeterOfMercuryUnit doubleValue:?];
                v51 = MEMORY[0x1E696C348];
                [v34 doubleValue];
                v52 = [v51 quantityWithUnit:millimeterOfMercuryUnit doubleValue:?];
                v53 = [managerCopy categoryForClassificationGuidelines:guidelines systolic:v50 diastolic:v52 age:v24];
                if (v53)
                {
                  [v60 addObject:v53];
                }

                v12 = v58;
                birthCopy = v59;
              }

              else
              {
                _HKInitializeLogging();
                v54 = *MEMORY[0x1E696B988];
                if (os_log_type_enabled(*MEMORY[0x1E696B988], OS_LOG_TYPE_ERROR))
                {
                  [HKBloodPressureOverlayContext _countedCategoriesForChartPoints:v70 classificationManager:v54 guidelines:self dateOfBirth:&v71 includeMinCategories:?];
                }
              }
            }

            v15 = v61;
          }
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v66 objects:v72 count:16];
    }

    while (v14);
  }

  return v60;
}

- (void)_countedCategoriesForChartPoints:(uint64_t)a3 classificationManager:(void *)a4 guidelines:dateOfBirth:includeMinCategories:.cold.1(uint8_t *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = objc_opt_class();
  *a1 = 138543362;
  *a4 = v7;
  v8 = v7;
  _os_log_error_impl(&dword_1C3942000, v6, OS_LOG_TYPE_ERROR, "[%{public}@]: chart data does not contain average values; unable to compute average classification category", a1, 0xCu);
}

@end