@interface CNContactStore
@end

@implementation CNContactStore

void __44__CNContactStore_EmailContactUtilities__log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_8;
  log_log_8 = v1;
}

id __100__CNContactStore_EmailContactUtilities__em_contactsFutureOnScheduler_forEmailAddresses_keysToFetch___block_invoke(void *a1, void *a2)
{
  v12 = 0;
  v13[0] = &v12;
  v13[1] = 0x3032000000;
  v13[2] = __Block_byref_object_copy__0;
  v13[3] = __Block_byref_object_dispose__0;
  v14 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __100__CNContactStore_EmailContactUtilities__em_contactsFutureOnScheduler_forEmailAddresses_keysToFetch___block_invoke_11;
  v9[3] = &unk_1E826C798;
  v4 = a1[4];
  v3 = a1 + 4;
  v5 = a1[6];
  v9[4] = a1[5];
  v10 = v5;
  v11 = &v12;
  v6 = [v4 ef_map:v9];
  v7 = [MEMORY[0x1E695CE18] log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __100__CNContactStore_EmailContactUtilities__em_contactsFutureOnScheduler_forEmailAddresses_keysToFetch___block_invoke_cold_1(v3, v13, v7);
  }

  *a2 = *(v13[0] + 40);
  _Block_object_dispose(&v12, 8);

  return v6;
}

id __100__CNContactStore_EmailContactUtilities__em_contactsFutureOnScheduler_forEmailAddresses_keysToFetch___block_invoke_11(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v3 _fetchContactForEmailAddress:a2 keysToFetch:v2 allowMatchOnDisplayName:0 createIfNeeded:1 error:&obj];
  objc_storeStrong((v4 + 40), obj);

  return v5;
}

void __100__CNContactStore_EmailContactUtilities__em_contactsFutureOnScheduler_forEmailAddresses_keysToFetch___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = *a1;
  *&v4[12] = 2112;
  *&v4[14] = *(*a2 + 40);
  OUTLINED_FUNCTION_0_1(&dword_1C6655000, a2, a3, "Error fetching contacts for email addresses %@: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

@end