@interface WDWorkoutRouteListDataProvider
- (id)createQueryForSampleType:(id)a3 predicate:(id)a4 limit:(int64_t)a5 sortDescriptors:(id)a6 resultsHandler:(id)a7;
- (id)sampleTypes;
- (id)textForObject:(id)a3;
- (id)viewControllerForItemAtIndexPath:(id)a3;
@end

@implementation WDWorkoutRouteListDataProvider

- (id)createQueryForSampleType:(id)a3 predicate:(id)a4 limit:(int64_t)a5 sortDescriptors:(id)a6 resultsHandler:(id)a7
{
  v11 = MEMORY[0x277CCD8D0];
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = [[v11 alloc] initWithSampleType:v15 predicate:v14 limit:a5 sortDescriptors:v13 resultsHandler:v12];

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

- (id)textForObject:(id)a3
{
  v3 = [a3 endDate];
  v4 = HKFormattedStringForDate();

  return v4;
}

- (id)viewControllerForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(WDSampleListDataProvider *)self samples];
  v6 = [v4 row];

  v7 = [v5 sampleAtIndex:v6];

  v8 = objc_alloc(MEMORY[0x277D12B50]);
  v9 = [(WDSampleListDataProvider *)self healthStore];
  v10 = [(WDSampleListDataProvider *)self profileName];
  v11 = [v8 initWithWorkoutRoute:v7 healthStore:v9 usingInsetStyling:1 profileName:v10 delegate:self];

  return v11;
}

@end