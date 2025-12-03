@interface CNUIDefaultUserActionFetcher
+ (BOOL)doesRecentContact:(id)contact matchUserActionItem:(id)item;
+ (id)defaultActionItemForActionItem:(id)item recentContacts:(id)contacts;
+ (id)queryForUserActionItem:(id)item;
+ (id)recentContactsForUserActionItem:(id)item recentsLibrary:(id)library scheduler:(id)scheduler;
- (CNUIDefaultUserActionFetcher)init;
- (CNUIDefaultUserActionFetcher)initWithRecentsLibrary:(id)library;
- (id)defaultActionItemForActionItems:(id)items schedulerProvider:(id)provider;
- (id)observableForDefaultActionsChanged;
@end

@implementation CNUIDefaultUserActionFetcher

- (CNUIDefaultUserActionFetcher)init
{
  defaultInstance = [MEMORY[0x1E6998FC8] defaultInstance];
  v4 = [(CNUIDefaultUserActionFetcher *)self initWithRecentsLibrary:defaultInstance];

  return v4;
}

- (CNUIDefaultUserActionFetcher)initWithRecentsLibrary:(id)library
{
  libraryCopy = library;
  v10.receiver = self;
  v10.super_class = CNUIDefaultUserActionFetcher;
  v6 = [(CNUIDefaultUserActionFetcher *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_library, library);
    v8 = v7;
  }

  return v7;
}

- (id)observableForDefaultActionsChanged
{
  v2 = MEMORY[0x1E6996798];
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  v4 = [v2 observableOnNotificationCenter:defaultCenter withName:@"com.apple.contacts.ContactsUICore.CNUIUserActionRecentsChangedNotification" object:0];

  return v4;
}

- (id)defaultActionItemForActionItems:(id)items schedulerProvider:(id)provider
{
  providerCopy = provider;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __82__CNUIDefaultUserActionFetcher_defaultActionItemForActionItems_schedulerProvider___block_invoke;
  v14 = &unk_1E76E9478;
  selfCopy = self;
  v16 = providerCopy;
  v7 = providerCopy;
  v8 = [items switchMap:&v11 schedulerProvider:v7];
  v9 = [v8 doOnNext:{&__block_literal_global_7_3, v11, v12, v13, v14, selfCopy}];

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

+ (id)recentContactsForUserActionItem:(id)item recentsLibrary:(id)library scheduler:(id)scheduler
{
  itemCopy = item;
  libraryCopy = library;
  schedulerCopy = scheduler;
  v11 = MEMORY[0x1E6996798];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __89__CNUIDefaultUserActionFetcher_recentContactsForUserActionItem_recentsLibrary_scheduler___block_invoke;
  v17[3] = &unk_1E76EA6B0;
  v18 = schedulerCopy;
  v19 = itemCopy;
  v20 = libraryCopy;
  selfCopy = self;
  v12 = libraryCopy;
  v13 = itemCopy;
  v14 = schedulerCopy;
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

+ (id)queryForUserActionItem:(id)item
{
  v19[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  sanitizedTargetHandle = [itemCopy sanitizedTargetHandle];
  contactProperty = [itemCopy contactProperty];
  v6 = @"CNUICRRecentsDomainContactDefaultAction";
  v7 = CNUIUserActionRecentsAddressKindForContactProperty();
  v19[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];

  v9 = +[CNUICoreLogProvider actions_os_log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = [contactProperty key];
    v13 = 138412802;
    v14 = itemCopy;
    v15 = 2114;
    v16 = v12;
    v17 = 2114;
    v18 = v8;
    _os_log_debug_impl(&dword_1A31E6000, v9, OS_LOG_TYPE_DEBUG, "[DefaultAction] composed query for %@, key %{public}@, kind %{public}@", &v13, 0x20u);
  }

  v10 = [MEMORY[0x1E6998FD8] searchQueryForSearchTerm:sanitizedTargetHandle preferredKinds:v8 sendingAddress:0 recentsDomain:v6];
  [v10 setComparator:0];

  return v10;
}

+ (id)defaultActionItemForActionItem:(id)item recentContacts:(id)contacts
{
  itemCopy = item;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__CNUIDefaultUserActionFetcher_defaultActionItemForActionItem_recentContacts___block_invoke;
  v15[3] = &unk_1E76EA6D8;
  selfCopy = self;
  v7 = itemCopy;
  v16 = v7;
  v8 = [contacts filter:v15];
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

+ (BOOL)doesRecentContact:(id)contact matchUserActionItem:(id)item
{
  v26[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  itemCopy = item;
  contactProperty = [itemCopy contactProperty];
  identifier = [contactProperty identifier];

  metadata = [contactCopy metadata];
  type = [itemCopy type];
  v11 = [metadata valueForKey:type];
  v12 = [v11 valueForKey:identifier];

  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = [v12 objectForKeyedSubscript:@"bundleIdentifier"];
  if (!v13)
  {
    type = [itemCopy bundleIdentifier];
    if (!type)
    {
      goto LABEL_6;
    }
  }

  v14 = [v12 objectForKeyedSubscript:@"bundleIdentifier"];
  bundleIdentifier = [itemCopy bundleIdentifier];
  v16 = [v14 isEqual:bundleIdentifier];

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
    [contactCopy setRecentDates:v21];
  }

  metadata2 = [contactCopy metadata];
  [itemCopy associateWithRecentContactMetadata:metadata2];

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