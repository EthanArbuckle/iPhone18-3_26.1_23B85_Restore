@interface CNRecentComposeRecipient
- (BOOL)isEqual:(id)equal;
- (CNRecentComposeRecipient)initWithCoder:(id)coder;
- (CNRecentComposeRecipient)initWithRecentContact:(id)contact;
- (id)description;
- (id)placeholderName;
@end

@implementation CNRecentComposeRecipient

- (CNRecentComposeRecipient)initWithRecentContact:(id)contact
{
  contactCopy = contact;
  descriptorsForRequiredKeysForContact = [objc_opt_class() descriptorsForRequiredKeysForContact];
  v7 = [contactCopy contactWithKeysToFetch:descriptorsForRequiredKeysForContact];

  address = [contactCopy address];
  kind = [contactCopy kind];
  v10 = CNAutocompleteContactKeyForRecentsKind(kind);

  v11 = v10;
  if ([v11 isEqualToString:*MEMORY[0x1E695C330]])
  {
    v12 = 1;
  }

  else if ([v11 isEqualToString:*MEMORY[0x1E695C208]])
  {
    v12 = 0;
  }

  else if ([v11 isEqualToString:*MEMORY[0x1E695C2B0]])
  {
    v12 = 2;
  }

  else
  {
    v12 = 5;
  }

  v17.receiver = self;
  v17.super_class = CNRecentComposeRecipient;
  v13 = [(CNComposeRecipient *)&v17 initWithContact:v7 address:address kind:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_recent, contact);
    v15 = v14;
  }

  return v14;
}

- (id)placeholderName
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"RECENT_PLACEHOLDER_NAME" value:&stru_1F3002C60 table:@"Localized"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    recentContact = [equalCopy recentContact];
    address = [recentContact address];
    recentContact2 = [(CNRecentComposeRecipient *)self recentContact];
    address2 = [recentContact2 address];
    v9 = [address isEqualToString:address2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  address = [(CNComposeRecipient *)self address];
  v7 = [v3 stringWithFormat:@"<%@: %p> %@", v5, self, address];

  return v7;
}

- (CNRecentComposeRecipient)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recent"];

  v6 = [(CNRecentComposeRecipient *)self initWithRecentContact:v5];
  return v6;
}

@end