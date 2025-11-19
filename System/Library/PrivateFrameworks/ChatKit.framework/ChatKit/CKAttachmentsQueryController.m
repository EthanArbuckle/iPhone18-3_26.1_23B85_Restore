@interface CKAttachmentsQueryController
- (BOOL)shouldGroupCollaborationsWithDocuments;
- (id)chatGUIDForSearchableItem:(id)a3;
- (id)detailsFilterQueriesForChatGUIDs:(id)a3;
- (id)detailsResultsValidationQueriesForChatGUIDs:(id)a3;
- (id)fetchAttributes;
- (id)filterQueries;
- (id)queryAttributesForText:(id)a3;
- (unint64_t)maxResultsForMode:(unint64_t)a3;
@end

@implementation CKAttachmentsQueryController

- (id)fetchAttributes
{
  v19[14] = *MEMORY[0x1E69E9840];
  v2 = [(CKAttachmentsQueryController *)self shouldGroupCollaborationsWithDocuments];
  v3 = *MEMORY[0x1E69649E0];
  if (v2)
  {
    v19[0] = *MEMORY[0x1E69649F8];
    v19[1] = v3;
    v4 = *MEMORY[0x1E6963CE8];
    v19[2] = *MEMORY[0x1E6963D18];
    v19[3] = v4;
    v5 = *MEMORY[0x1E6963EB0];
    v19[4] = *MEMORY[0x1E6963E78];
    v19[5] = v5;
    v6 = *MEMORY[0x1E6964688];
    v19[6] = *MEMORY[0x1E6964B18];
    v19[7] = v6;
    v7 = *MEMORY[0x1E69644B8];
    v19[8] = *MEMORY[0x1E6963BA8];
    v19[9] = v7;
    v19[10] = *MEMORY[0x1E69645D0];
    v19[11] = @"com_apple_mobilesms_lpPluginPaths";
    v8 = *MEMORY[0x1E69644E8];
    v19[12] = *MEMORY[0x1E6964C38];
    v19[13] = v8;
    v9 = MEMORY[0x1E695DEC8];
    v10 = v19;
    v11 = 14;
  }

  else
  {
    v18[0] = *MEMORY[0x1E69649F8];
    v18[1] = v3;
    v12 = *MEMORY[0x1E6963CE8];
    v18[2] = *MEMORY[0x1E6963D18];
    v18[3] = v12;
    v13 = *MEMORY[0x1E6963EB0];
    v18[4] = *MEMORY[0x1E6963E78];
    v18[5] = v13;
    v14 = *MEMORY[0x1E6964688];
    v18[6] = *MEMORY[0x1E6964B18];
    v18[7] = v14;
    v15 = *MEMORY[0x1E69644B8];
    v18[8] = *MEMORY[0x1E6963BA8];
    v18[9] = v15;
    v9 = MEMORY[0x1E695DEC8];
    v10 = v18;
    v11 = 10;
  }

  v16 = [v9 arrayWithObjects:v10 count:v11];

  return v16;
}

- (id)queryAttributesForText:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKAttachmentsQueryController *)self shouldGroupCollaborationsWithDocuments];
  v6 = [v4 length];

  if (v5)
  {
    if (v6)
    {
      v7 = *MEMORY[0x1E6964C38];
      v27 = @"com_apple_mobilesms_lpDescription";
      v28 = v7;
      v8 = *MEMORY[0x1E6963D18];
      v29 = *MEMORY[0x1E69649F8];
      v30 = v8;
      v9 = *MEMORY[0x1E6963F60];
      v31 = *MEMORY[0x1E6964BB0];
      v32 = v9;
      v10 = *MEMORY[0x1E69644E8];
      v33 = *MEMORY[0x1E6963F78];
      v34 = v10;
      v35 = *MEMORY[0x1E6963BA8];
      v11 = MEMORY[0x1E695DEC8];
      v12 = &v27;
      v13 = 9;
    }

    else
    {
      v16 = *MEMORY[0x1E6964C38];
      v25 = *MEMORY[0x1E6964BB0];
      v26 = v16;
      v11 = MEMORY[0x1E695DEC8];
      v12 = &v25;
      v13 = 2;
    }
  }

  else if (v6)
  {
    v14 = *MEMORY[0x1E6963D18];
    v20 = *MEMORY[0x1E69649F8];
    v21 = v14;
    v15 = *MEMORY[0x1E6963F60];
    v22 = *MEMORY[0x1E6964BB0];
    v23 = v15;
    v24 = *MEMORY[0x1E6963F78];
    v11 = MEMORY[0x1E695DEC8];
    v12 = &v20;
    v13 = 5;
  }

  else
  {
    v19 = *MEMORY[0x1E6964BB0];
    v11 = MEMORY[0x1E695DEC8];
    v12 = &v19;
    v13 = 1;
  }

  v17 = [v11 arrayWithObjects:v12 count:{v13, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36}];

  return v17;
}

- (id)filterQueries
{
  v12[1] = *MEMORY[0x1E69E9840];
  if ([(CKAttachmentsQueryController *)self shouldGroupCollaborationsWithDocuments])
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%tu", 4];
    v3 = MEMORY[0x1E696AEC0];
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == %@", *MEMORY[0x1E6963F88], @"attachmentDomain"];
    v5 = *MEMORY[0x1E69645D0];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == %@", *MEMORY[0x1E69645D0], @"at"];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == %@ && %@ > 0cwd && %@ != %@", v5, @"lnk", *MEMORY[0x1E69644E8], *MEMORY[0x1E6964B98], v2];
    v8 = [v3 stringWithFormat:@"(%@ && %@) || (%@)", v4, v6, v7];
    v12[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == %@", *MEMORY[0x1E6963F88], @"attachmentDomain"];
    v11[0] = v2;
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == %@", *MEMORY[0x1E69645D0], @"at"];
    v11[1] = v4;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  }

  return v9;
}

- (id)detailsFilterQueriesForChatGUIDs:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKAttachmentsQueryController *)self shouldGroupCollaborationsWithDocuments];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count") << v5}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = *v26;
    v9 = *MEMORY[0x1E6963BA8];
    v16 = *MEMORY[0x1E6963F88];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == %@", v9, v11];
        [v6 addObject:v12];
        if ([(CKAttachmentsQueryController *)self shouldGroupCollaborationsWithDocuments])
        {
          v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == %@", v16, v11];
          [v6 addObject:v13];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__11;
  v23 = __Block_byref_object_dispose__11;
  v24 = [MEMORY[0x1E696AEC0] string];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__CKAttachmentsQueryController_detailsFilterQueriesForChatGUIDs___block_invoke;
  v18[3] = &unk_1E72EEC20;
  v18[4] = &v19;
  [v6 enumerateObjectsUsingBlock:v18];
  v29 = v20[5];
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  _Block_object_dispose(&v19, 8);

  return v14;
}

void __65__CKAttachmentsQueryController_detailsFilterQueriesForChatGUIDs___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    v8 = *MEMORY[0x1E69645D0];
    v9 = *MEMORY[0x1E6963BA8];
    v10 = *MEMORY[0x1E6963F88];
    v11 = *MEMORY[0x1E69644E8];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@ == \"%@\" && %@ == \"%@\", v8, @"at", v9, *(*(&v16 + 1) + 8 * i), v10, *(*(&v16 + 1) + 8 * i), v8, @"lnk"", v11];
        [v4 addObject:v13];
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v4;
}

- (unint64_t)maxResultsForMode:(unint64_t)a3
{
  v5 = [(CKQueryController *)self delegate];
  v6 = [v5 layoutWidthForQueryController:self];

  v7 = [(CKQueryController *)self mode];
  result = 0;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
LABEL_5:
      v9.receiver = self;
      v9.super_class = CKAttachmentsQueryController;
      return [(CKMessageTypeQueryController *)&v9 maxResultsForMode:a3];
    }

    if (v7 != 3)
    {
      if (v7 != 4)
      {
        return result;
      }

      goto LABEL_5;
    }

LABEL_8:
    if (!v6)
    {
      return 2;
    }

    if (v6 != 2)
    {
      return 6;
    }

    if (CKIsRunningInMacCatalyst())
    {
      return 9;
    }

    return 8;
  }

  if (v7)
  {
    if (v7 != 1)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (v6)
  {
    return 9;
  }

  else
  {
    return 6;
  }
}

- (id)chatGUIDForSearchableItem:(id)a3
{
  v4 = a3;
  v5 = [(CKAttachmentsQueryController *)self shouldGroupCollaborationsWithDocuments];
  v6 = [v4 attributeSet];

  if (v5)
  {
    [v6 domainIdentifier];
  }

  else
  {
    [v6 accountIdentifier];
  }
  v7 = ;

  return v7;
}

- (BOOL)shouldGroupCollaborationsWithDocuments
{
  if ([(CKQueryController *)self mode]!= 3 && [(CKQueryController *)self mode]!= 4)
  {
    return 0;
  }

  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isRedesignedDetailsViewEnabled];

  return v4;
}

@end