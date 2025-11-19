@interface SFSiteMetadataManager
@end

@implementation SFSiteMetadataManager

uint64_t __104___SFSiteMetadataManager_initWithInjectedBundleURL_imageCacheDirectoryURL_cacheIsReadOnly_metadataType___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) URLByAppendingPathComponent:@"Favicons.db-journal"];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v1 path];
  v4 = [v2 fileExistsAtPath:v3];

  return v4;
}

id __65___SFSiteMetadataManager_scheduleLowPriorityRequestForBookmarks___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 address];
  if ([v3 length] || objc_msgSend(v2, "isFolder"))
  {
    v4 = [SFBookmarkTouchIconRequest requestWithBookmark:v2 iconGenerationEnabled:0];
    [v4 setFolderIconStyle:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end