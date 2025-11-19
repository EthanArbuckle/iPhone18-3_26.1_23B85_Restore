@interface NSMutableDictionary
@end

@implementation NSMutableDictionary

uint64_t __86__NSMutableDictionary_MCMDeeplyMutable___findKeyPathsSortedByDepthFirstOfKindOfClass___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = [v4 count];
  if (v6 <= [v5 count])
  {
    v8 = [v4 count];
    v7 = v8 < [v5 count];
  }

  else
  {
    v7 = -1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t __91__NSMutableDictionary_MCMDeeplyMutable__MCM_overlayDictionary_existingValuesTakePrecedent___block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 setObject:a2 forKeyedSubscript:v4];
}

@end