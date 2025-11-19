@interface LoadCoreMaterialRecipeNames
@end

@implementation LoadCoreMaterialRecipeNames

void ___LoadCoreMaterialRecipeNames_block_invoke()
{
  v26 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AAE8] coreMaterialRecipeBundle];
  v1 = [v0 URLsForMaterialRecipes];
  v15 = [v0 URLsForMaterialRecipeDescendants];
  v16 = v1;
  v2 = [v1 arrayByAddingObjectsFromArray:?];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v2, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 lastPathComponent];
        v11 = [v10 stringByDeletingPathExtension];

        v12 = MTLogConfiguration;
        if (os_log_type_enabled(MTLogConfiguration, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543618;
          v22 = v11;
          v23 = 2114;
          v24 = v9;
          _os_log_debug_impl(&dword_1BF527000, v12, OS_LOG_TYPE_DEBUG, "Found recipe '%{public}@' at URL: %{public}@", buf, 0x16u);
        }

        [v3 addObject:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v6);
  }

  v13 = __coreMaterialRecipeNames;
  __coreMaterialRecipeNames = v3;

  v14 = *MEMORY[0x1E69E9840];
}

@end