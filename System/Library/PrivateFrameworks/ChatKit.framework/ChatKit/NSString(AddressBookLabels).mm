@interface NSString(AddressBookLabels)
- (uint64_t)isAddressBookLabel;
@end

@implementation NSString(AddressBookLabels)

- (uint64_t)isAddressBookLabel
{
  if ([a1 _appearsToBePhoneNumber])
  {
    return 0;
  }

  else
  {
    return [a1 _appearsToBeEmail] ^ 1;
  }
}

@end