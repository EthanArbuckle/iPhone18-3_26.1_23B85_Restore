@interface CSLPRFIconFetcher
- (BOOL)hasPendingRequestsForBundleID:(id)d;
- (CSLPRFIconFetcher)init;
- (CSLPRFIconFetcher)initWithIconCache:(id)cache;
- (UIImage)genericIcon;
- (void)_completeLoadForBundleID:(id)d image:(id)image error:(id)error;
- (void)_insertTask:(id)task forBundleID:(id)d;
- (void)_loadIconForBundleIdentifier:(id)identifier isPhoneApp:(BOOL)app;
- (void)_loadNanoIconForBundleIdentifier:(id)identifier;
@end

@implementation CSLPRFIconFetcher

- (void)_completeLoadForBundleID:(id)d image:(id)image error:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  imageCopy = image;
  errorCopy = error;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v11 = [(NSMutableDictionary *)self->_tasksByBundleID objectForKeyedSubscript:dCopy];
  [(NSMutableDictionary *)self->_tasksByBundleID setObject:0 forKeyedSubscript:dCopy];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v18 + 1) + 8 * v16++) completeWithImage:imageCopy error:{errorCopy, v18}];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_insertTask:(id)task forBundleID:(id)d
{
  taskCopy = task;
  dCopy = d;
  array = [(NSMutableDictionary *)self->_tasksByBundleID objectForKeyedSubscript:dCopy];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    [(NSMutableDictionary *)self->_tasksByBundleID setObject:array forKeyedSubscript:dCopy];
  }

  [array addObject:taskCopy];
}

- (BOOL)hasPendingRequestsForBundleID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_tasksByBundleID objectForKeyedSubscript:d];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)_loadNanoIconForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  traitCollection = [mainScreen traitCollection];
  [traitCollection displayScale];
  v8 = v7;

  mEMORY[0x277D2BD60] = [MEMORY[0x277D2BD60] sharedInstance];
  if (v8 <= 2.0)
  {
    v10 = 47;
  }

  else
  {
    v10 = 48;
  }

  v11 = dispatch_get_global_queue(0, 0);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__CSLPRFIconFetcher__loadNanoIconForBundleIdentifier___block_invoke;
  v13[3] = &unk_278744E40;
  objc_copyWeak(&v15, &location);
  v12 = identifierCopy;
  v14 = v12;
  [mEMORY[0x277D2BD60] getIconForBundleID:v12 iconVariant:v10 queue:v11 block:v13 timeout:60.0];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __54__CSLPRFIconFetcher__loadNanoIconForBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v6 = [WeakRetained iconCache];
      [v6 setIcon:v3 forName:*(a1 + 32)];

      v7 = 0;
    }

    else
    {
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:-1 userInfo:0];
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __54__CSLPRFIconFetcher__loadNanoIconForBundleIdentifier___block_invoke_2;
    v9[3] = &unk_278744860;
    v9[4] = v5;
    v10 = *(a1 + 32);
    v11 = v3;
    v12 = v7;
    v8 = v7;
    dispatch_async(MEMORY[0x277D85CD0], v9);
  }
}

- (void)_loadIconForBundleIdentifier:(id)identifier isPhoneApp:(BOOL)app
{
  appCopy = app;
  identifierCopy = identifier;
  if (appCopy)
  {
    v7 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithBundleIdentifier:identifierCopy];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    traitCollection = [mainScreen traitCollection];
    [traitCollection displayScale];
    v11 = v10;

    if (v11 <= 2.0)
    {
      v12 = 2.0;
    }

    else
    {
      v12 = 3.0;
    }

    v13 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:29.0 scale:{29.0, v12}];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __61__CSLPRFIconFetcher__loadIconForBundleIdentifier_isPhoneApp___block_invoke;
    v14[3] = &unk_278744838;
    v16 = v12;
    v14[4] = self;
    v15 = identifierCopy;
    [v7 getImageForImageDescriptor:v13 completion:v14];
  }

  else
  {
    [(CSLPRFIconFetcher *)self _loadNanoIconForBundleIdentifier:identifierCopy];
  }
}

void __61__CSLPRFIconFetcher__loadIconForBundleIdentifier_isPhoneApp___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v4 = v3;
  BSDispatchMain();
}

void __61__CSLPRFIconFetcher__loadIconForBundleIdentifier_isPhoneApp___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) CGImage])
  {
    v2 = [MEMORY[0x277D755B8] imageWithCGImage:objc_msgSend(*(a1 + 32) scale:"CGImage") orientation:{0, *(a1 + 56)}];
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v8 = v2;
    v5 = 0;
  }

  else
  {
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:-1 userInfo:0];
    v3 = v7;
    v4 = v6;
    v2 = 0;
    v8 = v5;
  }

  [v3 _completeLoadForBundleID:v4 image:v2 error:v5];
}

- (UIImage)genericIcon
{
  genericIcon = self->_genericIcon;
  if (!genericIcon)
  {
    genericApplicationIcon = [MEMORY[0x277D1B1A8] genericApplicationIcon];
    v5 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:29.0 scale:{29.0, 2.0}];
    v6 = [genericApplicationIcon CGImageForDescriptor:v5];
    v7 = objc_alloc(MEMORY[0x277D755B8]);
    [v5 scale];
    v8 = [v7 initWithCGImage:v6 scale:0 orientation:?];
    v9 = self->_genericIcon;
    self->_genericIcon = v8;

    genericIcon = self->_genericIcon;
  }

  return genericIcon;
}

- (CSLPRFIconFetcher)initWithIconCache:(id)cache
{
  cacheCopy = cache;
  v11.receiver = self;
  v11.super_class = CSLPRFIconFetcher;
  v6 = [(CSLPRFIconFetcher *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_iconCache, cache);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    tasksByBundleID = v7->_tasksByBundleID;
    v7->_tasksByBundleID = v8;
  }

  return v7;
}

- (CSLPRFIconFetcher)init
{
  v3 = +[CSLPRFIconCache sharedIconCache];
  v4 = [(CSLPRFIconFetcher *)self initWithIconCache:v3];

  return v4;
}

@end