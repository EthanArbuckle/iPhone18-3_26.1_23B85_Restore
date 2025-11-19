@interface NSURL
@end

@implementation NSURL

uint64_t __87__NSURL_TSUAdditions__tsu_performSecurityScopedResourceAccessAsynchronouslyUsingBlock___block_invoke(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) stopAccessingSecurityScopedResource];
  }

  return result;
}

void __42__NSURL_TSUAdditions__tsu_fileSize_error___block_invoke()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

void __47__NSURL_TSUAdditions___isShareRole_role_error___block_invoke()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

void __45__NSURL_TSUAdditions__tsu_displayName_error___block_invoke()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

void __52__NSURL_TSUAdditions__tsu_isDocumentUploaded_error___block_invoke(uint64_t a1)
{
  v14[3] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBE980];
  v3 = *MEMORY[0x277CBE988];
  v14[0] = *MEMORY[0x277CBE980];
  v14[1] = v3;
  v4 = *MEMORY[0x277CBE948];
  v14[2] = *MEMORY[0x277CBE948];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  [*(a1 + 32) tsu_removeCachedResourceValueForKeys:v5];
  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 8);
  obj = *(v7 + 40);
  v8 = [v6 resourceValuesForKeys:v5 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v8 != 0;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v9 = [v8 objectForKeyedSubscript:v2];
    v10 = [v8 objectForKeyedSubscript:v3];
    v11 = [v8 objectForKeyedSubscript:v4];
    v12 = [v9 BOOLValue];
    if (v12)
    {
      if ([v10 BOOLValue])
      {
        LOBYTE(v12) = 0;
      }

      else
      {
        LOBYTE(v12) = [*MEMORY[0x277CBE938] isEqualToString:v11];
      }
    }

    *(*(*(a1 + 56) + 8) + 24) = v12;
  }

  else if (TSUDefaultCat_init_token != -1)
  {
    __52__NSURL_TSUAdditions__tsu_isDocumentUploaded_error___block_invoke_cold_1();
  }
}

void __52__NSURL_TSUAdditions__tsu_isDocumentUploaded_error___block_invoke_2()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

void __48__NSURL_TSUAdditions__tsu_shareOwnerName_error___block_invoke()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

void __45__NSURL_TSUAdditions__tsu_fileSystemTypeName__block_invoke()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

void __44__NSURL_TSUAdditions__tsu_isOnSameVolumeAs___block_invoke()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

void __44__NSURL_TSUAdditions__tsu_isOnSameVolumeAs___block_invoke_2()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

void __57__NSURL_TSUAdditions__tsu_fileProviderBookmarkableString__block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__NSURL_TSUAdditions__tsu_fileProviderBookmarkableString__block_invoke_2;
  v8[3] = &unk_2799C6460;
  v4 = a1[6];
  v6 = a1[4];
  v5 = a1[5];
  v10 = v3;
  v11 = v4;
  v9 = v5;
  v7 = v3;
  [TSUFileProviderUtilities bookmarkableStringFromDocumentURL:v6 completion:v8];
}

void __57__NSURL_TSUAdditions__tsu_fileProviderBookmarkableString__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9 = a3;
  if (v9 && TSUDefaultCat_init_token != -1)
  {
    __57__NSURL_TSUAdditions__tsu_fileProviderBookmarkableString__block_invoke_2_cold_1();
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  (*(*(a1 + 40) + 16))();
  dispatch_semaphore_signal(*(a1 + 32));
}

void __57__NSURL_TSUAdditions__tsu_fileProviderBookmarkableString__block_invoke_3()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

void __36__NSURL_TSUAdditions__tsu_isInTrash__block_invoke()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

@end