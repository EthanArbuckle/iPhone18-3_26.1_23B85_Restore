@interface HMDPhotoLibraryImportingPhotoLibraryRenamedPersonsLogEvent
- (HMDPhotoLibraryImportingPhotoLibraryRenamedPersonsLogEvent)initWithNumberOfRenamedPersons:(int64_t)a3;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDPhotoLibraryImportingPhotoLibraryRenamedPersonsLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"numberOfRenamedPersons";
  v3 = +[HMDLogEventHistograms lowVolumeHistogram];
  v4 = [v3 intervalIndexForValue:{-[HMDPhotoLibraryImportingPhotoLibraryRenamedPersonsLogEvent numberOfRenamedPersons](self, "numberOfRenamedPersons")}];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (HMDPhotoLibraryImportingPhotoLibraryRenamedPersonsLogEvent)initWithNumberOfRenamedPersons:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = HMDPhotoLibraryImportingPhotoLibraryRenamedPersonsLogEvent;
  result = [(HMMLogEvent *)&v5 init];
  if (result)
  {
    result->_numberOfRenamedPersons = a3;
  }

  return result;
}

@end