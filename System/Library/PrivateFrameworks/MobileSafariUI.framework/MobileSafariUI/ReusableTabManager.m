@interface ReusableTabManager
- (id)faviconForUUID:(id)a3;
- (id)reusableTabDocumentWithUUID:(id)a3;
- (id)tabGroupManager;
- (id)windowStates;
- (void)enumerateReusableTabDocuments:(id)a3;
@end

@implementation ReusableTabManager

- (id)tabGroupManager
{
  v2 = +[Application sharedApplication];
  v3 = [v2 tabGroupManager];

  return v3;
}

- (id)faviconForUUID:(id)a3
{
  v3 = [(WBReusableTabManager *)self referenceToTabWithUUID:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 tabCollectionItem];
    v6 = [v5 icon];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)reusableTabDocumentWithUUID:(id)a3
{
  v3 = [(WBReusableTabManager *)self referenceToTabWithUUID:a3];

  return v3;
}

- (void)enumerateReusableTabDocuments:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__ReusableTabManager_enumerateReusableTabDocuments___block_invoke;
  v6[3] = &unk_2781D7B98;
  v7 = v4;
  v5 = v4;
  [(WBReusableTabManager *)self enumerateReusableTabs:v6];
}

- (id)windowStates
{
  v2 = +[Application sharedApplication];
  v3 = [v2 browserControllers];
  v4 = [v3 safari_mapObjectsUsingBlock:&__block_literal_global_16];

  return v4;
}

id __34__ReusableTabManager_windowStates__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 tabController];
  v3 = [v2 windowState];

  return v3;
}

@end