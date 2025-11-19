@interface CUIKDeleteOperation
- (BOOL)_canBeUndone;
- (BOOL)_executeWithUndoDelegate:(id)a3 error:(id *)a4;
- (Class)_inverseOperationClass;
- (id)_actionName;
- (id)_objectsForInverse;
@end

@implementation CUIKDeleteOperation

- (id)_actionName
{
  v3 = [(CUIKUserOperation *)self objects];
  v4 = [v3 count];

  v5 = [(CUIKUserOperation *)self objects];
  v6 = [v5 firstObject];
  v7 = v6;
  if (v4 == 1)
  {
    v8 = [v6 actionStringsDisplayTitle];

    v9 = MEMORY[0x1E696AEC0];
    v10 = CUIKBundle();
    v11 = [v10 localizedStringForKey:@"Action: Delete “%@”" value:@"Delete “%@”" table:0];
    v12 = [v9 localizedStringWithFormat:v11, v8];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v14 = CUIKBundle();
      v8 = v14;
      v15 = @"Action: Delete events";
      v16 = @"Delete events";
    }

    else
    {
      v17 = [(CUIKUserOperation *)self objects];
      v18 = [v17 firstObject];
      objc_opt_class();
      v19 = objc_opt_isKindOfClass();

      v14 = CUIKBundle();
      v8 = v14;
      if (v19)
      {
        v15 = @"Action: Delete calendars";
        v16 = @"Delete calendars";
      }

      else
      {
        v15 = @"Action: Delete objects";
        v16 = @"Delete objects";
      }
    }

    v12 = [v14 localizedStringForKey:v15 value:v16 table:0];
  }

  return v12;
}

- (BOOL)_executeWithUndoDelegate:(id)a3 error:(id *)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v29 = [(CUIKDeleteOperation *)self _canBeUndone];
  if (v29)
  {
    v6 = MEMORY[0x1E695DF70];
    v7 = [(CUIKUserOperation *)self objects];
    v26 = [v6 arrayWithCapacity:{objc_msgSend(v7, "count")}];
  }

  else
  {
    v26 = 0;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = self;
  obj = [(CUIKUserOperation *)self objects];
  v8 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v8)
  {
    v11 = 1;
    goto LABEL_29;
  }

  v9 = v8;
  v10 = *v31;
  v11 = 1;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v31 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v30 + 1) + 8 * i);
      if (v5)
      {
        v14 = [v5 objectToSaveForUndoingChangeToObject:v13];
      }

      else
      {
        v14 = v13;
      }

      v15 = v14;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
        v17 = v16;
        if (v16 && ([v16 isDetached] & 1) == 0)
        {
          v18 = [v17 hasRecurrenceRules];
          goto LABEL_18;
        }
      }

      else
      {
        v17 = 0;
      }

      v18 = 0;
LABEL_18:
      if (v29)
      {
        v19 = [v15 snapshotCopy];
        v20 = v19;
        if (v18)
        {
          v21 = 1;
          goto LABEL_23;
        }

        [v19 markAsUndeleted];
        [v26 addObject:v20];
      }

      v21 = 0;
      v20 = 0;
LABEL_23:
      v22 = [v15 CUIKEditingContext_removeWithSpan:-[CUIKUserOperation span](v28 error:{"span"), a4}];
      if (v21)
      {
        v23 = [v15 inverseObjectWithObject:v20 diff:0];
        [v26 addObject:v23];
      }

      v11 &= v22;
    }

    v9 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  }

  while (v9);
LABEL_29:

  if (v29)
  {
    [(CUIKDeleteOperation *)v28 setPrecomputedInverseObjects:v26];
    [(CUIKUserOperation *)v28 _precomputeInverseOperation];
  }

  return v11;
}

- (BOOL)_canBeUndone
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(CUIKUserOperation *)self span])
  {
    return 0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(CUIKUserOperation *)self objects];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) == 0 || ([v9 isSelfOrganizedInvitation])
        {
          v3 = 0;
          goto LABEL_15;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v3 = 1;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v3 = 1;
  }

LABEL_15:

  return v3;
}

- (Class)_inverseOperationClass
{
  if ([(CUIKDeleteOperation *)self _canBeUndone])
  {
    v2 = objc_opt_class();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_objectsForInverse
{
  if ([(CUIKUserOperation *)self span])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(CUIKDeleteOperation *)self precomputedInverseObjects];
  }

  return v3;
}

@end