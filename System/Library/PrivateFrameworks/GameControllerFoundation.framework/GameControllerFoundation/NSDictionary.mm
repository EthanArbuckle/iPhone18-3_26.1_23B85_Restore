@interface NSDictionary
@end

@implementation NSDictionary

uint64_t __57__NSDictionary_GC__gc_enumerateKeysAndObjectsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __57__NSDictionary_GC__gc_enumerateKeysAndObjectsUsingBlock___block_invoke_2;
  v13 = &__block_descriptor_40_e12__24__0_8__16lu32l8;
  v14 = a2;
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __57__NSDictionary_GC__gc_enumerateKeysAndObjectsUsingBlock___block_invoke_3;
  v7 = &__block_descriptor_48_e12__24__0_8__16lu32l8u40l8;
  v8 = a3;
  v9 = a2;
  return (*(*(a1 + 32) + 16))();
}

id __57__NSDictionary_GC__gc_enumerateKeysAndObjectsUsingBlock___block_invoke_2(uint64_t a1, objc_class *a2, void *a3)
{
  v20[5] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 32);
  }

  else
  {
    if (a3)
    {
      v10 = [*(a1 + 32) description];
      v11 = NSStringFromClass(a2);
      v12 = *(a1 + 32);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Key '%@' has unexpected class '%@'.", v10, v14];
      v16 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A588];
      v19[0] = *MEMORY[0x1E696A578];
      v19[1] = v17;
      v20[0] = @"Invalid dictionary.";
      v20[1] = v15;
      v19[2] = @"NSCollectionErrorIndexKey";
      v19[3] = @"NSCollectionErrorIndexClassKey";
      v20[2] = v10;
      v20[3] = v14;
      v19[4] = @"NSCollectionErrorExpectedClassKey";
      v20[4] = v11;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:5];
      *a3 = [v16 errorWithDomain:@"NSCollectionErrorDomain" code:2 userInfo:v18];
    }

    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __57__NSDictionary_GC__gc_enumerateKeysAndObjectsUsingBlock___block_invoke_3(uint64_t a1, objc_class *a2, void *a3)
{
  v20[5] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 32);
  }

  else
  {
    if (a3)
    {
      v10 = [*(a1 + 40) description];
      v11 = NSStringFromClass(a2);
      v12 = *(a1 + 40);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Value for key '%@' has unexpected class '%@'.", v10, v14];
      v16 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A588];
      v19[0] = *MEMORY[0x1E696A578];
      v19[1] = v17;
      v20[0] = @"Invalid dictionary.";
      v20[1] = v15;
      v19[2] = @"NSCollectionErrorIndexKey";
      v19[3] = @"NSCollectionErrorElementClassKey";
      v20[2] = v10;
      v20[3] = v14;
      v19[4] = @"NSCollectionErrorExpectedClassKey";
      v20[4] = v11;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:5];
      *a3 = [v16 errorWithDomain:@"NSCollectionErrorDomain" code:3 userInfo:v18];
    }

    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

@end