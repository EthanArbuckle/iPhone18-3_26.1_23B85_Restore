@interface HDCyclingDistanceDataAggregator
- (HDCyclingDistanceDataAggregator)initWithDataCollectionManager:(id)manager;
- (id)additionalMetadataForCollector:(id)collector;
@end

@implementation HDCyclingDistanceDataAggregator

- (HDCyclingDistanceDataAggregator)initWithDataCollectionManager:(id)manager
{
  managerCopy = manager;
  v5 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB10]];
  v10.receiver = self;
  v10.super_class = HDCyclingDistanceDataAggregator;
  v6 = [(HDActiveQuantityDataAggregator *)&v10 initForQuantityType:v5 dataCollectionManager:managerCopy];
  if (v6)
  {
    profile = [managerCopy profile];
    workoutManager = [profile workoutManager];
    objc_storeWeak(&v6->_workoutManager, workoutManager);
  }

  return v6;
}

- (id)additionalMetadataForCollector:(id)collector
{
  v15[1] = *MEMORY[0x277D85DE8];
  collectorCopy = collector;
  v5 = [collectorCopy sourceForDataAggregator:self];
  bundleIdentifier = [v5 bundleIdentifier];
  v7 = [bundleIdentifier isEqualToString:*MEMORY[0x277CCE288]];

  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_workoutManager);
    currentWorkoutConfiguration = [WeakRetained currentWorkoutConfiguration];

    if (currentWorkoutConfiguration && [currentWorkoutConfiguration activityType] == 13 && objc_msgSend(currentWorkoutConfiguration, "locationType") == 2)
    {
      v14 = *MEMORY[0x277CCC4C0];
      v15[0] = MEMORY[0x277CBEC38];
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

      goto LABEL_8;
    }
  }

  v13.receiver = self;
  v13.super_class = HDCyclingDistanceDataAggregator;
  v10 = [(HDActiveQuantityDataAggregator *)&v13 additionalMetadataForCollector:collectorCopy];
LABEL_8:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end