@interface NSEntityDescription
@end

@implementation NSEntityDescription

void __66__NSEntityDescription_HomeKitDaemon__hmd_attributesBySettingsPath__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = [v6 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"settingsPath"];

  if (v5)
  {
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }
}

void __84__NSEntityDescription_HomeKitDaemon__hmd_recursivelyEnumerateSubentitiesUsingBlock___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (*(*(a1[5] + 8) + 24) & 1) != 0 || (v8 = v6, (*(a1[4] + 16))(), v6 = v8, (*(*(a1[5] + 8) + 24)))
  {
    *a4 = 1;
  }

  else
  {
    v7 = [v8 subentities];
    [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:*(*(a1[6] + 8) + 24)];

    v6 = v8;
  }
}

@end