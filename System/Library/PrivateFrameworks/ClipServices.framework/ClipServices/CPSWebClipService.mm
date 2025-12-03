@interface CPSWebClipService
+ (void)fetchWebClipsURLForClientBundleID:(id)d completion:(id)completion;
+ (void)fetchWebClipsUUIDForClientBundleID:(id)d completion:(id)completion;
+ (void)getWebClipDictionaryWithIdentifier:(id)identifier completion:(id)completion;
@end

@implementation CPSWebClipService

+ (void)fetchWebClipsUUIDForClientBundleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v7 = +[CPSDaemonConnection sharedConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__CPSWebClipService_fetchWebClipsUUIDForClientBundleID_completion___block_invoke;
  v9[3] = &unk_278DCDAC8;
  v10 = completionCopy;
  v8 = completionCopy;
  [v7 fetchWebClipsUUIDStringForClientBundleID:dCopy completion:v9];
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

+ (void)fetchWebClipsURLForClientBundleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v7 = +[CPSDaemonConnection sharedConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__CPSWebClipService_fetchWebClipsURLForClientBundleID_completion___block_invoke;
  v9[3] = &unk_278DCDAC8;
  v10 = completionCopy;
  v8 = completionCopy;
  [v7 fetchWebClipsURLStringForClientBundleID:dCopy completion:v9];
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

+ (void)getWebClipDictionaryWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v7 = +[CPSDaemonConnection sharedConnection];
  [v7 getWebClipDictionaryWithIdentifier:identifierCopy completion:completionCopy];
}

@end