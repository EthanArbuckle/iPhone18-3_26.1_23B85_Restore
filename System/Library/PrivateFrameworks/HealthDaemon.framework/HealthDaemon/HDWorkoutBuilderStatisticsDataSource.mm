@interface HDWorkoutBuilderStatisticsDataSource
- (BOOL)collectionCalculator:(id)calculator queryForInterval:(id)interval error:(id *)error sampleHandler:(id)handler mergeHandler:(id)mergeHandler;
- (HDProfile)profile;
- (HDWorkoutBuilderStatisticsDataSource)init;
- (HDWorkoutBuilderStatisticsDataSource)initWithProfile:(id)profile quantityType:(id)type builderEntity:(id)entity;
@end

@implementation HDWorkoutBuilderStatisticsDataSource

- (HDWorkoutBuilderStatisticsDataSource)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDWorkoutBuilderStatisticsDataSource)initWithProfile:(id)profile quantityType:(id)type builderEntity:(id)entity
{
  profileCopy = profile;
  typeCopy = type;
  entityCopy = entity;
  v16.receiver = self;
  v16.super_class = HDWorkoutBuilderStatisticsDataSource;
  v11 = [(HDWorkoutBuilderStatisticsDataSource *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_profile, profileCopy);
    v13 = [typeCopy copy];
    quantityType = v12->_quantityType;
    v12->_quantityType = v13;

    objc_storeStrong(&v12->_builderEntity, entity);
    v12->_enabled = 1;
  }

  return v12;
}

- (BOOL)collectionCalculator:(id)calculator queryForInterval:(id)interval error:(id *)error sampleHandler:(id)handler mergeHandler:(id)mergeHandler
{
  intervalCopy = interval;
  handlerCopy = handler;
  if (self->_enabled)
  {
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    features = [mEMORY[0x277CCDD30] features];
    workoutSavingQueryPerf = [features workoutSavingQueryPerf];

    quantityType = self->_quantityType;
    builderEntity = self->_builderEntity;
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    if (workoutSavingQueryPerf)
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __111__HDWorkoutBuilderStatisticsDataSource_collectionCalculator_queryForInterval_error_sampleHandler_mergeHandler___block_invoke;
      v24[3] = &unk_2786193E8;
      v25 = intervalCopy;
      v26 = handlerCopy;
      v18 = [(HDWorkoutBuilderEntity *)builderEntity enumerateAssociatedSampleValuesWithCustomQueryOfType:quantityType interval:v25 profile:WeakRetained error:error handler:v24];

      v19 = v25;
    }

    else
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __111__HDWorkoutBuilderStatisticsDataSource_collectionCalculator_queryForInterval_error_sampleHandler_mergeHandler___block_invoke_2;
      v21[3] = &unk_278619410;
      v22 = intervalCopy;
      v23 = handlerCopy;
      v18 = [(HDWorkoutBuilderEntity *)builderEntity enumerateAssociatedSampleValuesOfType:quantityType interval:v22 profile:WeakRetained error:error sampleHandler:v21];

      v19 = v22;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:100 format:@"Data source is disabled."];
    v18 = 0;
  }

  return v18;
}

uint64_t __111__HDWorkoutBuilderStatisticsDataSource_collectionCalculator_queryForInterval_error_sampleHandler_mergeHandler___block_invoke(uint64_t a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4 = a4.n128_f64[0];
  v5 = a3.n128_f64[0];
  v6 = a2.n128_u64[0];
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = [v8 endDate];
    [v9 timeIntervalSinceReferenceDate];
    if (v10 < v5)
    {

      return 1;
    }

    v11 = [*(a1 + 32) startDate];
    [v11 timeIntervalSinceReferenceDate];
    v13 = v12;

    if (v13 > v4)
    {
      return 1;
    }
  }

  v15 = *(*(a1 + 40) + 16);
  a2.n128_u64[0] = v6;
  a3.n128_f64[0] = v5;
  a4.n128_f64[0] = v4;

  return v15(a2, a3, a4);
}

uint64_t __111__HDWorkoutBuilderStatisticsDataSource_collectionCalculator_queryForInterval_error_sampleHandler_mergeHandler___block_invoke_2(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, double a5, double a6)
{
  v8 = a4.n128_u64[0];
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = [v10 endDate];
    [v11 timeIntervalSinceReferenceDate];
    if (v12 < a5)
    {

      return 1;
    }

    v13 = [*(a1 + 32) startDate];
    [v13 timeIntervalSinceReferenceDate];
    v15 = v14;

    if (v15 > a6)
    {
      return 1;
    }
  }

  v17 = *(*(a1 + 40) + 16);
  a2.n128_u64[0] = v8;
  a3.n128_f64[0] = a5;
  a4.n128_f64[0] = a6;

  return v17(a2, a3, a4);
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end