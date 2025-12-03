@interface HistoryController
+ (HistoryController)sharedController;
- (id)_createHistoryForProfileIdentifier:(id)identifier;
- (id)_init;
- (id)frequentlyVisitedSitesBannedURLStoreForProfileIdentifier:(id)identifier loadIfNeeded:(BOOL)needed;
- (id)frequentlyVisitedSitesControllerForProfileIdentifier:(id)identifier loadIfNeeded:(BOOL)needed;
- (id)historyForProfileIdentifier:(id)identifier loadIfNeeded:(BOOL)needed;
@end

@implementation HistoryController

+ (HistoryController)sharedController
{
  if (sharedController_once != -1)
  {
    +[HistoryController sharedController];
  }

  v3 = MEMORY[0x277D49F78];

  return [v3 existingSharedHistoryController];
}

void __37__HistoryController_sharedController__block_invoke()
{
  v0 = [[HistoryController alloc] _init];
}

- (id)_init
{
  v9.receiver = self;
  v9.super_class = HistoryController;
  v2 = [(WBSHistoryController *)&v9 init];
  if (v2)
  {
    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    frequentlyVisitedSitesBannedURLStores = v2->_frequentlyVisitedSitesBannedURLStores;
    v2->_frequentlyVisitedSitesBannedURLStores = strongToWeakObjectsMapTable;

    strongToWeakObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    frequentlyVisitedSitesControllers = v2->_frequentlyVisitedSitesControllers;
    v2->_frequentlyVisitedSitesControllers = strongToWeakObjectsMapTable2;

    v7 = v2;
  }

  return v2;
}

- (id)_createHistoryForProfileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v4 = [(WBUHistory *)[History alloc] initWithDatabaseID:identifierCopy];
    [(WBSHistory *)v4 loadHistoryAsynchronouslyIfNeeded];
  }

  else
  {
    v4 = +[History sharedHistory];
  }

  return v4;
}

- (id)historyForProfileIdentifier:(id)identifier loadIfNeeded:(BOOL)needed
{
  v6.receiver = self;
  v6.super_class = HistoryController;
  v4 = [(WBSHistoryController *)&v6 historyForProfileIdentifier:identifier loadIfNeeded:needed];

  return v4;
}

- (id)frequentlyVisitedSitesBannedURLStoreForProfileIdentifier:(id)identifier loadIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  identifierCopy = identifier;
  v7 = SafariFrequentlyVisitedSitesBannedURLStoreURLForProfileWithIdentifier(identifierCopy);
  if (v7)
  {
    v8 = [(NSMapTable *)self->_frequentlyVisitedSitesBannedURLStores objectForKey:identifierCopy];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v10 = [(HistoryController *)self historyForProfileIdentifier:identifierCopy loadIfNeeded:neededCopy];
      if (v10)
      {
        v11 = [objc_alloc(MEMORY[0x277D49F58]) initWithStoreURL:v7 history:v10];
        [(NSMapTable *)self->_frequentlyVisitedSitesBannedURLStores setObject:v11 forKey:identifierCopy];
        v9 = v11;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)frequentlyVisitedSitesControllerForProfileIdentifier:(id)identifier loadIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  identifierCopy = identifier;
  v7 = [(NSMapTable *)self->_frequentlyVisitedSitesControllers objectForKey:identifierCopy];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [(HistoryController *)self historyForProfileIdentifier:identifierCopy loadIfNeeded:neededCopy];
    if (v9)
    {
      v10 = [(HistoryController *)self frequentlyVisitedSitesBannedURLStoreForProfileIdentifier:identifierCopy loadIfNeeded:neededCopy];
      if (v10)
      {
        v11 = [FrequentlyVisitedSitesController alloc];
        mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
        v13 = +[Application sharedApplication];
        tabGroupManager = [v13 tabGroupManager];
        tabCollection = [tabGroupManager tabCollection];
        v16 = [(FrequentlyVisitedSitesController *)v11 initWithBookmarkCollection:mainBookmarkCollection history:v9 bannedURLStore:v10 tabCollection:tabCollection profileIdentifier:identifierCopy];

        [(NSMapTable *)self->_frequentlyVisitedSitesControllers setObject:v16 forKey:identifierCopy];
        if (([identifierCopy isEqualToString:*MEMORY[0x277D49BD8]] & 1) == 0)
        {
          [(WBSFrequentlyVisitedSitesController *)v16 recomputeFrequentlyVisitedSitesIfNecessary];
        }

        v8 = v16;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end