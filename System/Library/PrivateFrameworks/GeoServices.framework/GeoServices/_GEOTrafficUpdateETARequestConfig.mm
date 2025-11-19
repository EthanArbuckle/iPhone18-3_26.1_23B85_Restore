@interface _GEOTrafficUpdateETARequestConfig
- (id)additionalURLQueryItems;
@end

@implementation _GEOTrafficUpdateETARequestConfig

- (id)additionalURLQueryItems
{
  v2 = GeoServicesConfig_ExperimentalDirectionsService[1];
  v3 = GEOConfigGetString();
  if (v3)
  {
    v4 = [NSCharacterSet characterSetWithCharactersInString:@"?"];
    v5 = [v3 stringByTrimmingCharactersInSet:v4];
    v6 = [v5 componentsSeparatedByString:@"="];

    if ([v6 count] == 2)
    {
      v7 = [v6 objectAtIndexedSubscript:0];
      v8 = [v6 objectAtIndexedSubscript:1];
      v9 = [NSURLQueryItem queryItemWithName:v7 value:v8];

      v12 = v9;
      v10 = [NSArray arrayWithObjects:&v12 count:1];
    }

    else
    {
      v10 = &__NSArray0__struct;
    }
  }

  else
  {
    v10 = &__NSArray0__struct;
  }

  return v10;
}

@end