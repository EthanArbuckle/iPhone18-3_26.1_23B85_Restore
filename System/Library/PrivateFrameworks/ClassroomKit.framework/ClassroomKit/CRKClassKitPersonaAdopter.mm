@interface CRKClassKitPersonaAdopter
+ (id)currentUserProviderObservedKeyPaths;
- (BOOL)personaFetched;
- (CRKClassKitPersonaAdopter)initWithClassKitFacade:(id)facade personaBlockPerformer:(id)performer;
- (id)captureStashedBlocks;
- (void)callStashedBlocks;
- (void)callStashedBlocksIfPersonaFetched;
- (void)currentUserChanged;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performBlockWithClassKitPersona:(id)persona;
@end

@implementation CRKClassKitPersonaAdopter

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  currentUserProviderObservedKeyPaths = [objc_opt_class() currentUserProviderObservedKeyPaths];
  v4 = [currentUserProviderObservedKeyPaths countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(currentUserProviderObservedKeyPaths);
        }

        [(CRKClassKitCurrentUserProvider *)self->_currentUserProvider removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v7++) context:@"CRKClassKitPersonaAdopterKVOContext"];
      }

      while (v5 != v7);
      v5 = [currentUserProviderObservedKeyPaths countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(CRKClassKitPersonaAdopter *)self callStashedBlocks];
  v8.receiver = self;
  v8.super_class = CRKClassKitPersonaAdopter;
  [(CRKClassKitPersonaAdopter *)&v8 dealloc];
}

- (CRKClassKitPersonaAdopter)initWithClassKitFacade:(id)facade personaBlockPerformer:(id)performer
{
  v25 = *MEMORY[0x277D85DE8];
  facadeCopy = facade;
  performerCopy = performer;
  v23.receiver = self;
  v23.super_class = CRKClassKitPersonaAdopter;
  v8 = [(CRKClassKitPersonaAdopter *)&v23 init];
  if (v8)
  {
    v9 = objc_opt_new();
    stashedBlocks = v8->_stashedBlocks;
    v8->_stashedBlocks = v9;

    objc_storeStrong(&v8->_personaBlockPerformer, performer);
    v11 = [[CRKClassKitCurrentUserProvider alloc] initWithClassKitFacade:facadeCopy];
    currentUserProvider = v8->_currentUserProvider;
    v8->_currentUserProvider = v11;

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    currentUserProviderObservedKeyPaths = [objc_opt_class() currentUserProviderObservedKeyPaths];
    v14 = [currentUserProviderObservedKeyPaths countByEnumeratingWithState:&v19 objects:v24 count:16];
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
            objc_enumerationMutation(currentUserProviderObservedKeyPaths);
          }

          [(CRKClassKitCurrentUserProvider *)v8->_currentUserProvider addObserver:v8 forKeyPath:*(*(&v19 + 1) + 8 * v17++) options:0 context:@"CRKClassKitPersonaAdopterKVOContext"];
        }

        while (v15 != v17);
        v15 = [currentUserProviderObservedKeyPaths countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v15);
    }

    [(CRKClassKitPersonaAdopter *)v8 currentUserChanged];
  }

  return v8;
}

- (void)performBlockWithClassKitPersona:(id)persona
{
  v5 = MEMORY[0x277CCACC8];
  personaCopy = persona;
  if (([v5 isMainThread] & 1) == 0)
  {
    [(CRKClassKitPersonaAdopter *)a2 performBlockWithClassKitPersona:?];
  }

  stashedBlocks = [(CRKClassKitPersonaAdopter *)self stashedBlocks];
  v8 = MEMORY[0x245D3AAD0](personaCopy);

  [stashedBlocks addObject:v8];

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
  stashedBlocks = [(CRKClassKitPersonaAdopter *)self stashedBlocks];
  v4 = [stashedBlocks count];

  if (v4)
  {
    currentPersonaUniqueString = [(CRKClassKitPersonaAdopter *)self currentPersonaUniqueString];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    captureStashedBlocks = [(CRKClassKitPersonaAdopter *)self captureStashedBlocks];
    v7 = [captureStashedBlocks countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(captureStashedBlocks);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          personaBlockPerformer = [(CRKClassKitPersonaAdopter *)self personaBlockPerformer];
          [personaBlockPerformer adoptPersonaWithUniqueString:currentPersonaUniqueString andPerformBlock:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [captureStashedBlocks countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

- (BOOL)personaFetched
{
  currentUserProvider = [(CRKClassKitPersonaAdopter *)self currentUserProvider];
  currentUserFetched = [currentUserProvider currentUserFetched];

  return currentUserFetched;
}

- (id)captureStashedBlocks
{
  stashedBlocks = [(CRKClassKitPersonaAdopter *)self stashedBlocks];
  v4 = [stashedBlocks copy];

  stashedBlocks2 = [(CRKClassKitPersonaAdopter *)self stashedBlocks];
  [stashedBlocks2 removeAllObjects];

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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == @"CRKClassKitPersonaAdopterKVOContext")
  {

    [(CRKClassKitPersonaAdopter *)self currentUserChanged:path];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = CRKClassKitPersonaAdopter;
    [(CRKClassKitPersonaAdopter *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)currentUserChanged
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(self);
  [currentHandler handleFailureInMethod:self object:a2 file:@"CRKClassKitPersonaAdopter.m" lineNumber:129 description:{@"%@ must be called from the main thread", v4}];
}

- (void)performBlockWithClassKitPersona:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"CRKClassKitPersonaAdopter.m" lineNumber:71 description:{@"%@ must be called from the main thread", v4}];
}

@end