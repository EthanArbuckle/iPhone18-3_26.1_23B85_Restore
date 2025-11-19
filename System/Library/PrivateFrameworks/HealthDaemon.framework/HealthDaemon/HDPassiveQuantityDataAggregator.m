@interface HDPassiveQuantityDataAggregator
- (id)dataObjectsFromSensorDatum:(id)a3 error:(id *)a4;
- (id)initForQuantityType:(id)a3 dataCollectionManager:(id)a4;
@end

@implementation HDPassiveQuantityDataAggregator

- (id)initForQuantityType:(id)a3 dataCollectionManager:(id)a4
{
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"HDPassiveQuantityDataAggregator.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"[quantityType isKindOfClass:[HKQuantityType class]]"}];
  }

  v14.receiver = self;
  v14.super_class = HDPassiveQuantityDataAggregator;
  v10 = [(HDDataAggregator *)&v14 initWithDataCollectionManager:v9];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_quantityType, a3);
  }

  return v11;
}

- (id)dataObjectsFromSensorDatum:(id)a3 error:(id *)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCD800];
  quantityType = self->_quantityType;
  v6 = a3;
  v7 = [v6 quantity];
  v8 = [v6 dateInterval];
  v9 = [v8 startDate];
  v10 = [v6 dateInterval];
  v11 = [v10 endDate];
  v12 = [v6 metadata];

  v13 = [v4 quantitySampleWithType:quantityType quantity:v7 startDate:v9 endDate:v11 metadata:v12];

  v17[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end