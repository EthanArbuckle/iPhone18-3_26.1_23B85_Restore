@interface NSString(DAVExtensions)
- (__CFString)stringByURLUnquoting;
- (id)stringByURLQuoting;
- (id)stringByURLQuotingPaths;
- (id)stringByXMLUnquoting;
@end

@implementation NSString(DAVExtensions)

- (id)stringByXMLUnquoting
{
  v1 = [self mutableCopy];
  [v1 replaceOccurrencesOfString:@"&amp;" withString:@"&" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"&lt;" withString:@"<" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"&gt;" withString:@">" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"&quot;" withString:@" options:0 range:{0, objc_msgSend(v1, "length"")}];
  [v1 replaceOccurrencesOfString:@"&apos;" withString:@"'" options:0 range:{0, objc_msgSend(v1, "length")}];
  v2 = [v1 copy];

  return v2;
}

- (id)stringByURLQuotingPaths
{
  if (stringByURLQuotingPaths_onceToken != -1)
  {
    [NSString(DAVExtensions) stringByURLQuotingPaths];
  }

  v2 = [self stringByAddingPercentEncodingWithAllowedCharacters:stringByURLQuotingPaths_allowedCharacterSet];
  v3 = v2;
  if (v2)
  {
    selfCopy = v2;
  }

  else
  {
    selfCopy = self;
  }

  v5 = selfCopy;

  return v5;
}

- (id)stringByURLQuoting
{
  if (stringByURLQuoting_onceToken != -1)
  {
    [NSString(DAVExtensions) stringByURLQuoting];
  }

  v2 = [self stringByAddingPercentEncodingWithAllowedCharacters:stringByURLQuoting_allowedCharacterSet];
  v3 = v2;
  if (v2)
  {
    selfCopy = v2;
  }

  else
  {
    selfCopy = self;
  }

  v5 = selfCopy;

  return v5;
}

- (__CFString)stringByURLUnquoting
{
  v2 = CFURLCreateStringByReplacingPercentEscapes(0, originalString, &stru_285505238);
  if (!v2)
  {
    v2 = originalString;
  }

  return v2;
}

@end