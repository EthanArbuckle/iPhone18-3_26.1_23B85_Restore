@interface CKPhotosQueryController
- (id)chatGUIDForSearchableItem:(id)a3;
- (id)detailsFilterQueriesForChatGUIDs:(id)a3;
- (id)fetchAttributes;
- (id)filterQueriesBase;
- (id)queryAttributesForText:(id)a3;
- (id)queryResultsForItems:(id)a3;
- (unint64_t)maxResultsForMode:(unint64_t)a3;
@end

@implementation CKPhotosQueryController

- (id)fetchAttributes
{
  v9[11] = *MEMORY[0x1E69E9840];
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
  v9[10] = *MEMORY[0x1E69645D0];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:11];

  return v7;
}

- (id)queryAttributesForText:(id)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  if ([a3 length])
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithObjects:{*MEMORY[0x1E69649F8], *MEMORY[0x1E69649E0], *MEMORY[0x1E6964BB0], *MEMORY[0x1E6964848], *MEMORY[0x1E6964858], *MEMORY[0x1E6964800], 0}];
    v4 = [v3 copy];
  }

  else
  {
    v6[0] = *MEMORY[0x1E6964BB0];
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  return v4;
}

- (id)filterQueriesBase
{
  v10[2] = *MEMORY[0x1E69E9840];
  if (![(CKPhotosQueryController *)self contentMode])
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == %@", *MEMORY[0x1E6963F88], @"attachmentDomain"];
    v10[0] = v3;
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == %@ || %@ == %@ || %@ == %@ || %@ == %@", *MEMORY[0x1E69645D0], @"pto", *MEMORY[0x1E69645D0], @"mov", *MEMORY[0x1E69645D0], @"apto", *MEMORY[0x1E69645D0], @"scr"];
    v10[1] = v4;
    v5 = v10;
    goto LABEL_7;
  }

  if ([(CKPhotosQueryController *)self contentMode]== 1)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == %@", *MEMORY[0x1E6963F88], @"attachmentDomain"];
    v9[0] = v3;
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == %@ || %@ == %@ || %@ == %@", *MEMORY[0x1E69645D0], @"pto", *MEMORY[0x1E69645D0], @"mov", *MEMORY[0x1E69645D0], @"apto"];
    v9[1] = v4;
    v5 = v9;
LABEL_7:
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];

    goto LABEL_8;
  }

  if ([(CKPhotosQueryController *)self contentMode]== 2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == %@", *MEMORY[0x1E6963F88], @"attachmentDomain"];
    v8[0] = v3;
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == %@", *MEMORY[0x1E69645D0], @"scr"];
    v8[1] = v4;
    v5 = v8;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
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
  v17 = __Block_byref_object_copy__68;
  v18 = __Block_byref_object_dispose__68;
  v19 = [MEMORY[0x1E696AEC0] string];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__CKPhotosQueryController_detailsFilterQueriesForChatGUIDs___block_invoke;
  v13[3] = &unk_1E72EEC20;
  v13[4] = &v14;
  [v4 enumerateObjectsUsingBlock:v13];
  v24 = v15[5];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  _Block_object_dispose(&v14, 8);

  return v11;
}

void __60__CKPhotosQueryController_detailsFilterQueriesForChatGUIDs___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
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

- (id)queryResultsForItems:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CKQueryController *)self mode]== 1)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v31 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v6 = [(CKQueryController *)self delegate];
    v7 = [v6 searchTokenFiltersForQueryController:self];
    v30 = [v7 count];

    v8 = [(CKPhotosQueryController *)self maxResultsForMode:[(CKQueryController *)self mode]];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v27 = v4;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v10)
    {
      v11 = v10;
      v32 = *v35;
      v28 = v9;
      v29 = v8;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v35 != v32)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v34 + 1) + 8 * v12);
        v14 = [(CKPhotosQueryController *)self chatGUIDForSearchableItem:v13, v27];
        v15 = [(CKQueryController *)self delegate];
        v16 = [v15 queryController:self conversationForChatGUID:v14];

        if (v16 && ([v16 isBlockedByCommunicationLimits] & 1) == 0)
        {
          v17 = v5;
          v18 = [v13 attributeSet];
          v19 = [v18 authorAddresses];
          v20 = [v19 firstObject];

          if (v30 || ([v31 containsObject:v20] & 1) == 0)
          {
            if (v20)
            {
              [v31 addObject:v20];
            }

            v21 = [CKSpotlightQueryResult alloc];
            v22 = [(CKPhotosQueryController *)self queryTypeIdentifier];
            v23 = [(CKSpotlightQueryResult *)v21 initWithSearchableItem:v13 queryType:v22 withConversation:v16];

            [v17 addObject:v23];
          }

          v5 = v17;
          v9 = v28;
          v8 = v29;
        }

        v24 = [v5 count];

        if (v24 >= v8)
        {
          break;
        }

        if (v11 == ++v12)
        {
          v11 = [v9 countByEnumeratingWithState:&v34 objects:v38 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v25 = [v5 copy];
    v4 = v27;
  }

  else
  {
    v33.receiver = self;
    v33.super_class = CKPhotosQueryController;
    v25 = [(CKMessageTypeQueryController *)&v33 queryResultsForItems:v4];
  }

  return v25;
}

- (unint64_t)maxResultsForMode:(unint64_t)a3
{
  v5 = [(CKQueryController *)self mode];
  result = 0;
  if (v5 <= 2)
  {
    if (v5 < 2)
    {
      if (CKIsRunningInMacCatalyst())
      {
        return 9;
      }

      else
      {
        return [(CKMessageTypeQueryController *)&v8 maxResultsForMode:a3, v7.receiver, v7.super_class, self, CKPhotosQueryController];
      }
    }

    if (v5 != 2)
    {
      return result;
    }

    return [(CKMessageTypeQueryController *)&v7 maxResultsForMode:a3, self, CKPhotosQueryController, v8.receiver, v8.super_class];
  }

  if (v5 == 4)
  {
    return [(CKMessageTypeQueryController *)&v7 maxResultsForMode:a3, self, CKPhotosQueryController, v8.receiver, v8.super_class];
  }

  if (v5 == 3)
  {
    if (CKIsRunningInMacCatalyst())
    {
      return 9;
    }

    else
    {
      return 6;
    }
  }

  return result;
}

- (id)chatGUIDForSearchableItem:(id)a3
{
  v3 = [a3 attributeSet];
  v4 = [v3 accountIdentifier];

  return v4;
}

@end