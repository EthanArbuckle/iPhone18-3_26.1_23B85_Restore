@interface CNUICoreFamilyMemberContactsModelBuilder
+ (BOOL)shouldIncludeContact:(id)contact givenIncludeWhitelistedContactsOnlySetting:(BOOL)setting;
+ (id)familyMemberContactItemFromContact:(id)contact contactFormatterStyle:(int64_t)style contactTypeAssessor:(id)assessor itemHasBeenPersisted:(BOOL)persisted itemIsProposed:(BOOL)proposed;
+ (id)firstDisplayableEmailAddressForContact:(id)contact;
+ (id)firstDisplayablePhoneNumberForContact:(id)contact;
+ (id)formattedNameOfContact:(id)contact contactFormatterStyle:(int64_t)style;
+ (id)placeholderNameForNamelessContact:(id)contact;
+ (id)uniqueFamilyMemberContactItems:(id)items;
- (CNUICoreFamilyMemberContactsModelBuilder)init;
- (id)build;
- (id)sortedFamilyMemberContactItems:(id)items;
@end

@implementation CNUICoreFamilyMemberContactsModelBuilder

- (CNUICoreFamilyMemberContactsModelBuilder)init
{
  v6.receiver = self;
  v6.super_class = CNUICoreFamilyMemberContactsModelBuilder;
  v2 = [(CNUICoreFamilyMemberContactsModelBuilder *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_markItemsAsPersisted = 1;
    v4 = v2;
  }

  return v3;
}

- (id)build
{
  contacts = [(CNUICoreFamilyMemberContactsModelBuilder *)self contacts];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__CNUICoreFamilyMemberContactsModelBuilder_build__block_invoke;
  v11[3] = &unk_1E76E81C0;
  v11[4] = self;
  v4 = [contacts _cn_filter:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__CNUICoreFamilyMemberContactsModelBuilder_build__block_invoke_2;
  v10[3] = &unk_1E76E82E8;
  v10[4] = self;
  v5 = [v4 _cn_map:v10];

  v6 = [objc_opt_class() uniqueFamilyMemberContactItems:v5];
  v7 = [(CNUICoreFamilyMemberContactsModelBuilder *)self sortedFamilyMemberContactItems:v6];
  v8 = [[CNUICoreFamilyMemberContactsModel alloc] initWithItems:v7];

  return v8;
}

uint64_t __49__CNUICoreFamilyMemberContactsModelBuilder_build__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() shouldIncludeContact:v3 givenIncludeWhitelistedContactsOnlySetting:{objc_msgSend(*(a1 + 32), "includeWhitelistedContactsOnly")}];

  return v4;
}

id __49__CNUICoreFamilyMemberContactsModelBuilder_build__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [*(a1 + 32) contactFormatterStyle];
  v6 = [*(a1 + 32) contactTypeAssessor];
  v7 = [v4 familyMemberContactItemFromContact:v3 contactFormatterStyle:v5 contactTypeAssessor:v6 itemHasBeenPersisted:objc_msgSend(*(a1 + 32) itemIsProposed:{"markItemsAsPersisted"), objc_msgSend(*(a1 + 32), "markItemsAsProposed")}];

  return v7;
}

+ (BOOL)shouldIncludeContact:(id)contact givenIncludeWhitelistedContactsOnlySetting:(BOOL)setting
{
  if (setting)
  {
    return [MEMORY[0x1E695CE70] isWhitelistedContact:contact];
  }

  else
  {
    return 1;
  }
}

+ (id)familyMemberContactItemFromContact:(id)contact contactFormatterStyle:(int64_t)style contactTypeAssessor:(id)assessor itemHasBeenPersisted:(BOOL)persisted itemIsProposed:(BOOL)proposed
{
  proposedCopy = proposed;
  contactCopy = contact;
  assessorCopy = assessor;
  identifier = [contactCopy identifier];
  v15 = [self formattedNameOfContact:contactCopy contactFormatterStyle:style];
  if ([contactCopy isKeyAvailable:*MEMORY[0x1E695C278]])
  {
    imageData = [contactCopy imageData];
  }

  else
  {
    imageData = 0;
  }

  v17 = *MEMORY[0x1E6996530];
  phoneNumbers = [contactCopy phoneNumbers];
  v19 = (*(v17 + 16))(v17, phoneNumbers);

  if (assessorCopy)
  {
    v20 = [assessorCopy estiamtedTypeOfContact:contactCopy];
  }

  else
  {
    v20 = 0;
  }

  LOBYTE(v23) = persisted;
  v21 = -[CNUICoreFamilyMemberContactItem initWithContactIdentifier:formattedName:imageData:isUnreachable:isProposed:contactType:whitelistStatus:hasBeenPersisted:]([CNUICoreFamilyMemberContactItem alloc], "initWithContactIdentifier:formattedName:imageData:isUnreachable:isProposed:contactType:whitelistStatus:hasBeenPersisted:", identifier, v15, imageData, v19, proposedCopy, v20, [MEMORY[0x1E695CE70] isWhitelistedContact:contactCopy], v23);

  return v21;
}

+ (id)formattedNameOfContact:(id)contact contactFormatterStyle:(int64_t)style
{
  contactCopy = contact;
  v7 = [MEMORY[0x1E695CD80] stringFromContact:contactCopy style:style];
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {

    v7 = [self placeholderNameForNamelessContact:contactCopy];
  }

  return v7;
}

+ (id)placeholderNameForNamelessContact:(id)contact
{
  contactCopy = contact;
  keyVector = [contactCopy keyVector];
  v6 = [keyVector containsKey:*MEMORY[0x1E695C208]];

  if (v6)
  {
    v7 = [self firstDisplayableEmailAddressForContact:contactCopy];
    if (!(*(*MEMORY[0x1E6996568] + 16))())
    {
      goto LABEL_8;
    }
  }

  keyVector2 = [contactCopy keyVector];
  v9 = [keyVector2 containsKey:*MEMORY[0x1E695C330]];

  if (v9)
  {
    v7 = [self firstDisplayablePhoneNumberForContact:contactCopy];
    if (!(*(*MEMORY[0x1E6996568] + 16))())
    {
      goto LABEL_8;
    }
  }

  v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v10 localizedStringForKey:@"NO_NAME" value:&stru_1F162C170 table:@"Localized"];

LABEL_8:

  return v7;
}

+ (id)firstDisplayableEmailAddressForContact:(id)contact
{
  emailAddresses = [contact emailAddresses];
  v4 = [emailAddresses _cn_firstObjectPassingTest:&__block_literal_global_11];
  value = [v4 value];
  _cn_trimmedString = [value _cn_trimmedString];

  return _cn_trimmedString;
}

uint64_t __83__CNUICoreFamilyMemberContactsModelBuilder_firstDisplayableEmailAddressForContact___block_invoke(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x1E6996570];
  v3 = [a2 value];
  v4 = [v3 _cn_trimmedString];
  v5 = (*(v2 + 16))(v2, v4);

  return v5;
}

+ (id)firstDisplayablePhoneNumberForContact:(id)contact
{
  phoneNumbers = [contact phoneNumbers];
  v4 = [phoneNumbers _cn_compactMap:&__block_literal_global_25_0];
  v5 = [v4 _cn_firstObjectPassingTest:&__block_literal_global_28];

  return v5;
}

id __82__CNUICoreFamilyMemberContactsModelBuilder_firstDisplayablePhoneNumberForContact___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [v2 formattedInternationalStringValue];
  v4 = [v3 _cn_trimmedString];

  return v4;
}

+ (id)uniqueFamilyMemberContactItems:(id)items
{
  v3 = [items _cn_indexBy:&__block_literal_global_35_0];
  allValues = [v3 allValues];

  return allValues;
}

- (id)sortedFamilyMemberContactItems:(id)items
{
  itemsCopy = items;
  if ([(CNUICoreFamilyMemberContactsModelBuilder *)self sortItemsByName])
  {
    v5 = [objc_opt_class() itemsBySortingItems:itemsCopy];
  }

  else
  {
    contacts = [(CNUICoreFamilyMemberContactsModelBuilder *)self contacts];
    v7 = [contacts _cn_indexBy:&__block_literal_global_38];

    contacts2 = [(CNUICoreFamilyMemberContactsModelBuilder *)self contacts];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__CNUICoreFamilyMemberContactsModelBuilder_sortedFamilyMemberContactItems___block_invoke;
    v11[3] = &unk_1E76E8258;
    v12 = v7;
    v9 = v7;
    v5 = [itemsCopy _cn_sortedArrayUsingAuxiliarySortOrder:contacts2 transform:v11];
  }

  return v5;
}

id __75__CNUICoreFamilyMemberContactsModelBuilder_sortedFamilyMemberContactItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 contactIdentifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

@end