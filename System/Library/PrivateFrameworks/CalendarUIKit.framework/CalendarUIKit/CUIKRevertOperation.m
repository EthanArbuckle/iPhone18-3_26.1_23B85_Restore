@interface CUIKRevertOperation
+ (id)operationForContext:(id)a3;
- (BOOL)_executeWithUndoDelegate:(id)a3 error:(id *)a4;
- (id)_actionName;
- (id)_inverseOperation;
@end

@implementation CUIKRevertOperation

+ (id)operationForContext:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 group];
  v6 = [v5 trackedObjects];
  if ([v4 _currentSpan])
  {
    v27 = a1;
    v28 = v4;
    v7 = [MEMORY[0x1E695DF90] dictionary];
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (!v10)
    {
      goto LABEL_20;
    }

    v11 = v10;
    v12 = *v30;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v14 masterEvent];
          v16 = [v14 recurrenceIdentifier];
          if (v15 != v14 && v15 != 0)
          {
            [v7 setObject:v14 forKeyedSubscript:v16];

            v20 = [v15 recurrenceIdentifier];
            v21 = [v8 objectForKeyedSubscript:v20];

            if (!v21)
            {
              v16 = [v15 recurrenceIdentifier];
              v18 = v8;
              v19 = v15;
LABEL_16:
              [v18 setObject:v19 forKeyedSubscript:v16];
            }

            continue;
          }

          v18 = v8;
          v19 = v14;
          goto LABEL_16;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (!v11)
      {
LABEL_20:

        v22 = [v7 allValues];

        v23 = [v8 allValues];
        v6 = [v22 arrayByAddingObjectsFromArray:v23];

        v4 = v28;
        a1 = v27;
        break;
      }
    }
  }

  v24 = [a1 operationWithObjects:v6 span:{objc_msgSend(v4, "_currentSpan")}];
  v25 = [v5 originalObjects];
  [v24 setOriginalObjects:v25];

  return v24;
}

- (id)_actionName
{
  v3 = [(CUIKUserOperation *)self objects];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = [(CUIKUserOperation *)self objects];
    v6 = [v5 firstObject];

    v7 = MEMORY[0x1E696AEC0];
    v8 = CUIKBundle();
    v9 = [v8 localizedStringForKey:@"Action: Revert “%@”" value:@"Revert “%@”" table:0];
    v10 = [v6 title];
    v11 = [v7 localizedStringWithFormat:v9, v10];
  }

  else
  {
    v6 = CUIKBundle();
    v11 = [v6 localizedStringForKey:@"Action: Revert events" value:@"Revert Events" table:0];
  }

  return v11;
}

- (BOOL)_executeWithUndoDelegate:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(CUIKUserOperation *)self objects];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    v10 = 1;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if (v5)
        {
          v13 = [v5 objectToSaveForRevertingChangeToObject:v12];

          v12 = v13;
        }

        v14 = [v12 specificIdentifier];
        if ([v12 revert])
        {
          [v5 objectWithSpecificIdentifierWasReverted:v14];
        }

        else
        {
          v10 = 0;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

- (id)_inverseOperation
{
  v6.receiver = self;
  v6.super_class = CUIKRevertOperation;
  v3 = [(CUIKUserOperation *)&v6 _inverseOperation];
  v4 = [(CUIKRevertOperation *)self originalChangeTracker];
  [v3 setOriginalChangeTracker:v4];

  return v3;
}

@end