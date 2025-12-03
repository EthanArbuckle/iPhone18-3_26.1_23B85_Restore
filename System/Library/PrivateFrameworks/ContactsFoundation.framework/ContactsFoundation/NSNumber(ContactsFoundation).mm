@interface NSNumber(ContactsFoundation)
- (void)_cn_times:()ContactsFoundation;
@end

@implementation NSNumber(ContactsFoundation)

- (void)_cn_times:()ContactsFoundation
{
  v6 = a3;
  if (([self integerValue] & 0x8000000000000000) == 0)
  {
    integerValue = [self integerValue];
    if (integerValue)
    {
      v5 = integerValue;
      do
      {
        v6[2]();
        --v5;
      }

      while (v5);
    }
  }
}

@end