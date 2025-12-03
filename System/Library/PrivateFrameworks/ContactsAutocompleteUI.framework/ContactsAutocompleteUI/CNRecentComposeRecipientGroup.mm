@interface CNRecentComposeRecipientGroup
- (CNRecentComposeRecipientGroup)initWithChildren:(id)children displayString:(id)string recentContact:(id)contact;
- (id)label;
- (id)placeholderName;
@end

@implementation CNRecentComposeRecipientGroup

- (CNRecentComposeRecipientGroup)initWithChildren:(id)children displayString:(id)string recentContact:(id)contact
{
  contactCopy = contact;
  v14.receiver = self;
  v14.super_class = CNRecentComposeRecipientGroup;
  v10 = [(CNComposeRecipientGroup *)&v14 initWithChildren:children displayString:string];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_recentContact, contact);
    v12 = v11;
  }

  return v11;
}

- (id)label
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"RECENT_GROUP" value:&stru_1F3002C60 table:@"Localized"];

  return v3;
}

- (id)placeholderName
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"RECENT_GROUP_PLACEHOLDER" value:&stru_1F3002C60 table:@"Localized"];

  return v3;
}

@end