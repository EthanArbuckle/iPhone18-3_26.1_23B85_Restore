@interface LiveFSThumbnailsServiceSource
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (LiveFSThumbnailsServiceSource)initWithFileProviderExtension:(id)extension;
- (id)makeListenerEndpointAndReturnError:(id *)error;
- (id)thumbnailCache;
- (void)getThumbnailCacheURLWrappersWithCompletion:(id)completion;
- (void)getThumbnailURLForItem:(id)item completion:(id)completion;
- (void)storeThumbnailAtURL:(id)l forItem:(id)item completion:(id)completion;
- (void)thumbnailCache;
@end

@implementation LiveFSThumbnailsServiceSource

- (LiveFSThumbnailsServiceSource)initWithFileProviderExtension:(id)extension
{
  extensionCopy = extension;
  v8.receiver = self;
  v8.super_class = LiveFSThumbnailsServiceSource;
  v5 = [(LiveFSThumbnailsServiceSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->ex, extensionCopy);
  }

  return v6;
}

- (id)makeListenerEndpointAndReturnError:(id *)error
{
  anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
  [anonymousListener setDelegate:self];
  [anonymousListener resume];
  endpoint = [anonymousListener endpoint];

  return endpoint;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v5 = MEMORY[0x277CCAE90];
  connectionCopy = connection;
  v7 = [v5 interfaceWithProtocol:&unk_2868173C8];
  v8 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v7 setClasses:v8 forSelector:sel_getThumbnailURLForItem_completion_ argumentIndex:0 ofReply:0];

  v9 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v7 setClasses:v9 forSelector:sel_storeThumbnailAtURL_forItem_completion_ argumentIndex:1 ofReply:0];

  [connectionCopy setExportedInterface:v7];
  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  return 1;
}

- (id)thumbnailCache
{
  thumbnailCache = self->thumbnailCache;
  if (!thumbnailCache)
  {
    WeakRetained = objc_loadWeakRetained(&self->ex);
    v5 = [WeakRetained URLForItemWithIdentifier:*MEMORY[0x277CC6348]];
    v6 = [v5 URLByAppendingPathComponent:@".thumbnails"];

    if (([v6 checkResourceIsReachableAndReturnError:0] & 1) == 0)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager createDirectoryAtURL:v6 withIntermediateDirectories:0 attributes:0 error:0];
    }

    v13 = 0;
    v8 = [objc_alloc(MEMORY[0x277CDAAA0]) initWithDirectoryURL:v6 maximumCacheSize:104857600 error:&v13];
    v9 = v13;
    v10 = self->thumbnailCache;
    self->thumbnailCache = v8;

    if (!self->thumbnailCache)
    {
      v11 = livefs_std_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [LiveFSThumbnailsServiceSource thumbnailCache];
      }
    }

    thumbnailCache = self->thumbnailCache;
  }

  return thumbnailCache;
}

- (void)storeThumbnailAtURL:(id)l forItem:(id)item completion:(id)completion
{
  completionCopy = completion;
  itemCopy = item;
  lCopy = l;
  thumbnailCache = [(LiveFSThumbnailsServiceSource *)self thumbnailCache];
  v13 = 0;
  [thumbnailCache storeThumbnailAtURL:lCopy forItem:itemCopy error:&v13];

  v12 = v13;
  completionCopy[2](completionCopy, v12);
}

- (void)getThumbnailURLForItem:(id)item completion:(id)completion
{
  completionCopy = completion;
  itemCopy = item;
  thumbnailCache = [(LiveFSThumbnailsServiceSource *)self thumbnailCache];
  v11 = 0;
  v9 = [thumbnailCache thumbnailURLForItem:itemCopy error:&v11];

  v10 = v11;
  completionCopy[2](completionCopy, v9, v10);
}

- (void)getThumbnailCacheURLWrappersWithCompletion:(id)completion
{
  completionCopy = completion;
  thumbnailCache = [(LiveFSThumbnailsServiceSource *)self thumbnailCache];
  v5 = MEMORY[0x277CC6438];
  inboxDirectoryURL = [thumbnailCache inboxDirectoryURL];
  v7 = [v5 wrapperWithURL:inboxDirectoryURL readonly:0 error:0];
  v8 = MEMORY[0x277CC6438];
  thumbnailsDirectoryURL = [thumbnailCache thumbnailsDirectoryURL];
  v10 = [v8 wrapperWithURL:thumbnailsDirectoryURL readonly:1 error:0];
  completionCopy[2](completionCopy, v7, v10);
}

- (void)thumbnailCache
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end