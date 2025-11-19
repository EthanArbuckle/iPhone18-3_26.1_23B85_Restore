@interface NSDictionary
@end

@implementation NSDictionary

void __81__NSDictionary_FCAdditions__fc_dictionaryByTransformingKeysWithKeyAndValueBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = (*(*(a1 + 40) + 16))();
  if (v4)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
  }
}

void __70__NSDictionary_FCAdditions__fc_dictionaryByTransformingKeysWithBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = (*(*(a1 + 40) + 16))();
  if (v4)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
  }
}

void __58__NSDictionary_FCAdditions__fc_sortedEntriesWithKeyBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = (*(*(a1 + 40) + 16))();
  if (v6)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
    if (!v7)
    {
      v7 = objc_opt_new();
      [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
    }

    [v7 setObject:v5 forKeyedSubscript:v8];
  }
}

void __83__NSDictionary_FCAdditions__fc_dictionaryByTransformingValuesWithKeyAndValueBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = (*(*(a1 + 40) + 16))();
  if (v3)
  {
    [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
  }
}

void __72__NSDictionary_FCAdditions__fc_dictionaryByTransformingValuesWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = (*(*(a1 + 40) + 16))();
  if (v3)
  {
    [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
  }
}

void __71__NSDictionary_FCAdditions__fc_dictionaryWithKeys_valueWithIndexBlock___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = (*(*(a1 + 40) + 16))();
  if (v4)
  {
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "value"];
    *buf = 136315906;
    v8 = "+[NSDictionary(FCAdditions) fc_dictionaryWithKeys:valueWithIndexBlock:]_block_invoke";
    v9 = 2080;
    v10 = "NSDictionary+FCAdditions.m";
    v11 = 1024;
    v12 = 195;
    v13 = 2114;
    v14 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __61__NSDictionary_FCAdditions__fr_descriptionWithKeyComparator___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  [v2 appendFormat:@"\t%@ = %@;\n", v4, v5];
}

void __80__NSDictionary_FCAdditions__fc_dictionaryByMergingDictionary_withValueCombiner___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 addEntriesFromDictionary:*(a1 + 32)];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__NSDictionary_FCAdditions__fc_dictionaryByMergingDictionary_withValueCombiner___block_invoke_2;
  v6[3] = &unk_1E7C44740;
  v7 = v3;
  v4 = *(a1 + 40);
  v8 = *(a1 + 48);
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void __80__NSDictionary_FCAdditions__fc_dictionaryByMergingDictionary_withValueCombiner___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v10];

  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) objectForKeyedSubscript:v10];
    v9 = (*(v7 + 16))(v7, v8, v5);
    [*(a1 + 32) setObject:v9 forKeyedSubscript:v10];
  }

  else
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v10];
  }
}

uint64_t __72__NSDictionary_FCAdditions__fc_arrayByTransformingWithKeyAndValueBlock___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  v3 = v2;
  if (v2)
  {
    v5 = v2;
    v2 = [*(a1 + 32) addObject:v2];
    v3 = v5;
  }

  return MEMORY[0x1EEE66BB8](v2, v3);
}

@end