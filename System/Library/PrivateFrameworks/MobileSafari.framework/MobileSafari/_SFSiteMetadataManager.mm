@interface _SFSiteMetadataManager
+ (id)sharedSiteMetadataManager;
- (_SFSiteMetadataManager)initWithInjectedBundleURL:(id)l imageCacheDirectoryURL:(id)rL cacheIsReadOnly:(BOOL)only metadataType:(unint64_t)type;
- (void)scheduleLowPriorityRequestForBookmarks:(id)bookmarks;
@end

@implementation _SFSiteMetadataManager

+ (id)sharedSiteMetadataManager
{
  v2 = sharedSiteMetadataManager;
  if (!sharedSiteMetadataManager)
  {
    WeakRetained = objc_loadWeakRetained(&sharedSiteMetadataManagerProvider);
    objc_storeWeak(&sharedSiteMetadataManagerProvider, 0);
    newSharedSiteMetadataManager = [WeakRetained newSharedSiteMetadataManager];
    v5 = sharedSiteMetadataManager;
    sharedSiteMetadataManager = newSharedSiteMetadataManager;

    v2 = sharedSiteMetadataManager;
  }

  return v2;
}

- (_SFSiteMetadataManager)initWithInjectedBundleURL:(id)l imageCacheDirectoryURL:(id)rL cacheIsReadOnly:(BOOL)only metadataType:(unint64_t)type
{
  typeCopy = type;
  onlyCopy = only;
  v65[1] = *MEMORY[0x1E69E9840];
  rLCopy = rL;
  v62.receiver = self;
  v62.super_class = _SFSiteMetadataManager;
  v11 = [(WBSSiteMetadataManager *)&v62 initWithInjectedBundleURL:l];
  if (v11)
  {
    if (typeCopy)
    {
      v12 = objc_alloc_init(_SFBookmarkFolderTouchIconProvider);
      [(WBSSiteMetadataManager *)v11 registerSiteMetadataProvider:v12];
    }

    if ((typeCopy & 0x40) != 0)
    {
      v13 = objc_alloc_init(MEMORY[0x1E69C9878]);
      tabGroupIconProvider = v11->_tabGroupIconProvider;
      v11->_tabGroupIconProvider = v13;
      v15 = v13;

      [(WBSSiteMetadataManager *)v11 registerSiteMetadataProvider:v15];
    }

    v16 = rLCopy;
    v17 = dispatch_get_global_queue(17, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __ensureImageCacheDirectory_block_invoke;
    block[3] = &unk_1E721B360;
    v64 = v16;
    dispatch_async(v17, block);

    if ((typeCopy & 2) != 0)
    {
      v26 = [_SFTouchIconCache alloc];
      v27 = [v16 URLByAppendingPathComponent:@"Touch Icons" isDirectory:1];
      v28 = [(WBSTouchIconCache *)v26 initWithCacheDirectoryURL:v27 isReadOnly:onlyCopy];
      touchIconCache = v11->_touchIconCache;
      v11->_touchIconCache = v28;

      [(WBSSiteMetadataManager *)v11 registerSiteMetadataProvider:v11->_touchIconCache];
      if ((typeCopy & 0x10) == 0)
      {
LABEL_8:
        if ((typeCopy & 0x20) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_17;
      }
    }

    else if ((typeCopy & 0x10) == 0)
    {
      goto LABEL_8;
    }

    v30 = objc_alloc(MEMORY[0x1E69C97F0]);
    v31 = [v16 URLByAppendingPathComponent:@"Lead Images" isDirectory:1];
    v32 = [v30 initWithImageDirectoryURL:v31];
    leadImageCache = v11->_leadImageCache;
    v11->_leadImageCache = v32;

    [(WBSSiteMetadataManager *)v11 registerSiteMetadataProvider:v11->_leadImageCache];
    if ((typeCopy & 0x20) == 0)
    {
LABEL_9:
      if ((typeCopy & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    v34 = objc_alloc(MEMORY[0x1E69C97F8]);
    v35 = [v16 URLByAppendingPathComponent:@"Link Presentation Icons"];
    v36 = [v34 initWithImageDirectoryURL:v35];
    linkPresentationIconCache = v11->_linkPresentationIconCache;
    v11->_linkPresentationIconCache = v36;

    [(WBSSiteMetadataManager *)v11 registerSiteMetadataProvider:v11->_linkPresentationIconCache];
    if ((typeCopy & 4) == 0)
    {
LABEL_10:
      if ((typeCopy & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }

LABEL_18:
    v38 = [_SFSavedAccountTouchIconCache alloc];
    v39 = [v16 URLByAppendingPathComponent:@"Password Icons" isDirectory:1];
    v40 = [(WBSTouchIconCache *)v38 initWithCacheDirectoryURL:v39 isReadOnly:0 protectionType:3 allowFetchingOverCellularNetwork:0 fileMappingStyle:1 canFetchOutsideOfUserLoadedWebpage:1];
    savedAccountTouchIconCache = v11->_savedAccountTouchIconCache;
    v11->_savedAccountTouchIconCache = v40;

    [(WBSSiteMetadataManager *)v11 registerSiteMetadataProvider:v11->_savedAccountTouchIconCache];
    if ((typeCopy & 8) == 0)
    {
LABEL_11:
      if ((typeCopy & 0x100) == 0)
      {
LABEL_13:
        v24 = v11;
        goto LABEL_14;
      }

LABEL_12:
      v18 = objc_alloc(MEMORY[0x1E69C97E8]);
      v19 = MEMORY[0x1E695DFF8];
      v20 = _SFSafariMetadataCacheDirectoryPath();
      v21 = [v19 fileURLWithPath:v20 isDirectory:1];
      v22 = [v18 initWithCacheDirectoryURL:v21];
      linkPresentationMetadataProvider = v11->_linkPresentationMetadataProvider;
      v11->_linkPresentationMetadataProvider = v22;

      [(WBSSiteMetadataManager *)v11 registerSiteMetadataProvider:v11->_linkPresentationMetadataProvider];
      goto LABEL_13;
    }

LABEL_19:
    v42 = [v16 URLByAppendingPathComponent:@"Favicons" isDirectory:1];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v45 = v44;

    v46 = [_SFFaviconProvider alloc];
    [MEMORY[0x1E69C97A8] defaultFaviconSize];
    v48 = v47;
    v50 = v49;
    v51 = [MEMORY[0x1E696AD98] numberWithDouble:v45];
    v65[0] = v51;
    v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:1];
    v57 = MEMORY[0x1E69E9820];
    v58 = 3221225472;
    v59 = __104___SFSiteMetadataManager_initWithInjectedBundleURL_imageCacheDirectoryURL_cacheIsReadOnly_metadataType___block_invoke;
    v60 = &unk_1E721E858;
    v61 = v42;
    v53 = v42;
    v54 = [(_SFFaviconProvider *)v46 initWithPersistenceBaseURL:v53 persistenceName:@"Favicons" preferredIconSize:v52 atScale:onlyCopy allScales:&v57 isReadOnly:v48 shouldCheckIntegrityWhenOpeningDatabaseBlock:v50, v45];
    faviconProvider = v11->_faviconProvider;
    v11->_faviconProvider = v54;

    [(WBSFaviconProvider *)v11->_faviconProvider setUpWithCompletionHandler:0, v57, v58, v59, v60];
    [(WBSSiteMetadataManager *)v11 registerSiteMetadataProvider:v11->_faviconProvider];
    v56 = objc_alloc_init(MEMORY[0x1E69C9800]);
    [(WBSSiteMetadataManager *)v11 registerSiteMetadataProvider:v56];

    if ((typeCopy & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:

  return v11;
}

- (void)scheduleLowPriorityRequestForBookmarks:(id)bookmarks
{
  v4 = [bookmarks safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_48];
  if ([v4 count])
  {
    [(WBSSiteMetadataManager *)self preloadRequests:v4 withPriority:0 responseHandler:0];
  }
}

@end