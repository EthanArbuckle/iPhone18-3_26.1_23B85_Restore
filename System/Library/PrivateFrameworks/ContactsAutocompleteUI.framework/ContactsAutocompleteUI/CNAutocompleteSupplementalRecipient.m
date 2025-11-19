@interface CNAutocompleteSupplementalRecipient
- (CNAutocompleteSupplementalRecipient)initWithNameComponents:(id)a3 address:(id)a4 addressType:(int64_t)a5;
@end

@implementation CNAutocompleteSupplementalRecipient

- (CNAutocompleteSupplementalRecipient)initWithNameComponents:(id)a3 address:(id)a4 addressType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = CNAutocompleteSupplementalRecipient;
  v10 = [(CNAutocompleteSupplementalRecipient *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    nameComponents = v10->_nameComponents;
    v10->_nameComponents = v11;

    v13 = [v9 copy];
    address = v10->_address;
    v10->_address = v13;

    v10->_addressType = a5;
  }

  return v10;
}

@end