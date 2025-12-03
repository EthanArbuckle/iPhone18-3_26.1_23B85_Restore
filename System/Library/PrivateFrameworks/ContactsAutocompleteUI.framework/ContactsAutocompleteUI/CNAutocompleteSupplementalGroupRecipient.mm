@interface CNAutocompleteSupplementalGroupRecipient
- (CNAutocompleteSupplementalGroupRecipient)initWithIdentifier:(id)identifier title:(id)title members:(id)members;
@end

@implementation CNAutocompleteSupplementalGroupRecipient

- (CNAutocompleteSupplementalGroupRecipient)initWithIdentifier:(id)identifier title:(id)title members:(id)members
{
  identifierCopy = identifier;
  titleCopy = title;
  membersCopy = members;
  v19.receiver = self;
  v19.super_class = CNAutocompleteSupplementalGroupRecipient;
  v11 = [(CNAutocompleteSupplementalGroupRecipient *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [titleCopy copy];
    title = v11->_title;
    v11->_title = v14;

    v16 = [membersCopy copy];
    members = v11->_members;
    v11->_members = v16;
  }

  return v11;
}

@end