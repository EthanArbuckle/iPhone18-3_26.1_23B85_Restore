@interface DCNewGoogleMapsLink
+ (BOOL)isMapsURL:(id)a3;
+ (id)mapsLinkWithURL:(id)a3;
- (BOOL)showsBicycling;
- (BOOL)showsStreetView;
- (BOOL)showsTraffic;
- (BOOL)showsTransit;
- (DCNewGoogleMapsLink)initWithURL:(id)a3;
- (NSArray)mapsURLComponents;
- (id)centerLocation;
- (id)dataString;
- (id)destinationAddress;
- (id)latLonZoomString;
- (id)mapsURLComponentAtIndex:(int64_t)a3;
- (id)searchLocation;
- (id)searchQuery;
- (id)startAddress;
- (id)streetViewLocation;
- (int)linkType;
- (int64_t)zoomLevel;
- (unint64_t)directionsMode;
- (unint64_t)mapType;
- (void)parse;
- (void)parseLatLonZoom;
- (void)parseLinkType;
- (void)parseMapsData;
@end

@implementation DCNewGoogleMapsLink

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
  v3 = a3;
  v4 = [v3 host];
  v5 = [v4 componentsSeparatedByString:@"."];

  if (([v5 count] - 5) >= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = [v5 objectAtIndex:0];
    v8 = [v5 objectAtIndex:1];
    v9 = [v3 pathComponents];
    if ([v9 count] >= 3)
    {
      v10 = [v9 objectAtIndex:1];
      v11 = [v9 objectAtIndex:2];
      v6 = [v10 isEqualToString:@"maps"] && ((objc_msgSend(v11, "isEqualToString:", @"dir") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"place") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"search") & 1) != 0 || objc_msgSend(v11, "hasPrefix:", @"@")) && ((objc_msgSend(v7, "isEqualToString:", @"google") & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"www") && (objc_msgSend(v8, "isEqualToString:", @"google") & 1) != 0);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)parseMapsData
{
  v3 = [(DCNewGoogleMapsLink *)self dataString];
  if (v3)
  {
    v27 = v3;
    v4 = [v3 componentsSeparatedByString:@"!"];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"1m%d", 0];
    v6 = [v4 arrayByAddingObject:v5];

    v7 = [v6 count];
    v26 = self;
    self->_mapType = 1;
    if (v7 >= 1)
    {
      v8 = v7;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        v12 = [v6 objectAtIndex:v11];
        if ([v12 length] >= 3)
        {
          break;
        }

LABEL_65:

        if (v8 == ++v11)
        {
          goto LABEL_68;
        }
      }

      v28 = 0;
      v13 = [MEMORY[0x277CCAC80] scannerWithString:v12];
      if (![v13 scanInt:&v28])
      {
        v16 = 0;
        goto LABEL_64;
      }

      v14 = [v12 characterAtIndex:{objc_msgSend(v13, "scanLocation")}];
      v15 = [v12 substringFromIndex:{objc_msgSend(v13, "scanLocation") + 1}];
      v16 = v15;
      if (v14 == 109)
      {
        v17 = [v15 intValue];
        if (v28 == 1)
        {
          v10 = 1;
        }

        else
        {
          if (v28 != 3 || v17 - 1 >= 4)
          {
            if (v17 == 1)
            {
              v22 = v28;
            }

            else
            {
              v22 = v10;
            }

            if (v17 == 1)
            {
              v23 = 1;
            }

            else
            {
              v23 = v9;
            }

            if (v28 == 5)
            {
              v10 = v22;
              v9 = v23;
            }

            goto LABEL_64;
          }

          v10 = v28;
        }

        v9 = v17;
        goto LABEL_64;
      }

      if (v10 != 5)
      {
        if (v10 == 3)
        {
          v10 = 3;
          if (v9 - 1 > 3 || v14 != 101 || v28 != 1)
          {
            goto LABEL_64;
          }

          if ([v15 length])
          {
            v21 = [v16 intValue];
            if (v21 == 3)
            {
              v10 = 3;
              v26->_mapType = 3;
              goto LABEL_64;
            }

            if (v21 == 1)
            {
              v26->_showsStreetView = 1;
            }
          }

          v10 = 3;
        }

        else
        {
          if (v10 != 1)
          {
            goto LABEL_64;
          }

          v10 = 1;
          if (v9 > 6)
          {
            goto LABEL_64;
          }

          if (((1 << v9) & 0x66) == 0)
          {
            goto LABEL_64;
          }

          v10 = 1;
          if (v14 != 101 || v28 != 3)
          {
            goto LABEL_64;
          }

          if (![v15 length])
          {
            goto LABEL_63;
          }

          v18 = [v16 intValue];
          v10 = 1;
          if (v18 > 1)
          {
            switch(v18)
            {
              case 2:
                v19 = v26;
                v20 = 3;
                break;
              case 3:
                v19 = v26;
                v20 = 4;
                break;
              case 4:
                v19 = v26;
                v20 = 5;
                break;
              default:
                goto LABEL_64;
            }

            goto LABEL_62;
          }

          if (!v18)
          {
            v10 = 1;
            v26->_directionsMode = 1;
            goto LABEL_64;
          }

          if (v18 == 1)
          {
            v19 = v26;
            v20 = 2;
LABEL_62:
            v19->_directionsMode = v20;
LABEL_63:
            v10 = 1;
          }
        }

LABEL_64:

        goto LABEL_65;
      }

      v10 = 5;
      if (v9 != 1 || v14 != 101 || v28 != 1)
      {
        goto LABEL_64;
      }

      if ([v15 length])
      {
        v24 = [v16 intValue];
        v9 = 1;
        switch(v24)
        {
          case 3:
            v25 = 9;
            goto LABEL_58;
          case 2:
            v25 = 8;
            goto LABEL_58;
          case 1:
            v25 = 11;
LABEL_58:
            *(&v26->super.super.isa + v25) = 1;
            break;
        }
      }

      else
      {
        v9 = 1;
      }

      v10 = 5;
      goto LABEL_64;
    }

LABEL_68:

    v3 = v27;
  }
}

- (id)dataString
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(DCNewGoogleMapsLink *)self mapsURLComponents];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 hasPrefix:@"data="])
        {
          v8 = [v7 substringFromIndex:{objc_msgSend(@"data=", "length")}];
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (void)parse
{
  self->_parsed = 1;
  [(DCNewGoogleMapsLink *)self parseLinkType];
  [(DCNewGoogleMapsLink *)self parseMapsData];

  [(DCNewGoogleMapsLink *)self parseLatLonZoom];
}

- (void)parseLatLonZoom
{
  v3 = [(DCNewGoogleMapsLink *)self latLonZoomString];
  v4 = [MEMORY[0x277CCAC80] scannerWithString:v3];
  [v4 scanString:@"@" intoString:0];
  v12 = 0;
  [v4 scanUpToString:@" intoString:{", &v12}];
  v5 = v12;
  [v4 scanString:@" intoString:{", 0}];
  v11 = 0;
  [v4 scanUpToString:@" intoString:{", &v11}];
  v6 = v11;
  [v4 scanString:@" intoString:{", 0}];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@", v5, v6];

  [(DCNewGoogleMapsLink *)self setLocation:v7];
  v10 = 0;
  [v4 scanInteger:&v10];
  v8 = [v3 substringWithRange:{objc_msgSend(v4, "scanLocation"), 1}];
  if ([v8 isEqualToString:@"z"])
  {
    v9 = v10;
LABEL_5:
    self->_zoomLevel = v9;
    goto LABEL_6;
  }

  if ([v8 isEqualToString:@"m"])
  {
    v9 = (floor(8.0 - log2(v10 * 0.000000480304131)) + -1.0);
    goto LABEL_5;
  }

LABEL_6:
}

- (id)latLonZoomString
{
  v3 = [(DCNewGoogleMapsLink *)self linkType];
  if (v3 <= 3)
  {
    v4 = [(DCNewGoogleMapsLink *)self mapsURLComponentAtIndex:qword_21E356D80[v3]];
  }

  return v4;
}

- (void)parseLinkType
{
  v3 = [(DCNewGoogleMapsLink *)self mapsURLComponents];
  v5 = [v3 firstObject];

  if ([v5 isEqualToString:@"search"])
  {
    v4 = 1;
LABEL_7:
    self->_linkType = v4;
    goto LABEL_8;
  }

  if ([v5 isEqualToString:@"place"])
  {
    v4 = 2;
    goto LABEL_7;
  }

  if ([v5 isEqualToString:@"dir"])
  {
    v4 = 3;
    goto LABEL_7;
  }

  if ([v5 hasPrefix:@"@"])
  {
    v4 = 0;
    goto LABEL_7;
  }

LABEL_8:

  MEMORY[0x2821F96F8]();
}

- (int)linkType
{
  if (![(DCNewGoogleMapsLink *)self parsed])
  {
    [(DCNewGoogleMapsLink *)self parse];
  }

  return self->_linkType;
}

- (id)mapsURLComponentAtIndex:(int64_t)a3
{
  v4 = [(DCNewGoogleMapsLink *)self mapsURLComponents];
  if ([v4 count] <= a3)
  {
    v6 = 0;
  }

  else
  {
    v5 = [v4 objectAtIndex:a3];
    v6 = [v5 stringByRemovingPercentEncoding];
  }

  return v6;
}

- (NSArray)mapsURLComponents
{
  mapsURLComponents = self->_mapsURLComponents;
  if (!mapsURLComponents)
  {
    v4 = [(DCNewGoogleMapsLink *)self URL];
    v5 = [v4 pathComponents];

    v6 = [v5 subarrayWithRange:{2, objc_msgSend(v5, "count") - 2}];
    v7 = self->_mapsURLComponents;
    self->_mapsURLComponents = v6;

    mapsURLComponents = self->_mapsURLComponents;
  }

  return mapsURLComponents;
}

- (id)streetViewLocation
{
  if ([(DCNewGoogleMapsLink *)self showsStreetView])
  {
    v3 = [(DCNewGoogleMapsLink *)self location];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)showsBicycling
{
  if (![(DCNewGoogleMapsLink *)self parsed])
  {
    [(DCNewGoogleMapsLink *)self parse];
  }

  return self->_showsBicycling;
}

- (BOOL)showsStreetView
{
  if (![(DCNewGoogleMapsLink *)self parsed])
  {
    [(DCNewGoogleMapsLink *)self parse];
  }

  return self->_showsStreetView;
}

- (BOOL)showsTransit
{
  if (![(DCNewGoogleMapsLink *)self parsed])
  {
    [(DCNewGoogleMapsLink *)self parse];
  }

  return self->_showsTransit;
}

- (BOOL)showsTraffic
{
  if (![(DCNewGoogleMapsLink *)self parsed])
  {
    [(DCNewGoogleMapsLink *)self parse];
  }

  return self->_showsTraffic;
}

- (unint64_t)mapType
{
  if (![(DCNewGoogleMapsLink *)self parsed])
  {
    [(DCNewGoogleMapsLink *)self parse];
  }

  return self->_mapType;
}

- (int64_t)zoomLevel
{
  if (![(DCNewGoogleMapsLink *)self parsed])
  {
    [(DCNewGoogleMapsLink *)self parse];
  }

  return self->_zoomLevel;
}

- (id)centerLocation
{
  if (![(DCNewGoogleMapsLink *)self parsed])
  {
    [(DCNewGoogleMapsLink *)self parse];
  }

  return [(DCNewGoogleMapsLink *)self location];
}

- (unint64_t)directionsMode
{
  if ([(DCNewGoogleMapsLink *)self linkType]== 3)
  {
    return self->_directionsMode;
  }

  else
  {
    return 0;
  }
}

- (id)destinationAddress
{
  if ([(DCNewGoogleMapsLink *)self linkType]== 3)
  {
    v3 = [(DCNewGoogleMapsLink *)self mapsURLComponentAtIndex:2];
    v4 = [v3 stringByReplacingOccurrencesOfString:@"+" withString:@" "];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)startAddress
{
  if ([(DCNewGoogleMapsLink *)self linkType]== 3)
  {
    v3 = [(DCNewGoogleMapsLink *)self mapsURLComponentAtIndex:1];
    v4 = [v3 stringByReplacingOccurrencesOfString:@"+" withString:@" "];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)searchLocation
{
  if ([(DCNewGoogleMapsLink *)self linkType]== 1)
  {
    v3 = [(DCNewGoogleMapsLink *)self location];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)searchQuery
{
  if ([(DCNewGoogleMapsLink *)self linkType]- 1 > 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(DCNewGoogleMapsLink *)self mapsURLComponentAtIndex:1];
  }

  return v3;
}

- (DCNewGoogleMapsLink)initWithURL:(id)a3
{
  v5 = a3;
  v6 = [(DCNewGoogleMapsLink *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_URL, a3);
    v8 = v7;
  }

  return v7;
}

@end