@interface NSDictionary
@end

@implementation NSDictionary

void __43__NSDictionary_Deduplication__ln_deduping___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v10];
  if (v6)
  {
    v7 = [v5 effectiveBundleIdentifiers];
    v8 = [v5 mangledTypeNameByBundleIdentifier];
    v9 = [v6 metadataByAddingEffectiveBundleIdentifiers:v7 mangledTypeNameByBundleIdentifier:v8];
    [*(a1 + 40) setObject:v9 forKeyedSubscript:v10];
  }
}

@end