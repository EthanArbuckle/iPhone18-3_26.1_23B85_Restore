@interface CNUnifiedComposeRecipient
- (BOOL)isEqual:(id)equal;
- (BOOL)showsChevronButton;
- (CNUnifiedComposeRecipient)initWithChildren:(id)children defaultChild:(id)child;
@end

@implementation CNUnifiedComposeRecipient

- (CNUnifiedComposeRecipient)initWithChildren:(id)children defaultChild:(id)child
{
  childrenCopy = children;
  childCopy = child;
  v9 = childCopy;
  if (childCopy)
  {
    firstObject = childCopy;
  }

  else
  {
    firstObject = [childrenCopy firstObject];
  }

  v11 = firstObject;
  inputAddress = [v9 inputAddress];
  v25.receiver = self;
  v25.super_class = CNUnifiedComposeRecipient;
  v13 = -[CNComposeRecipient initWithContact:address:kind:](&v25, sel_initWithContact_address_kind_, 0, inputAddress, [v9 kind]);

  if (v13)
  {
    autocompleteResult = [v11 autocompleteResult];
    [(CNComposeRecipient *)v13 setAutocompleteResult:autocompleteResult];
    displayString = [v11 displayString];
    [(CNComposeRecipient *)v13 setDisplayString:displayString];

    nameComponents = [v11 nameComponents];
    [(CNComposeRecipient *)v13 setNameComponents:nameComponents];

    value = [autocompleteResult value];
    identifier = [value identifier];
    [(CNComposeRecipient *)v13 setValueIdentifier:identifier];

    value2 = [autocompleteResult value];
    label = [value2 label];
    [(CNComposeRecipient *)v13 setUnlocalizedLabel:label];

    identifier2 = [autocompleteResult identifier];

    if (identifier2)
    {
      identifier3 = [autocompleteResult identifier];
      [(CNComposeRecipient *)v13 setContactIdentifier:identifier3];
    }

    originContext = [v11 originContext];
    [(CNComposeRecipient *)v13 setOriginContext:originContext];

    objc_storeStrong(&v13->_children, children);
    -[CNComposeRecipient setIsMemberOfGroup:](v13, "setIsMemberOfGroup:", [v11 isMemberOfGroup]);
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    children = [v5 children];
    children2 = [(CNUnifiedComposeRecipient *)self children];
    if ([children isEqualToArray:children2])
    {
      v10.receiver = self;
      v10.super_class = CNUnifiedComposeRecipient;
      v8 = [(CNComposeRecipient *)&v10 isEqual:v5];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)showsChevronButton
{
  children = [(CNUnifiedComposeRecipient *)self children];
  v3 = [children count] > 1;

  return v3;
}

@end