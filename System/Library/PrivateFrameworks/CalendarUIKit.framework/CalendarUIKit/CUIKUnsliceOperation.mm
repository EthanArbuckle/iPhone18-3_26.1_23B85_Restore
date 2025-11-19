@interface CUIKUnsliceOperation
- (BOOL)_executeWithUndoDelegate:(id)a3 error:(id *)a4;
- (id)_inverseForUndoSliceOutcome:(id)a3;
- (id)_objectsForInverse;
- (id)originalObjects;
@end

@implementation CUIKUnsliceOperation

- (id)_objectsForInverse
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
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(CUIKUnsliceOperation *)self _inverseForUndoSliceOutcome:*(*(&v13 + 1) + 8 * i)];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_inverseForUndoSliceOutcome:(id)a3
{
  v3 = a3;
  v4 = [[EKUndoSliceOutcome alloc] initResliceFromOutcome:v3];
  v5 = [v3 masterToDelete];

  if (v5)
  {
    v6 = [v4 mainSeriesDetails];
    v7 = [v6 masterEvent];

    v8 = [v4 createdSeriesDetails];
    v9 = [v8 masterEvent];

    v10 = [v7 changeSet];
    v11 = [v7 recurrenceRuleString];
    [v10 forceChangeValue:v11 forKey:@"recurrenceRuleString"];

    [v9 _initChangeSetIfNone];
    v12 = [v9 changeSet];
    v13 = [v9 recurrenceRuleString];
    [v12 forceChangeValue:v13 forKey:@"recurrenceRuleString"];
  }

  return v4;
}

- (id)originalObjects
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(CUIKUserOperation *)self objects];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 originalPostSliceDescription];
        v11 = [v10 originalEventToSliceOn];
        [v3 addObject:v11];

        v12 = [v9 masterToDelete];

        if (v12)
        {
          v13 = [v9 masterToDelete];
          [v3 addObject:v13];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)_executeWithUndoDelegate:(id)a3 error:(id *)a4
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end