@interface CNAutocompleteSupplementalGroup
- (CNAutocompleteSupplementalGroup)initWithIdentifier:(id)identifier title:(id)title members:(id)members;
@end

@implementation CNAutocompleteSupplementalGroup

- (CNAutocompleteSupplementalGroup)initWithIdentifier:(id)identifier title:(id)title members:(id)members
{
  identifierCopy = identifier;
  titleCopy = title;
  membersCopy = members;
  v19.receiver = self;
  v19.super_class = CNAutocompleteSupplementalGroup;
  v11 = [(CNAutocompleteSupplementalGroup *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [titleCopy copy];
    title = v11->_title;
    v11->_title = v14;

    v16 = [membersCopy copy];
    groupMembers = v11->_groupMembers;
    v11->_groupMembers = v16;
  }

  return v11;
}

@end