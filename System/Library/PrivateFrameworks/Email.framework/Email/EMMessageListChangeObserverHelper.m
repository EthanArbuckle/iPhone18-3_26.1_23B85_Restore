@interface EMMessageListChangeObserverHelper
+ (void)collection:(id)a3 notifyChangeObserversAboutChangedItemIDs:(id)a4 extraInfo:(id)a5;
+ (void)collection:(id)a3 notifyChangeObserversAboutChangedItemIDs:(id)a4 itemIDsWithCountChanges:(id)a5 itemIDsWithBrandIndicatorLocationChanges:(id)a6;
@end

@implementation EMMessageListChangeObserverHelper

+ (void)collection:(id)a3 notifyChangeObserversAboutChangedItemIDs:(id)a4 extraInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 objectForKeyedSubscript:@"changesByObjectID"];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__6;
  v32 = __Block_byref_object_dispose__6;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__6;
  v26 = __Block_byref_object_dispose__6;
  v27 = 0;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __99__EMMessageListChangeObserverHelper_collection_notifyChangeObserversAboutChangedItemIDs_extraInfo___block_invoke;
  v17 = &unk_1E826E0E8;
  v20 = &v28;
  v21 = &v22;
  v12 = v11;
  v18 = v12;
  v13 = v8;
  v19 = v13;
  [v13 enumerateObserversWithBlock:&v14];
  [a1 collection:v13 notifyChangeObserversAboutChangedItemIDs:v9 itemIDsWithCountChanges:v29[5] itemIDsWithBrandIndicatorLocationChanges:{v23[5], v14, v15, v16, v17}];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
}

void __99__EMMessageListChangeObserverHelper_collection_notifyChangeObserversAboutChangedItemIDs_extraInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(*(*(a1 + 48) + 8) + 40) && !*(*(*(a1 + 56) + 8) + 40) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __99__EMMessageListChangeObserverHelper_collection_notifyChangeObserversAboutChangedItemIDs_extraInfo___block_invoke_2;
    v19[3] = &unk_1E826E0C0;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v20 = v8;
    v21 = v9;
    [v7 enumerateKeysAndObjectsUsingBlock:v19];
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __99__EMMessageListChangeObserverHelper_collection_notifyChangeObserversAboutChangedItemIDs_extraInfo___block_invoke_3;
    v16[3] = &unk_1E826E0C0;
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = *(a1 + 56);
    v17 = v14;
    v18 = v15;
    [v13 enumerateKeysAndObjectsUsingBlock:v16];
  }
}

void __99__EMMessageListChangeObserverHelper_collection_notifyChangeObserversAboutChangedItemIDs_extraInfo___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 count];

  if (v5)
  {
    v6 = [*(a1 + 32) itemIDForObjectID:v7];
    if (v6)
    {
      [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
    }
  }
}

void __99__EMMessageListChangeObserverHelper_collection_notifyChangeObserversAboutChangedItemIDs_extraInfo___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 brandIndicatorLocation];

  if (v5)
  {
    v6 = [*(a1 + 32) itemIDForObjectID:v7];
    if (v6)
    {
      [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
    }
  }
}

+ (void)collection:(id)a3 notifyChangeObserversAboutChangedItemIDs:(id)a4 itemIDsWithCountChanges:(id)a5 itemIDsWithBrandIndicatorLocationChanges:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v26 = a6;
  if (objc_opt_respondsToSelector())
  {
    v14 = [v11 itemIDSections];
    v15 = [v14 getObject];
  }

  else
  {
    v15 = MEMORY[0x1E695E0F8];
  }

  v16 = MEMORY[0x1E695DFD8];
  v17 = [v15 allKeys];
  v18 = [v16 setWithArray:v17];

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __154__EMMessageListChangeObserverHelper_collection_notifyChangeObserversAboutChangedItemIDs_itemIDsWithCountChanges_itemIDsWithBrandIndicatorLocationChanges___block_invoke;
  v27[3] = &unk_1E826E138;
  v19 = v11;
  v28 = v19;
  v20 = v15;
  v29 = v20;
  v30 = v18;
  v25 = v12;
  v21 = v12;
  v31 = v21;
  v22 = v13;
  v32 = v22;
  v23 = v26;
  v33 = v23;
  v34 = a2;
  v35 = a1;
  v24 = v18;
  [v19 enumerateObserversWithBlock:{v27, v25}];
}

void __154__EMMessageListChangeObserverHelper_collection_notifyChangeObserversAboutChangedItemIDs_itemIDsWithCountChanges_itemIDsWithBrandIndicatorLocationChanges___block_invoke(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __154__EMMessageListChangeObserverHelper_collection_notifyChangeObserversAboutChangedItemIDs_itemIDsWithCountChanges_itemIDsWithBrandIndicatorLocationChanges___block_invoke_2;
  v26 = &unk_1E826E110;
  v4 = v3;
  v27 = v4;
  v28 = *(a1 + 32);
  v29 = *(a1 + 40);
  v30 = *(a1 + 48);
  v5 = _Block_copy(&v23);
  v6 = v5[2](v5, *(a1 + 56));
  v7 = v5[2](v5, *(a1 + 64));
  v8 = v5[2](v5, *(a1 + 72));
  if (objc_opt_respondsToSelector())
  {
    if (!*(a1 + 64))
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      [v22 handleFailureInMethod:*(a1 + 80) object:*(a1 + 88) file:@"EMMessageList.m" lineNumber:1555 description:@"itemIDsWithCountChanges cannot be nil if changeObserver responds to collection:changedItemIDs:itemIDsWithCountChanges:"];
    }

    v9 = [EMMessageList log:v23];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 count];
      v11 = [v7 count];
      v12 = [v8 count];
      v13 = objc_opt_class();
      v14 = *(a1 + 88);
      *buf = 134219266;
      v32 = v10;
      v33 = 2048;
      v34 = v11;
      v35 = 2048;
      v36 = v12;
      v37 = 2112;
      v38 = v13;
      v39 = 2048;
      v40 = v4;
      v41 = 2112;
      v42 = v14;
      v15 = v13;
      _os_log_impl(&dword_1C6655000, v9, OS_LOG_TYPE_DEFAULT, "Notifying observer of %lu changed itemIDs (%lu with count changes, %lu with brand indicator changes): <%@: %p>\n%@", buf, 0x3Eu);
    }

    [v4 collection:*(a1 + 32) changedItemIDs:v6 itemIDsWithCountChanges:v7 itemIDsWithBrandIndicatorLocationChanges:v8];
  }

  else
  {
    v16 = [EMMessageList log:v23];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v6 count];
      v18 = objc_opt_class();
      v19 = *(a1 + 88);
      *buf = 134218754;
      v32 = v17;
      v33 = 2112;
      v34 = v18;
      v35 = 2048;
      v36 = v4;
      v37 = 2112;
      v38 = v19;
      v20 = v18;
      _os_log_impl(&dword_1C6655000, v16, OS_LOG_TYPE_DEFAULT, "Notifying observer of %lu changed itemIDs: <%@: %p>\n%@", buf, 0x2Au);
    }

    [v4 collection:*(a1 + 32) changedItemIDs:v6];
  }

  v21 = *MEMORY[0x1E69E9840];
}

id __154__EMMessageListChangeObserverHelper_collection_notifyChangeObserversAboutChangedItemIDs_itemIDsWithCountChanges_itemIDsWithBrandIndicatorLocationChanges___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v5 = [*(a1 + 32) sectionForCollection:*(a1 + 40)];
    if (v5)
    {
      v6 = *(a1 + 40);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __154__EMMessageListChangeObserverHelper_collection_notifyChangeObserversAboutChangedItemIDs_itemIDsWithCountChanges_itemIDsWithBrandIndicatorLocationChanges___block_invoke_3;
        v12[3] = &unk_1E826E050;
        v13 = *(a1 + 48);
        v5 = v5;
        v14 = v5;
        v7 = [v3 ef_filter:v12];
        v8 = &v13;

        goto LABEL_7;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __154__EMMessageListChangeObserverHelper_collection_notifyChangeObserversAboutChangedItemIDs_itemIDsWithCountChanges_itemIDsWithBrandIndicatorLocationChanges___block_invoke_4;
  v10[3] = &unk_1E826DD80;
  v11 = *(a1 + 56);
  v7 = [v3 ef_filter:v10];
  v8 = &v11;
LABEL_7:

  return v7;
}

uint64_t __154__EMMessageListChangeObserverHelper_collection_notifyChangeObserversAboutChangedItemIDs_itemIDsWithCountChanges_itemIDsWithBrandIndicatorLocationChanges___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v4 = [v3 isEqualToString:*(a1 + 40)];

  return v4;
}

@end