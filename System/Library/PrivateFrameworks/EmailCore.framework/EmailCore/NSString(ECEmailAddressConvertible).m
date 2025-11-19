@interface NSString(ECEmailAddressConvertible)
- (id)stringValue;
@end

@implementation NSString(ECEmailAddressConvertible)

- (id)stringValue
{
  v2 = [a1 emailAddressValue];
  v3 = [v2 stringValue];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [a1 copy];
    v5 = [v6 stringByReplacingOccurrencesOfString:&stru_284042A88 withString:&stru_284041D88];
  }

  return v5;
}

@end