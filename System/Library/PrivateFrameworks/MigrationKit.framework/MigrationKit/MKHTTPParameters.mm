@interface MKHTTPParameters
- (MKHTTPParameters)initWithDictionary:(id)dictionary;
@end

@implementation MKHTTPParameters

- (MKHTTPParameters)initWithDictionary:(id)dictionary
{
  v4.receiver = self;
  v4.super_class = MKHTTPParameters;
  return [(MKHTTPParameters *)&v4 init];
}

@end