@interface HKBloodPressureCategoryContext
- (HKBloodPressureCategoryContext)initWithMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5 classificationManager:(id)a6 baseDisplayType:(id)a7 categoryData:(id)a8;
- (id)highlightedBloodPressureCoordinateWithCoordinate:(id)a3 originalCoordinate:(id)a4;
- (void)overlayStateWillChange:(BOOL)a3 contextItem:(id)a4 chartController:(id)a5;
- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7;
@end

@implementation HKBloodPressureCategoryContext

- (HKBloodPressureCategoryContext)initWithMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5 classificationManager:(id)a6 baseDisplayType:(id)a7 categoryData:(id)a8
{
  v14 = a4;
  v15 = a7;
  v16 = a8;
  v41.receiver = self;
  v41.super_class = HKBloodPressureCategoryContext;
  v17 = [(HKBloodPressureOverlayContext *)&v41 initWithMode:a3 applicationItems:v14 overlayChartController:a5 classificationManager:a6];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_categoryData, a8);
    objc_storeStrong(&v18->_baseDisplayType, a7);
    v19 = [HKBloodPressureOverlayDataSourceDelegate alloc];
    v20 = [v14 healthStore];
    v21 = [(HKBloodPressureOverlayDataSourceDelegate *)v19 initWithClassificationCategoryData:v16 healthStore:v20 baseDisplayType:v15];
    dataSourceDelegate = v18->_dataSourceDelegate;
    v18->_dataSourceDelegate = v21;

    v23 = [[HKDateRangeDataSource alloc] initWithSourceDelegate:v18->_dataSourceDelegate];
    v24 = [[HKBloodPressureOverlaySeries alloc] initWithDisplayType:v18->_baseDisplayType dataSource:v23 categoryData:v18->_categoryData];
    overlaySeries = v18->_overlaySeries;
    v18->_overlaySeries = &v24->super.super.super;

    v18->_overlayActivated = 0;
    v26 = [[HKInteractiveChartDisplayType alloc] initWithGraphSeries:v18->_overlaySeries baseDisplayType:v18->_baseDisplayType valueFormatter:0 dataTypeCode:80];
    overlayDisplayType = v18->_overlayDisplayType;
    v18->_overlayDisplayType = v26;

    v28 = [(HKBloodPressureOverlayContext *)v18 healthStore];
    v40 = 0;
    v29 = [v28 dateOfBirthComponentsWithError:&v40];
    v30 = v40;
    dateOfBirth = v18->_dateOfBirth;
    v18->_dateOfBirth = v29;

    if (!v18->_dateOfBirth)
    {
      _HKInitializeLogging();
      v32 = *MEMORY[0x1E696B988];
      if (os_log_type_enabled(*MEMORY[0x1E696B988], OS_LOG_TYPE_ERROR))
      {
        [(HKPopulationNormsAbstractViewModel *)v30 currentAgeInYears];
      }
    }

    v33 = [HKDateCoordinateTransform alloc];
    v34 = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
    v35 = [(HKDateCoordinateTransform *)v33 initWithCurrentCalendar:v34];
    dateCoordinateTransform = v18->_dateCoordinateTransform;
    v18->_dateCoordinateTransform = v35;

    v37 = [(HKBloodPressureClassificationCategoryData *)v18->_categoryData identifier];
    v38 = [(HKBloodPressureOverlayContext *)v18 _bloodPressureContextItemWithCategory:v37 count:0 unitString:&stru_1F42FFBE0];
    [(HKBloodPressureOverlayContext *)v18 setLastUpdatedItem:v38];
  }

  return v18;
}

- (void)overlayStateWillChange:(BOOL)a3 contextItem:(id)a4 chartController:(id)a5
{
  v6 = a3;
  v25 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [(HKBloodPressureOverlayContext *)self lastUpdatedItem];
  v11 = [v8 isEqual:v10];

  if (v11)
  {
    if (v6)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v12 = [v9 supportedTimeScopes];
      v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v21;
        do
        {
          v16 = 0;
          do
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [v9 primaryGraphSeriesForTimeScope:{objc_msgSend(*(*(&v20 + 1) + 8 * v16), "integerValue")}];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v17 setSeriesHighlightDelegate:self];
            }

            ++v16;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v14);
      }
    }

    v18 = self;
    v19 = v6;
  }

  else
  {
    v18 = self;
    v19 = 0;
  }

  [(HKBloodPressureCategoryContext *)v18 setOverlayActivated:v19];
}

- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a7;
  objc_initWeak(&location, self);
  v14 = [(HKBloodPressureOverlayContext *)self overlayChartController];
  v15 = [v14 primaryDisplayType];
  v16 = [HKOverlayRoomBloodPressureViewController bloodPressureDisplayType:v15];

  v17 = [(HKBloodPressureCategoryContext *)self categoryData];
  v18 = [(HKBloodPressureOverlayContext *)self overlayChartController];
  v19 = [v11 startDate];
  v20 = [v11 endDate];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __117__HKBloodPressureCategoryContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke;
  v23[3] = &unk_1E81BA7A8;
  objc_copyWeak(v26, &location);
  v21 = v17;
  v24 = v21;
  v26[1] = a5;
  v22 = v13;
  v25 = v22;
  [v18 cachedDataForStandardDisplayType:v16 timeScope:a5 resolution:0 startDate:v19 endDate:v20 completion:v23];

  objc_destroyWeak(v26);
  objc_destroyWeak(&location);
}

void __117__HKBloodPressureCategoryContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v23 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = WeakRetained;
  if (a3)
  {
    v10 = [WeakRetained classificationManager];
    v11 = [*(a1 + 32) classificationGuidelines];
    v12 = [v9 dateOfBirth];
    v13 = [v9 _countedCategoriesForChartPoints:v23 classificationManager:v10 guidelines:v11 dateOfBirth:v12 includeMinCategories:1];

    v14 = [*(a1 + 32) identifier];
    v15 = [v13 countForObject:v14];

    if (*(a1 + 56) > 5)
    {
      v17 = MEMORY[0x1E696AEC0];
      v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v19 = [v18 localizedStringForKey:@"MEASUREMENT_COUNT_NUMBERED_UNIT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v16 = [v17 localizedStringWithFormat:v19, v15];
    }

    else
    {
      v16 = [HKGraphZoomLevelConfiguration seriesPointIntervalUnitForTimeScope:"seriesPointIntervalUnitForTimeScope:pointCount:" pointCount:?];
    }

    v20 = [*(a1 + 32) identifier];
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
    v22 = [v9 _bloodPressureContextItemWithCategory:v20 count:v21 unitString:v16];
    [v9 setLastUpdatedItem:v22];
  }

  (*(*(a1 + 40) + 16))();
}

- (id)highlightedBloodPressureCoordinateWithCoordinate:(id)a3 originalCoordinate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 userInfo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_28:
    v63 = 0;
    goto LABEL_32;
  }

  v10 = [v6 userInfo];
  v11 = [(HKBloodPressureCategoryContext *)self dateOfBirth];

  if (v11)
  {
    v12 = [(HKBloodPressureCategoryContext *)self dateCoordinateTransform];
    v13 = [v7 systolicCoordinate];
    [v13 endXValue];
    v14 = [v12 valueForCoordinate:?];

    v15 = MEMORY[0x1E696AD98];
    v16 = [(HKBloodPressureCategoryContext *)self dateOfBirth];
    v17 = [v15 numberWithInteger:{objc_msgSend(v16, "hk_ageWithCurrentDate:", v14)}];
  }

  else
  {
    v17 = 0;
  }

  if (_HKBloodPressureOverlayClassificationUsesMinMax())
  {
    v112 = v10;
    v18 = MEMORY[0x1E696C348];
    v19 = [MEMORY[0x1E696C510] millimeterOfMercuryUnit];
    v20 = [v7 systolicCoordinate];
    [v20 max];
    v22 = [v18 quantityWithUnit:v19 doubleValue:v21];

    v23 = MEMORY[0x1E696C348];
    v24 = [MEMORY[0x1E696C510] millimeterOfMercuryUnit];
    v25 = [v7 diastolicCoordinate];
    [v25 max];
    [v23 quantityWithUnit:v24 doubleValue:v26];
    v28 = v27 = v17;

    v29 = [(HKBloodPressureOverlayContext *)self classificationManager];
    v30 = [(HKBloodPressureCategoryContext *)self categoryData];
    v109 = v28;
    v110 = v22;
    v31 = [v29 categoryForClassificationGuidelines:objc_msgSend(v30 systolic:"classificationGuidelines") diastolic:v22 age:{v28, v27}];

    v32 = MEMORY[0x1E696C348];
    v33 = [MEMORY[0x1E696C510] millimeterOfMercuryUnit];
    v34 = [v7 systolicCoordinate];
    [v34 min];
    v36 = [v32 quantityWithUnit:v33 doubleValue:v35];

    v37 = MEMORY[0x1E696C348];
    v38 = v36;
    v39 = [MEMORY[0x1E696C510] millimeterOfMercuryUnit];
    v40 = [v7 diastolicCoordinate];
    [v40 min];
    v42 = [v37 quantityWithUnit:v39 doubleValue:v41];

    v43 = [(HKBloodPressureOverlayContext *)self classificationManager];
    v44 = [(HKBloodPressureCategoryContext *)self categoryData];
    v108 = v38;
    v111 = v27;
    v45 = [v43 categoryForClassificationGuidelines:objc_msgSend(v44 systolic:"classificationGuidelines") diastolic:v38 age:{v42, v27}];

    v46 = [(HKBloodPressureCategoryContext *)self categoryData];
    v47 = [v46 identifier];
    v48 = v47;
    v49 = v31;
    if (v31 == v47)
    {
      v64 = [(HKBloodPressureCategoryContext *)self categoryData];
      [v64 identifier];
      v65 = v107 = v31;

      v49 = v107;
      if (v45 == v65)
      {
        v63 = v6;
        v70 = 0;
        v68 = v112;
        goto LABEL_27;
      }
    }

    else
    {
    }

    v66 = [(HKBloodPressureCategoryContext *)self categoryData];
    v67 = [v66 identifier];

    v68 = v112;
    if (v49 == v67)
    {
      v71 = [v6 systolicCoordinate];
      [v71 max];
      v73 = v72;
      v75 = v74;
      v76 = [v6 diastolicCoordinate];
      v77 = [v76 max];
    }

    else
    {
      v69 = [(HKBloodPressureCategoryContext *)self categoryData];
      v63 = [v69 identifier];

      if (v45 != v63)
      {
        v70 = 1;
        goto LABEL_27;
      }

      v71 = [v6 systolicCoordinate];
      [v71 min];
      v73 = v95;
      v75 = v96;
      v76 = [v6 diastolicCoordinate];
      v77 = [v76 min];
    }

    v63 = __102__HKBloodPressureCategoryContext_highlightedBloodPressureCoordinateWithCoordinate_originalCoordinate___block_invoke(v73, v75, v78, v79, v77, v112);

    v70 = 0;
LABEL_27:

    if (!v70)
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  v50 = [v7 systolicCoordinate];
  [v50 avg];
  v52 = v51;
  v54 = v53;

  v55 = [v7 diastolicCoordinate];
  [v55 avg];
  v57 = v56;
  v59 = v58;

  v60 = *(MEMORY[0x1E695EFF8] + 8);
  v61 = v52 == *MEMORY[0x1E695EFF8] && v54 == v60;
  if (v61 || v57 == *MEMORY[0x1E695EFF8] && v59 == v60)
  {
    _HKInitializeLogging();
    v62 = *MEMORY[0x1E696B988];
    if (os_log_type_enabled(*MEMORY[0x1E696B988], OS_LOG_TYPE_ERROR))
    {
      [HKBloodPressureCategoryContext highlightedBloodPressureCoordinateWithCoordinate:v62 originalCoordinate:?];
    }

    v63 = 0;
  }

  else
  {
    v80 = MEMORY[0x1E696C348];
    v81 = [MEMORY[0x1E696C510] millimeterOfMercuryUnit];
    v82 = [v7 systolicCoordinate];
    [v82 avg];
    v84 = [v80 quantityWithUnit:v81 doubleValue:v83];

    v85 = MEMORY[0x1E696C348];
    v86 = [MEMORY[0x1E696C510] millimeterOfMercuryUnit];
    v87 = [v7 diastolicCoordinate];
    [v87 avg];
    v89 = [v85 quantityWithUnit:v86 doubleValue:v88];

    v90 = [(HKBloodPressureOverlayContext *)self classificationManager];
    v91 = [(HKBloodPressureCategoryContext *)self categoryData];
    v92 = [v90 categoryForClassificationGuidelines:objc_msgSend(v91 systolic:"classificationGuidelines") diastolic:v84 age:{v89, v17}];

    v93 = [(HKBloodPressureCategoryContext *)self categoryData];
    v94 = [v93 identifier];

    if (v92 == v94)
    {
      v97 = [v6 systolicCoordinate];
      [v97 avg];
      v99 = v98;
      v101 = v100;
      v102 = [v6 diastolicCoordinate];
      v103 = [v102 avg];
      v63 = __102__HKBloodPressureCategoryContext_highlightedBloodPressureCoordinateWithCoordinate_originalCoordinate___block_invoke(v99, v101, v104, v105, v103, v10);
    }

    else
    {
      v63 = 0;
    }
  }

LABEL_32:

  return v63;
}

_HKBloodPressureCoordinate *__102__HKBloodPressureCategoryContext_highlightedBloodPressureCoordinateWithCoordinate_originalCoordinate___block_invoke(double a1, double a2, double a3, double a4, uint64_t a5, void *a6)
{
  v10 = a6;
  v11 = [[_HKBloodPressureMinMaxCoordinate alloc] initWithMin:v10 max:a1 avg:a2 userInfo:a1, a2, a1, a2];
  v12 = [[_HKBloodPressureMinMaxCoordinate alloc] initWithMin:v10 max:a3 avg:a4 userInfo:a3, a4, a3, a4];
  v13 = [[_HKBloodPressureCoordinate alloc] initWithSystolicCoordinate:v11 diastolicCoordinate:v12 userInfo:v10];

  return v13;
}

- (void)highlightedBloodPressureCoordinateWithCoordinate:(void *)a1 originalCoordinate:.cold.1(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v3 = 138543362;
  v4 = objc_opt_class();
  v2 = v4;
  _os_log_error_impl(&dword_1C3942000, v1, OS_LOG_TYPE_ERROR, "[%{public}@]: chart coordinate does not contain average values; unable to highlight average coordinate", &v3, 0xCu);
}

@end