@interface CNUICoreRecentsManager
+ (CNKeyDescriptor)descriptorForRequiredKeys;
+ (id)allHandlesToSearchForFromContact:(id)a3;
+ (id)handlesForContactProperties:(id)a3;
+ (id)predicateForSearchingHandlesForAllSupportedKinds:(id)a3;
+ (id)queryForHandles:(id)a3 sorted:(BOOL)a4;
+ (id)supportedPropertyDescriptions;
+ (id)supportedRecentsDomains;
+ (id)supportedRecentsKinds;
+ (id)transformForPropertyDescription:(id)a3;
- (CNUICoreRecentsManager)init;
- (CNUICoreRecentsManager)initWithRecentsLibrary:(id)a3 schedulerProvider:(id)a4;
- (id)recentContactsMatchingAllPropertiesOfContact:(id)a3;
- (id)recentContactsMatchingContactProperties:(id)a3;
- (id)recentsContactsMatchingHandles:(id)a3 sorted:(BOOL)a4;
- (id)removeRecents:(id)a3;
- (id)restoreRecents:(id)a3;
- (id)sortedRecentHandlesMatchingAllPropertiesOfContact:(id)a3;
- (void)removeRecents:(id)a3 completionHandler:(id)a4;
- (void)removeRecentsWithIdentifiers:(id)a3 domain:(id)a4 completionHandler:(id)a5;
@end

@implementation CNUICoreRecentsManager

+ (CNKeyDescriptor)descriptorForRequiredKeys
{
  v2 = MEMORY[0x1E695CD58];
  v3 = [a1 supportedPropertyDescriptions];
  v4 = [v3 _cn_map:&__block_literal_global_27];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNUICoreRecentsManager descriptorForRequiredKeys]"];
  v6 = [v2 descriptorWithKeyDescriptors:v4 description:v5];

  return v6;
}

- (CNUICoreRecentsManager)init
{
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 coreRecentsLibrary];

  v5 = [MEMORY[0x1E69966E8] currentEnvironment];
  v6 = [v5 schedulerProvider];

  v7 = [(CNUICoreRecentsManager *)self initWithRecentsLibrary:v4 schedulerProvider:v6];
  return v7;
}

- (CNUICoreRecentsManager)initWithRecentsLibrary:(id)a3 schedulerProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = CNUICoreRecentsManager;
  v9 = [(CNUICoreRecentsManager *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recentsLibrary, a3);
    v11 = [v8 backgroundScheduler];
    workQueue = v10->_workQueue;
    v10->_workQueue = v11;

    v13 = v10;
  }

  return v10;
}

- (id)recentContactsMatchingAllPropertiesOfContact:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_opt_class() descriptorForRequiredKeys];
  v12[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  if (([v4 areKeysAvailable:v6] & 1) == 0)
  {
    [CNUICoreRecentsManager recentContactsMatchingAllPropertiesOfContact:];
  }

  v7 = [objc_opt_class() allHandlesToSearchForFromContact:v4];
  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v8 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [CNUICoreRecentsManager recentContactsMatchingAllPropertiesOfContact:];
    }

    v9 = [MEMORY[0x1E6996720] futureWithResult:MEMORY[0x1E695E0F0]];
  }

  else
  {
    v9 = [(CNUICoreRecentsManager *)self recentsContactsMatchingHandles:v7];
  }

  v10 = v9;

  return v10;
}

- (id)sortedRecentHandlesMatchingAllPropertiesOfContact:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_opt_class() descriptorForRequiredKeys];
  v12[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  if (([v4 areKeysAvailable:v6] & 1) == 0)
  {
    [CNUICoreRecentsManager sortedRecentHandlesMatchingAllPropertiesOfContact:];
  }

  v7 = [objc_opt_class() allHandlesToSearchForFromContact:v4];
  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v8 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [CNUICoreRecentsManager recentContactsMatchingAllPropertiesOfContact:];
    }

    v9 = [MEMORY[0x1E6996720] futureWithResult:MEMORY[0x1E695E0F0]];
  }

  else
  {
    v10 = [(CNUICoreRecentsManager *)self recentsContactsMatchingHandles:v7 sorted:1];
    v9 = [v10 flatMap:&__block_literal_global_17_2];
  }

  return v9;
}

id __76__CNUICoreRecentsManager_sortedRecentHandlesMatchingAllPropertiesOfContact___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _cn_map:&__block_literal_global_20];
  v3 = [MEMORY[0x1E6996720] futureWithResult:v2];

  return v3;
}

+ (id)allHandlesToSearchForFromContact:(id)a3
{
  v4 = a3;
  v5 = [a1 supportedPropertyDescriptions];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__CNUICoreRecentsManager_allHandlesToSearchForFromContact___block_invoke;
  v9[3] = &unk_1E76E8B98;
  v10 = v4;
  v11 = a1;
  v6 = v4;
  v7 = [v5 _cn_flatMap:v9];

  return v7;
}

id __59__CNUICoreRecentsManager_allHandlesToSearchForFromContact___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 CNValueForContact:v3];
  v6 = [*(a1 + 40) transformForPropertyDescription:v4];

  v7 = [v5 _cn_flatMap:v6];

  return v7;
}

- (id)recentContactsMatchingContactProperties:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() handlesForContactProperties:v4];
  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v6 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CNUICoreRecentsManager recentContactsMatchingContactProperties:];
    }

    v7 = [MEMORY[0x1E6996720] futureWithResult:MEMORY[0x1E695E0F0]];
  }

  else
  {
    v7 = [(CNUICoreRecentsManager *)self recentsContactsMatchingHandles:v5];
  }

  v8 = v7;

  return v8;
}

+ (id)handlesForContactProperties:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 _cn_filter:&__block_literal_global_24];
  v6 = [v5 count];
  if (v6 != [v4 count])
  {
    v7 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __54__CNUICoreRecentsManager_handlesForContactProperties___block_invoke_2;
      v14[3] = &unk_1E76E8BE0;
      v15 = v5;
      v11 = [v4 _cn_filter:v14];
      *buf = 138412290;
      v17 = v11;
      _os_log_debug_impl(&dword_1A31E6000, v7, OS_LOG_TYPE_DEBUG, "Detected invalid properties passed in, are you sure you meant to do this? %@", buf, 0xCu);
    }
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__CNUICoreRecentsManager_handlesForContactProperties___block_invoke_26;
  v13[3] = &__block_descriptor_40_e27_B16__0__CNContactProperty_8l;
  v13[4] = a1;
  v8 = [v5 _cn_filter:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__CNUICoreRecentsManager_handlesForContactProperties___block_invoke_2_27;
  v12[3] = &__block_descriptor_40_e36___NSArray_16__0__CNContactProperty_8l;
  v12[4] = a1;
  v9 = [v8 _cn_flatMap:v12];

  return v9;
}

BOOL __54__CNUICoreRecentsManager_handlesForContactProperties___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E695CD00] contactPropertiesByKey];
  v4 = [v2 key];
  v5 = [v3 objectForKeyedSubscript:v4];
  if (v5)
  {
    v6 = [v2 labeledValue];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __54__CNUICoreRecentsManager_handlesForContactProperties___block_invoke_26(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 supportedPropertyDescriptions];
  v5 = [MEMORY[0x1E695CD00] contactPropertiesByKey];
  v6 = [v3 key];

  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v4 containsObject:v7];

  return v8;
}

id __54__CNUICoreRecentsManager_handlesForContactProperties___block_invoke_2_27(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 labeledValue];
  v5 = [MEMORY[0x1E695CD00] contactPropertiesByKey];
  v6 = [v3 key];

  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = [*(a1 + 32) transformForPropertyDescription:v7];
  v9 = (v8)[2](v8, v4);

  return v9;
}

- (id)recentsContactsMatchingHandles:(id)a3 sorted:(BOOL)a4
{
  v5 = a3;
  v6 = [objc_opt_class() queryForHandles:v5];
  v7 = +[CNUICoreLogProvider likenesses_os_log];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      [CNUICoreRecentsManager recentsContactsMatchingHandles:v6 sorted:?];
    }

    v9 = [(CNUICoreRecentsManager *)self recentsLibrary];
    v10 = [v9 _recentContactsWithQuery:v6];

    [v10 addFailureBlock:&__block_literal_global_32_0];
    [v10 addSuccessBlock:&__block_literal_global_36];
  }

  else
  {
    if (v8)
    {
      [CNUICoreRecentsManager recentsContactsMatchingHandles:v7 sorted:?];
    }

    v10 = [MEMORY[0x1E6996720] futureWithResult:MEMORY[0x1E695E0F0]];
  }

  return v10;
}

void __64__CNUICoreRecentsManager_recentsContactsMatchingHandles_sorted___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[CNUICoreLogProvider likenesses_os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1A31E6000, v3, OS_LOG_TYPE_INFO, "Searching CoreRecents failed with %@", &v4, 0xCu);
  }
}

void __64__CNUICoreRecentsManager_recentsContactsMatchingHandles_sorted___block_invoke_33(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[CNUICoreLogProvider likenesses_os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __64__CNUICoreRecentsManager_recentsContactsMatchingHandles_sorted___block_invoke_33_cold_1(v2);
  }
}

- (id)removeRecents:(id)a3
{
  v4 = MEMORY[0x1E69967D0];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [v6 errorOnlyCompletionHandlerAdapter];
  [(CNUICoreRecentsManager *)self removeRecents:v5 completionHandler:v7];

  v8 = [v6 future];

  return v8;
}

- (void)removeRecents:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    if (v7)
    {
      v7[2](v7, 0);
    }
  }

  else
  {
    v8 = [(CNUICoreRecentsManager *)self workQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__CNUICoreRecentsManager_removeRecents_completionHandler___block_invoke;
    v9[3] = &unk_1E76E8C68;
    v9[4] = self;
    v10 = v6;
    v11 = v7;
    [v8 performBlock:v9];
  }
}

void __58__CNUICoreRecentsManager_removeRecents_completionHandler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) recentsLibrary];
  v3 = *(a1 + 40);
  v11 = 0;
  v4 = [v2 removeRecentContacts:v3 error:&v11];
  v5 = v11;

  v6 = +[CNUICoreLogProvider likenesses_os_log];
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __58__CNUICoreRecentsManager_removeRecents_completionHandler___block_invoke_cold_1((a1 + 40));
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = [*(a1 + 40) count];
    *buf = 134218242;
    v13 = v8;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_1A31E6000, v7, OS_LOG_TYPE_INFO, "Failed to delete %ld recent(s): %{public}@", buf, 0x16u);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    if (v4)
    {
      v10 = 0;
    }

    else
    {
      v10 = v5;
    }

    (*(v9 + 16))(v9, v10);
  }
}

- (void)removeRecentsWithIdentifiers:(id)a3 domain:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    if (v10)
    {
      v10[2](v10, 0);
    }
  }

  else
  {
    v11 = [(CNUICoreRecentsManager *)self workQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __80__CNUICoreRecentsManager_removeRecentsWithIdentifiers_domain_completionHandler___block_invoke;
    v12[3] = &unk_1E76E8C90;
    v12[4] = self;
    v13 = v8;
    v14 = v9;
    v15 = v10;
    [v11 performBlock:v12];
  }
}

void __80__CNUICoreRecentsManager_removeRecentsWithIdentifiers_domain_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) recentsLibrary];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v9 = 0;
  v5 = [v2 removeRecentContactsWithRecentIDs:v3 recentsDomain:v4 error:&v9];
  v6 = v9;

  v7 = *(a1 + 56);
  if (v7)
  {
    if (v5)
    {
      v8 = 0;
    }

    else
    {
      v8 = v6;
    }

    (*(v7 + 16))(v7, v8);
  }
}

- (id)restoreRecents:(id)a3
{
  v4 = a3;
  v5 = [(CNUICoreRecentsManager *)self recentsLibrary];
  v6 = [v5 restorePreviouslyDeletedRecentContacts:v4];

  return v6;
}

+ (id)queryForHandles:(id)a3 sorted:(BOOL)a4
{
  v6 = [a1 predicateForSearchingHandlesForAllSupportedKinds:a3];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E6998FD8]);
    [v7 setSearchPredicate:v6];
    v8 = [a1 supportedRecentsDomains];
    [v7 setDomains:v8];

    if (a4)
    {
      v9 = [MEMORY[0x1E6998FD8] frecencyComparator];
      [v7 setComparator:v9];
    }

    else
    {
      [v7 setComparator:0];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)predicateForSearchingHandlesForAllSupportedKinds:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v5 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E6998FD0] predicateForKey:*MEMORY[0x1E6998F70] inCollection:v4];
    v7 = MEMORY[0x1E6998FD0];
    v8 = *MEMORY[0x1E6998F88];
    v9 = [a1 supportedRecentsKinds];
    v10 = [v7 predicateForKey:v8 inCollection:v9];

    v11 = MEMORY[0x1E6998FD0];
    v14[0] = v10;
    v14[1] = v6;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v5 = [v11 predicateSatisfyingAllSubpredicates:v12];
  }

  return v5;
}

+ (id)supportedRecentsDomains
{
  v5[3] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6998FB0];
  v5[0] = *MEMORY[0x1E6998FA0];
  v5[1] = v2;
  v5[2] = *MEMORY[0x1E6998F98];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];

  return v3;
}

+ (id)supportedRecentsKinds
{
  v5[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6998F60];
  v5[0] = *MEMORY[0x1E6998F48];
  v5[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];

  return v3;
}

+ (id)supportedPropertyDescriptions
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695CD00] emailAddressesDescription];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695CD00] phoneNumbersDescription];
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

+ (id)transformForPropertyDescription:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695CD00] emailAddressesDescription];

  if (v4 == v3)
  {
    v6 = &__block_literal_global_43;
  }

  else
  {
    v5 = [MEMORY[0x1E695CD00] phoneNumbersDescription];

    if (v5 == v3)
    {
      v6 = &__block_literal_global_48;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)recentsContactsMatchingHandles:(void *)a1 sorted:.cold.1(void *a1)
{
  v1 = [a1 predicate];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __64__CNUICoreRecentsManager_recentsContactsMatchingHandles_sorted___block_invoke_33_cold_1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __58__CNUICoreRecentsManager_removeRecents_completionHandler___block_invoke_cold_1(id *a1)
{
  [*a1 count];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

@end