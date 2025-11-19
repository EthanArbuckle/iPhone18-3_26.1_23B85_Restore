@interface DiscoveredMaterialRecipeURLs
@end

@implementation DiscoveredMaterialRecipeURLs

void ___DiscoveredMaterialRecipeURLs_block_invoke()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v1 = [MEMORY[0x1E696AAE8] coreMaterialRecipeBundle];
  v2 = [v1 URLsForMaterialRecipes];
  v3 = [v1 URLsForMaterialRecipeDescendants];
  v4 = [v2 arrayByAddingObjectsFromArray:v3];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (([v0 containsObject:{v10, v13}] & 1) == 0)
        {
          [v0 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = _DiscoveredMaterialRecipeURLs___discoveredMaterialRecipeURLs;
  _DiscoveredMaterialRecipeURLs___discoveredMaterialRecipeURLs = v0;

  v12 = *MEMORY[0x1E69E9840];
}

@end