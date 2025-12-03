@interface CUIKRevertOperation
+ (id)operationForContext:(id)context;
- (BOOL)_executeWithUndoDelegate:(id)delegate error:(id *)error;
- (id)_actionName;
- (id)_inverseOperation;
@end

@implementation CUIKRevertOperation

+ (id)operationForContext:(id)context
{
  v34 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  group = [contextCopy group];
  trackedObjects = [group trackedObjects];
  if ([contextCopy _currentSpan])
  {
    selfCopy = self;
    v28 = contextCopy;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = trackedObjects;
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
          masterEvent = [v14 masterEvent];
          recurrenceIdentifier = [v14 recurrenceIdentifier];
          if (masterEvent != v14 && masterEvent != 0)
          {
            [dictionary setObject:v14 forKeyedSubscript:recurrenceIdentifier];

            recurrenceIdentifier2 = [masterEvent recurrenceIdentifier];
            v21 = [dictionary2 objectForKeyedSubscript:recurrenceIdentifier2];

            if (!v21)
            {
              recurrenceIdentifier = [masterEvent recurrenceIdentifier];
              v18 = dictionary2;
              v19 = masterEvent;
LABEL_16:
              [v18 setObject:v19 forKeyedSubscript:recurrenceIdentifier];
            }

            continue;
          }

          v18 = dictionary2;
          v19 = v14;
          goto LABEL_16;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (!v11)
      {
LABEL_20:

        allValues = [dictionary allValues];

        allValues2 = [dictionary2 allValues];
        trackedObjects = [allValues arrayByAddingObjectsFromArray:allValues2];

        contextCopy = v28;
        self = selfCopy;
        break;
      }
    }
  }

  v24 = [self operationWithObjects:trackedObjects span:{objc_msgSend(contextCopy, "_currentSpan")}];
  originalObjects = [group originalObjects];
  [v24 setOriginalObjects:originalObjects];

  return v24;
}

- (id)_actionName
{
  objects = [(CUIKUserOperation *)self objects];
  v4 = [objects count];

  if (v4 == 1)
  {
    objects2 = [(CUIKUserOperation *)self objects];
    firstObject = [objects2 firstObject];

    v7 = MEMORY[0x1E696AEC0];
    v8 = CUIKBundle();
    v9 = [v8 localizedStringForKey:@"Action: Revert “%@”" value:@"Revert “%@”" table:0];
    title = [firstObject title];
    v11 = [v7 localizedStringWithFormat:v9, title];
  }

  else
  {
    firstObject = CUIKBundle();
    v11 = [firstObject localizedStringForKey:@"Action: Revert events" value:@"Revert Events" table:0];
  }

  return v11;
}

- (BOOL)_executeWithUndoDelegate:(id)delegate error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  objects = [(CUIKUserOperation *)self objects];
  v7 = [objects countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(objects);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if (delegateCopy)
        {
          v13 = [delegateCopy objectToSaveForRevertingChangeToObject:v12];

          v12 = v13;
        }

        specificIdentifier = [v12 specificIdentifier];
        if ([v12 revert])
        {
          [delegateCopy objectWithSpecificIdentifierWasReverted:specificIdentifier];
        }

        else
        {
          v10 = 0;
        }
      }

      v8 = [objects countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  _inverseOperation = [(CUIKUserOperation *)&v6 _inverseOperation];
  originalChangeTracker = [(CUIKRevertOperation *)self originalChangeTracker];
  [_inverseOperation setOriginalChangeTracker:originalChangeTracker];

  return _inverseOperation;
}

@end