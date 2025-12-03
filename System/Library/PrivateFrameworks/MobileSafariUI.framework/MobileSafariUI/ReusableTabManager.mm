@interface ReusableTabManager
- (id)faviconForUUID:(id)d;
- (id)reusableTabDocumentWithUUID:(id)d;
- (id)tabGroupManager;
- (id)windowStates;
- (void)enumerateReusableTabDocuments:(id)documents;
@end

@implementation ReusableTabManager

- (id)tabGroupManager
{
  v2 = +[Application sharedApplication];
  tabGroupManager = [v2 tabGroupManager];

  return tabGroupManager;
}

- (id)faviconForUUID:(id)d
{
  v3 = [(WBReusableTabManager *)self referenceToTabWithUUID:d];
  v4 = v3;
  if (v3)
  {
    tabCollectionItem = [v3 tabCollectionItem];
    icon = [tabCollectionItem icon];
  }

  else
  {
    icon = 0;
  }

  return icon;
}

- (id)reusableTabDocumentWithUUID:(id)d
{
  v3 = [(WBReusableTabManager *)self referenceToTabWithUUID:d];

  return v3;
}

- (void)enumerateReusableTabDocuments:(id)documents
{
  documentsCopy = documents;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__ReusableTabManager_enumerateReusableTabDocuments___block_invoke;
  v6[3] = &unk_2781D7B98;
  v7 = documentsCopy;
  v5 = documentsCopy;
  [(WBReusableTabManager *)self enumerateReusableTabs:v6];
}

- (id)windowStates
{
  v2 = +[Application sharedApplication];
  browserControllers = [v2 browserControllers];
  v4 = [browserControllers safari_mapObjectsUsingBlock:&__block_literal_global_16];

  return v4;
}

id __34__ReusableTabManager_windowStates__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 tabController];
  v3 = [v2 windowState];

  return v3;
}

@end