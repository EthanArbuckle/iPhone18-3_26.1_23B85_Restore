@interface CNUICoreFamilyMemberSaveRequestFactory
+ (id)saveRequestToUpdateContactListByAddingContacts:(id)a3 toContainer:(id)a4;
+ (id)saveRequestToUpdateContactListByRemovingContacts:(id)a3;
+ (id)saveRequestToUpdateContactListByUpdatingContacts:(id)a3;
+ (id)saveRequestToUpdateContactWhitelistByRemovingContacts:(id)a3;
+ (id)saveRequestToupdateContactWhitelistByAddingContacts:(id)a3;
@end

@implementation CNUICoreFamilyMemberSaveRequestFactory

+ (id)saveRequestToUpdateContactListByAddingContacts:(id)a3 toContainer:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E695CF88];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  [v8 setIgnoresGuardianRestrictions:1];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __101__CNUICoreFamilyMemberSaveRequestFactory_saveRequestToUpdateContactListByAddingContacts_toContainer___block_invoke;
  v14[3] = &unk_1E76E8538;
  v9 = v8;
  v15 = v9;
  v16 = v5;
  v10 = v5;
  [v7 _cn_each:v14];

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

+ (id)saveRequestToUpdateContactListByUpdatingContacts:(id)a3
{
  v3 = MEMORY[0x1E695CF88];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setIgnoresGuardianRestrictions:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __91__CNUICoreFamilyMemberSaveRequestFactory_saveRequestToUpdateContactListByUpdatingContacts___block_invoke;
  v8[3] = &unk_1E76E8560;
  v6 = v5;
  v9 = v6;
  [v4 _cn_each:v8];

  return v6;
}

void __91__CNUICoreFamilyMemberSaveRequestFactory_saveRequestToUpdateContactListByUpdatingContacts___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 mutableCopy];
  [v2 updateContact:v3];
}

+ (id)saveRequestToUpdateContactListByRemovingContacts:(id)a3
{
  v3 = MEMORY[0x1E695CF88];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setIgnoresGuardianRestrictions:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __91__CNUICoreFamilyMemberSaveRequestFactory_saveRequestToUpdateContactListByRemovingContacts___block_invoke;
  v8[3] = &unk_1E76E8560;
  v6 = v5;
  v9 = v6;
  [v4 _cn_each:v8];

  return v6;
}

void __91__CNUICoreFamilyMemberSaveRequestFactory_saveRequestToUpdateContactListByRemovingContacts___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 mutableCopy];
  [v2 deleteContact:v3];
}

+ (id)saveRequestToupdateContactWhitelistByAddingContacts:(id)a3
{
  v3 = MEMORY[0x1E695CF88];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setIgnoresGuardianRestrictions:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __94__CNUICoreFamilyMemberSaveRequestFactory_saveRequestToupdateContactWhitelistByAddingContacts___block_invoke;
  v8[3] = &unk_1E76E8560;
  v6 = v5;
  v9 = v6;
  [v4 _cn_each:v8];

  return v6;
}

void __94__CNUICoreFamilyMemberSaveRequestFactory_saveRequestToupdateContactWhitelistByAddingContacts___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 setDowntimeWhitelist:*MEMORY[0x1E6996480]];
  [*(a1 + 32) updateContact:v3];
}

+ (id)saveRequestToUpdateContactWhitelistByRemovingContacts:(id)a3
{
  v3 = MEMORY[0x1E695CF88];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setIgnoresGuardianRestrictions:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __96__CNUICoreFamilyMemberSaveRequestFactory_saveRequestToUpdateContactWhitelistByRemovingContacts___block_invoke;
  v8[3] = &unk_1E76E8560;
  v6 = v5;
  v9 = v6;
  [v4 _cn_each:v8];

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