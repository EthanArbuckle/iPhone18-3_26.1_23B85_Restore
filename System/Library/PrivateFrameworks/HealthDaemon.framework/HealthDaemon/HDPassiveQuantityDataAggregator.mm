@interface HDPassiveQuantityDataAggregator
- (id)dataObjectsFromSensorDatum:(id)datum error:(id *)error;
- (id)initForQuantityType:(id)type dataCollectionManager:(id)manager;
@end

@implementation HDPassiveQuantityDataAggregator

- (id)initForQuantityType:(id)type dataCollectionManager:(id)manager
{
  typeCopy = type;
  managerCopy = manager;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDPassiveQuantityDataAggregator.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"[quantityType isKindOfClass:[HKQuantityType class]]"}];
  }

  v14.receiver = self;
  v14.super_class = HDPassiveQuantityDataAggregator;
  v10 = [(HDDataAggregator *)&v14 initWithDataCollectionManager:managerCopy];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_quantityType, type);
  }

  return v11;
}

- (id)dataObjectsFromSensorDatum:(id)datum error:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCD800];
  quantityType = self->_quantityType;
  datumCopy = datum;
  quantity = [datumCopy quantity];
  dateInterval = [datumCopy dateInterval];
  startDate = [dateInterval startDate];
  dateInterval2 = [datumCopy dateInterval];
  endDate = [dateInterval2 endDate];
  metadata = [datumCopy metadata];

  v13 = [v4 quantitySampleWithType:quantityType quantity:quantity startDate:startDate endDate:endDate metadata:metadata];

  v17[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end