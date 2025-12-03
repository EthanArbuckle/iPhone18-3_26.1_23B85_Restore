@interface CUIKUnsliceOperation
- (BOOL)_executeWithUndoDelegate:(id)delegate error:(id *)error;
- (id)_inverseForUndoSliceOutcome:(id)outcome;
- (id)_objectsForInverse;
- (id)originalObjects;
@end

@implementation CUIKUnsliceOperation

- (id)_objectsForInverse
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  objects = [(CUIKUserOperation *)self objects];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(objects, "count")}];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  objects2 = [(CUIKUserOperation *)self objects];
  v7 = [objects2 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(objects2);
        }

        v11 = [(CUIKUnsliceOperation *)self _inverseForUndoSliceOutcome:*(*(&v13 + 1) + 8 * i)];
        [v5 addObject:v11];
      }

      v8 = [objects2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_inverseForUndoSliceOutcome:(id)outcome
{
  outcomeCopy = outcome;
  v4 = [[EKUndoSliceOutcome alloc] initResliceFromOutcome:outcomeCopy];
  masterToDelete = [outcomeCopy masterToDelete];

  if (masterToDelete)
  {
    mainSeriesDetails = [v4 mainSeriesDetails];
    masterEvent = [mainSeriesDetails masterEvent];

    createdSeriesDetails = [v4 createdSeriesDetails];
    masterEvent2 = [createdSeriesDetails masterEvent];

    changeSet = [masterEvent changeSet];
    recurrenceRuleString = [masterEvent recurrenceRuleString];
    [changeSet forceChangeValue:recurrenceRuleString forKey:@"recurrenceRuleString"];

    [masterEvent2 _initChangeSetIfNone];
    changeSet2 = [masterEvent2 changeSet];
    recurrenceRuleString2 = [masterEvent2 recurrenceRuleString];
    [changeSet2 forceChangeValue:recurrenceRuleString2 forKey:@"recurrenceRuleString"];
  }

  return v4;
}

- (id)originalObjects
{
  v20 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  objects = [(CUIKUserOperation *)self objects];
  v5 = [objects countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(objects);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        originalPostSliceDescription = [v9 originalPostSliceDescription];
        originalEventToSliceOn = [originalPostSliceDescription originalEventToSliceOn];
        [array addObject:originalEventToSliceOn];

        masterToDelete = [v9 masterToDelete];

        if (masterToDelete)
        {
          masterToDelete2 = [v9 masterToDelete];
          [array addObject:masterToDelete2];
        }
      }

      v6 = [objects countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return array;
}

- (BOOL)_executeWithUndoDelegate:(id)delegate error:(id *)error
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end