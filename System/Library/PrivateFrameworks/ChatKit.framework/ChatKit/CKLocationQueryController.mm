@interface CKLocationQueryController
- (id)chatGUIDForSearchableItem:(id)item;
- (id)detailsFilterQueriesForChatGUIDs:(id)ds;
- (id)detailsResultsValidationQueriesForChatGUIDs:(id)ds;
- (id)fetchAttributes;
- (id)filterQueries;
- (id)queryAttributesForText:(id)text;
- (void)postProcessAndUpdateResults:(id)results;
@end

@implementation CKLocationQueryController

- (id)fetchAttributes
{
  v11[15] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69649E0];
  v11[0] = *MEMORY[0x1E69649F8];
  v11[1] = v2;
  v3 = *MEMORY[0x1E6963CE8];
  v11[2] = *MEMORY[0x1E6963D18];
  v11[3] = v3;
  v4 = *MEMORY[0x1E6964550];
  v11[4] = *MEMORY[0x1E6963E78];
  v11[5] = v4;
  v5 = *MEMORY[0x1E6964B18];
  v11[6] = *MEMORY[0x1E6964598];
  v11[7] = v5;
  v6 = *MEMORY[0x1E6964C38];
  v11[8] = *MEMORY[0x1E6963EB0];
  v11[9] = v6;
  v7 = *MEMORY[0x1E6963BA8];
  v11[10] = *MEMORY[0x1E6964688];
  v11[11] = v7;
  v8 = *MEMORY[0x1E6964BD0];
  v11[12] = *MEMORY[0x1E69644B8];
  v11[13] = v8;
  v11[14] = @"com_apple_mobilesms_lpPluginPaths";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:15];

  return v9;
}

- (id)queryAttributesForText:(id)text
{
  v12[7] = *MEMORY[0x1E69E9840];
  if ([text length])
  {
    v3 = *MEMORY[0x1E6964BD0];
    v12[0] = *MEMORY[0x1E6964BB0];
    v12[1] = v3;
    v4 = *MEMORY[0x1E6963ED8];
    v12[2] = *MEMORY[0x1E6963E08];
    v12[3] = v4;
    v5 = *MEMORY[0x1E6963D18];
    v12[4] = *MEMORY[0x1E69648D8];
    v12[5] = v5;
    v12[6] = *MEMORY[0x1E69649F8];
    v6 = MEMORY[0x1E695DEC8];
    v7 = v12;
    v8 = 7;
  }

  else
  {
    v11 = *MEMORY[0x1E6964BB0];
    v6 = MEMORY[0x1E695DEC8];
    v7 = &v11;
    v8 = 1;
  }

  v9 = [v6 arrayWithObjects:v7 count:v8];

  return v9;
}

- (id)filterQueries
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == %@", *MEMORY[0x1E69645D0], @"loc"];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)detailsFilterQueriesForChatGUIDs:(id)ds
{
  v29 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = dsCopy;
  v5 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = *v24;
    v7 = *MEMORY[0x1E6963BA8];
    v8 = *MEMORY[0x1E6963F88];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == %@", v7, v10];
        [v4 addObject:v11];
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == %@", v8, v10];
        [v4 addObject:v12];
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__71;
  v21 = __Block_byref_object_dispose__71;
  string = [MEMORY[0x1E696AEC0] string];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __62__CKLocationQueryController_detailsFilterQueriesForChatGUIDs___block_invoke;
  v16[3] = &unk_1E72EEC20;
  v16[4] = &v17;
  [v4 enumerateObjectsUsingBlock:v16];
  v27 = v18[5];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  _Block_object_dispose(&v17, 8);

  return v13;
}

void __62__CKLocationQueryController_detailsFilterQueriesForChatGUIDs___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
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

- (id)detailsResultsValidationQueriesForChatGUIDs:(id)ds
{
  v20 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = dsCopy;
  v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = *MEMORY[0x1E69645D0];
    v9 = *MEMORY[0x1E6963BA8];
    v10 = *MEMORY[0x1E6963F88];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == \"%@\" && (%@ == \"%@\" || %@ == \"%@\", v8, @"loc"", v9, *(*(&v15 + 1) + 8 * i), v10, *(*(&v15 + 1) + 8 * i)];
        [v4 addObject:v12];
      }

      v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)chatGUIDForSearchableItem:(id)item
{
  itemCopy = item;
  attributeSet = [itemCopy attributeSet];
  accountIdentifier = [attributeSet accountIdentifier];

  if (![accountIdentifier length])
  {
    attributeSet2 = [itemCopy attributeSet];
    domainIdentifier = [attributeSet2 domainIdentifier];

    accountIdentifier = domainIdentifier;
  }

  return accountIdentifier;
}

- (void)postProcessAndUpdateResults:(id)results
{
  [(CKQueryController *)self setResults:results];
  delegate = [(CKQueryController *)self delegate];
  [delegate searchQueryResultsDidChange:self];
}

@end