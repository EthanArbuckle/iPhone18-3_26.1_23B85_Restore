@interface HDStatisticsCollectionCalculatorRelativeDataSource
- (BOOL)_shouldContinueWithError:(id *)a3;
- (BOOL)collectionCalculator:(id)a3 queryForInterval:(id)a4 error:(id *)a5 sampleHandler:(id)a6 mergeHandler:(id)a7;
- (HDProfile)profile;
- (id)initForProfile:(id)a3 quantityType:(id)a4 predicate:(id)a5 restrictedSourceEntities:(id)a6 configuration:(id)a7 currentDate:(id)a8;
@end

@implementation HDStatisticsCollectionCalculatorRelativeDataSource

- (id)initForProfile:(id)a3 quantityType:(id)a4 predicate:(id)a5 restrictedSourceEntities:(id)a6 configuration:(id)a7 currentDate:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v25.receiver = self;
  v25.super_class = HDStatisticsCollectionCalculatorRelativeDataSource;
  v20 = [(HDStatisticsCollectionCalculatorRelativeDataSource *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeWeak(&v20->_profile, v14);
    objc_storeStrong(&v21->_configuration, a7);
    objc_storeStrong(&v21->_currentDate, a8);
    v22 = [[HDStatisticsCollectionCalculatorDefaultDataSource alloc] initForProfile:v14 quantityType:v15 predicate:v16 restrictedSourceEntities:v17];
    defaultDataSource = v21->_defaultDataSource;
    v21->_defaultDataSource = v22;
  }

  return v21;
}

- (BOOL)collectionCalculator:(id)a3 queryForInterval:(id)a4 error:(id *)a5 sampleHandler:(id)a6 mergeHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [(HDStatisticsCollectionCalculatorDefaultDataSource *)self->_defaultDataSource quantityType];
  v17 = [v16 identifier];
  [(HDStatisticsCollectionCalculatorRelativeDataSource *)self _queryPrefetchWindowForQuantityTypeIdentifier:v17];
  v19 = v18;

  v20 = [HDRollingBaselineRelativeDataSource alloc];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v22 = [(HDStatisticsCollectionCalculatorDefaultDataSource *)self->_defaultDataSource quantityType];
  v23 = [(HDRollingBaselineRelativeDataSource *)v20 initWithProfile:WeakRetained quantityType:v22 configuration:self->_configuration queryPrefetchWindow:self->_currentDate currentDate:v19];

  [(HDRollingBaselineRelativeDataSource *)v23 setShouldContinueHandler:self->_shouldContinueHandler];
  defaultDataSource = self->_defaultDataSource;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __125__HDStatisticsCollectionCalculatorRelativeDataSource_collectionCalculator_queryForInterval_error_sampleHandler_mergeHandler___block_invoke;
  v31[3] = &unk_278623920;
  v25 = v23;
  v32 = v25;
  v26 = v14;
  v33 = self;
  v34 = v26;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __125__HDStatisticsCollectionCalculatorRelativeDataSource_collectionCalculator_queryForInterval_error_sampleHandler_mergeHandler___block_invoke_2;
  v29[3] = &unk_278623948;
  v27 = v15;
  v30 = v27;
  LOBYTE(a5) = [(HDStatisticsCollectionCalculatorDefaultDataSource *)defaultDataSource collectionCalculator:v12 queryForInterval:v13 error:a5 sampleHandler:v31 mergeHandler:v29];

  return a5;
}

uint64_t __125__HDStatisticsCollectionCalculatorRelativeDataSource_collectionCalculator_queryForInterval_error_sampleHandler_mergeHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v11 = *(a1 + 32);
  *v17 = a5;
  *&v17[1] = a6;
  *&v17[2] = a7;
  v17[3] = a2;
  v18 = 1;
  v12 = [v11 computeRelativeValueForSample:v17 error:?];
  v13 = v12;
  if (v12 && (v14 = *(a1 + 48), [v12 doubleValue], (*(v14 + 16))(v14, a2, a3, a4)))
  {
    v15 = [*(a1 + 40) _shouldContinueWithError:a4];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)_shouldContinueWithError:(id *)a3
{
  shouldContinueHandler = self->_shouldContinueHandler;
  if (shouldContinueHandler)
  {
    return shouldContinueHandler[2](shouldContinueHandler, a3);
  }

  else
  {
    return 1;
  }
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end