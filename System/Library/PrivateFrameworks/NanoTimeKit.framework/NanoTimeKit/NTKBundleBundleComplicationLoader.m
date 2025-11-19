@interface NTKBundleBundleComplicationLoader
@end

@implementation NTKBundleBundleComplicationLoader

void __56___NTKBundleBundleComplicationLoader__enumerateBundles___block_invoke()
{
  v0 = objc_alloc_init(NTKBundleLoader);
  v1 = _enumerateBundles____complicationBundleLoader;
  _enumerateBundles____complicationBundleLoader = v0;
}

uint64_t __56___NTKBundleBundleComplicationLoader__enumerateBundles___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isLoaded])
  {
    goto LABEL_4;
  }

  v4 = [v3 objectForInfoDictionaryKey:@"NSPrincipalClass"];
  if (v4)
  {
    v5 = v4;
    [v3 load];

LABEL_4:
    v6 = *(a1 + 32);
    if (v6)
    {
      (*(v6 + 16))(v6, v3);
    }

    v7 = 1;
    goto LABEL_7;
  }

  v9 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __41__NTKFaceBundleLoader__enumerateBundles___block_invoke_cold_1(v3, v9);
  }

  v7 = 0;
LABEL_7:

  return v7;
}

void __61___NTKBundleBundleComplicationLoader__loadClassesUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = NTKBundleComplicationDataSourceClassesFromBundle(a2);
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(a1 + 32) + 16))();
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

@end