@interface CBStatusInfoHelper
+ (id)copyStatusInfoFor:(id)a3;
@end

@implementation CBStatusInfoHelper

+ (id)copyStatusInfoFor:(id)a3
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = 0;
  if ([a3 conformsToProtocol:&unk_1F59CBF78])
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = [v13 copyIdentifiers];
    v4 = MEMORY[0x1E69E9820];
    v5 = -1073741824;
    v6 = 0;
    v7 = __40__CBStatusInfoHelper_copyStatusInfoFor___block_invoke;
    v8 = &unk_1E867BD88;
    v9 = v13;
    v10 = v12;
    [v11 enumerateObjectsUsingBlock:?];
    MEMORY[0x1E69E5920](v11);
  }

  return v12;
}

double __40__CBStatusInfoHelper_copyStatusInfoFor___block_invoke(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [*(a1 + 32) copyPropertyInternalForKey:a2];
    if (v4)
    {
      [*(a1 + 40) setObject:v4 forKey:a2];
      *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
    }
  }

  return result;
}

@end