@interface HKBloodPressureCategoryContext
- (HKBloodPressureCategoryContext)initWithMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller classificationManager:(id)manager baseDisplayType:(id)type categoryData:(id)data;
- (id)highlightedBloodPressureCoordinateWithCoordinate:(id)coordinate originalCoordinate:(id)originalCoordinate;
- (void)overlayStateWillChange:(BOOL)change contextItem:(id)item chartController:(id)controller;
- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion;
@end

@implementation HKBloodPressureCategoryContext

- (HKBloodPressureCategoryContext)initWithMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller classificationManager:(id)manager baseDisplayType:(id)type categoryData:(id)data
{
  itemsCopy = items;
  typeCopy = type;
  dataCopy = data;
  v41.receiver = self;
  v41.super_class = HKBloodPressureCategoryContext;
  v17 = [(HKBloodPressureOverlayContext *)&v41 initWithMode:mode applicationItems:itemsCopy overlayChartController:controller classificationManager:manager];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_categoryData, data);
    objc_storeStrong(&v18->_baseDisplayType, type);
    v19 = [HKBloodPressureOverlayDataSourceDelegate alloc];
    healthStore = [itemsCopy healthStore];
    v21 = [(HKBloodPressureOverlayDataSourceDelegate *)v19 initWithClassificationCategoryData:dataCopy healthStore:healthStore baseDisplayType:typeCopy];
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

    healthStore2 = [(HKBloodPressureOverlayContext *)v18 healthStore];
    v40 = 0;
    v29 = [healthStore2 dateOfBirthComponentsWithError:&v40];
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
    hk_gregorianCalendar = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
    v35 = [(HKDateCoordinateTransform *)v33 initWithCurrentCalendar:hk_gregorianCalendar];
    dateCoordinateTransform = v18->_dateCoordinateTransform;
    v18->_dateCoordinateTransform = v35;

    identifier = [(HKBloodPressureClassificationCategoryData *)v18->_categoryData identifier];
    v38 = [(HKBloodPressureOverlayContext *)v18 _bloodPressureContextItemWithCategory:identifier count:0 unitString:&stru_1F42FFBE0];
    [(HKBloodPressureOverlayContext *)v18 setLastUpdatedItem:v38];
  }

  return v18;
}

- (void)overlayStateWillChange:(BOOL)change contextItem:(id)item chartController:(id)controller
{
  changeCopy = change;
  v25 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  controllerCopy = controller;
  lastUpdatedItem = [(HKBloodPressureOverlayContext *)self lastUpdatedItem];
  v11 = [itemCopy isEqual:lastUpdatedItem];

  if (v11)
  {
    if (changeCopy)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      supportedTimeScopes = [controllerCopy supportedTimeScopes];
      v13 = [supportedTimeScopes countByEnumeratingWithState:&v20 objects:v24 count:16];
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
              objc_enumerationMutation(supportedTimeScopes);
            }

            v17 = [controllerCopy primaryGraphSeriesForTimeScope:{objc_msgSend(*(*(&v20 + 1) + 8 * v16), "integerValue")}];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v17 setSeriesHighlightDelegate:self];
            }

            ++v16;
          }

          while (v14 != v16);
          v14 = [supportedTimeScopes countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v14);
      }
    }

    selfCopy2 = self;
    v19 = changeCopy;
  }

  else
  {
    selfCopy2 = self;
    v19 = 0;
  }

  [(HKBloodPressureCategoryContext *)selfCopy2 setOverlayActivated:v19];
}

- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion
{
  intervalCopy = interval;
  controllerCopy = controller;
  completionCopy = completion;
  objc_initWeak(&location, self);
  overlayChartController = [(HKBloodPressureOverlayContext *)self overlayChartController];
  primaryDisplayType = [overlayChartController primaryDisplayType];
  v16 = [HKOverlayRoomBloodPressureViewController bloodPressureDisplayType:primaryDisplayType];

  categoryData = [(HKBloodPressureCategoryContext *)self categoryData];
  overlayChartController2 = [(HKBloodPressureOverlayContext *)self overlayChartController];
  startDate = [intervalCopy startDate];
  endDate = [intervalCopy endDate];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __117__HKBloodPressureCategoryContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke;
  v23[3] = &unk_1E81BA7A8;
  objc_copyWeak(v26, &location);
  v21 = categoryData;
  v24 = v21;
  v26[1] = scope;
  v22 = completionCopy;
  v25 = v22;
  [overlayChartController2 cachedDataForStandardDisplayType:v16 timeScope:scope resolution:0 startDate:startDate endDate:endDate completion:v23];

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

- (id)highlightedBloodPressureCoordinateWithCoordinate:(id)coordinate originalCoordinate:(id)originalCoordinate
{
  coordinateCopy = coordinate;
  originalCoordinateCopy = originalCoordinate;
  userInfo = [coordinateCopy userInfo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_28:
    identifier3 = 0;
    goto LABEL_32;
  }

  userInfo2 = [coordinateCopy userInfo];
  dateOfBirth = [(HKBloodPressureCategoryContext *)self dateOfBirth];

  if (dateOfBirth)
  {
    dateCoordinateTransform = [(HKBloodPressureCategoryContext *)self dateCoordinateTransform];
    systolicCoordinate = [originalCoordinateCopy systolicCoordinate];
    [systolicCoordinate endXValue];
    v14 = [dateCoordinateTransform valueForCoordinate:?];

    v15 = MEMORY[0x1E696AD98];
    dateOfBirth2 = [(HKBloodPressureCategoryContext *)self dateOfBirth];
    v17 = [v15 numberWithInteger:{objc_msgSend(dateOfBirth2, "hk_ageWithCurrentDate:", v14)}];
  }

  else
  {
    v17 = 0;
  }

  if (_HKBloodPressureOverlayClassificationUsesMinMax())
  {
    v112 = userInfo2;
    v18 = MEMORY[0x1E696C348];
    millimeterOfMercuryUnit = [MEMORY[0x1E696C510] millimeterOfMercuryUnit];
    systolicCoordinate2 = [originalCoordinateCopy systolicCoordinate];
    [systolicCoordinate2 max];
    v22 = [v18 quantityWithUnit:millimeterOfMercuryUnit doubleValue:v21];

    v23 = MEMORY[0x1E696C348];
    millimeterOfMercuryUnit2 = [MEMORY[0x1E696C510] millimeterOfMercuryUnit];
    diastolicCoordinate = [originalCoordinateCopy diastolicCoordinate];
    [diastolicCoordinate max];
    [v23 quantityWithUnit:millimeterOfMercuryUnit2 doubleValue:v26];
    v28 = v27 = v17;

    classificationManager = [(HKBloodPressureOverlayContext *)self classificationManager];
    categoryData = [(HKBloodPressureCategoryContext *)self categoryData];
    v109 = v28;
    v110 = v22;
    v31 = [classificationManager categoryForClassificationGuidelines:objc_msgSend(categoryData systolic:"classificationGuidelines") diastolic:v22 age:{v28, v27}];

    v32 = MEMORY[0x1E696C348];
    millimeterOfMercuryUnit3 = [MEMORY[0x1E696C510] millimeterOfMercuryUnit];
    systolicCoordinate3 = [originalCoordinateCopy systolicCoordinate];
    [systolicCoordinate3 min];
    v36 = [v32 quantityWithUnit:millimeterOfMercuryUnit3 doubleValue:v35];

    v37 = MEMORY[0x1E696C348];
    v38 = v36;
    millimeterOfMercuryUnit4 = [MEMORY[0x1E696C510] millimeterOfMercuryUnit];
    diastolicCoordinate2 = [originalCoordinateCopy diastolicCoordinate];
    [diastolicCoordinate2 min];
    v42 = [v37 quantityWithUnit:millimeterOfMercuryUnit4 doubleValue:v41];

    classificationManager2 = [(HKBloodPressureOverlayContext *)self classificationManager];
    categoryData2 = [(HKBloodPressureCategoryContext *)self categoryData];
    v108 = v38;
    v111 = v27;
    v45 = [classificationManager2 categoryForClassificationGuidelines:objc_msgSend(categoryData2 systolic:"classificationGuidelines") diastolic:v38 age:{v42, v27}];

    categoryData3 = [(HKBloodPressureCategoryContext *)self categoryData];
    identifier = [categoryData3 identifier];
    v48 = identifier;
    v49 = v31;
    if (v31 == identifier)
    {
      categoryData4 = [(HKBloodPressureCategoryContext *)self categoryData];
      [categoryData4 identifier];
      v65 = v107 = v31;

      v49 = v107;
      if (v45 == v65)
      {
        identifier3 = coordinateCopy;
        v70 = 0;
        v68 = v112;
        goto LABEL_27;
      }
    }

    else
    {
    }

    categoryData5 = [(HKBloodPressureCategoryContext *)self categoryData];
    identifier2 = [categoryData5 identifier];

    v68 = v112;
    if (v49 == identifier2)
    {
      systolicCoordinate4 = [coordinateCopy systolicCoordinate];
      [systolicCoordinate4 max];
      v73 = v72;
      v75 = v74;
      diastolicCoordinate3 = [coordinateCopy diastolicCoordinate];
      v77 = [diastolicCoordinate3 max];
    }

    else
    {
      categoryData6 = [(HKBloodPressureCategoryContext *)self categoryData];
      identifier3 = [categoryData6 identifier];

      if (v45 != identifier3)
      {
        v70 = 1;
        goto LABEL_27;
      }

      systolicCoordinate4 = [coordinateCopy systolicCoordinate];
      [systolicCoordinate4 min];
      v73 = v95;
      v75 = v96;
      diastolicCoordinate3 = [coordinateCopy diastolicCoordinate];
      v77 = [diastolicCoordinate3 min];
    }

    identifier3 = __102__HKBloodPressureCategoryContext_highlightedBloodPressureCoordinateWithCoordinate_originalCoordinate___block_invoke(v73, v75, v78, v79, v77, v112);

    v70 = 0;
LABEL_27:

    if (!v70)
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  systolicCoordinate5 = [originalCoordinateCopy systolicCoordinate];
  [systolicCoordinate5 avg];
  v52 = v51;
  v54 = v53;

  diastolicCoordinate4 = [originalCoordinateCopy diastolicCoordinate];
  [diastolicCoordinate4 avg];
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

    identifier3 = 0;
  }

  else
  {
    v80 = MEMORY[0x1E696C348];
    millimeterOfMercuryUnit5 = [MEMORY[0x1E696C510] millimeterOfMercuryUnit];
    systolicCoordinate6 = [originalCoordinateCopy systolicCoordinate];
    [systolicCoordinate6 avg];
    v84 = [v80 quantityWithUnit:millimeterOfMercuryUnit5 doubleValue:v83];

    v85 = MEMORY[0x1E696C348];
    millimeterOfMercuryUnit6 = [MEMORY[0x1E696C510] millimeterOfMercuryUnit];
    diastolicCoordinate5 = [originalCoordinateCopy diastolicCoordinate];
    [diastolicCoordinate5 avg];
    v89 = [v85 quantityWithUnit:millimeterOfMercuryUnit6 doubleValue:v88];

    classificationManager3 = [(HKBloodPressureOverlayContext *)self classificationManager];
    categoryData7 = [(HKBloodPressureCategoryContext *)self categoryData];
    v92 = [classificationManager3 categoryForClassificationGuidelines:objc_msgSend(categoryData7 systolic:"classificationGuidelines") diastolic:v84 age:{v89, v17}];

    categoryData8 = [(HKBloodPressureCategoryContext *)self categoryData];
    identifier4 = [categoryData8 identifier];

    if (v92 == identifier4)
    {
      systolicCoordinate7 = [coordinateCopy systolicCoordinate];
      [systolicCoordinate7 avg];
      v99 = v98;
      v101 = v100;
      diastolicCoordinate6 = [coordinateCopy diastolicCoordinate];
      v103 = [diastolicCoordinate6 avg];
      identifier3 = __102__HKBloodPressureCategoryContext_highlightedBloodPressureCoordinateWithCoordinate_originalCoordinate___block_invoke(v99, v101, v104, v105, v103, userInfo2);
    }

    else
    {
      identifier3 = 0;
    }
  }

LABEL_32:

  return identifier3;
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