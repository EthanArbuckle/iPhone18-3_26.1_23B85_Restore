@interface DCGoogleMapsURLGenerator
- (id)directionsMode;
- (void)populateQueryDictionary;
@end

@implementation DCGoogleMapsURLGenerator

- (id)directionsMode
{
  mapsLink = [(DCMapsURLGenerator *)self mapsLink];
  directionsMode = [mapsLink directionsMode];

  if ((directionsMode - 1) > 4)
  {
    return 0;
  }

  else
  {
    return off_278344A00[directionsMode - 1];
  }
}

- (void)populateQueryDictionary
{
  mapsLink = [(DCMapsURLGenerator *)self mapsLink];
  string = [MEMORY[0x277CCAB68] string];
  if ([mapsLink showsTraffic])
  {
    [string appendString:{@"traffic, "}];
  }

  if ([mapsLink showsTransit])
  {
    [string appendString:{@"transit, "}];
  }

  if ([mapsLink showsBicycling])
  {
    [string appendString:{@"bicycling, "}];
  }

  if (([mapsLink mapType] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [string appendString:{@"satellite, "}];
  }

  queryDictionary = [(DCMapsURLGenerator *)self queryDictionary];
  v5 = [string copy];
  [queryDictionary setObject:v5 forKey:@"views"];

  if ([mapsLink zoomLevel])
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(mapsLink, "zoomLevel")];
    [(DCMapsURLGenerator *)self setString:v6 forQueryKey:@"zoom"];
  }

  if ([mapsLink showsStreetView])
  {
    [(DCMapsURLGenerator *)self setString:@"streetview" forQueryKey:@"mapmode"];
    streetViewLocation = [mapsLink streetViewLocation];
  }

  else
  {
    centerLocation = [mapsLink centerLocation];
    v9 = centerLocation;
    if (centerLocation)
    {
      searchLocation = centerLocation;
    }

    else
    {
      searchLocation = [mapsLink searchLocation];
    }

    streetViewLocation = searchLocation;
  }

  [(DCMapsURLGenerator *)self setString:streetViewLocation forQueryKey:@"center"];
  directionsMode = [(DCGoogleMapsURLGenerator *)self directionsMode];
  [(DCMapsURLGenerator *)self setString:directionsMode forQueryKey:@"directionsmode"];

  destinationAddress = [mapsLink destinationAddress];
  [(DCMapsURLGenerator *)self setString:destinationAddress forQueryKey:@"daddr"];

  searchQuery = [mapsLink searchQuery];
  [(DCMapsURLGenerator *)self setString:searchQuery forQueryKey:@"q"];

  startAddress = [mapsLink startAddress];

  if (startAddress)
  {
    queryDictionary2 = [(DCMapsURLGenerator *)self queryDictionary];
    startAddress2 = [mapsLink startAddress];
    [queryDictionary2 setValue:startAddress2 forKey:@"saddr"];
  }
}

@end