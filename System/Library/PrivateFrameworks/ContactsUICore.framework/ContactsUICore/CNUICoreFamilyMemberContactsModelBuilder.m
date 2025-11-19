@interface CNUICoreFamilyMemberContactsModelBuilder
+ (BOOL)shouldIncludeContact:(id)a3 givenIncludeWhitelistedContactsOnlySetting:(BOOL)a4;
+ (id)familyMemberContactItemFromContact:(id)a3 contactFormatterStyle:(int64_t)a4 contactTypeAssessor:(id)a5 itemHasBeenPersisted:(BOOL)a6 itemIsProposed:(BOOL)a7;
+ (id)firstDisplayableEmailAddressForContact:(id)a3;
+ (id)firstDisplayablePhoneNumberForContact:(id)a3;
+ (id)formattedNameOfContact:(id)a3 contactFormatterStyle:(int64_t)a4;
+ (id)placeholderNameForNamelessContact:(id)a3;
+ (id)uniqueFamilyMemberContactItems:(id)a3;
- (CNUICoreFamilyMemberContactsModelBuilder)init;
- (id)build;
- (id)sortedFamilyMemberContactItems:(id)a3;
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
  v3 = [(CNUICoreFamilyMemberContactsModelBuilder *)self contacts];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__CNUICoreFamilyMemberContactsModelBuilder_build__block_invoke;
  v11[3] = &unk_1E76E81C0;
  v11[4] = self;
  v4 = [v3 _cn_filter:v11];
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

+ (BOOL)shouldIncludeContact:(id)a3 givenIncludeWhitelistedContactsOnlySetting:(BOOL)a4
{
  if (a4)
  {
    return [MEMORY[0x1E695CE70] isWhitelistedContact:a3];
  }

  else
  {
    return 1;
  }
}

+ (id)familyMemberContactItemFromContact:(id)a3 contactFormatterStyle:(int64_t)a4 contactTypeAssessor:(id)a5 itemHasBeenPersisted:(BOOL)a6 itemIsProposed:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a5;
  v14 = [v12 identifier];
  v15 = [a1 formattedNameOfContact:v12 contactFormatterStyle:a4];
  if ([v12 isKeyAvailable:*MEMORY[0x1E695C278]])
  {
    v16 = [v12 imageData];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x1E6996530];
  v18 = [v12 phoneNumbers];
  v19 = (*(v17 + 16))(v17, v18);

  if (v13)
  {
    v20 = [v13 estiamtedTypeOfContact:v12];
  }

  else
  {
    v20 = 0;
  }

  LOBYTE(v23) = a6;
  v21 = -[CNUICoreFamilyMemberContactItem initWithContactIdentifier:formattedName:imageData:isUnreachable:isProposed:contactType:whitelistStatus:hasBeenPersisted:]([CNUICoreFamilyMemberContactItem alloc], "initWithContactIdentifier:formattedName:imageData:isUnreachable:isProposed:contactType:whitelistStatus:hasBeenPersisted:", v14, v15, v16, v19, v7, v20, [MEMORY[0x1E695CE70] isWhitelistedContact:v12], v23);

  return v21;
}

+ (id)formattedNameOfContact:(id)a3 contactFormatterStyle:(int64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E695CD80] stringFromContact:v6 style:a4];
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {

    v7 = [a1 placeholderNameForNamelessContact:v6];
  }

  return v7;
}

+ (id)placeholderNameForNamelessContact:(id)a3
{
  v4 = a3;
  v5 = [v4 keyVector];
  v6 = [v5 containsKey:*MEMORY[0x1E695C208]];

  if (v6)
  {
    v7 = [a1 firstDisplayableEmailAddressForContact:v4];
    if (!(*(*MEMORY[0x1E6996568] + 16))())
    {
      goto LABEL_8;
    }
  }

  v8 = [v4 keyVector];
  v9 = [v8 containsKey:*MEMORY[0x1E695C330]];

  if (v9)
  {
    v7 = [a1 firstDisplayablePhoneNumberForContact:v4];
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

+ (id)firstDisplayableEmailAddressForContact:(id)a3
{
  v3 = [a3 emailAddresses];
  v4 = [v3 _cn_firstObjectPassingTest:&__block_literal_global_11];
  v5 = [v4 value];
  v6 = [v5 _cn_trimmedString];

  return v6;
}

uint64_t __83__CNUICoreFamilyMemberContactsModelBuilder_firstDisplayableEmailAddressForContact___block_invoke(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x1E6996570];
  v3 = [a2 value];
  v4 = [v3 _cn_trimmedString];
  v5 = (*(v2 + 16))(v2, v4);

  return v5;
}

+ (id)firstDisplayablePhoneNumberForContact:(id)a3
{
  v3 = [a3 phoneNumbers];
  v4 = [v3 _cn_compactMap:&__block_literal_global_25_0];
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

+ (id)uniqueFamilyMemberContactItems:(id)a3
{
  v3 = [a3 _cn_indexBy:&__block_literal_global_35_0];
  v4 = [v3 allValues];

  return v4;
}

- (id)sortedFamilyMemberContactItems:(id)a3
{
  v4 = a3;
  if ([(CNUICoreFamilyMemberContactsModelBuilder *)self sortItemsByName])
  {
    v5 = [objc_opt_class() itemsBySortingItems:v4];
  }

  else
  {
    v6 = [(CNUICoreFamilyMemberContactsModelBuilder *)self contacts];
    v7 = [v6 _cn_indexBy:&__block_literal_global_38];

    v8 = [(CNUICoreFamilyMemberContactsModelBuilder *)self contacts];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__CNUICoreFamilyMemberContactsModelBuilder_sortedFamilyMemberContactItems___block_invoke;
    v11[3] = &unk_1E76E8258;
    v12 = v7;
    v9 = v7;
    v5 = [v4 _cn_sortedArrayUsingAuxiliarySortOrder:v8 transform:v11];
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