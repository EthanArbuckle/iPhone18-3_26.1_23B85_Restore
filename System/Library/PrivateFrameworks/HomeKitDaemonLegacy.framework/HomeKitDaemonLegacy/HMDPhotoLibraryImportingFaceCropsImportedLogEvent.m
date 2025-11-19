@interface HMDPhotoLibraryImportingFaceCropsImportedLogEvent
- (HMDPhotoLibraryImportingFaceCropsImportedLogEvent)initWithNumberOfImportedFaceCrops:(int64_t)a3;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDPhotoLibraryImportingFaceCropsImportedLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"numberOfImportedFaceCrops";
  v3 = +[HMDLogEventHistograms lowVolumeHistogram];
  v4 = [v3 intervalIndexForValue:{-[HMDPhotoLibraryImportingFaceCropsImportedLogEvent numberOfImportedFaceCrops](self, "numberOfImportedFaceCrops")}];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (HMDPhotoLibraryImportingFaceCropsImportedLogEvent)initWithNumberOfImportedFaceCrops:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = HMDPhotoLibraryImportingFaceCropsImportedLogEvent;
  result = [(HMMLogEvent *)&v5 init];
  if (result)
  {
    result->_numberOfImportedFaceCrops = a3;
  }

  return result;
}

@end