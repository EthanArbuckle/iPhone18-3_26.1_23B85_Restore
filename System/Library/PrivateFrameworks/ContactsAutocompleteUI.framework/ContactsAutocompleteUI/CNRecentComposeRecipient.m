@interface CNRecentComposeRecipient
- (BOOL)isEqual:(id)a3;
- (CNRecentComposeRecipient)initWithCoder:(id)a3;
- (CNRecentComposeRecipient)initWithRecentContact:(id)a3;
- (id)description;
- (id)placeholderName;
@end

@implementation CNRecentComposeRecipient

- (CNRecentComposeRecipient)initWithRecentContact:(id)a3
{
  v5 = a3;
  v6 = [objc_opt_class() descriptorsForRequiredKeysForContact];
  v7 = [v5 contactWithKeysToFetch:v6];

  v8 = [v5 address];
  v9 = [v5 kind];
  v10 = CNAutocompleteContactKeyForRecentsKind(v9);

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
  v13 = [(CNComposeRecipient *)&v17 initWithContact:v7 address:v8 kind:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_recent, a3);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 recentContact];
    v6 = [v5 address];
    v7 = [(CNRecentComposeRecipient *)self recentContact];
    v8 = [v7 address];
    v9 = [v6 isEqualToString:v8];
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
  v6 = [(CNComposeRecipient *)self address];
  v7 = [v3 stringWithFormat:@"<%@: %p> %@", v5, self, v6];

  return v7;
}

- (CNRecentComposeRecipient)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recent"];

  v6 = [(CNRecentComposeRecipient *)self initWithRecentContact:v5];
  return v6;
}

@end