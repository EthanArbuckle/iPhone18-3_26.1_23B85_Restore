@interface CNUIDefaultUserActionFetcher
+ (BOOL)doesRecentContact:(id)a3 matchUserActionItem:(id)a4;
+ (id)defaultActionItemForActionItem:(id)a3 recentContacts:(id)a4;
+ (id)queryForUserActionItem:(id)a3;
+ (id)recentContactsForUserActionItem:(id)a3 recentsLibrary:(id)a4 scheduler:(id)a5;
- (CNUIDefaultUserActionFetcher)init;
- (CNUIDefaultUserActionFetcher)initWithRecentsLibrary:(id)a3;
- (id)defaultActionItemForActionItems:(id)a3 schedulerProvider:(id)a4;
- (id)observableForDefaultActionsChanged;
@end

@implementation CNUIDefaultUserActionFetcher

- (CNUIDefaultUserActionFetcher)init
{
  v3 = [MEMORY[0x1E6998FC8] defaultInstance];
  v4 = [(CNUIDefaultUserActionFetcher *)self initWithRecentsLibrary:v3];

  return v4;
}

- (CNUIDefaultUserActionFetcher)initWithRecentsLibrary:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNUIDefaultUserActionFetcher;
  v6 = [(CNUIDefaultUserActionFetcher *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_library, a3);
    v8 = v7;
  }

  return v7;
}

- (id)observableForDefaultActionsChanged
{
  v2 = MEMORY[0x1E6996798];
  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  v4 = [v2 observableOnNotificationCenter:v3 withName:@"com.apple.contacts.ContactsUICore.CNUIUserActionRecentsChangedNotification" object:0];

  return v4;
}

- (id)defaultActionItemForActionItems:(id)a3 schedulerProvider:(id)a4
{
  v6 = a4;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __82__CNUIDefaultUserActionFetcher_defaultActionItemForActionItems_schedulerProvider___block_invoke;
  v14 = &unk_1E76E9478;
  v15 = self;
  v16 = v6;
  v7 = v6;
  v8 = [a3 switchMap:&v11 schedulerProvider:v7];
  v9 = [v8 doOnNext:{&__block_literal_global_7_3, v11, v12, v13, v14, v15}];

  return v9;
}

id __82__CNUIDefaultUserActionFetcher_defaultActionItemForActionItems_schedulerProvider___block_invoke(uint64_t a1, void *a2)
{
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __82__CNUIDefaultUserActionFetcher_defaultActionItemForActionItems_schedulerProvider___block_invoke_2;
  v14 = &unk_1E76EA5F8;
  v4 = *(a1 + 40);
  v15 = *(a1 + 32);
  v16 = v4;
  v5 = [a2 _cn_map:&v11];
  v6 = [MEMORY[0x1E6996798] merge:v5 schedulerProvider:{*(a1 + 40), v11, v12, v13, v14, v15}];
  v7 = [v6 scan:&__block_literal_global_11_2];
  v8 = [v7 takeLast:1];
  v9 = [v8 map:&__block_literal_global_83];

  return v9;
}

id __82__CNUIDefaultUserActionFetcher_defaultActionItemForActionItems_schedulerProvider___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [*(a1 + 32) library];
  v6 = [*(a1 + 40) backgroundScheduler];
  v7 = [v4 recentContactsForUserActionItem:v3 recentsLibrary:v5 scheduler:v6];

  v8 = [objc_opt_class() defaultActionItemForActionItem:v3 recentContacts:v7];

  return v8;
}

void __82__CNUIDefaultUserActionFetcher_defaultActionItemForActionItems_schedulerProvider___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[CNUICoreLogProvider actions_os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __82__CNUIDefaultUserActionFetcher_defaultActionItemForActionItems_schedulerProvider___block_invoke_4_cold_1();
  }
}

+ (id)recentContactsForUserActionItem:(id)a3 recentsLibrary:(id)a4 scheduler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x1E6996798];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __89__CNUIDefaultUserActionFetcher_recentContactsForUserActionItem_recentsLibrary_scheduler___block_invoke;
  v17[3] = &unk_1E76EA6B0;
  v18 = v10;
  v19 = v8;
  v20 = v9;
  v21 = a1;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  v15 = [v11 observableWithBlock:v17];

  return v15;
}

id __89__CNUIDefaultUserActionFetcher_recentContactsForUserActionItem_recentsLibrary_scheduler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__CNUIDefaultUserActionFetcher_recentContactsForUserActionItem_recentsLibrary_scheduler___block_invoke_2;
  v8[3] = &unk_1E76EA688;
  v12 = *(a1 + 56);
  v4 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = v3;
  v5 = v3;
  v6 = [v4 performCancelableBlock:v8];

  return v6;
}

void __89__CNUIDefaultUserActionFetcher_recentContactsForUserActionItem_recentsLibrary_scheduler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 56) queryForUserActionItem:*(a1 + 32)];
  v5 = [MEMORY[0x1E696AFB0] UUID];
  v6 = [v5 UUIDString];

  v7 = +[CNUICoreLogProvider actions_os_log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __89__CNUIDefaultUserActionFetcher_recentContactsForUserActionItem_recentsLibrary_scheduler___block_invoke_2_cold_1();
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __89__CNUIDefaultUserActionFetcher_recentContactsForUserActionItem_recentsLibrary_scheduler___block_invoke_13;
  v12[3] = &unk_1E76EA660;
  v13 = v6;
  v14 = v4;
  v8 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = v3;
  v9 = v3;
  v10 = v4;
  v11 = v6;
  [v8 performRecentsSearch:v10 queue:0 completion:v12];
}

void __89__CNUIDefaultUserActionFetcher_recentContactsForUserActionItem_recentsLibrary_scheduler___block_invoke_13(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[CNUICoreLogProvider actions_os_log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __89__CNUIDefaultUserActionFetcher_recentContactsForUserActionItem_recentsLibrary_scheduler___block_invoke_13_cold_1(a1, v7, v8, v9, v10, v11, v12, v13);
  }

  v14 = +[CNUICoreLogProvider actions_os_log];
  v15 = v14;
  if (v5)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __89__CNUIDefaultUserActionFetcher_recentContactsForUserActionItem_recentsLibrary_scheduler___block_invoke_13_cold_2(a1, v5, v15);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v16 = [*(a1 + 40) predicate];
    v17 = 138412546;
    v18 = v16;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&dword_1A31E6000, v15, OS_LOG_TYPE_INFO, "[DefaultAction] Query for %@ failed: %{public}@", &v17, 0x16u);
  }

  [MEMORY[0x1E69967A0] sendArray:v5 error:v6 toObserver:*(a1 + 48) untilCanceled:*(a1 + 56)];
}

+ (id)queryForUserActionItem:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 sanitizedTargetHandle];
  v5 = [v3 contactProperty];
  v6 = @"CNUICRRecentsDomainContactDefaultAction";
  v7 = CNUIUserActionRecentsAddressKindForContactProperty();
  v19[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];

  v9 = +[CNUICoreLogProvider actions_os_log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v5 key];
    v13 = 138412802;
    v14 = v3;
    v15 = 2114;
    v16 = v12;
    v17 = 2114;
    v18 = v8;
    _os_log_debug_impl(&dword_1A31E6000, v9, OS_LOG_TYPE_DEBUG, "[DefaultAction] composed query for %@, key %{public}@, kind %{public}@", &v13, 0x20u);
  }

  v10 = [MEMORY[0x1E6998FD8] searchQueryForSearchTerm:v4 preferredKinds:v8 sendingAddress:0 recentsDomain:v6];
  [v10 setComparator:0];

  return v10;
}

+ (id)defaultActionItemForActionItem:(id)a3 recentContacts:(id)a4
{
  v6 = a3;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__CNUIDefaultUserActionFetcher_defaultActionItemForActionItem_recentContacts___block_invoke;
  v15[3] = &unk_1E76EA6D8;
  v17 = a1;
  v7 = v6;
  v16 = v7;
  v8 = [a4 filter:v15];
  v9 = [v8 take:1];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__CNUIDefaultUserActionFetcher_defaultActionItemForActionItem_recentContacts___block_invoke_2;
  v13[3] = &unk_1E76EA700;
  v14 = v7;
  v10 = v7;
  v11 = [v9 map:v13];

  return v11;
}

+ (BOOL)doesRecentContact:(id)a3 matchUserActionItem:(id)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 contactProperty];
  v8 = [v7 identifier];

  v9 = [v5 metadata];
  v10 = [v6 type];
  v11 = [v9 valueForKey:v10];
  v12 = [v11 valueForKey:v8];

  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = [v12 objectForKeyedSubscript:@"bundleIdentifier"];
  if (!v13)
  {
    v10 = [v6 bundleIdentifier];
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  v14 = [v12 objectForKeyedSubscript:@"bundleIdentifier"];
  v15 = [v6 bundleIdentifier];
  v16 = [v14 isEqual:v15];

  if (!v13)
  {

    if (v16)
    {
      goto LABEL_6;
    }

LABEL_12:
    v24 = 0;
    goto LABEL_13;
  }

  if (!v16)
  {
    goto LABEL_12;
  }

LABEL_6:
  v17 = [v12 objectForKeyedSubscript:@"date"];
  v18 = v17;
  if (v17)
  {
    v19 = MEMORY[0x1E695DF00];
    [v17 doubleValue];
    v20 = [v19 dateWithTimeIntervalSinceReferenceDate:?];
    v26[0] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    [v5 setRecentDates:v21];
  }

  v22 = [v5 metadata];
  [v6 associateWithRecentContactMetadata:v22];

  v23 = +[CNUICoreLogProvider actions_os_log];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    +[CNUIDefaultUserActionFetcher doesRecentContact:matchUserActionItem:];
  }

  v24 = 1;
LABEL_13:

  return v24;
}

void __89__CNUIDefaultUserActionFetcher_recentContactsForUserActionItem_recentsLibrary_scheduler___block_invoke_13_cold_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 40) predicate];
  OUTLINED_FUNCTION_2();
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_1A31E6000, a3, OS_LOG_TYPE_DEBUG, "[DefaultAction] Query for %@ found %@", v6, 0x16u);
}

+ (void)doesRecentContact:matchUserActionItem:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_1A31E6000, v1, OS_LOG_TYPE_DEBUG, "[DefaultAction] Recent contact %@ matches action %@", v2, 0x16u);
}

@end