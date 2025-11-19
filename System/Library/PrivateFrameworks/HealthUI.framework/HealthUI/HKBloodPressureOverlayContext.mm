@interface HKBloodPressureOverlayContext
- (HKBloodPressureOverlayContext)initWithMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5 classificationManager:(id)a6;
- (id)_bloodPressureContextItemWithCategory:(id)a3 count:(id)a4 unitString:(id)a5;
- (id)_countedCategoriesForChartPoints:(id)a3 classificationManager:(id)a4 guidelines:(int64_t)a5 dateOfBirth:(id)a6 includeMinCategories:(BOOL)a7;
- (id)contextItemForLastUpdate;
- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7;
@end

@implementation HKBloodPressureOverlayContext

- (HKBloodPressureOverlayContext)initWithMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5 classificationManager:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v20.receiver = self;
  v20.super_class = HKBloodPressureOverlayContext;
  v13 = [(HKBloodPressureOverlayContext *)&v20 init];
  v14 = v13;
  if (v13)
  {
    v13->_mode = a3;
    objc_storeStrong(&v13->_overlayChartController, a5);
    objc_storeStrong(&v14->_classificationManager, a6);
    v15 = [v10 healthStore];
    healthStore = v14->_healthStore;
    v14->_healthStore = v15;

    v17 = [MEMORY[0x1E696C2E0] correlationTypeForIdentifier:*MEMORY[0x1E696B730]];
    monitoringSampleType = v14->_monitoringSampleType;
    v14->_monitoringSampleType = v17;
  }

  return v14;
}

- (id)contextItemForLastUpdate
{
  v3 = [(HKBloodPressureOverlayContext *)self lastUpdatedItem];

  if (!v3)
  {
    v4 = [(HKBloodPressureOverlayContext *)self _bloodPressureContextItemWithCategory:*MEMORY[0x1E696B538] count:0 unitString:&stru_1F42FFBE0];
    [(HKBloodPressureOverlayContext *)self setLastUpdatedItem:v4];
  }

  return [(HKBloodPressureOverlayContext *)self lastUpdatedItem];
}

- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7
{
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"HKBloodPressureOverlayContext.m" lineNumber:103 description:@"subclass must implement this"];
}

- (id)_bloodPressureContextItemWithCategory:(id)a3 count:(id)a4 unitString:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(HKDisplayTypeContextItem);
  v12 = [HKBloodPressureClassificationUtilities localizedStringForBloodPressureClassificationCategoryTitle:v8];
  [(HKDisplayTypeContextItem *)v11 setTitle:v12];

  [(HKDisplayTypeContextItem *)v11 setInfoHidden:1];
  if ([v9 integerValue])
  {
    [(HKDisplayTypeContextItem *)v11 setUnit:v10];
    [v9 stringValue];
  }

  else
  {
    [(HKDisplayTypeContextItem *)v11 setUnit:&stru_1F42FFBE0];
    HKLocalizedNoDataString();
  }
  v13 = ;
  [(HKDisplayTypeContextItem *)v11 setValue:v13];

  v14 = MEMORY[0x1E696AEC0];
  v15 = [HKBloodPressureClassificationUtilities analyticsStringForCategory:v8];
  v16 = [v14 hk_chartOverlayBloodPressureAccessibilityIdentifier:v15];
  [(HKDisplayTypeContextItem *)v11 setAccessibilityIdentifier:v16];

  v17 = [HKBloodPressureClassificationUtilities analyticsStringForCategory:v8];
  [(HKDisplayTypeContextItem *)v11 setAnalyticsIdentifier:v17];

  v18 = [HKOverlayContextUtilities defaultMetricColorsForOverlayMode:[(HKBloodPressureOverlayContext *)self mode]];
  [(HKDisplayTypeContextItem *)v11 setMetricColors:v18];

  v19 = [HKBloodPressureClassificationUtilities metricColorsForCategory:v8];
  [(HKDisplayTypeContextItem *)v11 setSelectedMetricColors:v19];

  return v11;
}

- (id)_countedCategoriesForChartPoints:(id)a3 classificationManager:(id)a4 guidelines:(int64_t)a5 dateOfBirth:(id)a6 includeMinCategories:(BOOL)a7
{
  v7 = a7;
  v73 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v64 = a4;
  v11 = a6;
  v63 = [MEMORY[0x1E696C510] millimeterOfMercuryUnit];
  v60 = objc_alloc_init(MEMORY[0x1E696AB50]);
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v67;
    v58 = v12;
    v59 = v11;
    v57 = v7;
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
          v18 = [v17 userInfo];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v20 = v17;
            v21 = [v20 userInfo];
            v65 = v20;
            if (v11)
            {
              v22 = MEMORY[0x1E696AD98];
              v23 = [v20 date];
              v24 = [v22 numberWithInteger:{objc_msgSend(v11, "hk_ageWithCurrentDate:", v23)}];
            }

            else
            {
              v24 = 0;
            }

            if (_HKBloodPressureOverlayClassificationUsesMinMax())
            {
              v25 = [v21 systolicRange];
              v26 = [v25 maxValue];
              [v26 doubleValue];
              v28 = v27;

              v29 = [v21 diastolicRange];
              v30 = [v29 maxValue];
              [v30 doubleValue];
              v32 = v31;

              v33 = [MEMORY[0x1E696C348] quantityWithUnit:v63 doubleValue:v28];
              v34 = [MEMORY[0x1E696C348] quantityWithUnit:v63 doubleValue:v32];
              v35 = [v64 categoryForClassificationGuidelines:a5 systolic:v33 diastolic:v34 age:v24];
              if (v35)
              {
                [v60 addObject:v35];
              }

              if (v7)
              {
                v36 = [v21 systolicRange];
                v37 = [v36 minValue];
                [v37 doubleValue];
                v39 = v38;

                v40 = [v21 diastolicRange];
                v41 = [v40 minValue];
                [v41 doubleValue];
                v43 = v42;

                v44 = [MEMORY[0x1E696C348] quantityWithUnit:v63 doubleValue:v39];
                v45 = [MEMORY[0x1E696C348] quantityWithUnit:v63 doubleValue:v43];
                v46 = [v64 categoryForClassificationGuidelines:a5 systolic:v44 diastolic:v45 age:v24];
                v47 = v46;
                if (v46 && ([v46 isEqual:v35] & 1) == 0)
                {
                  [v60 addObject:v47];
                }

                v7 = v57;
                v12 = v58;
                v11 = v59;
              }
            }

            else
            {
              v33 = [v21 systolicAverage];
              v48 = [v21 diastolicAverage];
              v34 = v48;
              if (v33 && v48)
              {
                v49 = MEMORY[0x1E696C348];
                [v33 doubleValue];
                v50 = [v49 quantityWithUnit:v63 doubleValue:?];
                v51 = MEMORY[0x1E696C348];
                [v34 doubleValue];
                v52 = [v51 quantityWithUnit:v63 doubleValue:?];
                v53 = [v64 categoryForClassificationGuidelines:a5 systolic:v50 diastolic:v52 age:v24];
                if (v53)
                {
                  [v60 addObject:v53];
                }

                v12 = v58;
                v11 = v59;
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