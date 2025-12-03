@interface DCBaiduMapsURLGenerator
- (id)directionsMode;
- (void)populateQueryDictionary;
@end

@implementation DCBaiduMapsURLGenerator

- (id)directionsMode
{
  mapsLink = [(DCMapsURLGenerator *)self mapsLink];
  directionsMode = [mapsLink directionsMode];

  if ((directionsMode - 1) > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_27834A0D8 + directionsMode - 1);
  }
}

- (void)populateQueryDictionary
{
  mapsLink = [(DCMapsURLGenerator *)self mapsLink];
  directionsMode = [(DCBaiduMapsURLGenerator *)self directionsMode];
  [(DCMapsURLGenerator *)self setString:directionsMode forQueryKey:@"mode"];

  destinationAddress = [mapsLink destinationAddress];
  if (destinationAddress || ([mapsLink centerLocation], (destinationAddress = objc_claimAutoreleasedReturnValue()) != 0))
  {
    searchLocation = destinationAddress;
LABEL_4:
    [(DCMapsURLGenerator *)self setString:searchLocation forQueryKey:@"destination"];

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
  startAddress = [mapsLink startAddress];

  if (startAddress)
  {
    startAddress2 = [mapsLink startAddress];
    [(DCMapsURLGenerator *)self setString:startAddress2 forQueryKey:@"origin"];
  }
}

@end