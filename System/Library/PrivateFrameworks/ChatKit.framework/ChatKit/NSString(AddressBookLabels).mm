@interface NSString(AddressBookLabels)
- (uint64_t)isAddressBookLabel;
@end

@implementation NSString(AddressBookLabels)

- (uint64_t)isAddressBookLabel
{
  if ([self _appearsToBePhoneNumber])
  {
    return 0;
  }

  else
  {
    return [self _appearsToBeEmail] ^ 1;
  }
}

@end