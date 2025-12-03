@interface MRUImageLoaderCoordinator
+ (id)sharedCoordinator;
- (CGSize)requestSize;
- (MRUImageLoaderCoordinator)init;
- (void)recalculateArtworkIdentifiers;
- (void)recalculateRequestSize;
- (void)registerLoader:(id)loader;
- (void)unregisterLoader:(id)loader;
@end

@implementation MRUImageLoaderCoordinator

+ (id)sharedCoordinator
{
  if (sharedCoordinator_onceToken != -1)
  {
    +[MRUImageLoaderCoordinator sharedCoordinator];
  }

  v3 = sharedCoordinator___shared;

  return v3;
}

uint64_t __46__MRUImageLoaderCoordinator_sharedCoordinator__block_invoke()
{
  v0 = objc_alloc_init(MRUImageLoaderCoordinator);
  v1 = sharedCoordinator___shared;
  sharedCoordinator___shared = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (MRUImageLoaderCoordinator)init
{
  v8.receiver = self;
  v8.super_class = MRUImageLoaderCoordinator;
  v2 = [(MRUImageLoaderCoordinator *)&v8 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v4 = *(v2 + 2);
    *(v2 + 2) = weakObjectsHashTable;

    *(v2 + 24) = *MEMORY[0x1E695F060];
    v5 = [MEMORY[0x1E695DFD8] set];
    v6 = *(v2 + 1);
    *(v2 + 1) = v5;
  }

  return v2;
}

- (void)registerLoader:(id)loader
{
  loaderCopy = loader;
  loaders = [(MRUImageLoaderCoordinator *)self loaders];
  [loaders addObject:loaderCopy];

  [(MRUImageLoaderCoordinator *)self recalculateRequestSize];

  [(MRUImageLoaderCoordinator *)self recalculateArtworkIdentifiers];
}

- (void)unregisterLoader:(id)loader
{
  loaderCopy = loader;
  loaders = [(MRUImageLoaderCoordinator *)self loaders];
  [loaders removeObject:loaderCopy];

  [(MRUImageLoaderCoordinator *)self recalculateRequestSize];

  [(MRUImageLoaderCoordinator *)self recalculateArtworkIdentifiers];
}

- (void)recalculateArtworkIdentifiers
{
  v29 = *MEMORY[0x1E69E9840];
  loaders = [(MRUImageLoaderCoordinator *)self loaders];
  allObjects = [loaders allObjects];

  v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(allObjects, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = allObjects;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        lastVendedArtworkIdentifier = [v11 lastVendedArtworkIdentifier];

        if (lastVendedArtworkIdentifier)
        {
          lastVendedArtworkIdentifier2 = [v11 lastVendedArtworkIdentifier];
          stringRepresentation = [lastVendedArtworkIdentifier2 stringRepresentation];
          [v5 addObject:stringRepresentation];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v8);
  }

  registeredLoaderArtworkIdentifiers = [(MRUImageLoaderCoordinator *)self registeredLoaderArtworkIdentifiers];
  v16 = [v5 isEqualToSet:registeredLoaderArtworkIdentifiers];

  if ((v16 & 1) == 0)
  {
    [(MRUImageLoaderCoordinator *)self setRegisteredLoaderArtworkIdentifiers:v5];
    currentSettings = [MEMORY[0x1E69B0B08] currentSettings];
    verboseImageLoadingLogging = [currentSettings verboseImageLoadingLogging];

    if (verboseImageLoadingLogging)
    {
      v19 = MCLogCategoryImageLoading();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        registeredLoaderArtworkIdentifiers2 = [(MRUImageLoaderCoordinator *)self registeredLoaderArtworkIdentifiers];
        *buf = 138412290;
        v27 = registeredLoaderArtworkIdentifiers2;
        _os_log_impl(&dword_1A20FC000, v19, OS_LOG_TYPE_DEFAULT, "[MRUImageLoaderCoordinator] [MRUImageLoaderCoordinator] artwork identifiers changed: %@.", buf, 0xCu);
      }
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MRUImageLoaderCoordinatorArtworkIdentifiersDidChangeNotification" object:0];
  }
}

- (void)recalculateRequestSize
{
  v27 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  loaders = [(MRUImageLoaderCoordinator *)self loaders];
  v4 = [loaders countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(loaders);
        }

        [*(*(&v20 + 1) + 8 * i) scaledFittingSize];
        if (v10 < v6)
        {
          v10 = v6;
        }

        v6 = v10;
        v12 = v7;
        if (v11 >= v7)
        {
          v12 = v11;
        }

        v7 = v12;
      }

      v5 = [loaders countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v5);
    v13 = v6;
    v14 = v7;
  }

  else
  {
    v13 = 0.0;
    v14 = 0.0;
  }

  [(MRUImageLoaderCoordinator *)self requestSize];
  if (v16 != v13 || v15 != v14)
  {
    v18 = MCLogCategoryImageLoading();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v28.width = v13;
      v28.height = v14;
      v19 = NSStringFromCGSize(v28);
      *buf = 138412290;
      v25 = v19;
      _os_log_impl(&dword_1A20FC000, v18, OS_LOG_TYPE_DEFAULT, "[MRUImageLoaderCoordinator] [MRUImageLoaderCoordinator] coordinated size changed to %@.", buf, 0xCu);
    }

    [(MRUImageLoaderCoordinator *)self setRequestSize:v13, v14];
  }
}

- (CGSize)requestSize
{
  width = self->_requestSize.width;
  height = self->_requestSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end