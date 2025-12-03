@interface MSPMapsPaths
+ (id)bookmarksSettingsPath;
+ (id)cacheDirectory;
+ (id)currentMapsApplicationContainerURL;
+ (id)currentMapsGroupContainerURL;
+ (id)directionsCachePath;
+ (id)directionsSettingsPath;
+ (id)failedDirectionsSettingsPath;
+ (id)failedGeoDirectionsSettingsPath;
+ (id)failedGeoSearchesSettingsPath;
+ (id)failedSearchesSettingsPath;
+ (id)favoritesSyncedMarkerFile;
+ (id)geoBookmarksSettingsPath;
+ (id)geoCollectionsSettingsPath;
+ (id)geoHistorySettingsPath;
+ (id)geoPinnedPlacesSettingsPath;
+ (id)groupDirectory;
+ (id)historySettingsPath;
+ (id)historySyncedMarkerFile;
+ (id)mapsApplicationContainerPathsWithInvalidationHandler:(id)handler;
+ (id)mapsDirectory;
+ (id)nanoDirectory;
+ (id)nanoHistorySettingsPath;
+ (id)pathsAtLocation:(int64_t)location;
+ (id)pinsSettingsPath;
+ (id)reportAProblemDirectionsRecordingsPath;
+ (id)reportAProblemSearchRecordingsPath;
+ (id)routingAppLaunchRecordPath;
- (BOOL)_deleteSyncedFileAtPath:(id)path;
- (BOOL)_shouldSyncMergeAfterCheckingOrCreatingMarkerFileAtPath:(id)path;
- (BOOL)deleteFavoritesSyncedMarkerFile;
- (BOOL)deleteHistorySyncedMarkerFile;
- (BOOL)shouldSyncMergeFavoritesAfterCheckingOrCreatingMarkerFile;
- (BOOL)shouldSyncMergeHistoryAfterCheckingOrCreatingMarkerFile;
- (MSPMapsPaths)initWithLibraryDirectoryURL:(id)l groupLibraryURL:(id)rL invalidationHandler:(id)handler;
- (NSString)bookmarksSettingsPath;
- (NSString)cacheDirectory;
- (NSString)directionsCachePath;
- (NSString)directionsSettingsPath;
- (NSString)failedDirectionsSettingsPath;
- (NSString)failedGeoDirectionsSettingsPath;
- (NSString)failedGeoSearchesSettingsPath;
- (NSString)failedSearchesSettingsPath;
- (NSString)favoritesSyncedMarkerFile;
- (NSString)geoBookmarksSettingsPath;
- (NSString)geoCollectionsSettingsPath;
- (NSString)geoHistorySettingsPath;
- (NSString)geoPinnedPlacesSettingsPath;
- (NSString)groupDirectory;
- (NSString)historySettingsPath;
- (NSString)historySyncedMarkerFile;
- (NSString)homeDirectory;
- (NSString)mapsDirectory;
- (NSString)nanoDirectory;
- (NSString)nanoHistorySettingsPath;
- (NSString)pinsSettingsPath;
- (NSString)reportAProblemDirectionsRecordingsPath;
- (NSString)reportAProblemSearchRecordingsPath;
- (NSString)routingAppLaunchRecordPath;
- (void)_invalidate;
@end

@implementation MSPMapsPaths

+ (id)currentMapsApplicationContainerURL
{
  v2 = objc_alloc(MEMORY[0x277CC1E70]);
  v3 = *MEMORY[0x277D0EA88];
  v12 = 0;
  v4 = [v2 initWithBundleIdentifier:v3 allowPlaceholder:0 error:&v12];
  v5 = v4;
  if (v12)
  {
    goto LABEL_9;
  }

  applicationState = [v4 applicationState];

  if (!applicationState)
  {
    goto LABEL_10;
  }

  applicationState2 = [v5 applicationState];
  if (![applicationState2 isInstalled])
  {
    goto LABEL_8;
  }

  applicationState3 = [v5 applicationState];
  if (([applicationState3 isValid] & 1) == 0)
  {

LABEL_8:
    goto LABEL_9;
  }

  applicationState4 = [v5 applicationState];
  isRestricted = [applicationState4 isRestricted];

  if ((isRestricted & 1) == 0)
  {
    applicationState = [v5 dataContainerURL];
    goto LABEL_10;
  }

LABEL_9:
  applicationState = 0;
LABEL_10:

  return applicationState;
}

+ (id)currentMapsGroupContainerURL
{
  v2 = objc_alloc(MEMORY[0x277CC1E70]);
  v3 = *MEMORY[0x277D0EA88];
  v13 = 0;
  v4 = [v2 initWithBundleIdentifier:v3 allowPlaceholder:0 error:&v13];
  v5 = v4;
  if (v13)
  {
    goto LABEL_2;
  }

  applicationState = [v4 applicationState];

  if (!applicationState)
  {
    goto LABEL_2;
  }

  applicationState2 = [v5 applicationState];
  if (![applicationState2 isInstalled])
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  applicationState3 = [v5 applicationState];
  if (([applicationState3 isValid] & 1) == 0)
  {

    goto LABEL_9;
  }

  applicationState4 = [v5 applicationState];
  isRestricted = [applicationState4 isRestricted];

  if (isRestricted)
  {
LABEL_2:
    v6 = 0;
    goto LABEL_11;
  }

  applicationState2 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [applicationState2 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.Maps"];
LABEL_10:

LABEL_11:

  return v6;
}

id __30__MSPMapsPaths_groupDirectory__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 16) URLByDeletingLastPathComponent];
  v2 = [v1 path];

  return v2;
}

- (NSString)homeDirectory
{
  uRLByDeletingLastPathComponent = [(NSURL *)self->_libraryURL URLByDeletingLastPathComponent];
  path = [uRLByDeletingLastPathComponent path];

  return path;
}

- (NSString)groupDirectory
{
  groupDirectory = self->_groupDirectory;
  if (!groupDirectory)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __30__MSPMapsPaths_groupDirectory__block_invoke;
    v7[3] = &unk_279866418;
    v7[4] = self;
    v4 = __30__MSPMapsPaths_groupDirectory__block_invoke(v7);
    v5 = self->_groupDirectory;
    self->_groupDirectory = v4;

    groupDirectory = self->_groupDirectory;
  }

  return groupDirectory;
}

+ (id)mapsApplicationContainerPathsWithInvalidationHandler:(id)handler
{
  handlerCopy = handler;
  currentMapsApplicationContainerURL = [self currentMapsApplicationContainerURL];
  currentMapsGroupContainerURL = [self currentMapsGroupContainerURL];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__MSPMapsPaths_mapsApplicationContainerPathsWithInvalidationHandler___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (mapsApplicationContainerPathsWithInvalidationHandler__onceToken == -1)
  {
    if (currentMapsApplicationContainerURL)
    {
LABEL_3:
      v7 = [currentMapsApplicationContainerURL URLByAppendingPathComponent:@"Library" isDirectory:1];
      v8 = [currentMapsGroupContainerURL URLByAppendingPathComponent:@"Library" isDirectory:1];
      v9 = [[MSPMapsPaths alloc] initWithLibraryDirectoryURL:v7 groupLibraryURL:v8 invalidationHandler:handlerCopy];

      goto LABEL_6;
    }
  }

  else
  {
    dispatch_once(&mapsApplicationContainerPathsWithInvalidationHandler__onceToken, block);
    if (currentMapsApplicationContainerURL)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:

  return v9;
}

void __69__MSPMapsPaths_mapsApplicationContainerPathsWithInvalidationHandler___block_invoke(uint64_t a1)
{
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterAddObserver(DistributedCenter, *(a1 + 32), MSPMapsPathsSourceApplicationsChangeCallback, @"com.apple.LaunchServices.applicationRegistered", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v3 = CFNotificationCenterGetDistributedCenter();
  v4 = *(a1 + 32);

  CFNotificationCenterAddObserver(v3, v4, MSPMapsPathsSourceApplicationsChangeCallback, @"com.apple.LaunchServices.applicationUnregistered", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

+ (id)pathsAtLocation:(int64_t)location
{
  if (location)
  {
    if (location == 2)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __32__MSPMapsPaths_pathsAtLocation___block_invoke_2;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = self;
      if (pathsAtLocation__onceToken_33 != -1)
      {
        dispatch_once(&pathsAtLocation__onceToken_33, block);
      }

      v3 = &pathsAtLocation__me_32;
    }

    else
    {
      if (location != 1)
      {
        goto LABEL_14;
      }

      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __32__MSPMapsPaths_pathsAtLocation___block_invoke;
      v7[3] = &__block_descriptor_40_e5_v8__0l;
      v7[4] = self;
      if (pathsAtLocation__onceToken != -1)
      {
        dispatch_once(&pathsAtLocation__onceToken, v7);
      }

      v3 = &pathsAtLocation__me;
    }
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __32__MSPMapsPaths_pathsAtLocation___block_invoke_3;
    v5[3] = &__block_descriptor_40_e5_v8__0l;
    v5[4] = self;
    if (pathsAtLocation__onceToken_35 != -1)
    {
      dispatch_once(&pathsAtLocation__onceToken_35, v5);
    }

    v3 = &pathsAtLocation__me_34;
  }

  a2 = *v3;
LABEL_14:

  return a2;
}

void __32__MSPMapsPaths_pathsAtLocation___block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/mobile/Library"];
  v2 = [objc_alloc(*(a1 + 32)) initWithLibraryDirectoryURL:v4 groupLibraryURL:0 invalidationHandler:0];
  v3 = pathsAtLocation__me;
  pathsAtLocation__me = v2;
}

void __32__MSPMapsPaths_pathsAtLocation___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() currentMapsApplicationContainerURL];
  v9 = [v3 URLByAppendingPathComponent:@"Library" isDirectory:1];

  v4 = *(a1 + 32);
  v5 = [objc_opt_class() currentMapsGroupContainerURL];
  v6 = [v5 URLByAppendingPathComponent:@"Library" isDirectory:1];

  v7 = [objc_alloc(*(a1 + 32)) initWithLibraryDirectoryURL:v9 groupLibraryURL:v6 invalidationHandler:0];
  v8 = pathsAtLocation__me_32;
  pathsAtLocation__me_32 = v7;
}

void __32__MSPMapsPaths_pathsAtLocation___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v2 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:0 error:0];

  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v3 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.Maps"];
  v5 = [v4 URLByAppendingPathComponent:@"Library"];

  v6 = [objc_alloc(*(a1 + 32)) initWithLibraryDirectoryURL:v8 groupLibraryURL:v5 invalidationHandler:0];
  v7 = pathsAtLocation__me_34;
  pathsAtLocation__me_34 = v6;
}

- (MSPMapsPaths)initWithLibraryDirectoryURL:(id)l groupLibraryURL:(id)rL invalidationHandler:(id)handler
{
  lCopy = l;
  rLCopy = rL;
  handlerCopy = handler;
  v20.receiver = self;
  v20.super_class = MSPMapsPaths;
  v11 = [(MSPMapsPaths *)&v20 init];
  if (v11)
  {
    v12 = [lCopy copy];
    libraryURL = v11->_libraryURL;
    v11->_libraryURL = v12;

    v14 = [rLCopy copy];
    groupLibraryURL = v11->_groupLibraryURL;
    v11->_groupLibraryURL = v14;

    v16 = [handlerCopy copy];
    invalidationHandler = v11->_invalidationHandler;
    v11->_invalidationHandler = v16;

    if (v11->_invalidationHandler)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v11 selector:sel__invalidate name:@"MSPMapsPathsAppContainerURLWasInvalidatedNotification" object:0];
    }
  }

  return v11;
}

- (void)_invalidate
{
  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2](invalidationHandler, a2);
    v4 = self->_invalidationHandler;
    self->_invalidationHandler = 0;
  }
}

+ (id)mapsDirectory
{
  v2 = [self pathsAtLocation:0];
  mapsDirectory = [v2 mapsDirectory];

  return mapsDirectory;
}

- (NSString)mapsDirectory
{
  mapsDirectory = self->_mapsDirectory;
  if (!mapsDirectory)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __29__MSPMapsPaths_mapsDirectory__block_invoke;
    v7[3] = &unk_279866418;
    v7[4] = self;
    v4 = __29__MSPMapsPaths_mapsDirectory__block_invoke(v7);
    v5 = self->_mapsDirectory;
    self->_mapsDirectory = v4;

    mapsDirectory = self->_mapsDirectory;
  }

  return mapsDirectory;
}

id __29__MSPMapsPaths_mapsDirectory__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 8) path];
  v2 = [v1 stringByAppendingPathComponent:@"Maps"];

  v3 = [MEMORY[0x277CCAA00] defaultManager];
  [v3 _web_createDirectoryAtPathWithIntermediateDirectories:v2 attributes:0];

  return v2;
}

+ (id)cacheDirectory
{
  v2 = [self pathsAtLocation:0];
  cacheDirectory = [v2 cacheDirectory];

  return cacheDirectory;
}

- (NSString)cacheDirectory
{
  cacheDirectory = self->_cacheDirectory;
  if (!cacheDirectory)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __30__MSPMapsPaths_cacheDirectory__block_invoke;
    v7[3] = &unk_279866418;
    v7[4] = self;
    v4 = __30__MSPMapsPaths_cacheDirectory__block_invoke(v7);
    v5 = self->_cacheDirectory;
    self->_cacheDirectory = v4;

    cacheDirectory = self->_cacheDirectory;
  }

  return cacheDirectory;
}

id __30__MSPMapsPaths_cacheDirectory__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 8) path];
  v2 = [v1 stringByAppendingPathComponent:@"Caches"];

  v3 = [MEMORY[0x277CCAA00] defaultManager];
  [v3 _web_createDirectoryAtPathWithIntermediateDirectories:v2 attributes:0];

  return v2;
}

+ (id)groupDirectory
{
  v2 = [self pathsAtLocation:0];
  groupDirectory = [v2 groupDirectory];

  return groupDirectory;
}

+ (id)nanoDirectory
{
  v2 = [self pathsAtLocation:0];
  nanoDirectory = [v2 nanoDirectory];

  return nanoDirectory;
}

- (NSString)nanoDirectory
{
  nanoDirectory = self->_nanoDirectory;
  if (!nanoDirectory)
  {
    v4 = __29__MSPMapsPaths_nanoDirectory__block_invoke();
    v5 = self->_nanoDirectory;
    self->_nanoDirectory = v4;

    nanoDirectory = self->_nanoDirectory;
  }

  return nanoDirectory;
}

id __29__MSPMapsPaths_nanoDirectory__block_invoke()
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v0 = getNRPairedDeviceRegistryClass_softClass;
  v10 = getNRPairedDeviceRegistryClass_softClass;
  if (!getNRPairedDeviceRegistryClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getNRPairedDeviceRegistryClass_block_invoke;
    v6[3] = &unk_279866440;
    v6[4] = &v7;
    __getNRPairedDeviceRegistryClass_block_invoke(v6);
    v0 = v8[3];
  }

  v1 = v0;
  _Block_object_dispose(&v7, 8);
  v2 = [v0 sharedInstance];
  v3 = [v2 pairingStorePath];

  v4 = [v3 stringByAppendingPathComponent:@"NanoMaps"];

  return v4;
}

+ (id)geoPinnedPlacesSettingsPath
{
  v2 = [self pathsAtLocation:0];
  geoPinnedPlacesSettingsPath = [v2 geoPinnedPlacesSettingsPath];

  return geoPinnedPlacesSettingsPath;
}

- (NSString)geoPinnedPlacesSettingsPath
{
  geoPinnedPlacesSettingsPath = self->_geoPinnedPlacesSettingsPath;
  if (!geoPinnedPlacesSettingsPath)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __43__MSPMapsPaths_geoPinnedPlacesSettingsPath__block_invoke;
    v7[3] = &unk_279866418;
    v7[4] = self;
    v4 = __43__MSPMapsPaths_geoPinnedPlacesSettingsPath__block_invoke(v7);
    v5 = self->_geoPinnedPlacesSettingsPath;
    self->_geoPinnedPlacesSettingsPath = v4;

    geoPinnedPlacesSettingsPath = self->_geoPinnedPlacesSettingsPath;
  }

  return geoPinnedPlacesSettingsPath;
}

id __43__MSPMapsPaths_geoPinnedPlacesSettingsPath__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mapsDirectory];
  v2 = [v1 stringByAppendingPathComponent:@"GeoPinnedPlaces.plist"];

  return v2;
}

+ (id)geoCollectionsSettingsPath
{
  v2 = [self pathsAtLocation:0];
  geoCollectionsSettingsPath = [v2 geoCollectionsSettingsPath];

  return geoCollectionsSettingsPath;
}

- (NSString)geoCollectionsSettingsPath
{
  geoCollectionsSettingsPath = self->_geoCollectionsSettingsPath;
  if (!geoCollectionsSettingsPath)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __42__MSPMapsPaths_geoCollectionsSettingsPath__block_invoke;
    v7[3] = &unk_279866418;
    v7[4] = self;
    v4 = __42__MSPMapsPaths_geoCollectionsSettingsPath__block_invoke(v7);
    v5 = self->_geoCollectionsSettingsPath;
    self->_geoCollectionsSettingsPath = v4;

    geoCollectionsSettingsPath = self->_geoCollectionsSettingsPath;
  }

  return geoCollectionsSettingsPath;
}

id __42__MSPMapsPaths_geoCollectionsSettingsPath__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mapsDirectory];
  v2 = [v1 stringByAppendingPathComponent:@"GeoCollections.plist"];

  return v2;
}

+ (id)bookmarksSettingsPath
{
  v2 = [self pathsAtLocation:0];
  bookmarksSettingsPath = [v2 bookmarksSettingsPath];

  return bookmarksSettingsPath;
}

- (NSString)bookmarksSettingsPath
{
  bookmarksSettingsPath = self->_bookmarksSettingsPath;
  if (!bookmarksSettingsPath)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37__MSPMapsPaths_bookmarksSettingsPath__block_invoke;
    v7[3] = &unk_279866418;
    v7[4] = self;
    v4 = __37__MSPMapsPaths_bookmarksSettingsPath__block_invoke(v7);
    v5 = self->_bookmarksSettingsPath;
    self->_bookmarksSettingsPath = v4;

    bookmarksSettingsPath = self->_bookmarksSettingsPath;
  }

  return bookmarksSettingsPath;
}

id __37__MSPMapsPaths_bookmarksSettingsPath__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mapsDirectory];
  v2 = [v1 stringByAppendingPathComponent:@"Bookmarks.plist"];

  return v2;
}

+ (id)geoBookmarksSettingsPath
{
  v2 = [self pathsAtLocation:0];
  geoBookmarksSettingsPath = [v2 geoBookmarksSettingsPath];

  return geoBookmarksSettingsPath;
}

- (NSString)geoBookmarksSettingsPath
{
  geoBookmarksSettingsPath = self->_geoBookmarksSettingsPath;
  if (!geoBookmarksSettingsPath)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__MSPMapsPaths_geoBookmarksSettingsPath__block_invoke;
    v7[3] = &unk_279866418;
    v7[4] = self;
    v4 = __40__MSPMapsPaths_geoBookmarksSettingsPath__block_invoke(v7);
    v5 = self->_geoBookmarksSettingsPath;
    self->_geoBookmarksSettingsPath = v4;

    geoBookmarksSettingsPath = self->_geoBookmarksSettingsPath;
  }

  return geoBookmarksSettingsPath;
}

id __40__MSPMapsPaths_geoBookmarksSettingsPath__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mapsDirectory];
  v2 = [v1 stringByAppendingPathComponent:@"GeoBookmarks.plist"];

  return v2;
}

+ (id)directionsSettingsPath
{
  v2 = [self pathsAtLocation:0];
  directionsSettingsPath = [v2 directionsSettingsPath];

  return directionsSettingsPath;
}

- (NSString)directionsSettingsPath
{
  directionsSettingsPath = self->_directionsSettingsPath;
  if (!directionsSettingsPath)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__MSPMapsPaths_directionsSettingsPath__block_invoke;
    v7[3] = &unk_279866418;
    v7[4] = self;
    v4 = __38__MSPMapsPaths_directionsSettingsPath__block_invoke(v7);
    v5 = self->_directionsSettingsPath;
    self->_directionsSettingsPath = v4;

    directionsSettingsPath = self->_directionsSettingsPath;
  }

  return directionsSettingsPath;
}

id __38__MSPMapsPaths_directionsSettingsPath__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mapsDirectory];
  v2 = [v1 stringByAppendingPathComponent:@"Directions.mapsdata"];

  return v2;
}

+ (id)historySettingsPath
{
  v2 = [self pathsAtLocation:0];
  historySettingsPath = [v2 historySettingsPath];

  return historySettingsPath;
}

- (NSString)historySettingsPath
{
  historySettingsPath = self->_historySettingsPath;
  if (!historySettingsPath)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __35__MSPMapsPaths_historySettingsPath__block_invoke;
    v7[3] = &unk_279866418;
    v7[4] = self;
    v4 = __35__MSPMapsPaths_historySettingsPath__block_invoke(v7);
    v5 = self->_historySettingsPath;
    self->_historySettingsPath = v4;

    historySettingsPath = self->_historySettingsPath;
  }

  return historySettingsPath;
}

id __35__MSPMapsPaths_historySettingsPath__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mapsDirectory];
  v2 = [v1 stringByAppendingPathComponent:@"History.mapsdata"];

  return v2;
}

+ (id)geoHistorySettingsPath
{
  v2 = [self pathsAtLocation:0];
  geoHistorySettingsPath = [v2 geoHistorySettingsPath];

  return geoHistorySettingsPath;
}

- (NSString)geoHistorySettingsPath
{
  geoHistorySettingsPath = self->_geoHistorySettingsPath;
  if (!geoHistorySettingsPath)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__MSPMapsPaths_geoHistorySettingsPath__block_invoke;
    v7[3] = &unk_279866418;
    v7[4] = self;
    v4 = __38__MSPMapsPaths_geoHistorySettingsPath__block_invoke(v7);
    v5 = self->_geoHistorySettingsPath;
    self->_geoHistorySettingsPath = v4;

    geoHistorySettingsPath = self->_geoHistorySettingsPath;
  }

  return geoHistorySettingsPath;
}

id __38__MSPMapsPaths_geoHistorySettingsPath__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mapsDirectory];
  v2 = [v1 stringByAppendingPathComponent:@"GeoHistory.mapsdata"];

  return v2;
}

+ (id)nanoHistorySettingsPath
{
  v2 = [self pathsAtLocation:0];
  nanoHistorySettingsPath = [v2 nanoHistorySettingsPath];

  return nanoHistorySettingsPath;
}

- (NSString)nanoHistorySettingsPath
{
  nanoHistorySettingsPath = self->_nanoHistorySettingsPath;
  if (!nanoHistorySettingsPath)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__MSPMapsPaths_nanoHistorySettingsPath__block_invoke;
    v7[3] = &unk_279866418;
    v7[4] = self;
    v4 = __39__MSPMapsPaths_nanoHistorySettingsPath__block_invoke(v7);
    v5 = self->_nanoHistorySettingsPath;
    self->_nanoHistorySettingsPath = v4;

    nanoHistorySettingsPath = self->_nanoHistorySettingsPath;
  }

  return nanoHistorySettingsPath;
}

id __39__MSPMapsPaths_nanoHistorySettingsPath__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) nanoDirectory];
  v2 = [v1 stringByAppendingPathComponent:@"GeoHistory.mapsdata"];

  return v2;
}

+ (id)failedSearchesSettingsPath
{
  v2 = [self pathsAtLocation:0];
  failedSearchesSettingsPath = [v2 failedSearchesSettingsPath];

  return failedSearchesSettingsPath;
}

- (NSString)failedSearchesSettingsPath
{
  failedSearchesSettingsPath = self->_failedSearchesSettingsPath;
  if (!failedSearchesSettingsPath)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __42__MSPMapsPaths_failedSearchesSettingsPath__block_invoke;
    v7[3] = &unk_279866418;
    v7[4] = self;
    v4 = __42__MSPMapsPaths_failedSearchesSettingsPath__block_invoke(v7);
    v5 = self->_failedSearchesSettingsPath;
    self->_failedSearchesSettingsPath = v4;

    failedSearchesSettingsPath = self->_failedSearchesSettingsPath;
  }

  return failedSearchesSettingsPath;
}

id __42__MSPMapsPaths_failedSearchesSettingsPath__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mapsDirectory];
  v2 = [v1 stringByAppendingPathComponent:@"FailedSearches.mapsdata"];

  return v2;
}

+ (id)failedGeoSearchesSettingsPath
{
  v2 = [self pathsAtLocation:0];
  failedGeoSearchesSettingsPath = [v2 failedGeoSearchesSettingsPath];

  return failedGeoSearchesSettingsPath;
}

- (NSString)failedGeoSearchesSettingsPath
{
  failedGeoSearchesSettingsPath = self->_failedGeoSearchesSettingsPath;
  if (!failedGeoSearchesSettingsPath)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__MSPMapsPaths_failedGeoSearchesSettingsPath__block_invoke;
    v7[3] = &unk_279866418;
    v7[4] = self;
    v4 = __45__MSPMapsPaths_failedGeoSearchesSettingsPath__block_invoke(v7);
    v5 = self->_failedGeoSearchesSettingsPath;
    self->_failedGeoSearchesSettingsPath = v4;

    failedGeoSearchesSettingsPath = self->_failedGeoSearchesSettingsPath;
  }

  return failedGeoSearchesSettingsPath;
}

id __45__MSPMapsPaths_failedGeoSearchesSettingsPath__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mapsDirectory];
  v2 = [v1 stringByAppendingPathComponent:@"MSPFailedSearches.mapsdata"];

  return v2;
}

+ (id)failedDirectionsSettingsPath
{
  v2 = [self pathsAtLocation:0];
  failedDirectionsSettingsPath = [v2 failedDirectionsSettingsPath];

  return failedDirectionsSettingsPath;
}

- (NSString)failedDirectionsSettingsPath
{
  failedDirectionsSettingsPath = self->_failedDirectionsSettingsPath;
  if (!failedDirectionsSettingsPath)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__MSPMapsPaths_failedDirectionsSettingsPath__block_invoke;
    v7[3] = &unk_279866418;
    v7[4] = self;
    v4 = __44__MSPMapsPaths_failedDirectionsSettingsPath__block_invoke(v7);
    v5 = self->_failedDirectionsSettingsPath;
    self->_failedDirectionsSettingsPath = v4;

    failedDirectionsSettingsPath = self->_failedDirectionsSettingsPath;
  }

  return failedDirectionsSettingsPath;
}

id __44__MSPMapsPaths_failedDirectionsSettingsPath__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mapsDirectory];
  v2 = [v1 stringByAppendingPathComponent:@"FailedDirections.mapsdata"];

  return v2;
}

+ (id)failedGeoDirectionsSettingsPath
{
  v2 = [self pathsAtLocation:0];
  failedGeoDirectionsSettingsPath = [v2 failedGeoDirectionsSettingsPath];

  return failedGeoDirectionsSettingsPath;
}

- (NSString)failedGeoDirectionsSettingsPath
{
  failedGeoDirectionsSettingsPath = self->_failedGeoDirectionsSettingsPath;
  if (!failedGeoDirectionsSettingsPath)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__MSPMapsPaths_failedGeoDirectionsSettingsPath__block_invoke;
    v7[3] = &unk_279866418;
    v7[4] = self;
    v4 = __47__MSPMapsPaths_failedGeoDirectionsSettingsPath__block_invoke(v7);
    v5 = self->_failedGeoDirectionsSettingsPath;
    self->_failedGeoDirectionsSettingsPath = v4;

    failedGeoDirectionsSettingsPath = self->_failedGeoDirectionsSettingsPath;
  }

  return failedGeoDirectionsSettingsPath;
}

id __47__MSPMapsPaths_failedGeoDirectionsSettingsPath__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mapsDirectory];
  v2 = [v1 stringByAppendingPathComponent:@"MSPFailedDirections.mapsdata"];

  return v2;
}

+ (id)routingAppLaunchRecordPath
{
  v2 = [self pathsAtLocation:0];
  routingAppLaunchRecordPath = [v2 routingAppLaunchRecordPath];

  return routingAppLaunchRecordPath;
}

- (NSString)routingAppLaunchRecordPath
{
  routingAppLaunchRecordPath = self->_routingAppLaunchRecordPath;
  if (!routingAppLaunchRecordPath)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __42__MSPMapsPaths_routingAppLaunchRecordPath__block_invoke;
    v7[3] = &unk_279866418;
    v7[4] = self;
    v4 = __42__MSPMapsPaths_routingAppLaunchRecordPath__block_invoke(v7);
    v5 = self->_routingAppLaunchRecordPath;
    self->_routingAppLaunchRecordPath = v4;

    routingAppLaunchRecordPath = self->_routingAppLaunchRecordPath;
  }

  return routingAppLaunchRecordPath;
}

id __42__MSPMapsPaths_routingAppLaunchRecordPath__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mapsDirectory];
  v2 = [v1 stringByAppendingPathComponent:@"RoutingAppLaunches.mapsdata"];

  return v2;
}

+ (id)directionsCachePath
{
  v2 = [self pathsAtLocation:0];
  directionsCachePath = [v2 directionsCachePath];

  return directionsCachePath;
}

- (NSString)directionsCachePath
{
  directionsCachePath = self->_directionsCachePath;
  if (!directionsCachePath)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __35__MSPMapsPaths_directionsCachePath__block_invoke;
    v7[3] = &unk_279866418;
    v7[4] = self;
    v4 = __35__MSPMapsPaths_directionsCachePath__block_invoke(v7);
    v5 = self->_directionsCachePath;
    self->_directionsCachePath = v4;

    directionsCachePath = self->_directionsCachePath;
  }

  return directionsCachePath;
}

id __35__MSPMapsPaths_directionsCachePath__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) cacheDirectory];
  v2 = [v1 stringByAppendingPathComponent:@"DirectionsCache.mapsdata"];

  return v2;
}

+ (id)pinsSettingsPath
{
  v2 = [self pathsAtLocation:0];
  pinsSettingsPath = [v2 pinsSettingsPath];

  return pinsSettingsPath;
}

- (NSString)pinsSettingsPath
{
  pinsSettingsPath = self->_pinsSettingsPath;
  if (!pinsSettingsPath)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __32__MSPMapsPaths_pinsSettingsPath__block_invoke;
    v7[3] = &unk_279866418;
    v7[4] = self;
    v4 = __32__MSPMapsPaths_pinsSettingsPath__block_invoke(v7);
    v5 = self->_pinsSettingsPath;
    self->_pinsSettingsPath = v4;

    pinsSettingsPath = self->_pinsSettingsPath;
  }

  return pinsSettingsPath;
}

id __32__MSPMapsPaths_pinsSettingsPath__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mapsDirectory];
  v2 = [v1 stringByAppendingPathComponent:@"Pins.mapsdata"];

  return v2;
}

+ (id)reportAProblemDirectionsRecordingsPath
{
  v2 = [self pathsAtLocation:0];
  reportAProblemDirectionsRecordingsPath = [v2 reportAProblemDirectionsRecordingsPath];

  return reportAProblemDirectionsRecordingsPath;
}

- (NSString)reportAProblemDirectionsRecordingsPath
{
  reportAProblemDirectionsRecordingsPath = self->_reportAProblemDirectionsRecordingsPath;
  if (!reportAProblemDirectionsRecordingsPath)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__MSPMapsPaths_reportAProblemDirectionsRecordingsPath__block_invoke;
    v7[3] = &unk_279866418;
    v7[4] = self;
    v4 = __54__MSPMapsPaths_reportAProblemDirectionsRecordingsPath__block_invoke(v7);
    v5 = self->_reportAProblemDirectionsRecordingsPath;
    self->_reportAProblemDirectionsRecordingsPath = v4;

    reportAProblemDirectionsRecordingsPath = self->_reportAProblemDirectionsRecordingsPath;
  }

  return reportAProblemDirectionsRecordingsPath;
}

id __54__MSPMapsPaths_reportAProblemDirectionsRecordingsPath__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mapsDirectory];
  v2 = [v1 stringByAppendingPathComponent:@"ReportAProblem"];
  v3 = [v2 stringByAppendingPathComponent:@"GraphDirections"];

  return v3;
}

+ (id)reportAProblemSearchRecordingsPath
{
  v2 = [self pathsAtLocation:0];
  reportAProblemSearchRecordingsPath = [v2 reportAProblemSearchRecordingsPath];

  return reportAProblemSearchRecordingsPath;
}

- (NSString)reportAProblemSearchRecordingsPath
{
  reportAProblemSearchRecordingsPath = self->_reportAProblemSearchRecordingsPath;
  if (!reportAProblemSearchRecordingsPath)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__MSPMapsPaths_reportAProblemSearchRecordingsPath__block_invoke;
    v7[3] = &unk_279866418;
    v7[4] = self;
    v4 = __50__MSPMapsPaths_reportAProblemSearchRecordingsPath__block_invoke(v7);
    v5 = self->_reportAProblemSearchRecordingsPath;
    self->_reportAProblemSearchRecordingsPath = v4;

    reportAProblemSearchRecordingsPath = self->_reportAProblemSearchRecordingsPath;
  }

  return reportAProblemSearchRecordingsPath;
}

id __50__MSPMapsPaths_reportAProblemSearchRecordingsPath__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mapsDirectory];
  v2 = [v1 stringByAppendingPathComponent:@"ReportAProblem"];
  v3 = [v2 stringByAppendingPathComponent:@"Search"];

  return v3;
}

+ (id)favoritesSyncedMarkerFile
{
  v2 = [self pathsAtLocation:0];
  favoritesSyncedMarkerFile = [v2 favoritesSyncedMarkerFile];

  return favoritesSyncedMarkerFile;
}

- (NSString)favoritesSyncedMarkerFile
{
  favoritesSyncedMarkerFile = self->_favoritesSyncedMarkerFile;
  if (!favoritesSyncedMarkerFile)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__MSPMapsPaths_favoritesSyncedMarkerFile__block_invoke;
    v7[3] = &unk_279866418;
    v7[4] = self;
    v4 = __41__MSPMapsPaths_favoritesSyncedMarkerFile__block_invoke(v7);
    v5 = self->_favoritesSyncedMarkerFile;
    self->_favoritesSyncedMarkerFile = v4;

    favoritesSyncedMarkerFile = self->_favoritesSyncedMarkerFile;
  }

  return favoritesSyncedMarkerFile;
}

id __41__MSPMapsPaths_favoritesSyncedMarkerFile__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mapsDirectory];
  v2 = [v1 stringByAppendingPathComponent:@"Bookmarks.synced"];

  return v2;
}

+ (id)historySyncedMarkerFile
{
  v2 = [self pathsAtLocation:0];
  historySyncedMarkerFile = [v2 historySyncedMarkerFile];

  return historySyncedMarkerFile;
}

- (NSString)historySyncedMarkerFile
{
  historySyncedMarkerFile = self->_historySyncedMarkerFile;
  if (!historySyncedMarkerFile)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__MSPMapsPaths_historySyncedMarkerFile__block_invoke;
    v7[3] = &unk_279866418;
    v7[4] = self;
    v4 = __39__MSPMapsPaths_historySyncedMarkerFile__block_invoke(v7);
    v5 = self->_historySyncedMarkerFile;
    self->_historySyncedMarkerFile = v4;

    historySyncedMarkerFile = self->_historySyncedMarkerFile;
  }

  return historySyncedMarkerFile;
}

id __39__MSPMapsPaths_historySyncedMarkerFile__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mapsDirectory];
  v2 = [v1 stringByAppendingPathComponent:@"History.synced"];

  return v2;
}

- (BOOL)_shouldSyncMergeAfterCheckingOrCreatingMarkerFileAtPath:(id)path
{
  pathCopy = path;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy];
  v6 = [v5 checkResourceIsReachableAndReturnError:0];
  if ((v6 & 1) == 0)
  {
    path = [v5 path];
    data = [MEMORY[0x277CBEA90] data];
    v9 = [defaultManager createFileAtPath:path contents:data attributes:0];

    path2 = [v5 path];
    v11 = MSPExcludePathFromBackup(path2);

    if (!v9 || (v11 & 1) == 0)
    {
      path3 = [v5 path];
      [defaultManager removeItemAtPath:path3 error:0];

      NSLog(&cfstr_CouldnTSetNoBa.isa, pathCopy);
    }
  }

  return v6 ^ 1;
}

- (BOOL)_deleteSyncedFileAtPath:(id)path
{
  v3 = MEMORY[0x277CCAA00];
  pathCopy = path;
  defaultManager = [v3 defaultManager];
  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy];

  if ([v6 checkResourceIsReachableAndReturnError:0])
  {
    v11 = 0;
    v7 = [defaultManager removeItemAtURL:v6 error:&v11];
    v8 = v11;
    v9 = v8;
    if (v8)
    {
      NSLog(&cfstr_ErrorRemovingS.isa, v8);
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)shouldSyncMergeFavoritesAfterCheckingOrCreatingMarkerFile
{
  selfCopy = self;
  favoritesSyncedMarkerFile = [(MSPMapsPaths *)self favoritesSyncedMarkerFile];
  LOBYTE(selfCopy) = [(MSPMapsPaths *)selfCopy _shouldSyncMergeAfterCheckingOrCreatingMarkerFileAtPath:favoritesSyncedMarkerFile];

  return selfCopy;
}

- (BOOL)deleteFavoritesSyncedMarkerFile
{
  selfCopy = self;
  favoritesSyncedMarkerFile = [(MSPMapsPaths *)self favoritesSyncedMarkerFile];
  LOBYTE(selfCopy) = [(MSPMapsPaths *)selfCopy _deleteSyncedFileAtPath:favoritesSyncedMarkerFile];

  return selfCopy;
}

- (BOOL)shouldSyncMergeHistoryAfterCheckingOrCreatingMarkerFile
{
  selfCopy = self;
  historySyncedMarkerFile = [(MSPMapsPaths *)self historySyncedMarkerFile];
  LOBYTE(selfCopy) = [(MSPMapsPaths *)selfCopy _shouldSyncMergeAfterCheckingOrCreatingMarkerFileAtPath:historySyncedMarkerFile];

  return selfCopy;
}

- (BOOL)deleteHistorySyncedMarkerFile
{
  selfCopy = self;
  historySyncedMarkerFile = [(MSPMapsPaths *)self historySyncedMarkerFile];
  LOBYTE(selfCopy) = [(MSPMapsPaths *)selfCopy _deleteSyncedFileAtPath:historySyncedMarkerFile];

  return selfCopy;
}

@end