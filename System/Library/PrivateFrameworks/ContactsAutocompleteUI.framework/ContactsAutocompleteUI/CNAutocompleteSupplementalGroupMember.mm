@interface CNAutocompleteSupplementalGroupMember
- (CNAutocompleteSupplementalGroupMember)initWithName:(id)name address:(id)address addressType:(int64_t)type;
- (CNAutocompleteSupplementalGroupMember)initWithNameComponents:(id)components address:(id)address addressType:(int64_t)type;
@end

@implementation CNAutocompleteSupplementalGroupMember

- (CNAutocompleteSupplementalGroupMember)initWithName:(id)name address:(id)address addressType:(int64_t)type
{
  nameCopy = name;
  v10 = [(CNAutocompleteSupplementalGroupMember *)self initWithNameComponents:0 address:address addressType:type];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_name, name);
  }

  return v11;
}

- (CNAutocompleteSupplementalGroupMember)initWithNameComponents:(id)components address:(id)address addressType:(int64_t)type
{
  componentsCopy = components;
  addressCopy = address;
  v16.receiver = self;
  v16.super_class = CNAutocompleteSupplementalGroupMember;
  v10 = [(CNAutocompleteSupplementalGroupMember *)&v16 init];
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