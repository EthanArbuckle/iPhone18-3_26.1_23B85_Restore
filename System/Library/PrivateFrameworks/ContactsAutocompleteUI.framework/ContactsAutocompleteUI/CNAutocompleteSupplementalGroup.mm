@interface CNAutocompleteSupplementalGroup
- (CNAutocompleteSupplementalGroup)initWithIdentifier:(id)a3 title:(id)a4 members:(id)a5;
@end

@implementation CNAutocompleteSupplementalGroup

- (CNAutocompleteSupplementalGroup)initWithIdentifier:(id)a3 title:(id)a4 members:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = CNAutocompleteSupplementalGroup;
  v11 = [(CNAutocompleteSupplementalGroup *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [v9 copy];
    title = v11->_title;
    v11->_title = v14;

    v16 = [v10 copy];
    groupMembers = v11->_groupMembers;
    v11->_groupMembers = v16;
  }

  return v11;
}

@end