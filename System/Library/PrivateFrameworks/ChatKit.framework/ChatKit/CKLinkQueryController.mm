@interface CKLinkQueryController
- (id)detailsFilterQueriesForChatGUIDs:(id)ds;
- (id)detailsResultsValidationQueriesForChatGUIDs:(id)ds;
- (id)fetchAttributes;
- (id)filterQueries;
- (id)queryAttributesForText:(id)text;
- (id)queryResultsForItems:(id)items;
- (void)postProcessAndUpdateResults:(id)results;
@end

@implementation CKLinkQueryController

- (id)fetchAttributes
{
  v7[6] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69644B8];
  v7[0] = @"com_apple_mobilesms_lpPluginPaths";
  v7[1] = v2;
  v3 = *MEMORY[0x1E6963E78];
  v7[2] = *MEMORY[0x1E6964C38];
  v7[3] = v3;
  v4 = *MEMORY[0x1E6964B98];
  v7[4] = *MEMORY[0x1E6963CE8];
  v7[5] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:6];

  return v5;
}

- (id)queryAttributesForText:(id)text
{
  v15[5] = *MEMORY[0x1E69E9840];
  if ([text length])
  {
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isRedesignedDetailsViewEnabled = [mEMORY[0x1E69A8070] isRedesignedDetailsViewEnabled];

    v5 = *MEMORY[0x1E6964C38];
    if (isRedesignedDetailsViewEnabled)
    {
      v15[0] = @"com_apple_mobilesms_lpDescription";
      v15[1] = v5;
      v6 = *MEMORY[0x1E69649F8];
      v15[2] = *MEMORY[0x1E6963D18];
      v15[3] = v6;
      v15[4] = *MEMORY[0x1E69644E8];
      v7 = MEMORY[0x1E695DEC8];
      v8 = v15;
      v9 = 5;
    }

    else
    {
      v14[0] = @"com_apple_mobilesms_lpDescription";
      v14[1] = v5;
      v10 = *MEMORY[0x1E69649F8];
      v14[2] = *MEMORY[0x1E6963D18];
      v14[3] = v10;
      v7 = MEMORY[0x1E695DEC8];
      v8 = v14;
      v9 = 4;
    }
  }

  else
  {
    v13 = *MEMORY[0x1E6964C38];
    v7 = MEMORY[0x1E695DEC8];
    v8 = &v13;
    v9 = 1;
  }

  v11 = [v7 arrayWithObjects:v8 count:v9];

  return v11;
}

- (id)filterQueries
{
  v22[3] = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isRedesignedDetailsViewEnabled = [mEMORY[0x1E69A8070] isRedesignedDetailsViewEnabled];

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == %@", *MEMORY[0x1E69645D0], @"lnk"];
  v5 = v4;
  if (isRedesignedDetailsViewEnabled)
  {
    v22[0] = v4;
    v6 = MEMORY[0x1E696AEC0];
    v7 = *MEMORY[0x1E6963CF8];
    v8 = *MEMORY[0x1E69649E8];
    v9 = *MEMORY[0x1E69644B8];
    v10 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v11 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v12 = [MEMORY[0x1E696AD98] numberWithBool:0];
    v13 = [v6 stringWithFormat:@"(%@ == \"*\" || %@ == \"*\" || %@ == \"%@\" || %@ == \"%@\", v7, v8, v9, v10, @"com_apple_mobilesms_businessChat", v11, @"com_apple_mobilesms_dataDetectedLink"", v12];
    v22[1] = v13;
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == 0", *MEMORY[0x1E69644E8]];
    v22[2] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  }

  else
  {
    v21[0] = v4;
    v16 = MEMORY[0x1E696AEC0];
    v17 = *MEMORY[0x1E6963CF8];
    v18 = *MEMORY[0x1E69649E8];
    v19 = *MEMORY[0x1E69644B8];
    v10 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v11 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v12 = [MEMORY[0x1E696AD98] numberWithBool:0];
    v13 = [v16 stringWithFormat:@"(%@ == \"*\" || %@ == \"*\" || %@ == \"%@\" || %@ == \"%@\", v17, v18, v19, v10, @"com_apple_mobilesms_businessChat", v11, @"com_apple_mobilesms_dataDetectedLink"", v12];
    v21[1] = v13;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  }

  return v15;
}

- (id)detailsFilterQueriesForChatGUIDs:(id)ds
{
  v26 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = dsCopy;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = *v21;
    v8 = *MEMORY[0x1E6963F88];
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
  v17 = __Block_byref_object_copy__51;
  v18 = __Block_byref_object_dispose__51;
  string = [MEMORY[0x1E696AEC0] string];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__CKLinkQueryController_detailsFilterQueriesForChatGUIDs___block_invoke;
  v13[3] = &unk_1E72EEC20;
  v13[4] = &v14;
  [v4 enumerateObjectsUsingBlock:v13];
  v24 = v15[5];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  _Block_object_dispose(&v14, 8);

  return v11;
}

void __58__CKLinkQueryController_detailsFilterQueriesForChatGUIDs___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = *MEMORY[0x1E6963F88];
    v10 = *MEMORY[0x1E69644E8];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == %@ && %@ == %@ && %@ == 0", v8, @"lnk", v9, *(*(&v15 + 1) + 8 * i), v10];
        [v4 addObject:v12];
      }

      v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)queryResultsForItems:(id)items
{
  v39 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v26 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v25 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v5 = [(CKMessageTypeQueryController *)self maxResultsForMode:[(CKQueryController *)self mode]];
  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v36 = [itemsCopy count];
    v37 = 2048;
    v38 = v5;
    _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Got %lu results. Max is %lu", buf, 0x16u);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = itemsCopy;
  v7 = v25;
  v29 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v29)
  {
    v8 = 0;
    v9 = *v31;
    v27 = *v31;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v31 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v30 + 1) + 8 * v10);
      v12 = [(CKMessageTypeQueryController *)self chatGUIDForSearchableItem:v11];
      delegate = [(CKQueryController *)self delegate];
      v14 = [delegate queryController:self conversationForChatGUID:v12];

      if (v14 && ([v14 isBlockedByCommunicationLimits] & 1) == 0)
      {
        v15 = v5;
        attributeSet = [v11 attributeSet];
        v17 = [attributeSet URL];

        if (([v7 containsObject:v17] & 1) == 0)
        {
          if (v17)
          {
            [v7 addObject:v17];
          }

          v18 = [CKSpotlightQueryResult alloc];
          queryTypeIdentifier = [(CKLinkQueryController *)self queryTypeIdentifier];
          v20 = [(CKSpotlightQueryResult *)v18 initWithSearchableItem:v11 queryType:queryTypeIdentifier withConversation:v14];

          v7 = v25;
          [v26 addObject:v20];
          ++v8;
        }

        v5 = v15;

        v9 = v27;
      }

      if (v8 >= v5)
      {
        break;
      }

      if (v29 == ++v10)
      {
        v29 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v29)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v21 = IMLogHandleForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [v26 count];
    *buf = 134217984;
    v36 = v22;
    _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "Returning %lu results", buf, 0xCu);
  }

  v23 = [v26 copy];

  return v23;
}

- (void)postProcessAndUpdateResults:(id)results
{
  v11 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[CKLinkQueryController postProcessAndUpdateResults:]";
    v9 = 2048;
    v10 = [resultsCopy count];
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "%s got %lu results", &v7, 0x16u);
  }

  [(CKQueryController *)self setResults:resultsCopy];
  delegate = [(CKQueryController *)self delegate];
  [delegate searchQueryResultsDidChange:self];
}

@end