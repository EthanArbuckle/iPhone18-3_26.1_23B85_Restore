@interface GEOWiFiQualityServiceRequester
- (id)_validateResponse:(id)response;
@end

@implementation GEOWiFiQualityServiceRequester

- (id)_validateResponse:(id)response
{
  responseCopy = response;
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