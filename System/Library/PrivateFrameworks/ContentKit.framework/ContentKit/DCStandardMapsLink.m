@interface DCStandardMapsLink
+ (BOOL)isMapsURL:(id)a3;
+ (BOOL)isStandardAppleMapsURL:(id)a3;
+ (BOOL)isStandardGoogleMapsURL:(id)a3;
+ (id)mapsLinkWithURL:(id)a3;
- (BOOL)showsStreetView;
- (BOOL)showsTraffic;
- (BOOL)showsTransit;
- (DCStandardMapsLink)initWithURL:(id)a3;
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

+ (id)mapsLinkWithURL:(id)a3
{
  v4 = a3;
  if ([a1 isMapsURL:v4])
  {
    v5 = [[a1 alloc] initWithURL:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isMapsURL:(id)a3
{
  v4 = a3;
  if ([a1 isStandardAppleMapsURL:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [a1 isStandardGoogleMapsURL:v4];
  }

  return v5;
}

+ (BOOL)isStandardGoogleMapsURL:(id)a3
{
  v3 = a3;
  v4 = [v3 query];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [v3 host];
    v7 = [v6 componentsSeparatedByString:@"."];

    if (([v7 count] - 5) >= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = [v7 objectAtIndex:0];
      v10 = [v7 objectAtIndex:1];
      v8 = 1;
      if (![v9 isEqualToString:@"maps"] || (objc_msgSend(v10, "isEqualToString:", @"google") & 1) == 0)
      {
        v11 = [v3 path];
        v12 = [v11 hasPrefix:@"/maps"];

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

+ (BOOL)isStandardAppleMapsURL:(id)a3
{
  v3 = a3;
  v4 = [v3 host];
  if ([v4 isEqualToString:@"maps.apple.com"])
  {
    v5 = [v3 pathComponents];
    if ([v5 count] > 2)
    {
      v7 = 0;
    }

    else
    {
      v6 = [v3 query];
      v7 = [v6 length] != 0;
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
    v5 = [v4 dc_queryDictionary];
    v6 = self->_queryDictionary;
    self->_queryDictionary = v5;

    queryDictionary = self->_queryDictionary;
  }

  return queryDictionary;
}

- (id)streetViewLocation
{
  v2 = [(DCStandardMapsLink *)self queryDictionary];
  v3 = [v2 objectForKey:@"cbll"];

  return v3;
}

- (BOOL)showsStreetView
{
  v2 = [(DCStandardMapsLink *)self queryDictionary];
  v3 = [v2 objectForKey:@"cbp"];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)showsTransit
{
  v2 = [(DCStandardMapsLink *)self queryDictionary];
  v3 = [v2 objectForKey:@"lci"];
  v4 = [v3 componentsSeparatedByString:{@", "}];

  LOBYTE(v2) = [v4 containsObject:@"transit"];
  return v2;
}

- (BOOL)showsTraffic
{
  v2 = [(DCStandardMapsLink *)self queryDictionary];
  v3 = [v2 objectForKey:@"layer"];
  v4 = [v3 componentsSeparatedByString:{@", "}];

  LOBYTE(v2) = [v4 containsObject:@"t"];
  return v2;
}

- (unint64_t)mapType
{
  v2 = [(DCStandardMapsLink *)self queryDictionary];
  v3 = [v2 objectForKey:@"t"];

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
  v2 = [(DCStandardMapsLink *)self queryDictionary];
  v3 = [v2 objectForKey:@"z"];
  v4 = [v3 integerValue];

  return v4;
}

- (id)centerLocation
{
  v2 = [(DCStandardMapsLink *)self queryDictionary];
  v3 = [v2 objectForKey:@"ll"];

  return v3;
}

- (unint64_t)directionsMode
{
  v2 = [(DCStandardMapsLink *)self queryDictionary];
  v3 = [v2 objectForKey:@"dirflg"];

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
  v2 = [(DCStandardMapsLink *)self queryDictionary];
  v3 = [v2 objectForKey:@"daddr"];

  return v3;
}

- (id)startAddress
{
  v2 = [(DCStandardMapsLink *)self queryDictionary];
  v3 = [v2 objectForKey:@"saddr"];

  return v3;
}

- (id)searchLocation
{
  v2 = [(DCStandardMapsLink *)self queryDictionary];
  v3 = [v2 objectForKey:@"sll"];

  return v3;
}

- (id)searchNearQuery
{
  v2 = [(DCStandardMapsLink *)self queryDictionary];
  v3 = [v2 objectForKey:@"near"];

  return v3;
}

- (id)searchQuery
{
  v3 = [(DCStandardMapsLink *)self queryDictionary];
  v4 = [v3 objectForKey:@"q"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(DCStandardMapsLink *)self queryDictionary];
    v6 = [v7 objectForKey:@"address"];
  }

  return v6;
}

- (DCStandardMapsLink)initWithURL:(id)a3
{
  v5 = a3;
  v6 = [(DCStandardMapsLink *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_URL, a3);
    v8 = v7;
  }

  return v7;
}

@end