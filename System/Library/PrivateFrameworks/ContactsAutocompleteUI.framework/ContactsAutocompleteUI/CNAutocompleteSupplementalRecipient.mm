@interface CNAutocompleteSupplementalRecipient
- (CNAutocompleteSupplementalRecipient)initWithNameComponents:(id)components address:(id)address addressType:(int64_t)type;
@end

@implementation CNAutocompleteSupplementalRecipient

- (CNAutocompleteSupplementalRecipient)initWithNameComponents:(id)components address:(id)address addressType:(int64_t)type
{
  componentsCopy = components;
  addressCopy = address;
  v16.receiver = self;
  v16.super_class = CNAutocompleteSupplementalRecipient;
  v10 = [(CNAutocompleteSupplementalRecipient *)&v16 init];
  if (v10)
  {
    v11 = [componentsCopy copy];
    nameComponents = v10->_nameComponents;
    v10->_nameComponents = v11;

    v13 = [addressCopy copy];
    address = v10->_address;
    v10->_address = v13;

    v10->_addressType = type;
  }

  return v10;
}

@end