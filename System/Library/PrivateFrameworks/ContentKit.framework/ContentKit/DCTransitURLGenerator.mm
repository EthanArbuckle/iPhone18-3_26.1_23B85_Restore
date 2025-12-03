@interface DCTransitURLGenerator
- (void)populateQueryDictionary;
@end

@implementation DCTransitURLGenerator

- (void)populateQueryDictionary
{
  queryDictionary = [(DCMapsURLGenerator *)self queryDictionary];
  mapsLink = [(DCMapsURLGenerator *)self mapsLink];
  destinationAddress = [mapsLink destinationAddress];
  if (destinationAddress || ([mapsLink centerLocation], (destinationAddress = objc_claimAutoreleasedReturnValue()) != 0))
  {
    searchLocation = destinationAddress;
LABEL_4:
    [queryDictionary setObject:searchLocation forKey:@"to"];

    goto LABEL_5;
  }

  searchQuery = [mapsLink searchQuery];
  if (searchQuery)
  {
    searchLocation = searchQuery;

    goto LABEL_4;
  }

  searchLocation = [mapsLink searchLocation];
  if (searchLocation)
  {
    goto LABEL_4;
  }

LABEL_5:
}

@end