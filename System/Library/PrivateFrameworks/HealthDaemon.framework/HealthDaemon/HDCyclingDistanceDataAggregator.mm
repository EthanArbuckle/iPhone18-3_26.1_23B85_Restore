@interface HDCyclingDistanceDataAggregator
- (HDCyclingDistanceDataAggregator)initWithDataCollectionManager:(id)a3;
- (id)additionalMetadataForCollector:(id)a3;
@end

@implementation HDCyclingDistanceDataAggregator

- (HDCyclingDistanceDataAggregator)initWithDataCollectionManager:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB10]];
  v10.receiver = self;
  v10.super_class = HDCyclingDistanceDataAggregator;
  v6 = [(HDActiveQuantityDataAggregator *)&v10 initForQuantityType:v5 dataCollectionManager:v4];
  if (v6)
  {
    v7 = [v4 profile];
    v8 = [v7 workoutManager];
    objc_storeWeak(&v6->_workoutManager, v8);
  }

  return v6;
}

- (id)additionalMetadataForCollector:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 sourceForDataAggregator:self];
  v6 = [v5 bundleIdentifier];
  v7 = [v6 isEqualToString:*MEMORY[0x277CCE288]];

  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_workoutManager);
    v9 = [WeakRetained currentWorkoutConfiguration];

    if (v9 && [v9 activityType] == 13 && objc_msgSend(v9, "locationType") == 2)
    {
      v14 = *MEMORY[0x277CCC4C0];
      v15[0] = MEMORY[0x277CBEC38];
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

      goto LABEL_8;
    }
  }

  v13.receiver = self;
  v13.super_class = HDCyclingDistanceDataAggregator;
  v10 = [(HDActiveQuantityDataAggregator *)&v13 additionalMetadataForCollector:v4];
LABEL_8:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end