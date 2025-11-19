@interface NSNumber(ContactsFoundation)
- (void)_cn_times:()ContactsFoundation;
@end

@implementation NSNumber(ContactsFoundation)

- (void)_cn_times:()ContactsFoundation
{
  v6 = a3;
  if (([a1 integerValue] & 0x8000000000000000) == 0)
  {
    v4 = [a1 integerValue];
    if (v4)
    {
      v5 = v4;
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