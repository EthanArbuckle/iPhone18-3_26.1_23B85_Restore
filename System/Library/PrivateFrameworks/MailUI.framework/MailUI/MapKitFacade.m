@interface MapKitFacade
+ (id)setCustomFeatureAnnotationsForSnapshotOptions:(id)a3 coordinate:(CLLocationCoordinate2D)a4 title:(id)a5;
@end

@implementation MapKitFacade

+ (id)setCustomFeatureAnnotationsForSnapshotOptions:(id)a3 coordinate:(CLLocationCoordinate2D)a4 title:(id)a5
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v14[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = MEMORY[0x277CD4EB0];
  v10 = a5;
  v11 = [[v9 alloc] initWithCoordinate:v10 title:2 representation:{latitude, longitude}];

  v14[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [v8 _setCustomFeatureAnnotations:v12];

  [v8 _setSearchResultsType:1];

  return v8;
}

@end