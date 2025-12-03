@interface CUIKResliceOperation
- (BOOL)_executeWithUndoDelegate:(id)delegate error:(id *)error;
- (id)_objectsForInverse;
@end

@implementation CUIKResliceOperation

- (id)_objectsForInverse
{
  v19 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  objects = [(CUIKUserOperation *)self objects];
  v5 = [objects countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(objects);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [EKUndoSliceOutcome alloc];
        originalPostSliceDescription = [v9 originalPostSliceDescription];
        v12 = [(EKUndoSliceOutcome *)v10 initWithOriginalPostSliceDescription:originalPostSliceDescription];

        [array addObject:v12];
      }

      v6 = [objects countByEnumeratingWithState:&v14 objects:v18 count:16];
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