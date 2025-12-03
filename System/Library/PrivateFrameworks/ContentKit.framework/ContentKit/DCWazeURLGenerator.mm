@interface DCWazeURLGenerator
- (void)populateQueryDictionary;
@end

@implementation DCWazeURLGenerator

- (void)populateQueryDictionary
{
  queryDictionary = [(DCMapsURLGenerator *)self queryDictionary];
  mapsLink = [(DCMapsURLGenerator *)self mapsLink];
  searchQuery = [mapsLink searchQuery];
  centerLocation = [mapsLink centerLocation];
  v6 = centerLocation;
  if (centerLocation)
  {
    searchLocation = centerLocation;
  }

  else
  {
    searchLocation = [mapsLink searchLocation];
  }

  v8 = searchLocation;

  destinationAddress = [mapsLink destinationAddress];
  if (destinationAddress)
  {
    [queryDictionary setObject:destinationAddress forKey:@"q"];
    v10 = @"yes";
    v11 = @"navigate";
    v12 = queryDictionary;
  }

  else
  {
    v12 = queryDictionary;
    if (searchQuery)
    {
      v11 = @"q";
      v10 = searchQuery;
    }

    else
    {
      if (!v8)
      {
        goto LABEL_11;
      }

      v11 = @"ll";
      v12 = queryDictionary;
      v10 = v8;
    }
  }

  [v12 setObject:v10 forKey:v11];
LABEL_11:
}

@end