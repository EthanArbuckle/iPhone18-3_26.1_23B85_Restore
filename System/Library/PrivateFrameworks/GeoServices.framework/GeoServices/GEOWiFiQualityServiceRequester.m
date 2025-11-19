@interface GEOWiFiQualityServiceRequester
- (id)_validateResponse:(id)a3;
@end

@implementation GEOWiFiQualityServiceRequester

- (id)_validateResponse:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = 0;
  }

  else
  {
    v5 = [NSError GEOErrorWithCode:-16 reason:@"server responded with wrong type"];
  }

  return v5;
}

@end