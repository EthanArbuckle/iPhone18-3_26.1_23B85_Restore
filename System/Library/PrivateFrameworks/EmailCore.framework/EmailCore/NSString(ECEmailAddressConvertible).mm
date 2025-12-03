@interface NSString(ECEmailAddressConvertible)
- (id)stringValue;
@end

@implementation NSString(ECEmailAddressConvertible)

- (id)stringValue
{
  emailAddressValue = [self emailAddressValue];
  stringValue = [emailAddressValue stringValue];
  v4 = stringValue;
  if (stringValue)
  {
    v5 = stringValue;
  }

  else
  {
    v6 = [self copy];
    v5 = [v6 stringByReplacingOccurrencesOfString:&stru_284042A88 withString:&stru_284041D88];
  }

  return v5;
}

@end