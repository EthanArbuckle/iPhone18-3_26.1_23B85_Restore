@interface HKDisplayType(DataSources)
@end

@implementation HKDisplayType(DataSources)

- (void)_audioLevelDataSourceForTypeIdentifier:()DataSources withHealthStore:attenuatesExposureData:unitController:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKDisplayType+DataSources.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"[validIdentifiers containsObject:audioExposureTypeIdentifier]"}];
}

@end