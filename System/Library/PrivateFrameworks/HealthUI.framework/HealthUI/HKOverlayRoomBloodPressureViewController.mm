@interface HKOverlayRoomBloodPressureViewController
+ (id)bloodPressureDisplayType:(id)a3;
- (BOOL)_hasCategoryOverlays;
- (BOOL)_healthFactorsIncludesPregnancy;
- (BOOL)infographicSupportedForDisplayType:(id)a3 healthStore:(id)a4;
- (BOOL)supportsShowAllFilters;
- (HKOverlayRoomBloodPressureViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 factorDisplayTypes:(id)a5 mode:(int64_t)a6 classificationAgeGated:(BOOL)a7;
- (id)_bloodPressureCategoryContextItemsForGuidelines:(int64_t)a3 mode:(int64_t)a4 applicationItems:(id)a5 overlayChartController:(id)a6;
- (id)_configureContextSectionsForFullModeWithApplicationItems:(id)a3 overlayChartController:(id)a4;
- (id)_configureContextSectionsForSingleModeWithApplicationItems:(id)a3 overlayChartController:(id)a4;
- (id)_infographicSectionForGuidelines:(int64_t)a3 sectionTitle:(id)a4;
- (id)_pregnancyHealthFactorDisplayType;
- (id)contextSectionContainersForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5;
- (id)controllerTitleWithApplicationItems:(id)a3;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5;
- (id)infographicViewControllerForDisplayType:(id)a3 healthStore:(id)a4;
- (id)primaryDisplayTypeWithApplicationItems:(id)a3;
- (id)showAllFiltersButtonTitle;
- (id)stringForValueRange:(id)a3 timeScope:(int64_t)a4;
- (int64_t)_indexOfClassificationCategory:(id)a3 withContextItems:(id)a4;
- (void)_retrievePreferredClassificationGuidelinesIfNecessaryWithCompletion:(id)a3;
- (void)contextDidUpdate:(id)a3 withCategoryData:(id)a4;
- (void)dealloc;
- (void)didChangeFromContextItem:(id)a3 toContextItem:(id)a4;
- (void)didUpdatePreferredClassificationGuidelines:(id)a3;
- (void)viewDidLoad;
@end

@implementation HKOverlayRoomBloodPressureViewController

- (HKOverlayRoomBloodPressureViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 factorDisplayTypes:(id)a5 mode:(int64_t)a6 classificationAgeGated:(BOOL)a7
{
  v12 = a4;
  v21.receiver = self;
  v21.super_class = HKOverlayRoomBloodPressureViewController;
  v13 = [(HKOverlayRoomViewController *)&v21 initWithDisplayDate:a3 applicationItems:v12 factorDisplayTypes:a5 mode:a6];
  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x1E696BF60]);
    v15 = [v12 healthStore];
    v16 = [v14 initWithHealthStore:v15];
    classificationManager = v13->_classificationManager;
    v13->_classificationManager = v16;

    v13->_isClassificationAgeGated = a7;
    v13->_hasRetrievedPreferredClassificationGuidelines = 0;
    preferredContextLocation = v13->_preferredContextLocation;
    v13->_preferredContextLocation = 0;

    customBloodPressureFormatter = v13->_customBloodPressureFormatter;
    v13->_customBloodPressureFormatter = 0;

    [(HKOverlayRoomViewController *)v13 setShouldSelectInitialOverlay:0];
  }

  return v13;
}

- (void)dealloc
{
  [(HKBloodPressureClassificationManager *)self->_classificationManager stopObserving:self];
  v3.receiver = self;
  v3.super_class = HKOverlayRoomBloodPressureViewController;
  [(HKOverlayRoomViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  [(HKOverlayRoomBloodPressureViewController *)self _retrievePreferredClassificationGuidelinesIfNecessaryWithCompletion:0];
  [(HKBloodPressureClassificationManager *)self->_classificationManager startObserving:self];
  v3.receiver = self;
  v3.super_class = HKOverlayRoomBloodPressureViewController;
  [(HKOverlayRoomViewController *)&v3 viewDidLoad];
}

- (id)controllerTitleWithApplicationItems:(id)a3
{
  v3 = HKHealthKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"BLOOD_PRESSURE" value:&stru_1F42FFBE0 table:*MEMORY[0x1E696B910]];

  return v4;
}

- (id)showAllFiltersButtonTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"SHOW_ALL_BLOOD_PRESSURE_RANGES" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chutney"];

  return v3;
}

- (BOOL)supportsShowAllFilters
{
  v3 = [(HKOverlayRoomBloodPressureViewController *)self _hasCategoryOverlays];
  v5.receiver = self;
  v5.super_class = HKOverlayRoomBloodPressureViewController;
  return [(HKOverlayRoomViewController *)&v5 supportsShowAllFilters]&& v3;
}

- (id)primaryDisplayTypeWithApplicationItems:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HKCustomBloodPressureFormatter);
  [(HKOverlayRoomBloodPressureViewController *)self setCustomBloodPressureFormatter:v5];

  v6 = [MEMORY[0x1E696C2E0] correlationTypeForIdentifier:*MEMORY[0x1E696B730]];
  v7 = [(HKOverlayRoomViewController *)self applicationItems];
  v8 = [v7 displayTypeController];
  v9 = [v8 displayTypeForObjectType:v6];

  v10 = [v9 displayCategory];
  v11 = [v4 unitController];
  v12 = [v4 chartDataCacheController];

  v13 = [v9 hk_standardSeriesForTimeScope:5 displayCategory:v10 unitController:v11 dataCacheController:v12];

  v14 = [HKInteractiveChartDisplayType alloc];
  v15 = [(HKOverlayRoomBloodPressureViewController *)self customBloodPressureFormatter];
  v16 = [(HKInteractiveChartDisplayType *)v14 initWithGraphSeries:v13 baseDisplayType:v9 valueFormatter:v15 dataTypeCode:80];

  return v16;
}

- (id)contextSectionContainersForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if ((a3 - 1) < 2)
  {
    v10 = [(HKOverlayRoomBloodPressureViewController *)self _configureContextSectionsForSingleModeWithApplicationItems:v8 overlayChartController:v9];
    v11 = [[HKOverlayContextSectionContainer alloc] initWithContainerTitle:0 overlayContextSections:v10];
    v16[0] = v11;
    v12 = v16;
LABEL_5:
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

    goto LABEL_7;
  }

  if (a3 == 3)
  {
    v10 = [(HKOverlayRoomBloodPressureViewController *)self _configureContextSectionsForFullModeWithApplicationItems:v8 overlayChartController:v9];
    v11 = [[HKOverlayContextSectionContainer alloc] initWithContainerTitle:0 overlayContextSections:v10];
    v15 = v11;
    v12 = &v15;
    goto LABEL_5;
  }

  v13 = MEMORY[0x1E695E0F0];
LABEL_7:

  return v13;
}

- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [HKOverlayRoomBloodPressureViewController alloc];
  v11 = [(HKOverlayRoomViewController *)self factorDisplayTypes];
  v12 = [(HKOverlayRoomBloodPressureViewController *)v10 initWithDisplayDate:v9 applicationItems:v8 factorDisplayTypes:v11 mode:a3 classificationAgeGated:[(HKOverlayRoomBloodPressureViewController *)self isClassificationAgeGated]];

  [(HKOverlayRoomViewController *)v12 setAdditionalChartOptions:[(HKOverlayRoomViewController *)self filteredInteractiveChartOptionsForMode:a3]];
  if (a3 == 3)
  {
    v13 = [(HKOverlayRoomBloodPressureViewController *)self initialCategoryData];
    [(HKOverlayRoomBloodPressureViewController *)v12 setInitialCategoryData:v13];

    [(HKOverlayRoomBloodPressureViewController *)v12 setHasRetrievedPreferredClassificationGuidelines:[(HKOverlayRoomBloodPressureViewController *)self hasRetrievedPreferredClassificationGuidelines]];
    [(HKOverlayRoomBloodPressureViewController *)v12 setPreferredClassificationGuidelines:[(HKOverlayRoomBloodPressureViewController *)self preferredClassificationGuidelines]];
  }

  return v12;
}

- (id)createChartOverlayViewController
{
  v5.receiver = self;
  v5.super_class = HKOverlayRoomBloodPressureViewController;
  v3 = [(HKOverlayRoomViewController *)&v5 createChartOverlayViewController];
  [v3 setCurrentValueViewDataSourceDelegate:self];

  return v3;
}

- (id)stringForValueRange:(id)a3 timeScope:(int64_t)a4
{
  v6 = a3;
  v7 = [(HKOverlayRoomViewController *)self chartController];
  v8 = [v7 stringForValueRange:v6 timeScope:a4];

  return v8;
}

+ (id)bloodPressureDisplayType:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    while (1)
    {
      v5 = v4;
      v4 = [v5 baseDisplayType];

      if (!v4)
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v4 = v5;
  }

LABEL_7:

  return v4;
}

- (BOOL)infographicSupportedForDisplayType:(id)a3 healthStore:(id)a4
{
  v5 = a3;
  v6 = [(HKOverlayRoomViewController *)self primaryDisplayType];
  v7 = [v5 isEqual:v6];

  if (!v7)
  {
    return 0;
  }

  return [(HKOverlayRoomBloodPressureViewController *)self _hasCategoryOverlays];
}

- (id)infographicViewControllerForDisplayType:(id)a3 healthStore:(id)a4
{
  v5 = a3;
  v6 = [(HKOverlayRoomViewController *)self primaryDisplayType];
  v7 = [v5 isEqual:v6];

  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = [(HKOverlayRoomBloodPressureViewController *)self hasRetrievedPreferredClassificationGuidelines];

  if (!v8)
  {
    v13 = 0;
    goto LABEL_19;
  }

  v9 = [(HKOverlayRoomBloodPressureViewController *)self preferredClassificationGuidelines];
  v10 = [(HKOverlayRoomBloodPressureViewController *)self _healthFactorsIncludesPregnancy];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (![(HKOverlayRoomBloodPressureViewController *)self isClassificationAgeGated])
  {
    if (v10)
    {
      v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v12 = [v11 localizedStringForKey:@"BLOOD_PRESSURE_CLASSIFICATION_CONTEXT_SECTION_GENERAL_CLASSIFICATIONS_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chutney"];
    }

    else
    {
      v12 = 0;
    }

    v14 = [(HKOverlayRoomBloodPressureViewController *)self _infographicSectionForGuidelines:v9 sectionTitle:v12];
    if (v14)
    {
      [v6 addObject:v14];
    }
  }

  if (v10)
  {
    v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v16 = [v15 localizedStringForKey:@"BLOOD_PRESSURE_CLASSIFICATION_CONTEXT_SECTION_PREGNANCY_CLASSIFICATIONS_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chutney"];

    v17 = [(HKOverlayRoomBloodPressureViewController *)self _infographicSectionForGuidelines:2 sectionTitle:v16];
    if (v17)
    {
      [v6 addObject:v17];
    }
  }

  if ([v6 count])
  {
    v18 = [[HKInfographicViewController alloc] initWithSections:v6 tableViewStyle:2];
    v19 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v20 = [v19 localizedStringForKey:@"BLOOD_PRESSURE_CLASSIFICATION_INFOGRAPHIC_VIEW_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chutney"];
    [(HKInfographicViewController *)v18 setTitle:v20];

    v13 = [[HKModalNavigationController alloc] initWithRootViewController:v18];
  }

  else
  {
LABEL_17:
    v13 = 0;
  }

LABEL_19:

  return v13;
}

- (void)didChangeFromContextItem:(id)a3 toContextItem:(id)a4
{
  v6 = [(HKOverlayRoomBloodPressureViewController *)self customBloodPressureFormatter];

  if (v6)
  {
    v7 = [(HKOverlayRoomBloodPressureViewController *)self customBloodPressureFormatter];
    [v7 setContextOverlaySelected:a4 != 0];
  }
}

- (id)_configureContextSectionsForSingleModeWithApplicationItems:(id)a3 overlayChartController:(id)a4
{
  v28[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (self->_isClassificationAgeGated)
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v9 = [(HKOverlayRoomViewController *)self primaryDisplayType];
    v10 = [HKOverlayRoomBloodPressureViewController bloodPressureDisplayType:v9];

    v11 = [(HKOverlayRoomBloodPressureViewController *)self initialCategoryData];

    if (v11)
    {
      v12 = [(HKOverlayRoomBloodPressureViewController *)self initialCategoryData];
      v13 = [v12 classificationGuidelines];

      if (v13 == 2 && ([(HKOverlayRoomBloodPressureViewController *)self _pregnancyHealthFactorDisplayType], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v15 = v14;
        v16 = [HKBloodPressureCategoryFactorContext alloc];
        v17 = [(HKOverlayRoomBloodPressureViewController *)self classificationManager];
        v18 = [(HKOverlayRoomBloodPressureViewController *)self initialCategoryData];
        v19 = [(HKBloodPressureCategoryFactorContext *)v16 initWithMode:1 applicationItems:v6 overlayChartController:v7 classificationManager:v17 baseDisplayType:v10 factorDisplayType:v15 categoryData:v18];
      }

      else
      {
        v20 = [HKBloodPressureCategoryContext alloc];
        v15 = [(HKOverlayRoomBloodPressureViewController *)self classificationManager];
        v17 = [(HKOverlayRoomBloodPressureViewController *)self initialCategoryData];
        v19 = [(HKBloodPressureCategoryContext *)v20 initWithMode:1 applicationItems:v6 overlayChartController:v7 classificationManager:v15 baseDisplayType:v10 categoryData:v17];
      }
    }

    else
    {
      v21 = [HKBloodPressureClassificationContext alloc];
      v15 = [(HKOverlayRoomBloodPressureViewController *)self classificationManager];
      v19 = [(HKBloodPressureClassificationContext *)v21 initWithMode:1 applicationItems:v6 overlayChartController:v7 classificationManager:v15 delegate:self];
    }

    v22 = [[HKOverlayContextLocation alloc] initWithContainerIndex:0 sectionIndex:0 itemIndex:0];
    [(HKOverlayRoomBloodPressureViewController *)self setPreferredContextLocation:v22];

    v23 = [HKOverlayContextSection alloc];
    v28[0] = v19;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    v25 = [(HKOverlayContextSection *)v23 initWithSectionTitle:0 overlayContextItems:v24];

    v27 = v25;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  }

  return v8;
}

- (id)_configureContextSectionsForFullModeWithApplicationItems:(id)a3 overlayChartController:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(HKOverlayRoomBloodPressureViewController *)self hasRetrievedPreferredClassificationGuidelines])
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([(HKOverlayRoomViewController *)self healthFactorsEnabled]&& [(HKOverlayRoomBloodPressureViewController *)self _healthFactorsIncludesPregnancy]&& [(HKOverlayRoomBloodPressureViewController *)self preferredClassificationGuidelines]!= 2)
    {
      v29 = [(HKOverlayRoomBloodPressureViewController *)self _bloodPressureCategoryContextItemsForGuidelines:2 mode:3 applicationItems:v6 overlayChartController:v7];
      v30 = [HKOverlayContextSection alloc];
      v31 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v32 = [v31 localizedStringForKey:@"BLOOD_PRESSURE_CLASSIFICATION_CONTEXT_SECTION_PREGNANCY_CLASSIFICATIONS_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chutney"];
      v33 = [(HKOverlayContextSection *)v30 initWithSectionTitle:v32 overlayContextItems:v29];

      [v8 addObject:v33];
      v9 = v33 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (![(HKOverlayRoomBloodPressureViewController *)self isClassificationAgeGated])
    {
      v10 = [(HKOverlayRoomBloodPressureViewController *)self _bloodPressureCategoryContextItemsForGuidelines:[(HKOverlayRoomBloodPressureViewController *)self preferredClassificationGuidelines] mode:3 applicationItems:v6 overlayChartController:v7];
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v11 = [v15 localizedStringForKey:@"BLOOD_PRESSURE_CLASSIFICATION_CONTEXT_SECTION_GENERAL_CLASSIFICATIONS_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chutney"];
      }

      v16 = [[HKOverlayContextSection alloc] initWithSectionTitle:v11 overlayContextItems:v10];
      v17 = [(HKOverlayRoomBloodPressureViewController *)self initialCategoryData];
      if (v17 && (v18 = v17, -[HKOverlayRoomBloodPressureViewController initialCategoryData](self, "initialCategoryData"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 classificationGuidelines], v19, v18, v20 == 2))
      {
        [v8 addObject:v16];
      }

      else
      {
        [v8 insertObject:v16 atIndex:0];
      }
    }

    v21 = [(HKOverlayRoomBloodPressureViewController *)self initialCategoryData];

    if (v21)
    {
      v22 = [(HKOverlayRoomBloodPressureViewController *)self initialCategoryData];
      v23 = [v22 identifier];

      if (![v8 count])
      {
        goto LABEL_27;
      }

      v24 = 0;
      while (1)
      {
        v25 = [v8 objectAtIndexedSubscript:v24];
        v26 = [v25 overlayContextItems];
        v27 = [(HKOverlayRoomBloodPressureViewController *)self _indexOfClassificationCategory:v23 withContextItems:v26];

        if (v27 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (++v24 >= [v8 count])
        {
          goto LABEL_27;
        }
      }

      if (v24 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v34 = [[HKOverlayContextLocation alloc] initWithContainerIndex:0 sectionIndex:v24 itemIndex:v27];
        [(HKOverlayRoomBloodPressureViewController *)self setPreferredContextLocation:v34];
      }

      else
      {
LABEL_27:
        [(HKOverlayRoomBloodPressureViewController *)self setPreferredContextLocation:0];
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v12 = HKLogWellnessDashboard();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);

    if (v13)
    {
      v14 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [HKOverlayRoomBloodPressureViewController _configureContextSectionsForFullModeWithApplicationItems:v14 overlayChartController:?];
      }
    }

    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __124__HKOverlayRoomBloodPressureViewController__configureContextSectionsForFullModeWithApplicationItems_overlayChartController___block_invoke;
    v35[3] = &unk_1E81B69E8;
    v35[4] = self;
    [(HKOverlayRoomBloodPressureViewController *)self _retrievePreferredClassificationGuidelinesIfNecessaryWithCompletion:v35];
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (id)_bloodPressureCategoryContextItemsForGuidelines:(int64_t)a3 mode:(int64_t)a4 applicationItems:(id)a5 overlayChartController:(id)a6
{
  v41 = *MEMORY[0x1E69E9840];
  v34 = a5;
  v33 = a6;
  classificationManager = self->_classificationManager;
  v39 = 0;
  v11 = [(HKBloodPressureClassificationManager *)classificationManager categoriesForClassificationGuidelines:a3 error:&v39];
  v12 = v39;
  if (v11)
  {
    v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v29 = v12;
    if (a3 == 2)
    {
      v13 = [(HKOverlayRoomBloodPressureViewController *)self _pregnancyHealthFactorDisplayType];
    }

    else
    {
      v13 = 0;
    }

    v14 = [(HKOverlayRoomViewController *)self primaryDisplayType];
    v15 = [HKOverlayRoomBloodPressureViewController bloodPressureDisplayType:v14];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v30 = v11;
    obj = v11;
    v16 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v36;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v36 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v35 + 1) + 8 * i);
          v21 = [(HKOverlayRoomBloodPressureViewController *)self classificationManager];
          v22 = [v21 categoryDataForCategory:v20 error:0];

          if (v13)
          {
            v23 = [HKBloodPressureCategoryFactorContext alloc];
            v24 = [(HKOverlayRoomBloodPressureViewController *)self classificationManager];
            v25 = [(HKBloodPressureCategoryFactorContext *)v23 initWithMode:a4 applicationItems:v34 overlayChartController:v33 classificationManager:v24 baseDisplayType:v15 factorDisplayType:v13 categoryData:v22];
          }

          else
          {
            v26 = [HKBloodPressureCategoryContext alloc];
            v24 = [(HKOverlayRoomBloodPressureViewController *)self classificationManager];
            v25 = [(HKBloodPressureCategoryContext *)v26 initWithMode:a4 applicationItems:v34 overlayChartController:v33 classificationManager:v24 baseDisplayType:v15 categoryData:v22];
          }

          v27 = v25;

          [v32 addObject:v27];
        }

        v17 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v17);
    }

    v12 = v29;
    v11 = v30;
  }

  else
  {
    _HKInitializeLogging();
    v13 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [HKOverlayRoomBloodPressureViewController _bloodPressureCategoryContextItemsForGuidelines:v12 mode:v13 applicationItems:? overlayChartController:?];
    }

    v32 = MEMORY[0x1E695E0F0];
  }

  return v32;
}

- (int64_t)_indexOfClassificationCategory:(id)a3 withContextItems:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    v7 = 0;
    while (1)
    {
      v8 = [v6 objectAtIndexedSubscript:v7];
      v9 = [v8 categoryData];
      v10 = [v9 identifier];
      v11 = [v10 isEqualToString:v5];

      if (v11)
      {
        break;
      }

      if ([v6 count] <= ++v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (BOOL)_hasCategoryOverlays
{
  if ([(HKOverlayRoomViewController *)self healthFactorsEnabled])
  {
    return 1;
  }

  else
  {
    return ![(HKOverlayRoomBloodPressureViewController *)self isClassificationAgeGated];
  }
}

- (BOOL)_healthFactorsIncludesPregnancy
{
  v2 = [(HKOverlayRoomBloodPressureViewController *)self _pregnancyHealthFactorDisplayType];
  v3 = v2 != 0;

  return v3;
}

- (id)_pregnancyHealthFactorDisplayType
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(HKOverlayRoomViewController *)self factorDisplayTypes];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 displayTypeIdentifier] == 191)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)_retrievePreferredClassificationGuidelinesIfNecessaryWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HKOverlayRoomBloodPressureViewController *)self hasRetrievedPreferredClassificationGuidelines];
  if (v4 && v5)
  {
    v4[2](v4, [(HKOverlayRoomBloodPressureViewController *)self preferredClassificationGuidelines]);
  }

  objc_initWeak(&location, self);
  v6 = [(HKOverlayRoomBloodPressureViewController *)self classificationManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __112__HKOverlayRoomBloodPressureViewController__retrievePreferredClassificationGuidelinesIfNecessaryWithCompletion___block_invoke;
  v8[3] = &unk_1E81BAE68;
  objc_copyWeak(&v10, &location);
  v7 = v4;
  v9 = v7;
  [v6 preferredClassificationGuidelinesWithCompletionHandler:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __112__HKOverlayRoomBloodPressureViewController__retrievePreferredClassificationGuidelinesIfNecessaryWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__HKOverlayRoomBloodPressureViewController__retrievePreferredClassificationGuidelinesIfNecessaryWithCompletion___block_invoke_2;
  block[3] = &unk_1E81BAE40;
  block[4] = WeakRetained;
  v7 = a2;
  v6 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __112__HKOverlayRoomBloodPressureViewController__retrievePreferredClassificationGuidelinesIfNecessaryWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setPreferredClassificationGuidelines:*(a1 + 48)];
  [*(a1 + 32) setHasRetrievedPreferredClassificationGuidelines:1];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (id)_infographicSectionForGuidelines:(int64_t)a3 sectionTitle:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(HKBloodPressureClassificationManager *)self->_classificationManager categoriesForClassificationGuidelines:a3 error:0];
  v34 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count") + 1}];
  v31 = a3;
  v30 = [HKBloodPressureClassificationUtilities localizedStringForBloodPressureClassificationGuidelinesInfographicDescription:a3];
  v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v30];
  v32 = v6;
  if (v6)
  {
    v9 = objc_alloc(MEMORY[0x1E696AAB0]);
    v10 = HKInteractiveChartInfographicTitleAttributes();
    v11 = [v9 initWithString:v6 attributes:v10];

    v12 = [[HKInfographicContentItem alloc] initWithTitle:v11 description:v8];
  }

  else
  {
    v12 = [[HKInfographicTextItem alloc] initWithDescription:v8];
  }

  v28 = v12;
  v29 = v8;
  [v34 addObject:v12];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v7;
  v13 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v36;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v35 + 1) + 8 * i);
        v18 = [HKBloodPressureClassificationUtilities localizedStringForBloodPressureClassificationCategoryInfographicTitle:v17];
        v19 = [HKBloodPressureClassificationUtilities localizedStringForBloodPressureClassificationCategoryInfographicDescription:v17];
        v20 = objc_alloc(MEMORY[0x1E696AAB0]);
        v21 = HKInteractiveChartInfographicTitleAttributes();
        v22 = [v20 initWithString:v18 attributes:v21];

        v23 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v19];
        v24 = [[HKInfographicContentItem alloc] initWithTitle:v22 description:v23];
        [v34 addObject:v24];
      }

      v14 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v14);
  }

  v25 = [HKBloodPressureClassificationUtilities localizedStringForBloodPressureClassificationGuidelinesInfographicReference:v31];
  v26 = [[HKInfographicSection alloc] initWithItems:v34 footer:v25];

  return v26;
}

- (void)contextDidUpdate:(id)a3 withCategoryData:(id)a4
{
  v6 = a4;
  v5 = [(HKOverlayRoomBloodPressureViewController *)self initialCategoryData];

  if (!v5)
  {
    [(HKOverlayRoomBloodPressureViewController *)self setInitialCategoryData:v6];
    [(HKOverlayRoomViewController *)self reloadOverlayContextItems];
  }
}

- (void)didUpdatePreferredClassificationGuidelines:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__HKOverlayRoomBloodPressureViewController_didUpdatePreferredClassificationGuidelines___block_invoke;
  block[3] = &unk_1E81B55A8;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __87__HKOverlayRoomBloodPressureViewController_didUpdatePreferredClassificationGuidelines___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) preferredClassificationGuidelines];
  [*(a1 + 32) setHasRetrievedPreferredClassificationGuidelines:0];
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __87__HKOverlayRoomBloodPressureViewController_didUpdatePreferredClassificationGuidelines___block_invoke_2;
  v5[3] = &unk_1E81BAE90;
  v5[4] = v3;
  v5[5] = v2;
  return [v3 _retrievePreferredClassificationGuidelinesIfNecessaryWithCompletion:v5];
}

uint64_t __87__HKOverlayRoomBloodPressureViewController_didUpdatePreferredClassificationGuidelines___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (*(result + 40) != a2)
  {
    v3 = result;
    [*(result + 32) setInitialCategoryData:0];
    [*(v3 + 32) setPreferredContextLocation:0];
    v4 = *(v3 + 32);

    return [v4 reloadOverlayContextItems];
  }

  return result;
}

- (void)_configureContextSectionsForFullModeWithApplicationItems:(uint64_t)a1 overlayChartController:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 138543362;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_debug_impl(&dword_1C3942000, a2, OS_LOG_TYPE_DEBUG, "[%{public}@]: Preferred guidelines not retrieved yet. Deferring creation of context sections for full mode.", &v4, 0xCu);
}

- (void)_bloodPressureCategoryContextItemsForGuidelines:(NSObject *)a3 mode:applicationItems:overlayChartController:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 138543618;
  v7 = objc_opt_class();
  v8 = 2114;
  v9 = a2;
  v5 = v7;
  _os_log_error_impl(&dword_1C3942000, a3, OS_LOG_TYPE_ERROR, "[%{public}@]: Error retrieving classification categories for guidelines: %{public}@", &v6, 0x16u);
}

@end