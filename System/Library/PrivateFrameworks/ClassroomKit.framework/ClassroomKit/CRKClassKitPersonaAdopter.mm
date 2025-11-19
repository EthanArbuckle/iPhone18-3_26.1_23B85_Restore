@interface CRKClassKitPersonaAdopter
+ (id)currentUserProviderObservedKeyPaths;
- (BOOL)personaFetched;
- (CRKClassKitPersonaAdopter)initWithClassKitFacade:(id)a3 personaBlockPerformer:(id)a4;
- (id)captureStashedBlocks;
- (void)callStashedBlocks;
- (void)callStashedBlocksIfPersonaFetched;
- (void)currentUserChanged;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)performBlockWithClassKitPersona:(id)a3;
@end

@implementation CRKClassKitPersonaAdopter

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [objc_opt_class() currentUserProviderObservedKeyPaths];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(CRKClassKitCurrentUserProvider *)self->_currentUserProvider removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v7++) context:@"CRKClassKitPersonaAdopterKVOContext"];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(CRKClassKitPersonaAdopter *)self callStashedBlocks];
  v8.receiver = self;
  v8.super_class = CRKClassKitPersonaAdopter;
  [(CRKClassKitPersonaAdopter *)&v8 dealloc];
}

- (CRKClassKitPersonaAdopter)initWithClassKitFacade:(id)a3 personaBlockPerformer:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = CRKClassKitPersonaAdopter;
  v8 = [(CRKClassKitPersonaAdopter *)&v23 init];
  if (v8)
  {
    v9 = objc_opt_new();
    stashedBlocks = v8->_stashedBlocks;
    v8->_stashedBlocks = v9;

    objc_storeStrong(&v8->_personaBlockPerformer, a4);
    v11 = [[CRKClassKitCurrentUserProvider alloc] initWithClassKitFacade:v6];
    currentUserProvider = v8->_currentUserProvider;
    v8->_currentUserProvider = v11;

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v13 = [objc_opt_class() currentUserProviderObservedKeyPaths];
    v14 = [v13 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [(CRKClassKitCurrentUserProvider *)v8->_currentUserProvider addObserver:v8 forKeyPath:*(*(&v19 + 1) + 8 * v17++) options:0 context:@"CRKClassKitPersonaAdopterKVOContext"];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v15);
    }

    [(CRKClassKitPersonaAdopter *)v8 currentUserChanged];
  }

  return v8;
}

- (void)performBlockWithClassKitPersona:(id)a3
{
  v5 = MEMORY[0x277CCACC8];
  v6 = a3;
  if (([v5 isMainThread] & 1) == 0)
  {
    [(CRKClassKitPersonaAdopter *)a2 performBlockWithClassKitPersona:?];
  }

  v7 = [(CRKClassKitPersonaAdopter *)self stashedBlocks];
  v8 = MEMORY[0x245D3AAD0](v6);

  [v7 addObject:v8];

  [(CRKClassKitPersonaAdopter *)self callStashedBlocksIfPersonaFetched];
}

- (void)callStashedBlocksIfPersonaFetched
{
  if ([(CRKClassKitPersonaAdopter *)self personaFetched])
  {

    [(CRKClassKitPersonaAdopter *)self callStashedBlocks];
  }
}

- (void)callStashedBlocks
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(CRKClassKitPersonaAdopter *)self stashedBlocks];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(CRKClassKitPersonaAdopter *)self currentPersonaUniqueString];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(CRKClassKitPersonaAdopter *)self captureStashedBlocks];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          v12 = [(CRKClassKitPersonaAdopter *)self personaBlockPerformer];
          [v12 adoptPersonaWithUniqueString:v5 andPerformBlock:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

- (BOOL)personaFetched
{
  v2 = [(CRKClassKitPersonaAdopter *)self currentUserProvider];
  v3 = [v2 currentUserFetched];

  return v3;
}

- (id)captureStashedBlocks
{
  v3 = [(CRKClassKitPersonaAdopter *)self stashedBlocks];
  v4 = [v3 copy];

  v5 = [(CRKClassKitPersonaAdopter *)self stashedBlocks];
  [v5 removeAllObjects];

  return v4;
}

+ (id)currentUserProviderObservedKeyPaths
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"currentUserFetched";
  v4[1] = @"currentUser";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == @"CRKClassKitPersonaAdopterKVOContext")
  {

    [(CRKClassKitPersonaAdopter *)self currentUserChanged:a3];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = CRKClassKitPersonaAdopter;
    [(CRKClassKitPersonaAdopter *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)currentUserChanged
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"CRKClassKitPersonaAdopter.m" lineNumber:129 description:{@"%@ must be called from the main thread", v4}];
}

- (void)performBlockWithClassKitPersona:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"CRKClassKitPersonaAdopter.m" lineNumber:71 description:{@"%@ must be called from the main thread", v4}];
}

@end