@interface MapKitFacade
+ (id)setCustomFeatureAnnotationsForSnapshotOptions:(id)options coordinate:(CLLocationCoordinate2D)coordinate title:(id)title;
@end

@implementation MapKitFacade

+ (id)setCustomFeatureAnnotationsForSnapshotOptions:(id)options coordinate:(CLLocationCoordinate2D)coordinate title:(id)title
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v14[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v9 = MEMORY[0x277CD4EB0];
  titleCopy = title;
  v11 = [[v9 alloc] initWithCoordinate:titleCopy title:2 representation:{latitude, longitude}];

  v14[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [optionsCopy _setCustomFeatureAnnotations:v12];

  [optionsCopy _setSearchResultsType:1];

  return optionsCopy;
}

@end