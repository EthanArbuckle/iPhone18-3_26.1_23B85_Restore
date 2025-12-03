@interface _DKLocationIdentifier
+ (id)withLocation:(id)location;
@end

@implementation _DKLocationIdentifier

+ (id)withLocation:(id)location
{
  locationCopy = location;
  type = [self type];
  v6 = [_DKIdentifier identifierWithString:locationCopy type:type];

  return v6;
}

@end