@interface HKBloodPressureClassificationContext
- (HKBloodPressureClassificationContext)initWithMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller classificationManager:(id)manager delegate:(id)delegate;
- (HKBloodPressureClassificationContextDelegate)delegate;
- (id)_prevailingCategoryForCountedCategories:(id)categories classificationManager:(id)manager guidelines:(int64_t)guidelines;
- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion;
@end

@implementation HKBloodPressureClassificationContext

- (HKBloodPressureClassificationContext)initWithMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller classificationManager:(id)manager delegate:(id)delegate
{
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = HKBloodPressureClassificationContext;
  v13 = [(HKBloodPressureOverlayContext *)&v16 initWithMode:mode applicationItems:items overlayChartController:controller classificationManager:manager];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_delegate, delegateCopy);
  }

  return v14;
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

  overlayChartController2 = [(HKBloodPressureOverlayContext *)self overlayChartController];
  startDate = [intervalCopy startDate];
  endDate = [intervalCopy endDate];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __123__HKBloodPressureClassificationContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke;
  v21[3] = &unk_1E81BA780;
  objc_copyWeak(&v23, &location);
  v21[4] = self;
  v20 = completionCopy;
  v22 = v20;
  [overlayChartController2 cachedDataForStandardDisplayType:v16 timeScope:scope resolution:0 startDate:startDate endDate:endDate completion:v21];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __123__HKBloodPressureClassificationContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = [WeakRetained healthStore];
  v19 = v8;
  v11 = [v10 dateOfBirthComponentsWithError:&v19];
  v12 = v19;

  if (!v11)
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x1E696B988];
    if (os_log_type_enabled(*MEMORY[0x1E696B988], OS_LOG_TYPE_ERROR))
    {
      [(HKPopulationNormsAbstractViewModel *)v12 currentAgeInYears];
      if (!a3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  if (a3)
  {
LABEL_4:
    v14 = [WeakRetained classificationManager];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __123__HKBloodPressureClassificationContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke_429;
    v15[3] = &unk_1E81BA758;
    v15[4] = *(a1 + 32);
    v16 = v7;
    v17 = WeakRetained;
    v18 = v11;
    [v14 currentClassificationGuidelinesWithCompletionHandler:v15];
  }

LABEL_5:
  (*(*(a1 + 40) + 16))();
}

void __123__HKBloodPressureClassificationContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke_429(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) classificationManager];
  v7 = [v4 _countedCategoriesForChartPoints:v5 classificationManager:v6 guidelines:a2 dateOfBirth:*(a1 + 56) includeMinCategories:0];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 48) classificationManager];
  v10 = [v8 _prevailingCategoryForCountedCategories:v7 classificationManager:v9 guidelines:a2];

  if (v10)
  {
    v11 = [*(a1 + 48) classificationManager];
    v12 = [v11 categoryDataForCategory:v10 error:0];

    if (v12)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __123__HKBloodPressureClassificationContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke_2;
      v13[3] = &unk_1E81B5AD0;
      v13[4] = *(a1 + 48);
      v14 = v12;
      dispatch_async(MEMORY[0x1E69E96A0], v13);
    }
  }
}

void __123__HKBloodPressureClassificationContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 contextDidUpdate:*(a1 + 32) withCategoryData:*(a1 + 40)];
}

- (id)_prevailingCategoryForCountedCategories:(id)categories classificationManager:(id)manager guidelines:(int64_t)guidelines
{
  v26 = *MEMORY[0x1E69E9840];
  categoriesCopy = categories;
  managerCopy = manager;
  v9 = [managerCopy categoriesForClassificationGuidelines:guidelines error:0];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = v10;
  v12 = 0;
  firstObject = 0;
  v14 = *v22;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v22 != v14)
      {
        objc_enumerationMutation(v9);
      }

      v16 = *(*(&v21 + 1) + 8 * i);
      if ([categoriesCopy containsObject:v16])
      {
        v17 = [categoriesCopy countForObject:v16];
        if (v17 >= v12)
        {
          v18 = v17;
          v19 = v16;

          v12 = v18;
          firstObject = v19;
        }
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v11);
  if (!firstObject)
  {
LABEL_12:
    firstObject = [v9 firstObject];
  }

  return firstObject;
}

- (HKBloodPressureClassificationContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end