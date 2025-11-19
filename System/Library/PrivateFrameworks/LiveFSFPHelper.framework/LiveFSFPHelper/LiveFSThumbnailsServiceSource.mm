@interface LiveFSThumbnailsServiceSource
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (LiveFSThumbnailsServiceSource)initWithFileProviderExtension:(id)a3;
- (id)makeListenerEndpointAndReturnError:(id *)a3;
- (id)thumbnailCache;
- (void)getThumbnailCacheURLWrappersWithCompletion:(id)a3;
- (void)getThumbnailURLForItem:(id)a3 completion:(id)a4;
- (void)storeThumbnailAtURL:(id)a3 forItem:(id)a4 completion:(id)a5;
- (void)thumbnailCache;
@end

@implementation LiveFSThumbnailsServiceSource

- (LiveFSThumbnailsServiceSource)initWithFileProviderExtension:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LiveFSThumbnailsServiceSource;
  v5 = [(LiveFSThumbnailsServiceSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->ex, v4);
  }

  return v6;
}

- (id)makeListenerEndpointAndReturnError:(id *)a3
{
  v4 = [MEMORY[0x277CCAE98] anonymousListener];
  [v4 setDelegate:self];
  [v4 resume];
  v5 = [v4 endpoint];

  return v5;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = MEMORY[0x277CCAE90];
  v6 = a4;
  v7 = [v5 interfaceWithProtocol:&unk_2868173C8];
  v8 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v7 setClasses:v8 forSelector:sel_getThumbnailURLForItem_completion_ argumentIndex:0 ofReply:0];

  v9 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v7 setClasses:v9 forSelector:sel_storeThumbnailAtURL_forItem_completion_ argumentIndex:1 ofReply:0];

  [v6 setExportedInterface:v7];
  [v6 setExportedObject:self];
  [v6 resume];

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
      v7 = [MEMORY[0x277CCAA00] defaultManager];
      [v7 createDirectoryAtURL:v6 withIntermediateDirectories:0 attributes:0 error:0];
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

- (void)storeThumbnailAtURL:(id)a3 forItem:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(LiveFSThumbnailsServiceSource *)self thumbnailCache];
  v13 = 0;
  [v11 storeThumbnailAtURL:v10 forItem:v9 error:&v13];

  v12 = v13;
  v8[2](v8, v12);
}

- (void)getThumbnailURLForItem:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LiveFSThumbnailsServiceSource *)self thumbnailCache];
  v11 = 0;
  v9 = [v8 thumbnailURLForItem:v7 error:&v11];

  v10 = v11;
  v6[2](v6, v9, v10);
}

- (void)getThumbnailCacheURLWrappersWithCompletion:(id)a3
{
  v4 = a3;
  v11 = [(LiveFSThumbnailsServiceSource *)self thumbnailCache];
  v5 = MEMORY[0x277CC6438];
  v6 = [v11 inboxDirectoryURL];
  v7 = [v5 wrapperWithURL:v6 readonly:0 error:0];
  v8 = MEMORY[0x277CC6438];
  v9 = [v11 thumbnailsDirectoryURL];
  v10 = [v8 wrapperWithURL:v9 readonly:1 error:0];
  v4[2](v4, v7, v10);
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