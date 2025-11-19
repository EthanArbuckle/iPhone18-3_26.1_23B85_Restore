@interface HKPopulationNormsAbstractViewModel
- (HKPopulationNormsAbstractViewModel)initWithHealthStore:(id)a3;
- (id)currentAgeInYears;
- (id)currentLocalizedClassificationDescription;
- (id)currentLocalizedClassificationName;
- (id)currentLocalizedClassificationTitle;
- (id)localizedBiologicalSexTitles;
- (id)userAgeBucketIndex;
- (id)userLatestSampleValue;
- (int64_t)_biologicalSexForSexSegmentIndex:(unint64_t)a3;
- (int64_t)currentBiologicalSex;
- (unint64_t)_biologicalSexSegmentIndexForSex:(int64_t)a3;
- (unint64_t)currentBiologicalSexSegmentIndex;
- (unint64_t)currentClassificationIndex;
- (void)_requireConcreteImplementationOfSelector:(SEL)a3;
- (void)clearUserCharacteristicCache;
- (void)currentAgeInYears;
- (void)currentBiologicalSexSegmentIndex;
- (void)prepareUserCharacteristicCacheWithHandler:(id)a3;
- (void)setBiologicalSexSegmentIndex:(unint64_t)a3;
- (void)setClassificationIndex:(unint64_t)a3;
@end

@implementation HKPopulationNormsAbstractViewModel

- (HKPopulationNormsAbstractViewModel)initWithHealthStore:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HKPopulationNormsAbstractViewModel;
  v6 = [(HKPopulationNormsAbstractViewModel *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, a3);
    v8 = dispatch_get_global_queue(21, 0);
    sampleQueryQueue = v7->_sampleQueryQueue;
    v7->_sampleQueryQueue = v8;
  }

  return v7;
}

- (void)_requireConcreteImplementationOfSelector:(SEL)a3
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D920];
  v6 = NSStringFromSelector(a3);
  [v4 raise:v5 format:{@"-[%@ %@] not implemented", self, v6}];
}

- (id)localizedBiologicalSexTitles
{
  v10[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"BIOLOGICAL_SEX_FEMALE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-CardioFitness"];
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:{@"com.apple.HealthUI", v3}];
  v5 = [v4 localizedStringForKey:@"BIOLOGICAL_SEX_MALE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-CardioFitness"];
  v10[1] = v5;
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"BIOLOGICAL_SEX_ALL" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-CardioFitness"];
  v10[2] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];

  return v8;
}

- (id)currentLocalizedClassificationDescription
{
  v3 = [(HKPopulationNormsAbstractViewModel *)self currentClassificationIndex];

  return [(HKPopulationNormsAbstractViewModel *)self localizedClassificationDescriptionForIndex:v3];
}

- (id)currentLocalizedClassificationTitle
{
  v3 = [(HKPopulationNormsAbstractViewModel *)self currentClassificationIndex];

  return [(HKPopulationNormsAbstractViewModel *)self localizedClassificationTitleForIndex:v3];
}

- (id)currentLocalizedClassificationName
{
  v3 = [(HKPopulationNormsAbstractViewModel *)self currentClassificationIndex];

  return [(HKPopulationNormsAbstractViewModel *)self localizedClassificationNameForIndex:v3];
}

- (int64_t)_biologicalSexForSexSegmentIndex:(unint64_t)a3
{
  v3 = 2;
  if (a3 != 1)
  {
    v3 = 3;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

- (unint64_t)_biologicalSexSegmentIndexForSex:(int64_t)a3
{
  v3 = 1;
  if (a3 != 2)
  {
    v3 = 2;
  }

  if (a3 == 1)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

- (int64_t)currentBiologicalSex
{
  v3 = [(HKPopulationNormsAbstractViewModel *)self currentBiologicalSexSegmentIndex];

  return [(HKPopulationNormsAbstractViewModel *)self _biologicalSexForSexSegmentIndex:v3];
}

- (unint64_t)currentBiologicalSexSegmentIndex
{
  cacheBiologicalSexSegmentIndex = self->_cacheBiologicalSexSegmentIndex;
  if (!cacheBiologicalSexSegmentIndex)
  {
    healthStore = self->_healthStore;
    v13 = 0;
    v5 = [(HKHealthStore *)healthStore biologicalSexWithError:&v13];
    v6 = v13;
    if (v5)
    {
      if ([v5 biologicalSex])
      {
        v7 = MEMORY[0x1E696AD98];
        v8 = [v5 biologicalSex];
LABEL_8:
        v10 = [v7 numberWithUnsignedInteger:{-[HKPopulationNormsAbstractViewModel _biologicalSexSegmentIndexForSex:](self, "_biologicalSexSegmentIndexForSex:", v8)}];
        v11 = self->_cacheBiologicalSexSegmentIndex;
        self->_cacheBiologicalSexSegmentIndex = v10;

        cacheBiologicalSexSegmentIndex = self->_cacheBiologicalSexSegmentIndex;
        return [(NSNumber *)cacheBiologicalSexSegmentIndex unsignedIntegerValue];
      }
    }

    else
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x1E696B988];
      if (os_log_type_enabled(*MEMORY[0x1E696B988], OS_LOG_TYPE_ERROR))
      {
        [(HKPopulationNormsAbstractViewModel *)v6 currentBiologicalSexSegmentIndex];
      }
    }

    v8 = 0;
    v7 = MEMORY[0x1E696AD98];
    goto LABEL_8;
  }

  return [(NSNumber *)cacheBiologicalSexSegmentIndex unsignedIntegerValue];
}

- (void)setBiologicalSexSegmentIndex:(unint64_t)a3
{
  if ([(HKPopulationNormsAbstractViewModel *)self numberOfBiologicalSexSegments]<= a3)
  {
    [(HKPopulationNormsAbstractViewModel *)a2 setBiologicalSexSegmentIndex:?];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  cacheBiologicalSexSegmentIndex = self->_cacheBiologicalSexSegmentIndex;
  self->_cacheBiologicalSexSegmentIndex = v6;

  MEMORY[0x1EEE66BB8](v6, cacheBiologicalSexSegmentIndex);
}

- (unint64_t)currentClassificationIndex
{
  cacheClassificationIndex = self->_cacheClassificationIndex;
  if (!cacheClassificationIndex)
  {
    v4 = [(HKPopulationNormsAbstractViewModel *)self userLatestSampleValue];
    v5 = [(HKPopulationNormsAbstractViewModel *)self currentAgeInYears];
    v6 = v5;
    if (v4 && v5)
    {
      v7 = [(HKPopulationNormsAbstractViewModel *)self _biologicalSexForSexSegmentIndex:[(HKPopulationNormsAbstractViewModel *)self currentBiologicalSexSegmentIndex]];
      [v4 floatValue];
      v9 = -[HKPopulationNormsAbstractViewModel classificationIndexForSampleValue:age:sex:](self, "classificationIndexForSampleValue:age:sex:", [v6 integerValue], v7, v8);
      v10 = self->_cacheClassificationIndex;
      self->_cacheClassificationIndex = v9;
    }

    if (!self->_cacheClassificationIndex)
    {
      if ([(HKPopulationNormsAbstractViewModel *)self numberOfClassifications])
      {
        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{(-[HKPopulationNormsAbstractViewModel numberOfClassifications](self, "numberOfClassifications") - 1) >> 1}];
      }

      else
      {
        v11 = &unk_1F4382698;
      }

      v12 = self->_cacheClassificationIndex;
      self->_cacheClassificationIndex = v11;
    }

    cacheClassificationIndex = self->_cacheClassificationIndex;
  }

  return [(NSNumber *)cacheClassificationIndex unsignedIntegerValue];
}

- (void)setClassificationIndex:(unint64_t)a3
{
  if ([(HKPopulationNormsAbstractViewModel *)self numberOfClassifications]<= a3)
  {
    [(HKPopulationNormsAbstractViewModel *)a2 setClassificationIndex:?];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  cacheClassificationIndex = self->_cacheClassificationIndex;
  self->_cacheClassificationIndex = v6;

  MEMORY[0x1EEE66BB8](v6, cacheClassificationIndex);
}

- (id)currentAgeInYears
{
  cacheAgeInYears = self->_cacheAgeInYears;
  if (!cacheAgeInYears)
  {
    healthStore = self->_healthStore;
    v13 = 0;
    v5 = [(HKHealthStore *)healthStore dateOfBirthComponentsWithError:&v13];
    v6 = v13;
    if (v5)
    {
      v7 = MEMORY[0x1E696AD98];
      v8 = [MEMORY[0x1E695DF00] date];
      v9 = [v7 numberWithInteger:{objc_msgSend(v5, "hk_ageWithCurrentDate:", v8)}];
      v10 = self->_cacheAgeInYears;
      self->_cacheAgeInYears = v9;
    }

    else
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x1E696B988];
      if (os_log_type_enabled(*MEMORY[0x1E696B988], OS_LOG_TYPE_ERROR))
      {
        [(HKPopulationNormsAbstractViewModel *)v6 currentAgeInYears];
      }
    }

    cacheAgeInYears = self->_cacheAgeInYears;
  }

  return cacheAgeInYears;
}

- (id)userAgeBucketIndex
{
  v3 = *MEMORY[0x1E696C818];
  v4 = [(HKPopulationNormsAbstractViewModel *)self currentAgeInYears];
  v5 = [v4 unsignedIntegerValue];

  if (v3 <= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  v7 = [(HKPopulationNormsAbstractViewModel *)self currentDataForBiologicalSex];
  v8 = [v7 allKeys];
  v9 = [v8 sortedArrayUsingComparator:&__block_literal_global_25];

  if ([v9 count])
  {
    v10 = 0;
    while (1)
    {
      v11 = [v9 objectAtIndexedSubscript:v10];
      v12 = [v11 rangeValue];
      v14 = v13;

      if (v6 >= v12 && v6 - v12 < v14)
      {
        break;
      }

      if (++v10 >= [v9 count])
      {
        goto LABEL_9;
      }
    }

    v16 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
  }

  else
  {
LABEL_9:
    _HKInitializeLogging();
    v15 = *MEMORY[0x1E696B988];
    if (os_log_type_enabled(*MEMORY[0x1E696B988], OS_LOG_TYPE_ERROR))
    {
      [(HKPopulationNormsAbstractViewModel *)v15 userAgeBucketIndex];
    }

    v16 = 0;
  }

  return v16;
}

- (id)userLatestSampleValue
{
  cacheLatestSampleValue = self->_cacheLatestSampleValue;
  if (!cacheLatestSampleValue)
  {
    if (self->_userHasDataPointAvailable)
    {
      cacheLatestSampleValue = 0;
    }

    else
    {
      self->_userHasDataPointAvailable = &unk_1F4382698;

      dispatch_assert_queue_V2(self->_sampleQueryQueue);
      v4 = dispatch_semaphore_create(0);
      v5 = [(HKPopulationNormsAbstractViewModel *)self associatedSampleType];
      v6 = MEMORY[0x1E696C1C0];
      v10 = MEMORY[0x1E69E9820];
      v11 = 3221225472;
      v12 = __59__HKPopulationNormsAbstractViewModel_userLatestSampleValue__block_invoke;
      v13 = &unk_1E81B7778;
      v14 = self;
      v15 = v4;
      v7 = v4;
      v8 = [v6 queryForMostRecentSampleOfType:v5 predicate:0 completion:&v10];
      [(HKHealthStore *)self->_healthStore executeQuery:v8, v10, v11, v12, v13, v14];
      dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);

      cacheLatestSampleValue = self->_cacheLatestSampleValue;
    }
  }

  return cacheLatestSampleValue;
}

void __59__HKPopulationNormsAbstractViewModel_userLatestSampleValue__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E696AD98] numberWithInt:v5 != 0];
  v8 = *(a1 + 32);
  v9 = *(v8 + 56);
  *(v8 + 56) = v7;

  if ([*(*(a1 + 32) + 56) BOOLValue])
  {
    v10 = MEMORY[0x1E696AD98];
    v11 = [v5 quantity];
    [v11 _value];
    v12 = [v10 numberWithDouble:?];
    v13 = *(a1 + 32);
    v14 = *(v13 + 48);
    *(v13 + 48) = v12;
  }

  else
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x1E696B988];
    if (os_log_type_enabled(*MEMORY[0x1E696B988], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = v6;
      _os_log_impl(&dword_1C3942000, v15, OS_LOG_TYPE_DEFAULT, "Failed to fetch latest VO2 max sample with error: %{public}@", &v16, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)clearUserCharacteristicCache
{
  cacheBiologicalSexSegmentIndex = self->_cacheBiologicalSexSegmentIndex;
  self->_cacheBiologicalSexSegmentIndex = 0;

  cacheClassificationIndex = self->_cacheClassificationIndex;
  self->_cacheClassificationIndex = 0;

  cacheAgeInYears = self->_cacheAgeInYears;
  self->_cacheAgeInYears = 0;

  cacheLatestSampleValue = self->_cacheLatestSampleValue;
  self->_cacheLatestSampleValue = 0;

  userHasDataPointAvailable = self->_userHasDataPointAvailable;
  self->_userHasDataPointAvailable = 0;
}

- (void)prepareUserCharacteristicCacheWithHandler:(id)a3
{
  v4 = a3;
  sampleQueryQueue = self->_sampleQueryQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__HKPopulationNormsAbstractViewModel_prepareUserCharacteristicCacheWithHandler___block_invoke;
  v7[3] = &unk_1E81B5E48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(sampleQueryQueue, v7);
}

void __80__HKPopulationNormsAbstractViewModel_prepareUserCharacteristicCacheWithHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[6])
  {
    v3 = [v2 userLatestSampleValue];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__HKPopulationNormsAbstractViewModel_prepareUserCharacteristicCacheWithHandler___block_invoke_2;
  block[3] = &unk_1E81B77A0;
  v5 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)currentBiologicalSexSegmentIndex
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "Unable to retrieve biological sex: %{public}@", &v2, 0xCu);
}

- (void)setBiologicalSexSegmentIndex:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKPopulationNormsAbstractViewModel.m" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"biologicalSexSegmentIndex >= 0 && biologicalSexSegmentIndex < [self numberOfBiologicalSexSegments]"}];
}

- (void)setClassificationIndex:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKPopulationNormsAbstractViewModel.m" lineNumber:161 description:{@"Invalid parameter not satisfying: %@", @"classificationIndex >= 0 && classificationIndex < [self numberOfClassifications]"}];
}

- (void)currentAgeInYears
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "Unable to retrieve date of birth: %{public}@", &v2, 0xCu);
}

@end