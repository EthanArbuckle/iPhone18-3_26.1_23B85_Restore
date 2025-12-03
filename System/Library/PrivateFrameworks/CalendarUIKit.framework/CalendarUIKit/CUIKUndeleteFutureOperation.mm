@interface CUIKUndeleteFutureOperation
- (id)_objectsForInverse;
@end

@implementation CUIKUndeleteFutureOperation

- (id)_objectsForInverse
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  objects = [(CUIKUserOperation *)self objects];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(objects, "count")}];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  objects2 = [(CUIKUserOperation *)self objects];
  v7 = [objects2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(objects2);
        }

        originalPostSliceDescription = [*(*(&v14 + 1) + 8 * i) originalPostSliceDescription];
        originalEventToSliceOn = [originalPostSliceDescription originalEventToSliceOn];

        [v5 addObject:originalEventToSliceOn];
      }

      v8 = [objects2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

@end