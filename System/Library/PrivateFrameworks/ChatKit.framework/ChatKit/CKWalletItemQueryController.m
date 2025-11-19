@interface CKWalletItemQueryController
- (id)chatGUIDForSearchableItem:(id)a3;
- (id)detailsFilterQueriesForChatGUIDs:(id)a3;
- (id)detailsResultsValidationQueriesForChatGUIDs:(id)a3;
- (id)fetchAttributes;
- (id)filterQueries;
- (id)queryAttributesForText:(id)a3;
@end

@implementation CKWalletItemQueryController

- (id)filterQueries
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == %@", *MEMORY[0x1E6963F88], @"attachmentDomain"];
  v6[0] = v2;
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == %@", *MEMORY[0x1E69645D0], @"pa"];
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

- (id)fetchAttributes
{
  v9[10] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69649E0];
  v9[0] = *MEMORY[0x1E69649F8];
  v9[1] = v2;
  v3 = *MEMORY[0x1E6963CE8];
  v9[2] = *MEMORY[0x1E6963D18];
  v9[3] = v3;
  v4 = *MEMORY[0x1E6963EB0];
  v9[4] = *MEMORY[0x1E6963E78];
  v9[5] = v4;
  v5 = *MEMORY[0x1E6964688];
  v9[6] = *MEMORY[0x1E6964B18];
  v9[7] = v5;
  v6 = *MEMORY[0x1E69644B8];
  v9[8] = *MEMORY[0x1E6963BA8];
  v9[9] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:10];

  return v7;
}

- (id)queryAttributesForText:(id)a3
{
  v10[3] = *MEMORY[0x1E69E9840];
  if ([a3 length])
  {
    v3 = *MEMORY[0x1E6963D18];
    v10[0] = *MEMORY[0x1E69649F8];
    v10[1] = v3;
    v10[2] = *MEMORY[0x1E6964BB0];
    v4 = MEMORY[0x1E695DEC8];
    v5 = v10;
    v6 = 3;
  }

  else
  {
    v9 = *MEMORY[0x1E6964BB0];
    v4 = MEMORY[0x1E695DEC8];
    v5 = &v9;
    v6 = 1;
  }

  v7 = [v4 arrayWithObjects:v5 count:v6];

  return v7;
}

- (id)detailsFilterQueriesForChatGUIDs:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = *v21;
    v8 = *MEMORY[0x1E6963BA8];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == %@", v8, *(*(&v20 + 1) + 8 * i)];
        [v4 addObject:v10];
      }

      v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__67;
  v18 = __Block_byref_object_dispose__67;
  v19 = [MEMORY[0x1E696AEC0] string];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__CKWalletItemQueryController_detailsFilterQueriesForChatGUIDs___block_invoke;
  v13[3] = &unk_1E72EEC20;
  v13[4] = &v14;
  [v4 enumerateObjectsUsingBlock:v13];
  v24 = v15[5];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  _Block_object_dispose(&v14, 8);

  return v11;
}

void __64__CKWalletItemQueryController_detailsFilterQueriesForChatGUIDs___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
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

- (id)detailsResultsValidationQueriesForChatGUIDs:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = *MEMORY[0x1E69645D0];
    v9 = *MEMORY[0x1E6963BA8];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == %@ && %@ == %@", v8, @"pa", v9, *(*(&v14 + 1) + 8 * i)];
        [v4 addObject:v11];
      }

      v6 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)chatGUIDForSearchableItem:(id)a3
{
  v3 = [a3 attributeSet];
  v4 = [v3 accountIdentifier];

  return v4;
}

@end