@interface CLSTestEnvironment
+ (id)test_cacheBusinessItem:(id)item poiCache:(id)cache;
+ (id)test_locationOfInterestAndVisitFromDictionary:(id)dictionary poiCache:(id)cache;
+ (id)test_placemarkWithData:(id)data;
+ (id)test_publicEventManagerWithQueryRadius:(double)radius invalidateCache:(BOOL)cache;
+ (void)test_routineAddLocationOfInterest:(id)interest toServiceManager:(id)manager;
@end

@implementation CLSTestEnvironment

+ (id)test_publicEventManagerWithQueryRadius:(double)radius invalidateCache:(BOOL)cache
{
  cacheCopy = cache;
  v6 = [CLSPublicEventManager alloc];
  v7 = MEMORY[0x277CBEBC0];
  v8 = NSTemporaryDirectory();
  v9 = [v7 fileURLWithPath:v8 isDirectory:1];
  v10 = [(CLSPublicEventManager *)v6 initWithURL:v9];

  [(CLSPublicEventManager *)v10 setQueryRadius:radius];
  if (cacheCopy)
  {
    [(CLSPublicEventManager *)v10 invalidateDiskCaches];
    [(CLSPublicEventManager *)v10 invalidateMemoryCaches];
  }

  return v10;
}

+ (id)test_locationOfInterestAndVisitFromDictionary:(id)dictionary poiCache:(id)cache
{
  cacheCopy = cache;
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"latitude"];
  v38 = v7;
  v8 = [dictionaryCopy objectForKeyedSubscript:@"longitude"];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"startDate"];
  v10 = [dictionaryCopy objectForKeyedSubscript:@"endDate"];
  v11 = [dictionaryCopy objectForKeyedSubscript:@"name"];

  v12 = @"unknown";
  if (v11)
  {
    v12 = v11;
  }

  v13 = v12;

  v14 = rand();
  v15 = objc_alloc(MEMORY[0x277CE41F8]);
  [v7 doubleValue];
  v17 = v16;
  [v8 doubleValue];
  v19 = [v15 initWithLatitude:v17 longitude:v18];
  v20 = objc_alloc_init(CLSBusinessItem);
  [(CLSBusinessItem *)v20 setMuid:v14];
  [(CLSBusinessItem *)v20 setName:v13];

  v21 = objc_alloc(MEMORY[0x277CBFBC8]);
  [v19 coordinate];
  v23 = v22;
  v25 = v24;
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v28 = [v21 initWithCenter:uUIDString radius:v23 identifier:{v25, 5.0}];
  [(CLSBusinessItem *)v20 setRegion:v28];

  v29 = [CLSTestEnvironment test_cacheBusinessItem:v20 poiCache:cacheCopy];
  v30 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 endDate:v10];
  v31 = [CLSLocationOfInterest alloc];
  uUID2 = [MEMORY[0x277CCAD78] UUID];
  v33 = [(CLSLocationOfInterest *)v31 initWithIdentifier:uUID2 locationOfInterestType:-1 location:v19 placemarkRegion:0 businessItemMuid:v14 radius:200.0];

  v34 = [CLSLocationOfInterestVisit alloc];
  uUID3 = [MEMORY[0x277CCAD78] UUID];
  v36 = [(CLSLocationOfInterestVisit *)v34 initWithIdentifier:uUID3 visitInterval:v30 confidence:1.0];

  [(CLSLocationOfInterest *)v33 addVisit:v36];

  return v33;
}

+ (id)test_placemarkWithData:(id)data
{
  dataCopy = data;
  v4 = objc_alloc_init(CLSLitePlacemark);
  region = [dataCopy region];
  [(CLSLitePlacemark *)v4 setRegion:region];

  location = [dataCopy location];
  [(CLSLitePlacemark *)v4 setLocation:location];

  thoroughfare = [dataCopy thoroughfare];
  [(CLSLitePlacemark *)v4 setThoroughfare:thoroughfare];

  subThoroughfare = [dataCopy subThoroughfare];
  [(CLSLitePlacemark *)v4 setSubThoroughfare:subThoroughfare];

  locality = [dataCopy locality];
  [(CLSLitePlacemark *)v4 setLocality:locality];

  subLocality = [dataCopy subLocality];
  [(CLSLitePlacemark *)v4 setSubLocality:subLocality];

  administrativeArea = [dataCopy administrativeArea];
  [(CLSLitePlacemark *)v4 setAdministrativeArea:administrativeArea];

  subAdministrativeArea = [dataCopy subAdministrativeArea];
  [(CLSLitePlacemark *)v4 setSubAdministrativeArea:subAdministrativeArea];

  iSOcountryCode = [dataCopy ISOcountryCode];
  [(CLSLitePlacemark *)v4 setISOcountryCode:iSOcountryCode];

  inlandWater = [dataCopy inlandWater];
  [(CLSLitePlacemark *)v4 setInlandWater:inlandWater];

  ocean = [dataCopy ocean];
  [(CLSLitePlacemark *)v4 setOcean:ocean];

  areasOfInterest = [dataCopy areasOfInterest];
  [(CLSLitePlacemark *)v4 setAreasOfInterest:areasOfInterest];

  administrativeAreaCode = [dataCopy administrativeAreaCode];
  [(CLSLitePlacemark *)v4 setAdministrativeAreaCode:administrativeAreaCode];

  -[CLSLitePlacemark setIsIsland:](v4, "setIsIsland:", [dataCopy isIsland]);
  popularityScoresOrderedByAOI = [dataCopy popularityScoresOrderedByAOI];

  [(CLSLitePlacemark *)v4 setPopularityScoresOrderedByAOI:popularityScoresOrderedByAOI];

  return v4;
}

+ (id)test_cacheBusinessItem:(id)item poiCache:(id)cache
{
  v19[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  cacheCopy = cache;
  v18 = itemCopy;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v19[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  region = [itemCopy region];
  v17 = region;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  [cacheCopy insertBatchesOfBusinessItems:v8 forRegions:v10];

  name = [itemCopy name];

  if (name)
  {
    v16 = itemCopy;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    v13 = [cacheCopy updateBusinessItems:v12];

    firstObject = [v13 firstObject];
  }

  else
  {
    firstObject = itemCopy;
  }

  return firstObject;
}

+ (void)test_routineAddLocationOfInterest:(id)interest toServiceManager:(id)manager
{
  interestCopy = interest;
  routineService = [manager routineService];
  [routineService cacheLocationOfInterest:interestCopy];

  [routineService setRoutineIsAvailable:1];
}

@end