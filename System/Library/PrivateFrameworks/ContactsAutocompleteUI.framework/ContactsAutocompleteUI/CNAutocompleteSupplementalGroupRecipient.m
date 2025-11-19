@interface CNAutocompleteSupplementalGroupRecipient
- (CNAutocompleteSupplementalGroupRecipient)initWithIdentifier:(id)a3 title:(id)a4 members:(id)a5;
@end

@implementation CNAutocompleteSupplementalGroupRecipient

- (CNAutocompleteSupplementalGroupRecipient)initWithIdentifier:(id)a3 title:(id)a4 members:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = CNAutocompleteSupplementalGroupRecipient;
  v11 = [(CNAutocompleteSupplementalGroupRecipient *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [v9 copy];
    title = v11->_title;
    v11->_title = v14;

    v16 = [v10 copy];
    members = v11->_members;
    v11->_members = v16;
  }

  return v11;
}

@end