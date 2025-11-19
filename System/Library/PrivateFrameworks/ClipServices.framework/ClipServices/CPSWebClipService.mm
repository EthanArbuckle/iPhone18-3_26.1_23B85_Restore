@interface CPSWebClipService
+ (void)fetchWebClipsURLForClientBundleID:(id)a3 completion:(id)a4;
+ (void)fetchWebClipsUUIDForClientBundleID:(id)a3 completion:(id)a4;
+ (void)getWebClipDictionaryWithIdentifier:(id)a3 completion:(id)a4;
@end

@implementation CPSWebClipService

+ (void)fetchWebClipsUUIDForClientBundleID:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[CPSDaemonConnection sharedConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__CPSWebClipService_fetchWebClipsUUIDForClientBundleID_completion___block_invoke;
  v9[3] = &unk_278DCDAC8;
  v10 = v5;
  v8 = v5;
  [v7 fetchWebClipsUUIDStringForClientBundleID:v6 completion:v9];
}

void __67__CPSWebClipService_fetchWebClipsUUIDForClientBundleID_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    v6 = [a3 safari_mapObjectsUsingBlock:&__block_literal_global];
    (*(*(a1 + 32) + 16))();
  }
}

id __67__CPSWebClipService_fetchWebClipsUUIDForClientBundleID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAD78];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

+ (void)fetchWebClipsURLForClientBundleID:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[CPSDaemonConnection sharedConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__CPSWebClipService_fetchWebClipsURLForClientBundleID_completion___block_invoke;
  v9[3] = &unk_278DCDAC8;
  v10 = v5;
  v8 = v5;
  [v7 fetchWebClipsURLStringForClientBundleID:v6 completion:v9];
}

void __66__CPSWebClipService_fetchWebClipsURLForClientBundleID_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    v6 = [a3 safari_mapObjectsUsingBlock:&__block_literal_global_5];
    (*(*(a1 + 32) + 16))();
  }
}

id __66__CPSWebClipService_fetchWebClipsURLForClientBundleID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = a2;
  v4 = [[v2 alloc] initWithString:v3];

  return v4;
}

+ (void)getWebClipDictionaryWithIdentifier:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[CPSDaemonConnection sharedConnection];
  [v7 getWebClipDictionaryWithIdentifier:v6 completion:v5];
}

@end