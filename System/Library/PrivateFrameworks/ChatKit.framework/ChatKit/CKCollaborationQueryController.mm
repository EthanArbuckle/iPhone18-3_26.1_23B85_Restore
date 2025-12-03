@interface CKCollaborationQueryController
- (id)chatGUIDForSearchableItem:(id)item;
- (id)createFoundItemsHandler;
- (id)detailsFilterQueriesForChatGUIDs:(id)ds;
- (id)fetchAttributes;
- (id)filterQueries;
- (id)queryAttributesForText:(id)text;
@end

@implementation CKCollaborationQueryController

- (id)fetchAttributes
{
  v10[14] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69649E0];
  v10[0] = *MEMORY[0x1E69649F8];
  v10[1] = v2;
  v3 = *MEMORY[0x1E6963CE8];
  v10[2] = *MEMORY[0x1E6963D18];
  v10[3] = v3;
  v4 = *MEMORY[0x1E6963EB0];
  v10[4] = *MEMORY[0x1E6963E78];
  v10[5] = v4;
  v5 = *MEMORY[0x1E6964688];
  v10[6] = *MEMORY[0x1E6964B18];
  v10[7] = v5;
  v6 = *MEMORY[0x1E69644B8];
  v10[8] = *MEMORY[0x1E6963BA8];
  v10[9] = v6;
  v10[10] = *MEMORY[0x1E69645D0];
  v10[11] = @"com_apple_mobilesms_lpPluginPaths";
  v7 = *MEMORY[0x1E69644E8];
  v10[12] = *MEMORY[0x1E6964C38];
  v10[13] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:14];

  return v8;
}

- (id)queryAttributesForText:(id)text
{
  v21 = *MEMORY[0x1E69E9840];
  if ([text length])
  {
    v3 = *MEMORY[0x1E6964C38];
    v14 = @"com_apple_mobilesms_lpDescription";
    v15 = v3;
    v4 = *MEMORY[0x1E6963D18];
    v16 = *MEMORY[0x1E69649F8];
    v17 = v4;
    v5 = *MEMORY[0x1E69644E8];
    v18 = *MEMORY[0x1E6964BB0];
    v19 = v5;
    v20 = *MEMORY[0x1E6963BA8];
    v6 = MEMORY[0x1E695DEC8];
    v7 = &v14;
    v8 = 7;
  }

  else
  {
    v9 = *MEMORY[0x1E6964C38];
    v12 = *MEMORY[0x1E6964BB0];
    v13 = v9;
    v6 = MEMORY[0x1E695DEC8];
    v7 = &v12;
    v8 = 2;
  }

  v10 = [v6 arrayWithObjects:v7 count:{v8, v12, v13, v14, v15, v16, v17, v18, v19, v20}];

  return v10;
}

- (id)filterQueries
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%tu", 4];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == %@ && %@ > 0cwd && %@ != %@", *MEMORY[0x1E69645D0], @"lnk", *MEMORY[0x1E69644E8], *MEMORY[0x1E6964B98], v2];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (id)detailsFilterQueriesForChatGUIDs:(id)ds
{
  v25 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = dsCopy;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_kMDItemDomainIdentifier == %@", *(*(&v19 + 1) + 8 * i)];
        [v4 addObject:v9];
      }

      v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__14;
  v17 = __Block_byref_object_dispose__14;
  string = [MEMORY[0x1E696AEC0] string];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__CKCollaborationQueryController_detailsFilterQueriesForChatGUIDs___block_invoke;
  v12[3] = &unk_1E72EEC20;
  v12[4] = &v13;
  [v4 enumerateObjectsUsingBlock:v12];
  v23 = v14[5];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  _Block_object_dispose(&v13, 8);

  return v10;
}

void __67__CKCollaborationQueryController_detailsFilterQueriesForChatGUIDs___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  if (a3)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@" || %@", a2];
    v6 = [v5 stringByAppendingString:v12];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = v12;
  }

  else
  {
    v10 = [*(v4 + 40) stringByAppendingString:a2];
    v11 = *(*(a1 + 32) + 8);
    v9 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (id)createFoundItemsHandler
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__CKCollaborationQueryController_createFoundItemsHandler__block_invoke;
  v4[3] = &unk_1E72EEDA0;
  objc_copyWeak(&v5, &location);
  v2 = _Block_copy(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

void __57__CKCollaborationQueryController_createFoundItemsHandler__block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained searchTerminated];

  if ((v5 & 1) == 0)
  {
    v21 = a1;
    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 setGotResults:1];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = [CKSpotlightQueryResultUtilities indexItemTypeForItem:v13, v21];
          if (([v14 isEqualToString:@"lnk"] & 1) != 0 || objc_msgSend(v14, "isEqualToString:", @"at"))
          {
            if (!v10)
            {
              v10 = [MEMORY[0x1E695DF70] array];
            }

            [v10 addObject:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    v15 = objc_loadWeakRetained((v21 + 32));
    v16 = [v15 intermediaryResults];
    if (v16)
    {
      v17 = objc_loadWeakRetained((v21 + 32));
      v18 = [v17 intermediaryResults];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFD8] set];
    }

    v19 = [v18 setByAddingObjectsFromArray:v10];

    v20 = objc_loadWeakRetained((v21 + 32));
    [v20 setIntermediaryResults:v19];
  }
}

- (id)chatGUIDForSearchableItem:(id)item
{
  attributeSet = [item attributeSet];
  domainIdentifier = [attributeSet domainIdentifier];

  return domainIdentifier;
}

@end