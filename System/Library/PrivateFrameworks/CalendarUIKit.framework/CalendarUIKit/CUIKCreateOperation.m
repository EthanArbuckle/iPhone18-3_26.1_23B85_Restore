@interface CUIKCreateOperation
- (BOOL)_executeWithUndoDelegate:(id)a3 error:(id *)a4;
- (Class)_inverseOperationClass;
- (id)_actionName;
- (int64_t)_inverseOperationSpan;
- (void)_precomputeInverseObjects;
@end

@implementation CUIKCreateOperation

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
    v9 = [v8 localizedStringForKey:@"Action: Create “%@”" value:@"Create “%@”" table:0];
    v10 = [v6 title];
    v11 = [v7 localizedStringWithFormat:v9, v10];
  }

  else
  {
    v6 = CUIKBundle();
    v11 = [v6 localizedStringForKey:@"Action: Create events" value:@"Create Events" table:0];
  }

  return v11;
}

- (BOOL)_executeWithUndoDelegate:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(CUIKUserOperation *)self objects:a3];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    v10 = 1;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v10 &= [*(*(&v13 + 1) + 8 * i) CUIKEditingContext_saveWithSpan:3 error:a4];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  [(CUIKCreateOperation *)self _precomputeInverseObjects];
  return v10;
}

- (Class)_inverseOperationClass
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(CUIKUserOperation *)self objects:0];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v7 = 0;
          goto LABEL_11;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = objc_opt_class();
LABEL_11:

  return v7;
}

- (void)_precomputeInverseObjects
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = [(CUIKUserOperation *)self objects];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(CUIKUserOperation *)self objects];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) snapshotCopy];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  [(CUIKCreateOperation *)self setPrecomputedInverseObjects:v12];
}

- (int64_t)_inverseOperationSpan
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(CUIKUserOperation *)self createdAsInverseOfAnotherOperation])
  {
LABEL_13:
    v10.receiver = self;
    v10.super_class = CUIKCreateOperation;
    return [(CUIKUserOperation *)&v10 _inverseOperationSpan];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [(CUIKUserOperation *)self objects];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      while (2)
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * v7);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ![v8 isOrWasPartOfRecurringSeries])
          {

            goto LABEL_13;
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    return 4;
  }
}

@end