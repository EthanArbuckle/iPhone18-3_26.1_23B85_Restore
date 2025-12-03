@interface CSLPRFAppIconCellHelper
- (CSLPRFAppIconCellHelper)init;
- (CSLPRFAppIconCellHelperDelegate)delegate;
- (id)fetchLazyIconForSpecifier:(id)specifier;
- (void)didCompleteLoadForIdentifier:(id)identifier;
- (void)loadIconForSpecifier:(id)specifier iconIdentifier:(id)identifier;
@end

@implementation CSLPRFAppIconCellHelper

- (CSLPRFAppIconCellHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didCompleteLoadForIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_outstandingRequests objectForKey:identifierCopy];
  [(NSMutableDictionary *)self->_outstandingRequests removeObjectForKey:identifierCopy];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = *MEMORY[0x277D40008];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 propertyForKey:{v10, v17}];
        v14 = [v13 isEqual:identifierCopy];

        if (v14)
        {
          delegate = [(CSLPRFAppIconCellHelper *)self delegate];
          [delegate appIconCellHelper:self reloadSpecifier:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)loadIconForSpecifier:(id)specifier iconIdentifier:(id)identifier
{
  specifierCopy = specifier;
  identifierCopy = identifier;
  v8 = [(NSMutableDictionary *)self->_outstandingRequests objectForKey:identifierCopy];
  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB58] set];
    [(NSMutableDictionary *)self->_outstandingRequests setObject:v8 forKey:identifierCopy];
  }

  if (([v8 containsObject:specifierCopy] & 1) == 0)
  {
    v9 = [v8 count];
    [v8 addObject:specifierCopy];
    if (!v9)
    {
      objc_initWeak(&location, self);
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      traitCollection = [mainScreen traitCollection];
      [traitCollection displayScale];
      v13 = v12;

      mEMORY[0x277D2BD60] = [MEMORY[0x277D2BD60] sharedInstance];
      if (v13 <= 2.0)
      {
        v15 = 47;
      }

      else
      {
        v15 = 48;
      }

      v16 = dispatch_get_global_queue(0, 0);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __63__CSLPRFAppIconCellHelper_loadIconForSpecifier_iconIdentifier___block_invoke;
      v17[3] = &unk_278744E40;
      objc_copyWeak(&v19, &location);
      v18 = identifierCopy;
      [mEMORY[0x277D2BD60] getIconForBundleID:v18 iconVariant:v15 queue:v16 block:v17 timeout:60.0];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }
}

void __63__CSLPRFAppIconCellHelper_loadIconForSpecifier_iconIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = +[CSLPRFIconCache sharedIconCache];
      [v5 setIcon:v3 forName:*(a1 + 32)];
    }

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __63__CSLPRFAppIconCellHelper_loadIconForSpecifier_iconIdentifier___block_invoke_2;
    v6[3] = &unk_2787455E0;
    v6[4] = WeakRetained;
    v7 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }
}

- (id)fetchLazyIconForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = [specifierCopy propertyForKey:*MEMORY[0x277D40020]];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    v7 = [specifierCopy propertyForKey:*MEMORY[0x277D40008]];
    if (v7)
    {
      v8 = +[CSLPRFIconCache sharedIconCache];
      v9 = [v8 iconForName:v7 fallBackToPersistentStoreIfNecessary:0];

      if (v9 || (-[CSLPRFAppIconCellHelper loadIconForSpecifier:iconIdentifier:](self, "loadIconForSpecifier:iconIdentifier:", specifierCopy, v7), +[CSLPRFIconCache sharedIconCache](CSLPRFIconCache, "sharedIconCache"), v10 = objc_claimAutoreleasedReturnValue(), [v10 iconForName:v7 fallBackToPersistentStoreIfNecessary:1], v9 = objc_claimAutoreleasedReturnValue(), v10, v9))
      {
        [specifierCopy setProperty:v9 forKey:*MEMORY[0x277D3FFC0]];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CSLPRFAppIconCellHelper)init
{
  v6.receiver = self;
  v6.super_class = CSLPRFAppIconCellHelper;
  v2 = [(CSLPRFAppIconCellHelper *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    outstandingRequests = v2->_outstandingRequests;
    v2->_outstandingRequests = dictionary;
  }

  return v2;
}

@end