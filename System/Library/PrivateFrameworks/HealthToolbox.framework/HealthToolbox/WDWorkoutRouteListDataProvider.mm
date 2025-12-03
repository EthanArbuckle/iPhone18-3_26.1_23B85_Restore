@interface WDWorkoutRouteListDataProvider
- (id)createQueryForSampleType:(id)type predicate:(id)predicate limit:(int64_t)limit sortDescriptors:(id)descriptors resultsHandler:(id)handler;
- (id)sampleTypes;
- (id)textForObject:(id)object;
- (id)viewControllerForItemAtIndexPath:(id)path;
@end

@implementation WDWorkoutRouteListDataProvider

- (id)createQueryForSampleType:(id)type predicate:(id)predicate limit:(int64_t)limit sortDescriptors:(id)descriptors resultsHandler:(id)handler
{
  v11 = MEMORY[0x277CCD8D0];
  handlerCopy = handler;
  descriptorsCopy = descriptors;
  predicateCopy = predicate;
  typeCopy = type;
  v16 = [[v11 alloc] initWithSampleType:typeCopy predicate:predicateCopy limit:limit sortDescriptors:descriptorsCopy resultsHandler:handlerCopy];

  return v16;
}

- (id)sampleTypes
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCD920] seriesTypeForIdentifier:*MEMORY[0x277CCCF40]];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)textForObject:(id)object
{
  endDate = [object endDate];
  v4 = HKFormattedStringForDate();

  return v4;
}

- (id)viewControllerForItemAtIndexPath:(id)path
{
  pathCopy = path;
  samples = [(WDSampleListDataProvider *)self samples];
  v6 = [pathCopy row];

  v7 = [samples sampleAtIndex:v6];

  v8 = objc_alloc(MEMORY[0x277D12B50]);
  healthStore = [(WDSampleListDataProvider *)self healthStore];
  profileName = [(WDSampleListDataProvider *)self profileName];
  v11 = [v8 initWithWorkoutRoute:v7 healthStore:healthStore usingInsetStyling:1 profileName:profileName delegate:self];

  return v11;
}

@end