@interface DKContactsPrivacyMaintainer
@end

@implementation DKContactsPrivacyMaintainer

void __68___DKContactsPrivacyMaintainer_registerContactDeletionNotifications__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = +[_CDLogging spotlightReceiverChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __68___DKContactsPrivacyMaintainer_registerContactDeletionNotifications__block_invoke_2_cold_1(a1);
  }

  [WeakRetained[6] runAfterDelaySeconds:1 coalescingBehavior:8.0];
}

void __68___DKContactsPrivacyMaintainer_registerContactDeletionNotifications__block_invoke_517(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = +[_CDLogging spotlightReceiverChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __68___DKContactsPrivacyMaintainer_registerContactDeletionNotifications__block_invoke_517_cold_1(a1);
  }

  [WeakRetained[6] runAfterDelaySeconds:1 coalescingBehavior:8.0];
}

void __71___DKContactsPrivacyMaintainer_handleRecentlyDeletedContactsWithLimit___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [a2 deletedContactIdentifiers];
  [*(a1 + 32) _deleteIntentsRelatedToContactIdentifiers:v5];
  *(*(*(a1 + 40) + 8) + 24) += [v5 count];
  if (*(*(*(a1 + 40) + 8) + 24) > *(a1 + 56))
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a3 = 1;
  }

  v6 = +[_CDLogging spotlightReceiverChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v5 count];
    v12 = *(*(*(a1 + 40) + 8) + 24);
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v14 = 138413058;
    v15 = v10;
    v16 = 2048;
    v17 = v11;
    v18 = 2048;
    v19 = v12;
    v20 = 2112;
    v21 = v13;
    _os_log_debug_impl(&dword_191750000, v6, OS_LOG_TYPE_DEBUG, "%@ - visitEventsWithBatchSize processed batch with size: %lu, numContactsProcessed: %lu, shouldSaveToken: %@", &v14, 0x2Au);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __68___DKContactsPrivacyMaintainer_registerContactDeletionNotifications__block_invoke_2_cold_1(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_11(&dword_191750000, v4, v5, "%@ got __ABDataBaseChangedByOtherProcessNotification notification, triggering deleteInteractionsRelatedToDeletedContacts", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void __68___DKContactsPrivacyMaintainer_registerContactDeletionNotifications__block_invoke_517_cold_1(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_11(&dword_191750000, v4, v5, "%@ got CNContactStoreDidChangeNotification notification, triggering deleteInteractionsRelatedToDeletedContacts", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

@end