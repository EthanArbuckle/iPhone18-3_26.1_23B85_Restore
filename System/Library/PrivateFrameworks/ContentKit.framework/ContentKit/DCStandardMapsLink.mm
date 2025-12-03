@interface DCStandardMapsLink
+ (BOOL)isMapsURL:(id)l;
+ (BOOL)isStandardAppleMapsURL:(id)l;
+ (BOOL)isStandardGoogleMapsURL:(id)l;
+ (id)mapsLinkWithURL:(id)l;
- (BOOL)showsStreetView;
- (BOOL)showsTraffic;
- (BOOL)showsTransit;
- (DCStandardMapsLink)initWithURL:(id)l;
- (NSDictionary)queryDictionary;
- (id)centerLocation;
- (id)destinationAddress;
- (id)searchLocation;
- (id)searchNearQuery;
- (id)searchQuery;
- (id)startAddress;
- (id)streetViewLocation;
- (int64_t)zoomLevel;
- (unint64_t)directionsMode;
- (unint64_t)mapType;
@end

@implementation DCStandardMapsLink

+ (id)mapsLinkWithURL:(id)l
{
  lCopy = l;
  if ([self isMapsURL:lCopy])
  {
    v5 = [[self alloc] initWithURL:lCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isMapsURL:(id)l
{
  lCopy = l;
  if ([self isStandardAppleMapsURL:lCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [self isStandardGoogleMapsURL:lCopy];
  }

  return v5;
}

+ (BOOL)isStandardGoogleMapsURL:(id)l
{
  lCopy = l;
  query = [lCopy query];
  v5 = [query length];

  if (v5)
  {
    host = [lCopy host];
    v7 = [host componentsSeparatedByString:@"."];

    if (([v7 count] - 5) >= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = [v7 objectAtIndex:0];
      v10 = [v7 objectAtIndex:1];
      v8 = 1;
      if (![v9 isEqualToString:@"maps"] || (objc_msgSend(v10, "isEqualToString:", @"google") & 1) == 0)
      {
        path = [lCopy path];
        v12 = [path hasPrefix:@"/maps"];

        if (!v12 || ([v9 isEqualToString:@"google"] & 1) == 0 && (!objc_msgSend(v9, "isEqualToString:", @"www") || (objc_msgSend(v10, "isEqualToString:", @"google") & 1) == 0))
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isStandardAppleMapsURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  if ([host isEqualToString:@"maps.apple.com"])
  {
    pathComponents = [lCopy pathComponents];
    if ([pathComponents count] > 2)
    {
      v7 = 0;
    }

    else
    {
      query = [lCopy query];
      v7 = [query length] != 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSDictionary)queryDictionary
{
  queryDictionary = self->_queryDictionary;
  if (!queryDictionary)
  {
    v4 = [(DCStandardMapsLink *)self URL];
    dc_queryDictionary = [v4 dc_queryDictionary];
    v6 = self->_queryDictionary;
    self->_queryDictionary = dc_queryDictionary;

    queryDictionary = self->_queryDictionary;
  }

  return queryDictionary;
}

- (id)streetViewLocation
{
  queryDictionary = [(DCStandardMapsLink *)self queryDictionary];
  v3 = [queryDictionary objectForKey:@"cbll"];

  return v3;
}

- (BOOL)showsStreetView
{
  queryDictionary = [(DCStandardMapsLink *)self queryDictionary];
  v3 = [queryDictionary objectForKey:@"cbp"];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)showsTransit
{
  queryDictionary = [(DCStandardMapsLink *)self queryDictionary];
  v3 = [queryDictionary objectForKey:@"lci"];
  v4 = [v3 componentsSeparatedByString:{@", "}];

  LOBYTE(queryDictionary) = [v4 containsObject:@"transit"];
  return queryDictionary;
}

- (BOOL)showsTraffic
{
  queryDictionary = [(DCStandardMapsLink *)self queryDictionary];
  v3 = [queryDictionary objectForKey:@"layer"];
  v4 = [v3 componentsSeparatedByString:{@", "}];

  LOBYTE(queryDictionary) = [v4 containsObject:@"t"];
  return queryDictionary;
}

- (unint64_t)mapType
{
  queryDictionary = [(DCStandardMapsLink *)self queryDictionary];
  v3 = [queryDictionary objectForKey:@"t"];

  if ([v3 isEqualToString:@"m"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"h"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"k"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"p"))
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"e"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)zoomLevel
{
  queryDictionary = [(DCStandardMapsLink *)self queryDictionary];
  v3 = [queryDictionary objectForKey:@"z"];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (id)centerLocation
{
  queryDictionary = [(DCStandardMapsLink *)self queryDictionary];
  v3 = [queryDictionary objectForKey:@"ll"];

  return v3;
}

- (unint64_t)directionsMode
{
  queryDictionary = [(DCStandardMapsLink *)self queryDictionary];
  v3 = [queryDictionary objectForKey:@"dirflg"];

  if ([v3 isEqualToString:@"d"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"w"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"r"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"b"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"f"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)destinationAddress
{
  queryDictionary = [(DCStandardMapsLink *)self queryDictionary];
  v3 = [queryDictionary objectForKey:@"daddr"];

  return v3;
}

- (id)startAddress
{
  queryDictionary = [(DCStandardMapsLink *)self queryDictionary];
  v3 = [queryDictionary objectForKey:@"saddr"];

  return v3;
}

- (id)searchLocation
{
  queryDictionary = [(DCStandardMapsLink *)self queryDictionary];
  v3 = [queryDictionary objectForKey:@"sll"];

  return v3;
}

- (id)searchNearQuery
{
  queryDictionary = [(DCStandardMapsLink *)self queryDictionary];
  v3 = [queryDictionary objectForKey:@"near"];

  return v3;
}

- (id)searchQuery
{
  queryDictionary = [(DCStandardMapsLink *)self queryDictionary];
  v4 = [queryDictionary objectForKey:@"q"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    queryDictionary2 = [(DCStandardMapsLink *)self queryDictionary];
    v6 = [queryDictionary2 objectForKey:@"address"];
  }

  return v6;
}

- (DCStandardMapsLink)initWithURL:(id)l
{
  lCopy = l;
  v6 = [(DCStandardMapsLink *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_URL, l);
    v8 = v7;
  }

  return v7;
}

@end