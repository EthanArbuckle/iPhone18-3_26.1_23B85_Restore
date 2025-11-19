@interface NSArray
@end

@implementation NSArray

uint64_t __57__NSArray_GC__gc_enumerateObjectsWithOptions_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__NSArray_GC__gc_enumerateObjectsWithOptions_usingBlock___block_invoke_2;
  v7[3] = &__block_descriptor_48_e12__24__0_8__16lu32l8;
  v7[4] = a2;
  v7[5] = a3;
  return (*(*(a1 + 32) + 16))(*(a1 + 32), v7, a3, a4, a5, a6);
}

id __57__NSArray_GC__gc_enumerateObjectsWithOptions_usingBlock___block_invoke_2(uint64_t a1, objc_class *a2, void *a3)
{
  v21[5] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 32);
  }

  else
  {
    if (a3)
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
      v11 = [v10 description];

      v12 = NSStringFromClass(a2);
      v13 = *(a1 + 32);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Element at index '%@' has unexpected class '%@'.", v11, v15];
      v17 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A588];
      v20[0] = *MEMORY[0x1E696A578];
      v20[1] = v18;
      v21[0] = @"Invalid array.";
      v21[1] = v16;
      v20[2] = @"NSCollectionErrorIndexKey";
      v20[3] = @"NSCollectionErrorElementClassKey";
      v21[2] = v11;
      v21[3] = v15;
      v20[4] = @"NSCollectionErrorExpectedClassesKey";
      v21[4] = v12;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:5];
      *a3 = [v17 errorWithDomain:@"NSCollectionErrorDomain" code:3 userInfo:v19];
    }

    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

@end