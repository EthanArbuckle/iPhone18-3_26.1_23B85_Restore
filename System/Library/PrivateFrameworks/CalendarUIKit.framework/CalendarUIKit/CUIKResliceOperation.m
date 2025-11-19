@interface CUIKResliceOperation
- (BOOL)_executeWithUndoDelegate:(id)a3 error:(id *)a4;
- (id)_objectsForInverse;
@end

@implementation CUIKResliceOperation

- (id)_objectsForInverse
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(CUIKUserOperation *)self objects];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [EKUndoSliceOutcome alloc];
        v11 = [v9 originalPostSliceDescription];
        v12 = [(EKUndoSliceOutcome *)v10 initWithOriginalPostSliceDescription:v11];

        [v3 addObject:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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