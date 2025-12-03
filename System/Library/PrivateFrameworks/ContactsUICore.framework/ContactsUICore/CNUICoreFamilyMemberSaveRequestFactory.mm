@interface CNUICoreFamilyMemberSaveRequestFactory
+ (id)saveRequestToUpdateContactListByAddingContacts:(id)contacts toContainer:(id)container;
+ (id)saveRequestToUpdateContactListByRemovingContacts:(id)contacts;
+ (id)saveRequestToUpdateContactListByUpdatingContacts:(id)contacts;
+ (id)saveRequestToUpdateContactWhitelistByRemovingContacts:(id)contacts;
+ (id)saveRequestToupdateContactWhitelistByAddingContacts:(id)contacts;
@end

@implementation CNUICoreFamilyMemberSaveRequestFactory

+ (id)saveRequestToUpdateContactListByAddingContacts:(id)contacts toContainer:(id)container
{
  containerCopy = container;
  v6 = MEMORY[0x1E695CF88];
  contactsCopy = contacts;
  v8 = objc_alloc_init(v6);
  [v8 setIgnoresGuardianRestrictions:1];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __101__CNUICoreFamilyMemberSaveRequestFactory_saveRequestToUpdateContactListByAddingContacts_toContainer___block_invoke;
  v14[3] = &unk_1E76E8538;
  v9 = v8;
  v15 = v9;
  v16 = containerCopy;
  v10 = containerCopy;
  [contactsCopy _cn_each:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

void __101__CNUICoreFamilyMemberSaveRequestFactory_saveRequestToUpdateContactListByAddingContacts_toContainer___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = [a2 mutableCopy];
  v4 = [*(a1 + 40) identifier];
  [v3 addContact:v5 toContainerWithIdentifier:v4];
}

+ (id)saveRequestToUpdateContactListByUpdatingContacts:(id)contacts
{
  v3 = MEMORY[0x1E695CF88];
  contactsCopy = contacts;
  v5 = objc_alloc_init(v3);
  [v5 setIgnoresGuardianRestrictions:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __91__CNUICoreFamilyMemberSaveRequestFactory_saveRequestToUpdateContactListByUpdatingContacts___block_invoke;
  v8[3] = &unk_1E76E8560;
  v6 = v5;
  v9 = v6;
  [contactsCopy _cn_each:v8];

  return v6;
}

void __91__CNUICoreFamilyMemberSaveRequestFactory_saveRequestToUpdateContactListByUpdatingContacts___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 mutableCopy];
  [v2 updateContact:v3];
}

+ (id)saveRequestToUpdateContactListByRemovingContacts:(id)contacts
{
  v3 = MEMORY[0x1E695CF88];
  contactsCopy = contacts;
  v5 = objc_alloc_init(v3);
  [v5 setIgnoresGuardianRestrictions:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __91__CNUICoreFamilyMemberSaveRequestFactory_saveRequestToUpdateContactListByRemovingContacts___block_invoke;
  v8[3] = &unk_1E76E8560;
  v6 = v5;
  v9 = v6;
  [contactsCopy _cn_each:v8];

  return v6;
}

void __91__CNUICoreFamilyMemberSaveRequestFactory_saveRequestToUpdateContactListByRemovingContacts___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 mutableCopy];
  [v2 deleteContact:v3];
}

+ (id)saveRequestToupdateContactWhitelistByAddingContacts:(id)contacts
{
  v3 = MEMORY[0x1E695CF88];
  contactsCopy = contacts;
  v5 = objc_alloc_init(v3);
  [v5 setIgnoresGuardianRestrictions:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __94__CNUICoreFamilyMemberSaveRequestFactory_saveRequestToupdateContactWhitelistByAddingContacts___block_invoke;
  v8[3] = &unk_1E76E8560;
  v6 = v5;
  v9 = v6;
  [contactsCopy _cn_each:v8];

  return v6;
}

void __94__CNUICoreFamilyMemberSaveRequestFactory_saveRequestToupdateContactWhitelistByAddingContacts___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 setDowntimeWhitelist:*MEMORY[0x1E6996480]];
  [*(a1 + 32) updateContact:v3];
}

+ (id)saveRequestToUpdateContactWhitelistByRemovingContacts:(id)contacts
{
  v3 = MEMORY[0x1E695CF88];
  contactsCopy = contacts;
  v5 = objc_alloc_init(v3);
  [v5 setIgnoresGuardianRestrictions:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __96__CNUICoreFamilyMemberSaveRequestFactory_saveRequestToUpdateContactWhitelistByRemovingContacts___block_invoke;
  v8[3] = &unk_1E76E8560;
  v6 = v5;
  v9 = v6;
  [contactsCopy _cn_each:v8];

  return v6;
}

void __96__CNUICoreFamilyMemberSaveRequestFactory_saveRequestToUpdateContactWhitelistByRemovingContacts___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 setDowntimeWhitelist:*MEMORY[0x1E6996488]];
  [*(a1 + 32) updateContact:v3];
}

id __67__CNUICoreFamilyMemberSaveRequestFactory_distinctCopiesOfContacts___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copyWithDistinctIdentifier];

  return v2;
}

@end