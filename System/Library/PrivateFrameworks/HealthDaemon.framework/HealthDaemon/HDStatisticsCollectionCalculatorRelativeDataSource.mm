@interface HDStatisticsCollectionCalculatorRelativeDataSource
- (BOOL)_shouldContinueWithError:(id *)error;
- (BOOL)collectionCalculator:(id)calculator queryForInterval:(id)interval error:(id *)error sampleHandler:(id)handler mergeHandler:(id)mergeHandler;
- (HDProfile)profile;
- (id)initForProfile:(id)profile quantityType:(id)type predicate:(id)predicate restrictedSourceEntities:(id)entities configuration:(id)configuration currentDate:(id)date;
@end

@implementation HDStatisticsCollectionCalculatorRelativeDataSource

- (id)initForProfile:(id)profile quantityType:(id)type predicate:(id)predicate restrictedSourceEntities:(id)entities configuration:(id)configuration currentDate:(id)date
{
  profileCopy = profile;
  typeCopy = type;
  predicateCopy = predicate;
  entitiesCopy = entities;
  configurationCopy = configuration;
  dateCopy = date;
  v25.receiver = self;
  v25.super_class = HDStatisticsCollectionCalculatorRelativeDataSource;
  v20 = [(HDStatisticsCollectionCalculatorRelativeDataSource *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeWeak(&v20->_profile, profileCopy);
    objc_storeStrong(&v21->_configuration, configuration);
    objc_storeStrong(&v21->_currentDate, date);
    v22 = [[HDStatisticsCollectionCalculatorDefaultDataSource alloc] initForProfile:profileCopy quantityType:typeCopy predicate:predicateCopy restrictedSourceEntities:entitiesCopy];
    defaultDataSource = v21->_defaultDataSource;
    v21->_defaultDataSource = v22;
  }

  return v21;
}

- (BOOL)collectionCalculator:(id)calculator queryForInterval:(id)interval error:(id *)error sampleHandler:(id)handler mergeHandler:(id)mergeHandler
{
  calculatorCopy = calculator;
  intervalCopy = interval;
  handlerCopy = handler;
  mergeHandlerCopy = mergeHandler;
  quantityType = [(HDStatisticsCollectionCalculatorDefaultDataSource *)self->_defaultDataSource quantityType];
  identifier = [quantityType identifier];
  [(HDStatisticsCollectionCalculatorRelativeDataSource *)self _queryPrefetchWindowForQuantityTypeIdentifier:identifier];
  v19 = v18;

  v20 = [HDRollingBaselineRelativeDataSource alloc];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  quantityType2 = [(HDStatisticsCollectionCalculatorDefaultDataSource *)self->_defaultDataSource quantityType];
  v23 = [(HDRollingBaselineRelativeDataSource *)v20 initWithProfile:WeakRetained quantityType:quantityType2 configuration:self->_configuration queryPrefetchWindow:self->_currentDate currentDate:v19];

  [(HDRollingBaselineRelativeDataSource *)v23 setShouldContinueHandler:self->_shouldContinueHandler];
  defaultDataSource = self->_defaultDataSource;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __125__HDStatisticsCollectionCalculatorRelativeDataSource_collectionCalculator_queryForInterval_error_sampleHandler_mergeHandler___block_invoke;
  v31[3] = &unk_278623920;
  v25 = v23;
  v32 = v25;
  v26 = handlerCopy;
  selfCopy = self;
  v34 = v26;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __125__HDStatisticsCollectionCalculatorRelativeDataSource_collectionCalculator_queryForInterval_error_sampleHandler_mergeHandler___block_invoke_2;
  v29[3] = &unk_278623948;
  v27 = mergeHandlerCopy;
  v30 = v27;
  LOBYTE(error) = [(HDStatisticsCollectionCalculatorDefaultDataSource *)defaultDataSource collectionCalculator:calculatorCopy queryForInterval:intervalCopy error:error sampleHandler:v31 mergeHandler:v29];

  return error;
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

- (BOOL)_shouldContinueWithError:(id *)error
{
  shouldContinueHandler = self->_shouldContinueHandler;
  if (shouldContinueHandler)
  {
    return shouldContinueHandler[2](shouldContinueHandler, error);
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