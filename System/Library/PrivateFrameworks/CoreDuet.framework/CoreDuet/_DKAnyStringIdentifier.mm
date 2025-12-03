@interface _DKAnyStringIdentifier
+ (id)withValue:(id)value;
@end

@implementation _DKAnyStringIdentifier

+ (id)withValue:(id)value
{
  valueCopy = value;
  type = [self type];
  v6 = [_DKIdentifier identifierWithString:valueCopy type:type];

  return v6;
}

@end