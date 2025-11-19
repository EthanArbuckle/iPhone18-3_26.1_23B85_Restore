@interface NSArray(GC)
- (id)gc_arrayByRemovingObject:()GC;
- (id)gc_arrayByTransformingElementsWithOptions:()GC usingBlock:;
- (id)gc_requiredObjectAtIndex:()GC ofClass:;
- (id)gc_reversedArray;
- (uint64_t)gc_enumerateObjectsWithOptions:()GC usingBlock:;
- (void)gc_requiredObjectAtIndex:()GC ofClass:error:;
@end

@implementation NSArray(GC)

- (id)gc_requiredObjectAtIndex:()GC ofClass:
{
  v19[6] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    [NSArray(GC) gc_requiredObjectAtIndex:ofClass:];
  }

  v6 = [a1 objectAtIndex:?];
  if (v6 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = NSStringFromClass(a4);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Object at index '%llu' has unexpected class '%@'.", a3, v11];
    v13 = MEMORY[0x1E695DF30];
    v18[0] = @"GC_NSExceptionErrorDomain";
    v18[1] = @"GC_NSExceptionErrorCode";
    v19[0] = @"NSCollectionErrorDomain";
    v19[1] = &unk_1F4E368B0;
    v19[2] = @"Invalid array.";
    v18[2] = *MEMORY[0x1E696A578];
    v18[3] = @"NSCollectionErrorIndexKey";
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v19[3] = v14;
    v19[4] = v11;
    v18[4] = @"NSCollectionErrorElementClassKey";
    v18[5] = @"NSCollectionErrorExpectedClassKey";
    v19[5] = v9;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:6];
    v16 = [v13 exceptionWithName:@"NSInvalidCollectionException" reason:v12 userInfo:v15];
    v17 = v16;

    objc_exception_throw(v16);
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)gc_requiredObjectAtIndex:()GC ofClass:error:
{
  v29[3] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    [NSArray(GC) gc_requiredObjectAtIndex:ofClass:error:];
  }

  if ([a1 count] > a3 && (objc_msgSend(a1, "objectAtIndex:", a3), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    if (objc_opt_isKindOfClass())
    {
      v10 = v10;
      a5 = v10;
      goto LABEL_10;
    }

    if (a5)
    {
      v18 = NSStringFromClass(a4);
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Element at index '%llu' has unexpected class '%@'.", a3, v20];
      v22 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A588];
      v26[0] = *MEMORY[0x1E696A578];
      v26[1] = v23;
      v27[0] = @"Invalid array.";
      v27[1] = v21;
      v26[2] = @"NSCollectionErrorIndexKey";
      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      v27[2] = v24;
      v27[3] = v20;
      v26[3] = @"NSCollectionErrorElementClassKey";
      v26[4] = @"NSCollectionErrorExpectedClassKey";
      v27[4] = v18;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:5];
      *a5 = [v22 errorWithDomain:@"NSCollectionErrorDomain" code:3 userInfo:v25];

      goto LABEL_8;
    }
  }

  else
  {
    if (a5)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing required element at index '%llu'.", a3];
      v12 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E696A588];
      v28[0] = *MEMORY[0x1E696A578];
      v28[1] = v13;
      v29[0] = @"Invalid array.";
      v29[1] = v11;
      v28[2] = @"NSCollectionErrorIndexKey";
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      v29[2] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:3];
      *a5 = [v12 errorWithDomain:@"NSCollectionErrorDomain" code:1 userInfo:v15];

      v10 = 0;
LABEL_8:
      a5 = 0;
      goto LABEL_10;
    }

    v10 = 0;
  }

LABEL_10:

  v16 = *MEMORY[0x1E69E9840];

  return a5;
}

- (id)gc_reversedArray
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a1 reverseObjectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [v2 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v8 = [v2 copy];
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)gc_arrayByTransformingElementsWithOptions:()GC usingBlock:
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = a1;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = (*(a4 + 16))(a4, *(*(&v19 + 1) + 8 * v13), v11);
        if (v14 || (a3 & 1) == 0)
        {
          [v7 addObject:{v14, v19}];
        }

        ++v13;
        ++v11;
      }

      while (v10 != v13);
      v15 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v10 = v15;
    }

    while (v15);
  }

  v16 = [v7 copy];
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)gc_arrayByRemovingObject:()GC
{
  v4 = [a1 mutableCopy];
  [v4 removeObject:a3];
  v5 = [v4 copy];

  return v5;
}

- (uint64_t)gc_enumerateObjectsWithOptions:()GC usingBlock:
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__NSArray_GC__gc_enumerateObjectsWithOptions_usingBlock___block_invoke;
  v5[3] = &__block_descriptor_40_e15_v32__0_8Q16_B24lu32l8;
  v5[4] = a4;
  return [a1 enumerateObjectsUsingBlock:v5];
}

- (void)gc_requiredObjectAtIndex:()GC ofClass:.cold.1()
{
  [MEMORY[0x1E696AEC0] stringWithFormat:@"*** %s: aClass cannot be nil", "-[NSArray(GC) gc_requiredObjectAtIndex:ofClass:]"];
  v0 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
  objc_exception_throw(v0);
}

- (void)gc_requiredObjectAtIndex:()GC ofClass:error:.cold.1()
{
  [MEMORY[0x1E696AEC0] stringWithFormat:@"*** %s: aClass cannot be nil", "-[NSArray(GC) gc_requiredObjectAtIndex:ofClass:error:]"];
  v0 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
  objc_exception_throw(v0);
}

@end