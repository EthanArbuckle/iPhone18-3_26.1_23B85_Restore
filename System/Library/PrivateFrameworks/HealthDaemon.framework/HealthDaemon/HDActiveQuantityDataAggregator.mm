@interface HDActiveQuantityDataAggregator
- (id)aggregateForState:(id)state collector:(id)collector device:(id)device requestedAggregationDate:(id)date mode:(int64_t)mode options:(unint64_t)options error:(id *)error;
- (id)description;
- (id)initForQuantityType:(id)type dataCollectionManager:(id)manager;
@end

@implementation HDActiveQuantityDataAggregator

- (id)initForQuantityType:(id)type dataCollectionManager:(id)manager
{
  typeCopy = type;
  managerCopy = manager;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDActiveQuantityDataAggregator.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"[quantityType isKindOfClass:[HKQuantityType class]]"}];
  }

  v17.receiver = self;
  v17.super_class = HDActiveQuantityDataAggregator;
  v10 = [(HDActiveDataAggregator *)&v17 initWithDataCollectionManager:managerCopy];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_quantityType, type);
    v12 = typeCopy;
    if (([MEMORY[0x277CCDD30] isDataCollectionForwarderDisabled] & 1) != 0 || (objc_msgSend(v12, "code") - 280) > 2)
    {
      v13 = 0;
    }

    else
    {
      v13 = objc_alloc_init(HDCyclingDataCollectionForwarder);
    }

    dataForwarder = v11->_dataForwarder;
    v11->_dataForwarder = v13;
  }

  return v11;
}

- (id)aggregateForState:(id)state collector:(id)collector device:(id)device requestedAggregationDate:(id)date mode:(int64_t)mode options:(unint64_t)options error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  collectorCopy = collector;
  deviceCopy = device;
  dateCopy = date;
  [(HDActiveDataAggregator *)self aggregationIntervalForCollector:collectorCopy];
  v19 = v18;
  v20 = stateCopy;
  v21 = dateCopy;
  if (self)
  {
    v22 = [(HDActiveQuantityDataAggregator *)self additionalMetadataForCollector:collectorCopy];
    unaggregatedSensorData = [v20 unaggregatedSensorData];
    if (v21)
    {
      quantityType = self->_quantityType;
      date = [MEMORY[0x277CBEAA8] date];
      HDAggregateQuantitySensorDataThroughDate(unaggregatedSensorData, quantityType, date, v21, mode == 0, v22, v19);
    }

    else
    {
      v26 = self->_quantityType;
      date = [MEMORY[0x277CBEAA8] date];
      HDAggregateQuantitySensorData(unaggregatedSensorData, v26, date, v22, v19);
    }
    v27 = ;
  }

  else
  {
    v27 = 0;
  }

  if (v27)
  {
    if (([v20 isMemberOfClass:objc_opt_class()] & 1) == 0 && (-[HDActiveQuantityDataAggregator isMemberOfClass:](self, "isMemberOfClass:", objc_opt_class()) & 1) == 0)
    {
      _HKInitializeLogging();
      v28 = *MEMORY[0x277CCC298];
      if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_FAULT))
      {
        v40 = v28;
        v41 = objc_opt_class();
        v42 = NSStringFromClass(v41);
        *buf = 138543618;
        selfCopy = self;
        v49 = 2114;
        v50 = v42;
        _os_log_fault_impl(&dword_228986000, v40, OS_LOG_TYPE_FAULT, "%{public}@: unexpected state object %{public}@", buf, 0x16u);
      }
    }

    v29 = [HDDataAggregationState alloc];
    remainingSensorData = [v27 remainingSensorData];
    v31 = [(HDDataAggregationState *)v29 initWithRemainingSensorData:remainingSensorData];

    aggregatedSamples = [v27 aggregatedSamples];
    v33 = [aggregatedSamples count];

    v34 = [HDDataAggregationResult alloc];
    v35 = v34;
    if (v33)
    {
      consumedSensorData = [v27 consumedSensorData];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __113__HDActiveQuantityDataAggregator_aggregateForState_collector_device_requestedAggregationDate_mode_options_error___block_invoke;
      v43[3] = &unk_2786149F0;
      v43[4] = self;
      v44 = v27;
      v45 = deviceCopy;
      v46 = collectorCopy;
      v37 = [(HDDataAggregationResult *)v35 initWithResultingAggregationState:v31 consumedSensorData:consumedSensorData persistenceHandler:v43];
    }

    else
    {
      v37 = [(HDDataAggregationResult *)v34 initWithResultingAggregationState:v31 consumedSensorData:0 persistenceHandler:0];
    }
  }

  else
  {
    v37 = 0;
  }

  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

uint64_t __113__HDActiveQuantityDataAggregator_aggregateForState_collector_device_requestedAggregationDate_mode_options_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 dataCollectionManager];
  v8 = [v7 databaseAssertion];
  v9 = [HDDatabaseTransactionContext contextForAccessibilityAssertion:v8];

  v10 = [*(a1 + 32) dataCollectionManager];
  v11 = [v10 profile];
  v12 = [v11 dataManager];
  v13 = [*(a1 + 40) aggregatedSamples];
  v14 = [v12 insertDataObjects:v13 withProvenance:v6 creationDate:1 skipInsertionFilter:1 updateSourceOrder:0 resolveAssociations:v9 transactionContext:CFAbsoluteTimeGetCurrent() error:a3];

  v15 = 0;
  if (v14)
  {
    v16 = *(*(a1 + 32) + 88);
    v17 = [*(a1 + 40) aggregatedSamples];
    v18 = *(a1 + 48);
    v19 = [*(a1 + 56) sourceForDataAggregator:*(a1 + 32)];
    [v16 insertSamples:v17 device:v18 source:v19];

    v20 = *(a1 + 32);
    v21 = [*(a1 + 40) aggregatedSamples];
    v22 = [*(a1 + 40) consumedSensorData];
    v23 = [v22 lastObject];
    v15 = [v20 didPersistObjects:v21 lastDatum:v23 collector:*(a1 + 56) error:a3];
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDActiveQuantityDataAggregator;
  v4 = [(HDActiveQuantityDataAggregator *)&v8 description];
  identifier = [(HKQuantityType *)self->_quantityType identifier];
  v6 = [v3 stringWithFormat:@"<%@ %@>", v4, identifier];

  return v6;
}

@end