@interface ML3MusicLibrary
+ (BOOL)deviceSupportsASTC;
+ (BOOL)dropIndexesUsingConnection:(id)connection tableNames:(const char *)names;
+ (BOOL)orderingLanguageMatchesSystemUsingConnection:(id)connection;
+ (BOOL)shouldOptimizeStorage;
+ (BOOL)userVersionMatchesSystemUsingConnection:(id)connection;
+ (ML3MusicLibrary)autoupdatingSharedLibrary;
+ (NSArray)allLibraries;
+ (NSArray)registeredLibraries;
+ (NSDictionary)distributedToLocalNotificationMapping;
+ (NSMutableDictionary)musicLibraryPerUserDSID;
+ (NSString)autoupdatingSharedLibraryPath;
+ (OS_dispatch_queue)globalSerialQueue;
+ (id)_onGlobalQueue_shareableMusicLibraryWithResourcesManager:(id)manager libraryFilePath:(id)path;
+ (id)allLibraryContainerPaths;
+ (id)allSchemaSQL;
+ (id)allTables;
+ (id)allTriggersSQL;
+ (id)artworkRelativePathFromToken:(id)token variantType:(int64_t)type;
+ (id)cloudAssetsSharedCacheFolderPath;
+ (id)databasePathForUnitTest:(id)test withBasePath:(id)path;
+ (id)indexSchemaSQL;
+ (id)itemIndexSchemaSQL;
+ (id)itemNewSchemaSQL;
+ (id)itemSchemaSQL;
+ (id)libraryContainerPath;
+ (id)libraryContainerPathByAppendingPathComponent:(id)component;
+ (id)libraryContainerRelativePath:(id)path;
+ (id)libraryPathForContainerPath:(id)path;
+ (id)localizedSectionHeaderForSectionHeader:(id)header;
+ (id)localizedSectionIndexTitleForSectionHeader:(id)header;
+ (id)mediaFolderPath;
+ (id)mediaFolderPathByAppendingPathComponent:(id)component;
+ (id)musicLibraryForUserAccount:(id)account;
+ (id)pathForBaseLocationPath:(int64_t)path;
+ (id)pathForResourceFileOrFolder:(int)folder;
+ (id)pathForResourceFileOrFolder:(int)folder basePath:(id)path relativeToBase:(BOOL)base createParentFolderIfNecessary:(BOOL)necessary;
+ (id)sectionIndexTitleForSectionHeader:(id)header;
+ (id)sectionIndexTitles;
+ (id)unitTestableLibraryForTest:(id)test basePath:(id)path setupSQLFilenames:(id)filenames;
+ (id)widthLimitedSetValuesQueue;
+ (int)userVersionUsingConnection:(id)connection;
+ (int64_t)artworkSourceTypeForTrackSource:(int)source;
+ (int64_t)devicePreferredImageFormat;
+ (int64_t)minimumPurgeableStorage;
+ (void)clearCloudAssetSharedCache;
+ (void)enumerateSortMapTablesUsingBlock:(id)block;
+ (void)removeOrphanedTracks;
+ (void)setAutoFilledTracksArePurgeable:(BOOL)purgeable;
+ (void)setAutoupdatingSharedLibraryPath:(id)path;
+ (void)setGlobalPrivacyContextWithAuditToken:(id *)token;
+ (void)setMinimumPurgeableStorage:(int64_t)storage;
+ (void)setShouldOptimizeStorage:(BOOL)storage;
- ($0AC6E346AE4835514AAA8AC86D8F4844)nameOrderForString:(id)string;
- (BOOL)_canConfigureMediaLibraryDatabaseConnection:(id)connection;
- (BOOL)_clearAllRowsFromTables:(id)tables;
- (BOOL)_coalesceMismatchedCollectionClass:(Class)class usingConnection:(id)connection;
- (BOOL)_determineAndUpdateBestArtworkTokensForEntityPersistentID:(int64_t)d entityType:(int64_t)type artworkType:(int64_t)artworkType retrievalTime:(double)time preserveExistingAvailableToken:(BOOL)token variantType:(int64_t)variantType usingConnection:(id)connection;
- (BOOL)_insertArtworkRowWithArtworkToken:(id)token artworkType:(int64_t)type sourceType:(int64_t)sourceType variantType:(int64_t)variantType relativePath:(id)path;
- (BOOL)_insertArtworkRowWithArtworkToken:(id)token artworkType:(int64_t)type sourceType:(int64_t)sourceType variantType:(int64_t)variantType relativePath:(id)path usingConnection:(id)connection;
- (BOOL)_prepareForAccountChange:(id *)change;
- (BOOL)_removeInvalidAvailableArtworkTokensUsingConnection:(id)connection;
- (BOOL)_removeOrphanedArtworkAssetsUsingConnection:(id)connection;
- (BOOL)_removeOrphanedArtworkMetadataUsingConnection:(id)connection;
- (BOOL)_removeOrphanedArtworkTokensUsingConnection:(id)connection;
- (BOOL)_removeSource:(int)source fromPersistentIDS:(id)s forImportOperation:(id)operation canonocalizeCollections:(BOOL)collections usingConnection:(id)connection postNotifications:(BOOL)notifications;
- (BOOL)_shouldProcessAccountChanges;
- (BOOL)_unmanagedPurgeShouldPurgeKeepLocalTracksForUrgency:(unint64_t)urgency;
- (BOOL)_updateBestArtworkTokensForArtworkToken:(id)token artworkType:(int64_t)type sourceType:(int64_t)sourceType variantType:(int64_t)variantType preserveExistingAvailableToken:(BOOL)availableToken usingConnection:(id)connection;
- (BOOL)_validateDatabaseUsingConnection:(id)connection error:(id *)error;
- (BOOL)cleanupArtworkWithOptions:(unint64_t)options;
- (BOOL)cleanupArtworkWithOptions:(unint64_t)options usingConnection:(id)connection;
- (BOOL)clearAllGeniusData;
- (BOOL)coalesceMismatchedCollectionsUsingConnection:(id)connection;
- (BOOL)coerceValidDatabaseWithError:(id *)error;
- (BOOL)createIndexes;
- (BOOL)deleteArtworkToken:(id)token;
- (BOOL)deleteDatabaseProperty:(id)property;
- (BOOL)downloadOnAddToLibrary;
- (BOOL)emptyAllTables;
- (BOOL)hasAddedToLibraryAppleMusicContent;
- (BOOL)hasOriginalArtworkForRelativePath:(id)path;
- (BOOL)hasPresignedValidity;
- (BOOL)hasUserPinnedLibraryEntity;
- (BOOL)hasUserPlaylists;
- (BOOL)hasUserPlaylistsContainingAppleMusicContent;
- (BOOL)importExistingOriginalArtworkWithArtworkToken:(id)token artworkType:(int64_t)type sourceType:(int64_t)sourceType mediaType:(unsigned int)mediaType variantType:(int64_t)variantType;
- (BOOL)importOriginalArtworkFromFileURL:(id)l withArtworkToken:(id)token artworkType:(int64_t)type sourceType:(int64_t)sourceType mediaType:(unsigned int)mediaType variantType:(int64_t)variantType shouldPerformColorAnalysis:(BOOL)analysis;
- (BOOL)importOriginalArtworkFromImageData:(id)data withArtworkToken:(id)token artworkType:(int64_t)type sourceType:(int64_t)sourceType mediaType:(unsigned int)mediaType variantType:(int64_t)variantType shouldPerformColorAnalysis:(BOOL)analysis;
- (BOOL)inTransactionUpdateSearchMapOnConnection:(id)connection;
- (BOOL)inTransactionUpdateSortMapOnConnection:(id)connection forceRebuild:(BOOL)rebuild forceUpdateOriginals:(BOOL)originals;
- (BOOL)isArtworkFetchableForPersistentID:(int64_t)d entityType:(int64_t)type artworkType:(int64_t)artworkType artworkSourceType:(int64_t)sourceType;
- (BOOL)isArtworkTokenAvailable:(id)available forVariantType:(int64_t)type;
- (BOOL)isCurrentThreadInTransaction;
- (BOOL)isHomeSharingLibrary;
- (BOOL)isLibraryEmpty;
- (BOOL)jaliscoHasCloudGeniusData;
- (BOOL)jaliscoIsMusicGeniusUserEnabled;
- (BOOL)jaliscoNeedsUpdateForTokens;
- (BOOL)markSystemPurgeableMusicPath:(id)path forUrgency:(unint64_t)urgency;
- (BOOL)mediaRestrictionEnabled;
- (BOOL)performMainentanceTasksUsingActivity:(id)activity;
- (BOOL)persistentID:(int64_t)d changedAfterRevision:(int64_t)revision revisionTrackingCode:(int64_t)code;
- (BOOL)prepareUnitTestDatabaseWithSQLFromContentsOfFile:(id)file error:(id *)error;
- (BOOL)removeArtworkAssetWithToken:(id)token;
- (BOOL)removeSource:(int)source forImportOperation:(id)operation usingConnection:(id)connection postNotifications:(BOOL)notifications;
- (BOOL)repairAlbumArtistRelationshipsWithConnection:(id)connection;
- (BOOL)requiresNonSchemaUpdatesOnConnection:(id)connection;
- (BOOL)requiresSchemaOnlyUpdatesOnConnection:(id)connection;
- (BOOL)sagaForcePerformDeltaSync;
- (BOOL)sagaInitiateClientResetSync;
- (BOOL)sagaNeedsFullUpdate;
- (BOOL)sagaPrefersToMergeWithCloudLibrary;
- (BOOL)sanitizeSortMapContentsUsingConnection:(id)connection didSortMapEntries:(BOOL *)entries;
- (BOOL)setValue:(id)value forDatabaseProperty:(id)property;
- (BOOL)supportsUbiquitousPlaybackPositions;
- (BOOL)updateSortMap;
- (BOOL)updateSortMapOnConnection:(id)connection forceUpdateOriginals:(BOOL)originals;
- (BOOL)updateSystemPlaylistNamesForCurrentLanguageUsingConnection:(id)connection;
- (BOOL)validateDatabase;
- (BOOL)validateItemTablesEntriesUsingConnection:(id)connection;
- (BOOL)validateSortMapUnicodeVersionOnConnection:(id)connection;
- (BOOL)verifyPresignedValidity;
- (CGSize)_sizeForColorAnalysisForMediaType:(unsigned int)type artworkType:(int64_t)artworkType;
- (ML3Container)currentDeviceFavoriteSongsPlaylist;
- (ML3Container)currentDevicePhotosMemoriesPlaylist;
- (ML3Container)currentDevicePlaybackHistoryPlaylist;
- (ML3Container)currentDevicePurchasesPlaylist;
- (ML3DatabaseConnectionPool)connectionPool;
- (ML3DatabasePrivacyContext)privacyContext;
- (ML3LibraryNotificationManager)notificationManager;
- (ML3MusicLibrary)initWithClientIdentity:(id)identity forUserAccount:(id)account;
- (ML3MusicLibrary)initWithClientIdentity:(id)identity path:(id)path readOnly:(BOOL)only populateUnitTestTablesBlock:(id)block;
- (ML3MusicLibrary)initWithCoder:(id)coder;
- (ML3MusicLibrary)initWithPath:(id)path readOnly:(BOOL)only populateUnitTestTablesBlock:(id)block;
- (ML3MusicLibrary)initWithResourcesManager:(id)manager;
- (ML3MusicLibraryDelegate)delegate;
- (ML3MusicLibraryResourcesManager)resourcesManager;
- (NSArray)jaliscoLastExcludedMediaKinds;
- (NSArray)localizedSectionIndexTitles;
- (NSArray)preferredAudioTracks;
- (NSArray)preferredSubtitleTracks;
- (NSDate)jaliscoLastGeniusUpdateDate;
- (NSDate)jaliscoLastLibraryUpdateTime;
- (NSDate)sagaLastGeniusUpdateDate;
- (NSDate)sagaLastItemPlayDataUploadDate;
- (NSDate)sagaLastLibraryUpdateTime;
- (NSDate)sagaLastPlaylistPlayDataUploadDate;
- (NSDate)sagaLastSubscribedContainersUpdateTime;
- (NSNumber)jaliscoAccountID;
- (NSNumber)sagaAccountID;
- (NSNumber)sagaLastKnownActiveLockerAccountDSID;
- (NSString)databasePath;
- (NSString)debugDescription;
- (NSString)libraryUID;
- (NSString)syncLibraryID;
- (iPhoneSortKeyBuilder)sortKeyBuilder;
- (id)_allArtworkVariantDirectories;
- (id)_allKeepLocalPlaylistTracks;
- (id)_getPlaylistContentTasteChangesSinceRevision:(int64_t)revision withGrappaID:(unsigned int)d;
- (id)_newGeniusDBConnectionAtPath:(id)path;
- (id)_nonPurgeableAlbumsQuerySQLWithUrgency:(unint64_t)urgency;
- (id)_notInKeepLocalCollectionPredicate;
- (id)_purgeableAlbumsQuerySQLWithUrgency:(unint64_t)urgency;
- (id)_purgeableTrackPredicateWithUrgency:(unint64_t)urgency includeAutoFilledTracks:(BOOL)tracks includeCloudAssets:(BOOL)assets;
- (id)_systemUnicodeVersionData;
- (id)accountCacheDatabase;
- (id)albumArtistForEffectiveAlbumArtistName:(id)name;
- (id)albumForAlbumArtistPersistentID:(int64_t)d albumName:(id)name feedURL:(id)l seasonNumber:(id)number compilation:(BOOL)compilation;
- (id)artistForArtistName:(id)name seriesName:(id)seriesName;
- (id)artistGroupingKeyForArtistName:(id)name seriesName:(id)seriesName;
- (id)artworkCacheDirectoryForEffect:(id)effect;
- (id)artworkCacheDirectoryForSize:(CGSize)size;
- (id)checkoutReaderConnection;
- (id)checkoutWriterConnection;
- (id)composerForComposerName:(id)name;
- (id)genreForGenre:(id)genre;
- (id)getAlbumArtistChangesSinceRevision:(int64_t)revision withGrappaID:(unsigned int)d;
- (id)getAlbumChangesSinceRevision:(int64_t)revision withGrappaID:(unsigned int)d;
- (id)groupingKeyForString:(id)string;
- (id)groupingKeysForStrings:(id)strings;
- (id)insertStringsIntoSortMap:(id)map didReSortMap:(BOOL *)sortMap;
- (id)libraryContainerPath;
- (id)libraryContainerPathByAppendingPathComponent:(id)component;
- (id)libraryContainerRelativePath:(id)path;
- (id)libraryEntityFilterPredicatesForContainerClass:(Class)class;
- (id)libraryEntityFilterPredicatesForEntityClass:(Class)class;
- (id)localizedSectionHeaderForSectionIndex:(unint64_t)index;
- (id)mediaFolderRelativePath:(id)path;
- (id)pathForBaseLocationPath:(int64_t)path;
- (id)pathForResourceFileOrFolder:(int)folder;
- (id)pathForResourceFileOrFolder:(int)folder basePath:(id)path relativeToBase:(BOOL)base createParentFolderIfNecessary:(BOOL)necessary;
- (id)securityScopedFileURLForItemPID:(unint64_t)d;
- (id)valueForDatabaseProperty:(id)property;
- (int)currentDatabaseVersion;
- (int64_t)_clearAllCloudAssets;
- (int64_t)_clearDatabaseFileFreeSpace;
- (int64_t)_clearOrphanedAssetsOfAmount:(int64_t)amount withUrgency:(unint64_t)urgency;
- (int64_t)_clearPurgeableTracksOfAmount:(int64_t)amount withUrgency:(unint64_t)urgency includeCloudAssets:(BOOL)assets includeAutoFilledTracks:(BOOL)tracks;
- (int64_t)_cloudAssetsTotalSize;
- (int64_t)_databaseFileFreeSpace;
- (int64_t)_purgeableTracksTotalSizeWithUrgency:(unint64_t)urgency includeAutoFilledTracks:(BOOL)tracks;
- (int64_t)clearAllRemovedTracks;
- (int64_t)clearPurgeableStorageAmount:(int64_t)amount withUrgency:(unint64_t)urgency;
- (int64_t)clearPurgeableStorageAmount:(int64_t)amount withUrgency:(unint64_t)urgency includeAutoFilledTracks:(BOOL)tracks;
- (int64_t)currentContentRevision;
- (int64_t)currentRevision;
- (int64_t)insertStringIntoSortMapNoTransaction:(id)transaction;
- (int64_t)jaliscoOnDiskDatabaseRevision;
- (int64_t)preferredVideoQuality;
- (int64_t)purgeableStorageSizeWithUrgency:(unint64_t)urgency;
- (int64_t)purgeableStorageSizeWithUrgency:(unint64_t)urgency includeAutoFilledTracks:(BOOL)tracks;
- (int64_t)sagaCloudAddToPlaylistBehavior;
- (int64_t)sagaCloudFavoriteSongAddToLibraryBehavior;
- (int64_t)sagaDatabaseUserVersion;
- (int64_t)sagaMaximumLibraryPinCount;
- (int64_t)sagaOnDiskDatabaseRevision;
- (int64_t)syncGenerationID;
- (int64_t)syncIdFromMultiverseId:(id)id;
- (unint64_t)_managedClearPurgeableTracksOfAmount:(unint64_t)amount urgency:(unint64_t)urgency;
- (unint64_t)_managedPurgeableTracksTotalSizeWithUrgency:(unint64_t)urgency;
- (unint64_t)_minimumPurgeableStorageForUrgency:(unint64_t)urgency;
- (unint64_t)_totalSizeForTracksPredicate:(id)predicate;
- (unint64_t)countOfChangedPersistentIdsAfterRevision:(int64_t)revision revisionTrackingCode:(unint64_t)code maximumRevisionType:(int)type;
- (unint64_t)sectionIndexTitleIndexForSectionIndex:(unint64_t)index;
- (unint64_t)totalSizeForAllNonCacheTracks;
- (unint64_t)totalSizeForAllNonRedownloadableTracks;
- (unint64_t)totalSizeForAllRedownloadableNonCacheTracks;
- (unint64_t)totalSizeForAllSyncedTracks;
- (unint64_t)totalSizeForArtwork;
- (unint64_t)unknownSectionIndex;
- (void)_autogenerateArtworkForRelativePath:(id)path artworkType:(int64_t)type mediaType:(unsigned int)mediaType variantType:(int64_t)variantType completionHandler:(id)handler;
- (void)_closeAndLockCurrentDatabaseConnections;
- (void)_completeAccountChangeWithPath:(id)path;
- (void)_configureMediaLibraryDatabaseConnection:(id)connection;
- (void)_convertOriginalArtworkToDevicePreferredFormatFromSourceURL:(id)l toDestinationURL:(id)rL completionHandler:(id)handler;
- (void)_createColorAnalysisForRelativePath:(id)path artworkType:(int64_t)type artworkToken:(id)token preferredImageSize:(CGSize)size completionHandler:(id)handler;
- (void)_deleteAllArtworkVariantsAtRelativePaths:(id)paths;
- (void)_effectiveSettingsDidChangeNotification:(id)notification;
- (void)_enumeratePurgeableAlbumTracksForUrgency:(unint64_t)urgency usingBlock:(id)block;
- (void)_enumeratePurgeableStreamedTracksForUrgency:(unint64_t)urgency usingBlock:(id)block;
- (void)_enumeratePurgeableTracksForUrgency:(unint64_t)urgency includeAutoFilledTracks:(BOOL)tracks includeCloudAssets:(BOOL)assets usingBlock:(id)block;
- (void)_libraryPathDidChangeNotification:(id)notification;
- (void)_logDatabaseAccess;
- (void)_postClientNotificationWithDistributedName:(id)name localName:(id)localName;
- (void)_removeLibraryPinsForDeletedTracksUsingConnection:(id)connection;
- (void)_setupNotificationManager;
- (void)_tearDownNotificationManager;
- (void)_teardownMediaLibraryDatabaseConnection:(id)connection;
- (void)_updateSystemPlaylist:(id)playlist withName:(id)name usingConnection:(id)connection;
- (void)accessSortKeyBuilder:(id)builder;
- (void)autogenerateSupportedSizesForAllOriginalArtworkWithConnection:(id)connection completionHandler:(id)handler;
- (void)checkInDatabaseConnection:(id)connection;
- (void)clearCachedCloudLibraryVersionsUsingConnection:(id)connection;
- (void)clearCachedPurchaseHistoryVersionsUsingConnection:(id)connection;
- (void)connection:(id)connection didEndDatabaseTransactionAndCommit:(BOOL)commit;
- (void)connectionDidAccessDatabase:(id)database;
- (void)connectionDidBeginDatabaseTransaction:(id)transaction;
- (void)connectionDidClose:(id)close;
- (void)connectionDidOpenDatabase:(id)database;
- (void)connectionWillCloseDatabase:(id)database;
- (void)connectionWillOpenDatabase:(id)database;
- (void)databaseConnectionAllowingWrites:(BOOL)writes withBlock:(id)block;
- (void)dealloc;
- (void)deletePresignedValidity;
- (void)emergencyDisconnectWithCompletion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateAlbumArtistPersistentIDsAfterRevision:(int64_t)revision revisionTrackingCode:(unint64_t)code usingBlock:(id)block;
- (void)enumerateAlbumPersistentIDsAfterRevision:(int64_t)revision revisionTrackingCode:(unint64_t)code usingBlock:(id)block;
- (void)enumerateArtworkRelativePathsWithConnection:(id)connection matchingRelativePathContainer:(id)container block:(id)block;
- (void)enumerateArtworkTokensForEntityPersistentID:(int64_t)d entityType:(int64_t)type artworkType:(int64_t)artworkType variantType:(int64_t)variantType usingBlock:(id)block;
- (void)enumerateLibraryPinsPersistentIDsAfterRevision:(int64_t)revision revisionTrackingCode:(unint64_t)code usingBlock:(id)block;
- (void)enumeratePersistentIDsAfterRevision:(int64_t)revision revisionTrackingCode:(unint64_t)code maximumRevisionType:(int)type forMediaTypes:(id)types inUsersLibrary:(BOOL)library usingBlock:(id)block;
- (void)enumeratePersistentIDsAfterRevision:(int64_t)revision revisionTrackingCode:(unint64_t)code maximumRevisionType:(int)type usingBlock:(id)block;
- (void)enumeratePurgeableAlbumTracksForUrgency:(unint64_t)urgency usingBlock:(id)block;
- (void)generateArtworkForRelativePath:(id)path sizes:(id)sizes completionHandler:(id)handler;
- (void)getChangedPersistentIDsAfterRevision:(int64_t)revision revisionTrackingCode:(int64_t)code maximumRevisionType:(int)type usingBlock:(id)block;
- (void)importArtworkTokenForEntityPersistentID:(int64_t)d entityType:(int64_t)type artworkToken:(id)token artworkType:(int64_t)artworkType sourceType:(int64_t)sourceType;
- (void)importArtworkTokenForEntityPersistentID:(int64_t)d entityType:(int64_t)type artworkToken:(id)token artworkType:(int64_t)artworkType sourceType:(int64_t)sourceType variantType:(int64_t)variantType;
- (void)importOriginalArtworkFromFileURL:(id)l withArtworkToken:(id)token artworkType:(int64_t)type sourceType:(int64_t)sourceType mediaType:(unsigned int)mediaType variantType:(int64_t)variantType shouldPerformColorAnalysis:(BOOL)analysis completion:(id)self0;
- (void)importOriginalArtworkFromImageData:(id)data withArtworkToken:(id)token artworkType:(int64_t)type sourceType:(int64_t)sourceType mediaType:(unsigned int)mediaType variantType:(int64_t)variantType shouldPerformColorAnalysis:(BOOL)analysis completion:(id)self0;
- (void)migrateExistingArtworkToken:(id)token newArtworkToken:(id)artworkToken newSourceType:(int64_t)type;
- (void)migratePresignedValidity;
- (void)notifyAssistantContentsDidChange;
- (void)performAsyncDatabaseWriteTransactionWithBlock:(id)block completionBlock:(id)completionBlock;
- (void)performColorAnalysisForArtworkWithConnection:(id)connection shouldRegenerateColorAnalysis:(BOOL)analysis;
- (void)performDatabasePathChange:(id)change completion:(id)completion;
- (void)performDatabaseTransactionWithBlock:(id)block;
- (void)performReadOnlyDatabaseTransactionWithBlock:(id)block;
- (void)reconnectToDatabase;
- (void)removeArtworkTokenForEntityPersistentID:(int64_t)d entityType:(int64_t)type artworkType:(int64_t)artworkType sourceType:(int64_t)sourceType;
- (void)removeCloudSourcesWithAttributes:(id)attributes completionHandler:(id)handler;
- (void)removeItemsWithFamilyAccountID:(unint64_t)d purchaserAccountID:(unint64_t)iD downloaderAccountID:(unint64_t)accountID;
- (void)removeOrphanedTracksOnlyInCaches:(BOOL)caches;
- (void)removePlaylistsWithPersistentIDs:(id)ds fromSource:(int)source usingConnection:(id)connection withCompletionHandler:(id)handler;
- (void)removeTracksWithPersistentIDs:(id)ds fromSource:(int)source usingConnection:(id)connection withCompletionHandler:(id)handler;
- (void)retrieveBestArtworkTokensForEntityPersistentID:(int64_t)d entityType:(int64_t)type artworkType:(int64_t)artworkType variantType:(int64_t)variantType retrievalTime:(double)time completionHandler:(id)handler;
- (void)sanitizeDatabaseContentsUsingConnection:(id)connection removeOrphanedAssets:(BOOL *)assets;
- (void)savePlaylistsSinceRevision:(int64_t)revision withGrappaID:(unsigned int)d;
- (void)saveTrackMetadataSinceRevision:(int64_t)revision withGrappaID:(unsigned int)d;
- (void)setClientIdentity:(id)identity;
- (void)setIsHomeSharingLibrary:(BOOL)library;
- (void)setJaliscoHasCloudGeniusData:(BOOL)data;
- (void)setJaliscoIsMusicGeniusUserEnabled:(BOOL)enabled;
- (void)setJaliscoLastGeniusUpdateDate:(id)date;
- (void)setJaliscoLastLibraryUpdateTime:(id)time;
- (void)setJaliscoNeedsUpdateForTokens:(BOOL)tokens;
- (void)setJaliscoOnDiskDatabaseRevision:(int64_t)revision;
- (void)setLibraryContainerFilterPredicates:(id)predicates;
- (void)setLibraryEntityFilterPredicates:(id)predicates;
- (void)setLibraryPublicContainerFilterPredicates:(id)predicates;
- (void)setLibraryPublicEntityFilterPredicates:(id)predicates;
- (void)setLibraryUID:(id)d;
- (void)setPreferredVideoQuality:(int64_t)quality;
- (void)setSagaCloudAddToPlaylistBehavior:(int64_t)behavior;
- (void)setSagaCloudFavoriteSongAddToLibraryBehavior:(int64_t)behavior;
- (void)setSagaDatabaseUserVersion:(int64_t)version;
- (void)setSagaForcePerformDeltaSync:(BOOL)sync;
- (void)setSagaInitiateClientResetSync:(BOOL)sync;
- (void)setSagaLastGeniusUpdateDate:(id)date;
- (void)setSagaLastItemPlayDataUploadDate:(id)date;
- (void)setSagaLastKnownActiveLockerAccountDSID:(id)d;
- (void)setSagaLastLibraryUpdateTime:(id)time;
- (void)setSagaLastPlaylistPlayDataUploadDate:(id)date;
- (void)setSagaLastSubscribedContainersUpdateTime:(id)time;
- (void)setSagaMaximumLibraryPinCount:(int64_t)count;
- (void)setSagaNeedsFullUpdate:(BOOL)update;
- (void)setSagaOnDiskDatabaseRevision:(int64_t)revision;
- (void)setSagaPrefersToMergeWithCloudLibrary:(BOOL)library;
- (void)setStorefrontIdentifier:(id)identifier;
- (void)setSyncGenerationID:(int64_t)d;
- (void)setSyncLibraryID:(id)d;
- (void)sortJaliscoLastSupportedMediaKinds;
- (void)terminateForFailureToPerformDatabasePathChange;
- (void)updateJaliscoExcludedMediaKindsWith:(id)with excludingMediaKindsInSet:(BOOL)set;
- (void)updateOrderingLanguagesForCurrentLanguage;
- (void)updatePurgeabilityForCachedArtworkWithAbsolutePath:(id)path;
- (void)updatePurgeabilityForOriginalArtworkWithRelativePath:(id)path;
- (void)updateRootArtworkPurgeability;
- (void)updateUbiquitousDatabaseByRemovingUbiquitousMetadataFromTrackWithPersistentID:(int64_t)d;
@end

@implementation ML3MusicLibrary

+ (ML3MusicLibrary)autoupdatingSharedLibrary
{
  if (__disableSharedLibrary == 1)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3MusicLibrary.m" lineNumber:338 description:@"sharedLibrary use is disabled. use initWithPath: in this process"];
  }

  v3 = +[ML3MusicLibrary autoupdatingSharedLibraryPath];
  v4 = [v3 copy];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__ML3MusicLibrary_autoupdatingSharedLibrary__block_invoke;
  v12[3] = &unk_278760290;
  v13 = v4;
  selfCopy = self;
  v5 = autoupdatingSharedLibrary_onceToken;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&autoupdatingSharedLibrary_onceToken, v12);
  }

  v7 = autoupdatingSharedLibrary___sharedLibrary;
  v8 = autoupdatingSharedLibrary___sharedLibrary;

  return v7;
}

+ (NSString)autoupdatingSharedLibraryPath
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2504;
  v11 = __Block_byref_object_dispose__2505;
  v12 = 0;
  globalSerialQueue = [self globalSerialQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__ML3MusicLibrary_autoupdatingSharedLibraryPath__block_invoke;
  v6[3] = &unk_27875D418;
  v6[4] = &v7;
  v6[5] = self;
  dispatch_sync(globalSerialQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

+ (OS_dispatch_queue)globalSerialQueue
{
  if (globalSerialQueue_onceToken != -1)
  {
    dispatch_once(&globalSerialQueue_onceToken, &__block_literal_global_3155);
  }

  v3 = globalSerialQueue___globalSerialQueue;

  return v3;
}

void __36__ML3MusicLibrary_globalSerialQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.MusicLibrary.global.serial.queue", v2);
  v1 = globalSerialQueue___globalSerialQueue;
  globalSerialQueue___globalSerialQueue = v0;
}

uint64_t __48__ML3MusicLibrary_autoupdatingSharedLibraryPath__block_invoke(uint64_t a1)
{
  v2 = __sharedLibraryDatabasePath;
  if (!__sharedLibraryDatabasePath)
  {
    v3 = [*(a1 + 40) pathForResourceFileOrFolder:15];
    v4 = __sharedLibraryDatabasePath;
    __sharedLibraryDatabasePath = v3;

    v2 = __sharedLibraryDatabasePath;
  }

  *(*(*(a1 + 32) + 8) + 40) = [v2 copy];

  return MEMORY[0x2821F96F8]();
}

void __44__ML3MusicLibrary_autoupdatingSharedLibrary__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) globalSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__ML3MusicLibrary_autoupdatingSharedLibrary__block_invoke_2;
  block[3] = &unk_278765FB8;
  v4 = *(a1 + 32);
  dispatch_sync(v2, block);
}

void __44__ML3MusicLibrary_autoupdatingSharedLibrary__block_invoke_2(uint64_t a1)
{
  v1 = [[ML3MusicLibrary alloc] initWithPath:*(a1 + 32)];
  v2 = autoupdatingSharedLibrary___sharedLibrary;
  autoupdatingSharedLibrary___sharedLibrary = v1;

  [autoupdatingSharedLibrary___sharedLibrary setAutoUpdatingSharedLibrary:1];
  v3 = +[ML3MusicLibraryAccountChangeObserverProxy sharedProxy];
  [v3 addAccountChangeObserver:autoupdatingSharedLibrary___sharedLibrary];
}

- (void)_setupNotificationManager
{
  v7 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_not_V2(self->_serialQueue);
  v3 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ - _setupNotificationManager", &v5, 0xCu);
  }

  notificationManager = [(ML3MusicLibrary *)self notificationManager];
}

- (ML3LibraryNotificationManager)notificationManager
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2504;
  v10 = __Block_byref_object_dispose__2505;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__ML3MusicLibrary_notificationManager__block_invoke;
  v5[3] = &unk_278766080;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __38__ML3MusicLibrary_notificationManager__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 136);
  if (!v2)
  {
    v3 = [ML3LibraryNotificationManager alloc];
    v4 = *(a1 + 32);
    v5 = [objc_opt_class() distributedToLocalNotificationMapping];
    v6 = [(ML3LibraryNotificationManager *)v3 initWithLibrary:v4 distributedAndLocalNames:v5];
    v7 = *(a1 + 32);
    v8 = *(v7 + 136);
    *(v7 + 136) = v6;

    v2 = *(*(a1 + 32) + 136);
  }

  v9 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v9, v2);
}

+ (NSDictionary)distributedToLocalNotificationMapping
{
  if (distributedToLocalNotificationMapping_onceToken != -1)
  {
    dispatch_once(&distributedToLocalNotificationMapping_onceToken, &__block_literal_global_997);
  }

  v3 = distributedToLocalNotificationMapping__mapping;

  return v3;
}

void __56__ML3MusicLibrary_distributedToLocalNotificationMapping__block_invoke()
{
  v3[10] = *MEMORY[0x277D85DE8];
  v2[0] = @"com.apple.mobileipod.librarychanged";
  v2[1] = @"com.apple.mobileipod.entitiesaddedorremoved";
  v3[0] = @"ML3MusicLibraryContentsDidChangeNotification";
  v3[1] = @"ML3MusicLibraryEntitiesAddedOrRemovedNotification";
  v2[2] = @"com.apple.mobileipod.noncontentspropertieschanged";
  v2[3] = @"com.apple.mobileipod.invisiblepropertieschanged";
  v3[2] = @"ML3MusicLibraryNonContentsPropertiesDidChangeNotification";
  v3[3] = @"ML3MusicLibraryInvisiblePropertiesDidChangeNotification";
  v2[4] = @"com.apple.mobileipod.displayvalueschanged";
  v2[5] = @"com.apple.mobileipod.syncgenerationchanged";
  v3[4] = @"ML3MusicLibraryDisplayValuesDidChangeNotification";
  v3[5] = @"ML3MusicLibrarySyncGenerationDidChangeNotification";
  v2[6] = @"com.apple.mobileipod.libraryUIDchanged";
  v2[7] = @"com.apple.mobileipod.cloudlibraryavailabilitychanged";
  v3[6] = @"ML3MusicLibraryUIDDidChangeNotification";
  v3[7] = @"ML3MusicLibraryCloudLibraryAvailablityDidChangeNotification";
  v2[8] = @"com.apple.mobileipod.sectionschanged";
  v2[9] = @"com.apple.mobileipod.libraryimportdidfinish";
  v3[8] = @"ML3MusicLibrarySectionsDidChangeNotification";
  v3[9] = @"ML3MusicLibraryImportDidFinishNotification";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:10];
  v1 = distributedToLocalNotificationMapping__mapping;
  distributedToLocalNotificationMapping__mapping = v0;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  databasePath = self->_databasePath;
  v5 = __sharedLibraryDatabasePath;
  v6 = [(ML3MusicLibrary *)self pathForResourceFileOrFolder:15];
  v7 = [v3 stringWithFormat:@"<MusicLibrary: %p> path=%@ _sharedLibraryDatabasePath=%@ computedSharedLibraryDatabasePath=%@ _connectionPool=%p _autoUpdatingSharedLibrary=%d, _isHomeSharingLibrary=%d", self, databasePath, v5, v6, self->_connectionPool, self->_autoUpdatingSharedLibrary, self->_isHomeSharingLibrary];

  return v7;
}

- (ML3MusicLibraryResourcesManager)resourcesManager
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2504;
  v10 = __Block_byref_object_dispose__2505;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__ML3MusicLibrary_resourcesManager__block_invoke;
  v5[3] = &unk_278766080;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __35__ML3MusicLibrary_resourcesManager__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 128);
  if (!v2)
  {
    v3 = +[ML3MusicLibraryResourcesManager sharedManager];
    v4 = *(a1 + 32);
    v5 = *(v4 + 128);
    *(v4 + 128) = v3;

    v2 = *(*(a1 + 32) + 128);
  }

  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v2);
}

- (NSString)libraryUID
{
  [(NSLock *)self->_libraryUIDLock lock];
  if (!self->_libraryUID)
  {
    v3 = [(ML3MusicLibrary *)self valueForDatabaseProperty:@"_UUID"];
    libraryUID = self->_libraryUID;
    self->_libraryUID = v3;

    if (!self->_libraryUID)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];

      if ([(ML3MusicLibrary *)self setValue:uUIDString forDatabaseProperty:@"_UUID"])
      {
        objc_storeStrong(&self->_libraryUID, uUIDString);
      }
    }
  }

  [(NSLock *)self->_libraryUIDLock unlock];
  v7 = self->_libraryUID;

  return v7;
}

- (NSString)databasePath
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2504;
  v10 = __Block_byref_object_dispose__2505;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__ML3MusicLibrary_databasePath__block_invoke;
  v5[3] = &unk_278766080;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __33__ML3MusicLibrary_connectionPool__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!*(*(a1 + 32) + 104))
  {
    v2 = -[ML3DatabaseConnectionPool initWithDatabasePath:maxReaders:maxWriters:]([ML3DatabaseConnectionPool alloc], "initWithDatabasePath:maxReaders:maxWriters:", *(a1 + 40), 10, [*(a1 + 32) isReadOnly] ^ 1);
    v3 = *(a1 + 32);
    v4 = *(v3 + 104);
    *(v3 + 104) = v2;

    v5 = os_log_create("com.apple.amp.medialibrary", "MultiUser_Oversize");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = [*(v6 + 104) description];
      v8 = *(a1 + 40);
      v11 = 138543874;
      v12 = v6;
      v13 = 2114;
      v14 = v7;
      v15 = 2114;
      v16 = v8;
      _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - Creating new connection pool=%{public}@ with path: %{public}@", &v11, 0x20u);
    }

    [*(*(a1 + 32) + 104) setDelegate:?];
    v9 = [*(a1 + 40) lastPathComponent];
    v10 = [v9 isEqualToString:@"Library.itdb"];

    if ((v10 & 1) != 0 || [*(a1 + 32) isUnitTesting])
    {
      [*(*(a1 + 32) + 104) setUseDistantWriterConnections:0];
    }
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(*(a1 + 32) + 104));
}

- (ML3DatabaseConnectionPool)connectionPool
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2504;
  v15 = __Block_byref_object_dispose__2505;
  v16 = 0;
  databasePath = [(ML3MusicLibrary *)self databasePath];
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__ML3MusicLibrary_connectionPool__block_invoke;
  block[3] = &unk_278765F28;
  block[4] = self;
  v9 = databasePath;
  v10 = &v11;
  v5 = databasePath;
  dispatch_sync(serialQueue, block);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

+ (id)mediaFolderPath
{
  v2 = MLMobileUserHomeDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"Media"];

  return v3;
}

- (id)checkoutReaderConnection
{
  dispatch_assert_queue_not_V2(self->_serialQueue);
  connectionPool = [(ML3MusicLibrary *)self connectionPool];
  readerConnection = [connectionPool readerConnection];

  return readerConnection;
}

- (BOOL)isHomeSharingLibrary
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  databasePath = [(ML3MusicLibrary *)self databasePath];
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ML3MusicLibrary_isHomeSharingLibrary__block_invoke;
  block[3] = &unk_278765F28;
  block[4] = self;
  v8 = databasePath;
  v9 = &v10;
  v5 = databasePath;
  dispatch_sync(serialQueue, block);
  LOBYTE(serialQueue) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return serialQueue;
}

void __39__ML3MusicLibrary_isHomeSharingLibrary__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 80) & 1) == 0)
  {
    v3 = [*(a1 + 40) lastPathComponent];
    v4 = [v3 isEqualToString:@"Library.itdb"];

    *(*(a1 + 32) + 81) = v4;
    *(*(a1 + 32) + 80) = 1;
    v2 = *(a1 + 32);
  }

  *(*(*(a1 + 48) + 8) + 24) = *(v2 + 81);
}

- (BOOL)validateDatabase
{
  v3 = +[ML3DatabaseValidationClient sharedClient];
  LOBYTE(self) = [v3 validateDatabaseForLibrary:self];

  return self;
}

void __31__ML3MusicLibrary_databasePath__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 112);
  if (!v2)
  {
    v3 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = +[ML3MusicLibrary autoupdatingSharedLibraryPath];
      v14 = 138543618;
      v15 = v4;
      v16 = 2114;
      v17 = v5;
      _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ - Creating database path : %{public}@", &v14, 0x16u);
    }

    v6 = +[ML3MusicLibrary autoupdatingSharedLibraryPath];
    v7 = [v6 copy];
    v8 = *(a1 + 32);
    v9 = *(v8 + 112);
    *(v8 + 112) = v7;

    *(*(a1 + 32) + 97) = 1;
    v10 = +[ML3MusicLibraryAccountChangeObserverProxy sharedProxy];
    [v10 addAccountChangeObserver:*(a1 + 32)];

    v2 = *(*(a1 + 32) + 112);
  }

  v11 = [v2 copy];
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

- (ML3DatabasePrivacyContext)privacyContext
{
  os_unfair_lock_lock(&__privacyContextLock);
  privacyContext = __privacyContextOverride;
  if (!__privacyContextOverride)
  {
    privacyContext = self->_privacyContext;
  }

  v4 = privacyContext;
  os_unfair_lock_unlock(&__privacyContextLock);

  return v4;
}

- (int64_t)currentContentRevision
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__ML3MusicLibrary_currentContentRevision__block_invoke;
  v4[3] = &unk_27875D488;
  v4[4] = &v5;
  [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:0 withBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (iPhoneSortKeyBuilder)sortKeyBuilder
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__ML3MusicLibrary_sortKeyBuilder__block_invoke;
  v5[3] = &unk_278766080;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__33__ML3MusicLibrary_sortKeyBuilder__block_invoke(void *result)
{
  v1 = result;
  v2 = *(result[4] + 120);
  if (!v2)
  {
    result = iPhoneSortKeyBuilderCreateForCurrentDevice();
    *(v1[4] + 120) = result;
    v2 = *(v1[4] + 120);
  }

  *(*(v1[5] + 8) + 24) = v2;
  return result;
}

- (int64_t)sagaOnDiskDatabaseRevision
{
  v2 = [(ML3MusicLibrary *)self valueForDatabaseProperty:@"MLCloudDatabaseRevision"];
  integerValue = [v2 integerValue];

  return integerValue;
}

void __41__ML3MusicLibrary_currentContentRevision__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 executeQuery:@"SELECT MAX(revision) FROM entity_revision WHERE revision_type=0"];;
  *(*(*(a1 + 32) + 8) + 24) = [v3 int64ValueForFirstRowAndColumn];
}

- (int64_t)currentRevision
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__ML3MusicLibrary_currentRevision__block_invoke;
  v4[3] = &unk_27875D488;
  v4[4] = &v5;
  [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:0 withBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)mediaRestrictionEnabled
{
  ML3RestrictionInfoInitializeIfNecessary();
  v3 = (byte_280B5EE6B & 1) != 0 || (byte_280B5EE6C & 1) != 0 || qword_280B5EE78 < qword_280B5EE80 || qword_280B5EE90 < qword_280B5EE98;
  v4 = [(ML3MusicLibrary *)self valueForDatabaseProperty:@"MPExplicitContentAllowedBoolean"];
  v5 = v4;
  if (v4)
  {
    if (v3)
    {
      v6 = 1;
    }

    else
    {
      v6 = [v4 BOOLValue] ^ 1;
    }
  }

  else
  {
    v6 = v3 | byte_280B5EE6A;
  }

  return v6 & 1;
}

- (id)checkoutWriterConnection
{
  dispatch_assert_queue_not_V2(self->_serialQueue);
  connectionPool = [(ML3MusicLibrary *)self connectionPool];
  writerConnection = [connectionPool writerConnection];

  return writerConnection;
}

void __34__ML3MusicLibrary_currentRevision__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 executeQuery:@"SELECT MAX(revision) FROM entity_revision"];;
  *(*(*(a1 + 32) + 8) + 24) = [v3 int64ValueForFirstRowAndColumn];
}

- (BOOL)jaliscoNeedsUpdateForTokens
{
  v2 = [(ML3MusicLibrary *)self valueForDatabaseProperty:@"MLJaliscoNeedsUpdateForTokens"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSArray)localizedSectionIndexTitles
{
  if (localizedSectionIndexTitles_once != -1)
  {
    dispatch_once(&localizedSectionIndexTitles_once, &__block_literal_global_192);
  }

  v3 = localizedSectionIndexTitles_localizedSectionIndexTitles;

  return v3;
}

void __46__ML3MusicLibrary_localizedSectionIndexTitles__block_invoke()
{
  v24 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v1 = ML3LocalizedSectionDictionary();
  v2 = [v1 objectForKey:@"LocalizedSectionIndices"];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [v1 objectForKey:{@"SectionIndices", 0}];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [v2 objectForKey:v8];
        v10 = v9;
        if (v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = v8;
        }

        v12 = v11;

        [v0 addObject:v12];
      }

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"NUMERIC_SECTION_HEADER" value:&stru_28408B690 table:@"MLLocalizable"];
  [v0 addObject:v14];

  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"UNKNOWN_SECTION_HEADER" value:&stru_28408B690 table:@"MLLocalizable"];
  [v0 addObject:v16];

  v17 = [v0 copy];
  v18 = localizedSectionIndexTitles_localizedSectionIndexTitles;
  localizedSectionIndexTitles_localizedSectionIndexTitles = v17;
}

- (NSArray)jaliscoLastExcludedMediaKinds
{
  v2 = [(ML3MusicLibrary *)self valueForDatabaseProperty:@"MLJaliscoLastExcludedMediaKinds"];
  v3 = [v2 componentsSeparatedByString:{@", "}];
  v4 = NSStringFromSelector(sel_longLongValue);
  v5 = [v3 valueForKey:v4];

  v6 = [ML3MusicLibrary jaliscoGetSortedMediaKinds:v5];

  return v6;
}

- (int64_t)jaliscoOnDiskDatabaseRevision
{
  v2 = [(ML3MusicLibrary *)self valueForDatabaseProperty:@"MLJaliscoDatabaseRevision"];
  integerValue = [v2 integerValue];

  return integerValue;
}

+ (NSArray)allLibraries
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = +[ML3MusicLibrary autoupdatingSharedLibraryPath];
  globalSerialQueue = [self globalSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__ML3MusicLibrary_allLibraries__block_invoke;
  block[3] = &unk_278765770;
  v12 = v4;
  selfCopy = self;
  v11 = array;
  v6 = v4;
  v7 = array;
  dispatch_sync(globalSerialQueue, block);

  v8 = [v7 copy];

  return v8;
}

void __31__ML3MusicLibrary_allLibraries__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (+[ML3MusicLibrary deviceSupportsMultipleLibraries])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    obj = +[ML3MusicLibrary allLibraryContainerPaths];
    v2 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v16;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v16 != v4)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v15 + 1) + 8 * i);
          v7 = [v6 lastPathComponent];
          if ([v7 isEqualToString:@"iTunes_Control"])
          {

            v7 = 0;
          }

          v8 = [v6 lastPathComponent];
          v9 = [ML3MusicLibraryResourcesManagerContext contextForSingleUserLibraryWithLibraryContainerIdentifier:v8];

          v10 = [[ML3MusicLibraryResourcesManager alloc] initWithContext:v9];
          v11 = [*(a1 + 48) _onGlobalQueue_shareableMusicLibraryWithResourcesManager:v10 libraryFilePath:0];
          [*(a1 + 32) addObject:v11];
        }

        v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v3);
    }
  }

  else
  {
    v12 = *(a1 + 32);
    obja = [*(a1 + 48) _onGlobalQueue_shareableMusicLibraryWithResourcesManager:0 libraryFilePath:*(a1 + 40)];
    [v12 addObject:?];
  }
}

- (ML3MusicLibraryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)_sizeForColorAnalysisForMediaType:(unsigned int)type artworkType:(int64_t)artworkType
{
  v5 = *&type;
  v20 = *MEMORY[0x277D85DE8];
  v6 = +[ML3ArtworkConfiguration systemConfiguration];
  v7 = [v6 sizesToAutogenerateForMediaType:v5 artworkType:artworkType];

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = -8388609;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__ML3MusicLibrary__sizeForColorAnalysisForMediaType_artworkType___block_invoke;
  v13[3] = &unk_27875DC48;
  v13[4] = &v14;
  [v7 enumerateObjectsUsingBlock:v13];
  v8 = os_log_create("com.apple.amp.medialibrary", "Artwork");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v15[6];
    *buf = 134217984;
    v19 = v9;
    _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "Size to use for color analysis: %f", buf, 0xCu);
  }

  v10 = v15[6];
  _Block_object_dispose(&v14, 8);

  v11 = v10;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

float __65__ML3MusicLibrary__sizeForColorAnalysisForMediaType_artworkType___block_invoke(uint64_t a1, void *a2)
{
  v5[0] = 0.0;
  v5[1] = 0.0;
  [a2 getValue:v5];
  result = *v5;
  v4 = *(*(a1 + 32) + 8);
  if (v5[0] > *(v4 + 24))
  {
    result = v5[0];
    *(v4 + 24) = result;
  }

  return result;
}

- (void)_postClientNotificationWithDistributedName:(id)name localName:(id)localName
{
  serialQueue = self->_serialQueue;
  localNameCopy = localName;
  nameCopy = name;
  dispatch_assert_queue_not_V2(serialQueue);
  notificationManager = [(ML3MusicLibrary *)self notificationManager];
  [notificationManager enqueueLocalNotificationNamed:localNameCopy];

  notificationManager2 = [(ML3MusicLibrary *)self notificationManager];
  [notificationManager2 enqueueDistributedNotificationNamed:nameCopy];
}

- (void)_tearDownNotificationManager
{
  v10 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_not_V2(self->_serialQueue);
  v3 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ - _tearDownNotificationManager", buf, 0xCu);
  }

  distributedToLocalNotificationMapping = [objc_opt_class() distributedToLocalNotificationMapping];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__ML3MusicLibrary__tearDownNotificationManager__block_invoke;
  v7[3] = &unk_2787655E8;
  v7[4] = self;
  [distributedToLocalNotificationMapping enumerateKeysAndObjectsUsingBlock:v7];

  serialQueue = self->_serialQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__ML3MusicLibrary__tearDownNotificationManager__block_invoke_2;
  v6[3] = &unk_278765FB8;
  v6[4] = self;
  dispatch_sync(serialQueue, v6);
}

void __47__ML3MusicLibrary__tearDownNotificationManager__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 notificationManager];
  [v4 removeObserverWithDistributedName:v3];
}

void __47__ML3MusicLibrary__tearDownNotificationManager__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 136);
  *(v1 + 136) = 0;
}

- (void)_closeAndLockCurrentDatabaseConnections
{
  v20 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_not_V2(self->_serialQueue);
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__2504;
  v14 = __Block_byref_object_dispose__2505;
  v15 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ML3MusicLibrary__closeAndLockCurrentDatabaseConnections__block_invoke;
  block[3] = &unk_278766080;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(serialQueue, block);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"ML3MusicLibraryWillInvalidateDatabaseConnectionNotification" object:self];

  [v11[5] lockAndCloseAllConnectionsForTermination];
  v5 = self->_serialQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__ML3MusicLibrary__closeAndLockCurrentDatabaseConnections__block_invoke_995;
  v8[3] = &unk_278766080;
  v8[4] = self;
  v8[5] = &v10;
  dispatch_sync(v5, v8);
  v6 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v11[5];
    *buf = 138543618;
    selfCopy = self;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - connection pool %{public}@ locked and closed", buf, 0x16u);
  }

  _Block_object_dispose(&v10, 8);
}

void __58__ML3MusicLibrary__closeAndLockCurrentDatabaseConnections__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 104));
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    [*(*(a1 + 32) + 88) addObject:?];
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  *(v2 + 104) = 0;

  v4 = os_log_create("com.apple.amp.medialibrary", "MultiUser_Oversize");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [*(v5 + 88) count];
    v7 = [*(*(*(a1 + 40) + 8) + 40) description];
    v8 = 138543874;
    v9 = v5;
    v10 = 1024;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - _closeAndLockCurrentDatabaseConnections, _connectionPoolsPendingClose.count=%d, connectionPool=%{public}@ ", &v8, 0x1Cu);
  }
}

void __58__ML3MusicLibrary__closeAndLockCurrentDatabaseConnections__block_invoke_995(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2)
  {
    v4 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

LABEL_9:
    v9 = *(a1 + 32);
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - not removing connection pool=%{public}@ as it has active connections", &v11, 0x16u);
    goto LABEL_10;
  }

  v3 = [v2 isClosedWithNoActiveOrBusyConnections];
  v4 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (!v3)
  {
    if (!v5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(*(*(a1 + 40) + 8) + 40);
    v11 = 138543618;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - removing connection pool=%{public}@", &v11, 0x16u);
  }

  [*(*(*(a1 + 40) + 8) + 40) setDelegate:0];
  [*(*(a1 + 32) + 88) removeObject:*(*(*(a1 + 40) + 8) + 40)];
  v8 = *(*(a1 + 40) + 8);
  v4 = *(v8 + 40);
  *(v8 + 40) = 0;
LABEL_10:
}

- (BOOL)_shouldProcessAccountChanges
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__ML3MusicLibrary__shouldProcessAccountChanges__block_invoke;
  v5[3] = &unk_278766080;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __47__ML3MusicLibrary__shouldProcessAccountChanges__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[81])
  {
    result = 0;
  }

  else
  {
    result = [v2 isAutoUpdatingSharedLibrary];
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_completeAccountChangeWithPath:(id)path
{
  v19 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v5 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v17 = 2114;
    v18 = pathCopy;
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - _completeAccountChangeWithPath - New database path: %{public}@", buf, 0x16u);
  }

  [ML3MusicLibrary setAutoupdatingSharedLibraryPath:pathCopy];
  serialQueue = self->_serialQueue;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __50__ML3MusicLibrary__completeAccountChangeWithPath___block_invoke;
  v12 = &unk_2787660F0;
  selfCopy2 = self;
  v14 = pathCopy;
  v7 = pathCopy;
  dispatch_sync(serialQueue, &v9);
  [(NSLock *)self->_libraryUIDLock lock:v9];
  libraryUID = self->_libraryUID;
  self->_libraryUID = 0;

  [(NSLock *)self->_libraryUIDLock unlock];
}

- (BOOL)_prepareForAccountChange:(id *)change
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - _prepareForAccountChange", buf, 0xCu);
  }

  [(ML3MusicLibrary *)self _closeAndLockCurrentDatabaseConnections];
  [(ML3MusicLibrary *)self _tearDownNotificationManager];
  return 1;
}

- (void)terminateForFailureToPerformDatabasePathChange
{
  v7 = *MEMORY[0x277D85DE8];
  if ([(ML3MusicLibrary *)self _shouldProcessAccountChanges])
  {
    selfCopy = self;
    v3 = _ML3LogCategoryMultiUser();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v6 = selfCopy;
      _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_ERROR, "%{public}@ - terminateForFailureToPerformDatabasePathChange [unresponsive process]", buf, 0xCu);
    }

    exit(0);
  }
}

- (void)emergencyDisconnectWithCompletion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v6 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - emergencyDisconnectWithCompletion:", buf, 0xCu);
  }

  _shouldProcessAccountChanges = [(ML3MusicLibrary *)self _shouldProcessAccountChanges];
  if (_shouldProcessAccountChanges)
  {
    if (![(ML3MusicLibrary *)self _prepareForAccountChange:0])
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"ML3MusicLibrary.m" lineNumber:4521 description:{@"ML3MusicLibrary %p - Unable to prepare for account changes during emergency disconnect", self}];
    }

    [(ML3MusicLibrary *)self _completeAccountChangeWithPath:0];
  }

  else
  {
    v8 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - emergencyDisconnectWithCompletion: - No action to take [returning early]", buf, 0xCu);
    }
  }

  completionCopy[2](completionCopy, _shouldProcessAccountChanges, 0);
}

- (void)performDatabasePathChange:(id)change completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  completionCopy = completion;
  _shouldProcessAccountChanges = [(ML3MusicLibrary *)self _shouldProcessAccountChanges];
  v10 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (_shouldProcessAccountChanges)
  {
    if (v11)
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - performDatabasePathChange: - Process started", buf, 0xCu);
    }

    v15 = 0;
    v12 = [(ML3MusicLibrary *)self _prepareForAccountChange:&v15];
    v13 = v15;
    if (!v12)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"ML3MusicLibrary.m" lineNumber:4507 description:{@"ML3MusicLibrary %p - Database path change failure [unable to close connection pools] - error=%@", self, v13}];
    }

    [(ML3MusicLibrary *)self _completeAccountChangeWithPath:changeCopy];
    completionCopy[2](completionCopy, 1, v13);

    completionCopy = v13;
  }

  else
  {
    if (v11)
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - performDatabasePathChange: - No action to take [returning early]", buf, 0xCu);
    }

    completionCopy[2](completionCopy, 0, 0);
  }
}

- (void)_libraryPathDidChangeNotification:(id)notification
{
  v9 = *MEMORY[0x277D85DE8];
  if (__daemonProcessInfo)
  {
    v4 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_ERROR, "%{public}@ - Received MLUserDatabasePathDidChangeNotification in medialibraryd which is unexpected", buf, 0xCu);
    }
  }

  else
  {
    [(ML3MusicLibrary *)self _setupNotificationManager];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"ML3MusicLibraryPathDidChangeNotification" object:self];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 postNotificationName:@"ML3MusicLibraryContentsDidChangeNotification" object:self];
  }
}

- (void)_effectiveSettingsDidChangeNotification:(id)notification
{
  dispatch_assert_queue_not_V2(self->_serialQueue);
  pthread_mutex_lock(&sRestrictionSettingsLock);
  sRestrictionSettingsInfo = 0;
  pthread_mutex_unlock(&sRestrictionSettingsLock);
  notificationManager = [(ML3MusicLibrary *)self notificationManager];
  [notificationManager enqueueLocalNotificationNamed:@"ML3MusicLibraryContentsDidChangeNotification"];
}

- (BOOL)_clearAllRowsFromTables:(id)tables
{
  v33 = *MEMORY[0x277D85DE8];
  tablesCopy = tables;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__2504;
  v23 = __Block_byref_object_dispose__2505;
  v24 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __43__ML3MusicLibrary__clearAllRowsFromTables___block_invoke;
  v15[3] = &unk_278763710;
  v5 = tablesCopy;
  v16 = v5;
  v17 = &v25;
  v18 = &v19;
  [(ML3MusicLibrary *)self performDatabaseTransactionWithBlock:v15];
  v6 = *(v26 + 24);
  v7 = os_log_create("com.apple.amp.medialibrary", "Default");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6 == 1)
  {
    if (v8)
    {
      *buf = 138543362;
      v30 = v5;
      v9 = "Succesfully emptied tables in media library database: %{public}@";
      v10 = v7;
      v11 = 12;
LABEL_6:
      _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }
  }

  else if (v8)
  {
    v12 = v20[5];
    *buf = 138543618;
    v30 = v5;
    v31 = 2114;
    v32 = v12;
    v9 = "Failed to empty tables: %{public}@ with error: %{public}@";
    v10 = v7;
    v11 = 22;
    goto LABEL_6;
  }

  v13 = *(v26 + 24);
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  return v13 & 1;
}

uint64_t __43__ML3MusicLibrary__clearAllRowsFromTables___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM %@", *(*(&v15 + 1) + 8 * v8)];
      v10 = *(*(a1 + 48) + 8);
      obj = *(v10 + 40);
      v11 = [v3 executeUpdate:v9 withParameters:0 error:&obj];
      objc_storeStrong((v10 + 40), obj);
      *(*(*(a1 + 40) + 8) + 24) &= v11;

      if (*(*(*(a1 + 40) + 8) + 24) != 1)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v12 = *(*(*(a1 + 40) + 8) + 24);
  return v12;
}

- (void)_teardownMediaLibraryDatabaseConnection:(id)connection
{
  serialQueue = self->_serialQueue;
  connectionCopy = connection;
  dispatch_assert_queue_not_V2(serialQueue);
  _sqliteHandle = [connectionCopy _sqliteHandle];

  if (_sqliteHandle)
  {
    sortKeyBuilder = [(ML3MusicLibrary *)self sortKeyBuilder];

    iPhoneSortKeyBuilderUninstallSqlite3(sortKeyBuilder, _sqliteHandle);
  }
}

- (void)_configureMediaLibraryDatabaseConnection:(id)connection
{
  connectionCopy = connection;
  dispatch_assert_queue_not_V2(self->_serialQueue);
  if (([connectionCopy isOpen] & 1) == 0)
  {
    [connectionCopy open];
  }

  if ([connectionCopy isOpen])
  {
    [connectionCopy registerFunctionName:@"ML3SearchStringMatch" argumentCount:2 functionPointer:ML3SearchStringMatch];
    [connectionCopy registerFunctionName:@"ML3SeasonDisplayName" argumentCount:1 functionPointer:ML3SeasonDisplayName];
    [connectionCopy registerFunctionName:@"ML3IsCurrentlyRestrictedMedia" argumentCount:4 functionPointer:ML3IsCurrentlyRestrictedMedia];
    [connectionCopy registerFunctionName:@"ML3TrackIntegrityCompute" argumentCount:0xFFFFFFFFLL functionPointer:ML3TrackIntegrityCompute];
    [connectionCopy registerFunctionName:@"ML3TrackIntegrityVerify" argumentCount:0xFFFFFFFFLL functionPointer:ML3TrackIntegrityVerify];
    [connectionCopy registerFunctionName:@"ML3TrackDigestCompute" argumentCount:0xFFFFFFFFLL functionPointer:ML3TrackDigestCompute];
    [connectionCopy registerFunctionName:@"ML3CompoundSortKey" argumentCount:0xFFFFFFFFLL functionPointer:ML3CompoundSortKey];
    [connectionCopy registerFunctionName:@"ML3SpotlightMatch" argumentCount:0xFFFFFFFFLL functionPointer:ML3SpotlightMatch];
    [connectionCopy registerFunctionName:@"ML3SortString" argumentCount:0xFFFFFFFFLL functionPointer:ML3SortString];
    [connectionCopy registerFunctionName:@"ML3SortStringWithPrefix" argumentCount:0xFFFFFFFFLL functionPointer:ML3SortStringWithPrefix];
    [connectionCopy registerFunctionName:@"ML3StandardizedMediaType" argumentCount:1 block:&__block_literal_global_985];
    [ML3Track registerBookmarkMetadataIdentifierFunctionOnConnection:connectionCopy];
    iPhoneSortKeyBuilderInstallSqlite3_v2(-[ML3MusicLibrary sortKeyBuilder](self, "sortKeyBuilder"), [connectionCopy _sqliteHandle]);
  }
}

void __60__ML3MusicLibrary__configureMediaLibraryDatabaseConnection___block_invoke(uint64_t a1, sqlite3_context *a2, uint64_t a3, sqlite3_value **a4)
{
  v5 = sqlite3_value_int(*a4);
  v6 = MLMediaTypeByStandardizingMediaType(v5);

  sqlite3_result_int(a2, v6);
}

- (BOOL)_canConfigureMediaLibraryDatabaseConnection:(id)connection
{
  connectionCopy = connection;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
  }

  else
  {
    v5 = ([connectionCopy isReadOnly] & 1) != 0 || __daemonProcessInfo && !objc_msgSend(connectionCopy, "isReadOnly") || -[ML3MusicLibrary isHomeSharingLibrary](self, "isHomeSharingLibrary") || -[ML3MusicLibrary isUnitTesting](self, "isUnitTesting");
  }

  return v5;
}

- (id)_newGeniusDBConnectionAtPath:(id)path
{
  pathCopy = path;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if ([defaultManager fileExistsAtPath:pathCopy])
  {
    v5 = [[ML3DatabaseConnection alloc] initWithDatabasePath:pathCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_createColorAnalysisForRelativePath:(id)path artworkType:(int64_t)type artworkToken:(id)token preferredImageSize:(CGSize)size completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v28 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  tokenCopy = token;
  handlerCopy = handler;
  if (pathCopy)
  {
    v16 = [MEMORY[0x277CBEBC0] URLWithString:pathCopy];
    v17 = [objc_alloc(MEMORY[0x277D27ED8]) initWithSourceURL:v16 preferredImageSize:{width, height}];
    mEMORY[0x277D27ED0] = [MEMORY[0x277D27ED0] sharedService];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __117__ML3MusicLibrary__createColorAnalysisForRelativePath_artworkType_artworkToken_preferredImageSize_completionHandler___block_invoke;
    v20[3] = &unk_27875DC00;
    v21 = pathCopy;
    typeCopy = type;
    v22 = tokenCopy;
    selfCopy = self;
    v24 = handlerCopy;
    [mEMORY[0x277D27ED0] sendRequest:v17 completion:v20];
  }

  else
  {
    v19 = os_log_create("com.apple.amp.medialibrary", "Artwork");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v27 = tokenCopy;
      _os_log_impl(&dword_22D2FA000, v19, OS_LOG_TYPE_ERROR, "Failed to create color analysis for artwork: %{public}@. Relative path is nil.", buf, 0xCu);
    }

    v16 = [MEMORY[0x277CCA9B8] ml_errorWithCode:6];
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, v16);
    }
  }
}

void __117__ML3MusicLibrary__createColorAnalysisForRelativePath_artworkType_artworkToken_preferredImageSize_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.medialibrary", "Artwork");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      *buf = 138543362;
      v22 = v9;
      _os_log_impl(&dword_22D2FA000, &v8->super, OS_LOG_TYPE_ERROR, "Failed to create color analysis for relative path: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = a1[4];
      *buf = 138543362;
      v22 = v10;
      _os_log_impl(&dword_22D2FA000, &v8->super, OS_LOG_TYPE_INFO, "Created color analysis for relative path: %{public}@", buf, 0xCu);
    }

    v8 = [[ML3ArtworkColorAnalysis alloc] initWithColorAnalysis:v5];
    v11 = [[ML3Artwork alloc] initWithToken:a1[5] artworkType:a1[8] musicLibrary:a1[6]];
    v19 = @"ColorAnalysis";
    v12 = [&unk_2840C8AE0 stringValue];
    v13 = [(ML3ArtworkColorAnalysis *)v8 dictRepresentation];
    v18 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v20 = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];

    [(ML3Artwork *)v11 setInterestDictionary:v15];
  }

  v16 = a1[7];
  if (v16)
  {
    (*(v16 + 16))(v16, v6);
  }
}

- (void)_autogenerateArtworkForRelativePath:(id)path artworkType:(int64_t)type mediaType:(unsigned int)mediaType variantType:(int64_t)variantType completionHandler:(id)handler
{
  v9 = *&mediaType;
  pathCopy = path;
  handlerCopy = handler;
  v13 = +[ML3ArtworkConfiguration systemConfiguration];
  v14 = [v13 sizesToAutogenerateForMediaType:v9 artworkType:type artworkVariantType:variantType];

  if ([v14 count])
  {
    [(ML3MusicLibrary *)self generateArtworkForRelativePath:pathCopy sizes:v14 completionHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8));
  }
}

- (void)_convertOriginalArtworkToDevicePreferredFormatFromSourceURL:(id)l toDestinationURL:(id)rL completionHandler:(id)handler
{
  v7 = MEMORY[0x277D27EE0];
  handlerCopy = handler;
  rLCopy = rL;
  lCopy = l;
  v12 = [[v7 alloc] initWithSourceURL:lCopy destinationURL:rLCopy destinationFormat:0];

  [v12 setDestinationCompressionQuality:0.9];
  mEMORY[0x277D27ED0] = [MEMORY[0x277D27ED0] sharedService];
  [mEMORY[0x277D27ED0] sendRequest:v12 completionHandler:handlerCopy];
}

- (BOOL)_removeInvalidAvailableArtworkTokensUsingConnection:(id)connection
{
  v51 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  array = [MEMORY[0x277CBEB18] array];
  v5 = objc_autoreleasePoolPush();
  v6 = [connectionCopy executeQuery:{@"SELECT entity_pid, entity_type, best_artwork_token.artwork_type, available_artwork_token, best_artwork_token.artwork_variant_type FROM best_artwork_token LEFT OUTER JOIN artwork ON (available_artwork_token = artwork_token AND best_artwork_token.artwork_variant_type = artwork.artwork_variant_type) WHERE available_artwork_token != '' AND artwork_token IS NULL"}];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __71__ML3MusicLibrary__removeInvalidAvailableArtworkTokensUsingConnection___block_invoke;
  v38[3] = &unk_278766118;
  v7 = array;
  v39 = v7;
  [v6 enumerateRowsWithBlock:v38];

  objc_autoreleasePoolPop(v5);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v7;
  v32 = [obj countByEnumeratingWithState:&v34 objects:v50 count:16];
  if (v32)
  {
    v30 = *v35;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v35 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v34 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v10 = os_log_create("com.apple.amp.medialibrary", "Library");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v29 = [v9 objectAtIndexedSubscript:0];
          longLongValue = [v29 longLongValue];
          v28 = [v9 objectAtIndexedSubscript:1];
          intValue = [v28 intValue];
          v12 = [v9 objectAtIndexedSubscript:2];
          intValue2 = [v12 intValue];
          v14 = [v9 objectAtIndexedSubscript:4];
          intValue3 = [v14 intValue];
          [v9 objectAtIndexedSubscript:3];
          v17 = v16 = connectionCopy;
          *buf = 134219010;
          v41 = longLongValue;
          v42 = 1024;
          v43 = intValue;
          v44 = 1024;
          v45 = intValue2;
          v46 = 1024;
          v47 = intValue3;
          v48 = 2114;
          v49 = v17;
          _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "Updating best tokens for entity_pid = %lld entity_type = %d artwork_type = %d artwork_variant_type = %d with invalid available token %{public}@", buf, 0x28u);

          connectionCopy = v16;
        }

        v18 = [v9 objectAtIndexedSubscript:0];
        longLongValue2 = [v18 longLongValue];
        v20 = [v9 objectAtIndexedSubscript:1];
        intValue4 = [v20 intValue];
        v22 = [v9 objectAtIndexedSubscript:2];
        intValue5 = [v22 intValue];
        v24 = [v9 objectAtIndexedSubscript:4];
        -[ML3MusicLibrary updateBestArtworkTokenForEntityPersistentID:entityType:artworkType:variantType:retrievalTime:preserveExistingAvailableToken:usingConnection:](self, "updateBestArtworkTokenForEntityPersistentID:entityType:artworkType:variantType:retrievalTime:preserveExistingAvailableToken:usingConnection:", longLongValue2, intValue4, intValue5, [v24 intValue], 0, connectionCopy, 0.0);

        objc_autoreleasePoolPop(context);
      }

      v32 = [obj countByEnumeratingWithState:&v34 objects:v50 count:16];
    }

    while (v32);
  }

  return 1;
}

void __71__ML3MusicLibrary__removeInvalidAvailableArtworkTokensUsingConnection___block_invoke(uint64_t a1, void *a2)
{
  v10[5] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v3 objectAtIndexedSubscript:{1, v4}];
  v10[1] = v5;
  v6 = [v3 objectAtIndexedSubscript:2];
  v10[2] = v6;
  v7 = [v3 objectAtIndexedSubscript:3];
  v10[3] = v7;
  v8 = [v3 objectAtIndexedSubscript:4];

  v10[4] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:5];
  [v2 addObject:v9];
}

- (BOOL)_removeOrphanedArtworkAssetsUsingConnection:(id)connection
{
  v140[1] = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = objc_autoreleasePoolPush();
  v99 = connectionCopy;
  v7 = [connectionCopy executeQuery:@"SELECT distinct(relative_path) FROM artwork"];
  v127[0] = MEMORY[0x277D85DD0];
  v127[1] = 3221225472;
  v127[2] = __63__ML3MusicLibrary__removeOrphanedArtworkAssetsUsingConnection___block_invoke;
  v127[3] = &unk_278766118;
  v8 = v5;
  v128 = v8;
  [v7 enumerateRowsWithBlock:v127];

  objc_autoreleasePoolPop(v6);
  array = [MEMORY[0x277CBEB18] array];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v10 = MEMORY[0x277CBEBC0];
  selfCopy = self;
  originalArtworkDirectory = [(ML3MusicLibrary *)self originalArtworkDirectory];
  v12 = [v10 fileURLWithPath:originalArtworkDirectory isDirectory:1];

  v13 = *MEMORY[0x277CBE868];
  v140[0] = *MEMORY[0x277CBE868];
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v140 count:1];
  v85 = v12;
  v86 = defaultManager;
  v15 = [defaultManager enumeratorAtURL:v12 includingPropertiesForKeys:v14 options:4 errorHandler:0];

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  obj = v15;
  v16 = [obj countByEnumeratingWithState:&v123 objects:v139 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v124;
    v92 = v13;
    v89 = *v124;
    do
    {
      v19 = 0;
      v96 = v17;
      do
      {
        if (*v124 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v123 + 1) + 8 * v19);
        v21 = objc_autoreleasePoolPush();
        v122 = 0;
        [v20 getResourceValue:&v122 forKey:v13 error:0];
        v22 = v122;
        if (([v22 BOOLValue] & 1) == 0)
        {
          pathComponents = [v20 pathComponents];
          v24 = [pathComponents count];
          v25 = v24 - 1;
          v26 = MEMORY[0x277CCACA8];
          v27 = [pathComponents objectAtIndexedSubscript:v24 - 2];
          v138[0] = v27;
          v28 = [pathComponents objectAtIndexedSubscript:v25];
          v138[1] = v28;
          v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v138 count:2];
          v30 = [v26 pathWithComponents:v29];

          if ([v8 containsObject:v30])
          {
            [v8 removeObject:v30];
          }

          else
          {
            [array addObject:v30];
            v31 = os_log_create("com.apple.amp.medialibrary", "Library");
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v137 = v30;
              _os_log_impl(&dword_22D2FA000, v31, OS_LOG_TYPE_DEFAULT, "Found orphaned artwork on disk with relative path: %{public}@", buf, 0xCu);
            }
          }

          v13 = v92;
          v18 = v89;

          v17 = v96;
        }

        objc_autoreleasePoolPop(v21);
        ++v19;
      }

      while (v17 != v19);
      v17 = [obj countByEnumeratingWithState:&v123 objects:v139 count:16];
    }

    while (v17);
  }

  if ([v8 count] || objc_msgSend(array, "count"))
  {
    v32 = os_log_create("com.apple.amp.medialibrary", "Library");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [v8 count];
      *buf = 134217984;
      v137 = v33;
      _os_log_impl(&dword_22D2FA000, v32, OS_LOG_TYPE_DEFAULT, "Found %lu artwork metadata without an asset on disk", buf, 0xCu);
    }

    v34 = os_log_create("com.apple.amp.medialibrary", "Library");
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [array count];
      *buf = 134217984;
      v137 = v35;
      _os_log_impl(&dword_22D2FA000, v34, OS_LOG_TYPE_DEFAULT, "Found %lu artwork asset without metadata in database", buf, 0xCu);
    }

    v36 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v84 = v8;
    v97 = v8;
    v37 = [v97 countByEnumeratingWithState:&v118 objects:v135 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v119;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v119 != v39)
          {
            objc_enumerationMutation(v97);
          }

          v41 = *(*(&v118 + 1) + 8 * i);
          v42 = objc_autoreleasePoolPush();
          v134 = v41;
          v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v134 count:1];
          v44 = [v99 executeQuery:@"SELECT artwork_token withParameters:{artwork_variant_type FROM artwork WHERE relative_path = ?", v43}];

          v116[0] = MEMORY[0x277D85DD0];
          v116[1] = 3221225472;
          v116[2] = __63__ML3MusicLibrary__removeOrphanedArtworkAssetsUsingConnection___block_invoke_965;
          v116[3] = &unk_278766118;
          v117 = v36;
          [v44 enumerateRowsWithBlock:v116];

          objc_autoreleasePoolPop(v42);
        }

        v38 = [v97 countByEnumeratingWithState:&v118 objects:v135 count:16];
      }

      while (v38);
    }

    array2 = [MEMORY[0x277CBEB18] array];
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v45 = v36;
    v46 = [v45 countByEnumeratingWithState:&v112 objects:v133 count:16];
    v90 = v45;
    if (v46)
    {
      v47 = v46;
      v48 = *v113;
      do
      {
        for (j = 0; j != v47; ++j)
        {
          if (*v113 != v48)
          {
            objc_enumerationMutation(v90);
          }

          v50 = *(*(&v112 + 1) + 8 * j);
          v51 = objc_autoreleasePoolPush();
          v52 = [v50 objectAtIndexedSubscript:0];
          v53 = [v50 objectAtIndexedSubscript:1];
          v132[0] = v52;
          v132[1] = v53;
          v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v132 count:2];
          v55 = [v99 executeQuery:@"SELECT entity_pid withParameters:{entity_type, artwork_type FROM best_artwork_token WHERE available_artwork_token = ? AND artwork_variant_type = ?", v54}];

          v109[0] = MEMORY[0x277D85DD0];
          v109[1] = 3221225472;
          v109[2] = __63__ML3MusicLibrary__removeOrphanedArtworkAssetsUsingConnection___block_invoke_2;
          v109[3] = &unk_278763E40;
          v110 = array2;
          v111 = v53;
          v56 = v53;
          [v55 enumerateRowsWithBlock:v109];

          objc_autoreleasePoolPop(v51);
        }

        v45 = v90;
        v47 = [v90 countByEnumeratingWithState:&v112 objects:v133 count:16];
      }

      while (v47);
    }

    if ([v45 count])
    {
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v93 = v45;
      v57 = [v93 countByEnumeratingWithState:&v105 objects:v131 count:16];
      if (v57)
      {
        v58 = v57;
        v59 = *v106;
        do
        {
          for (k = 0; k != v58; ++k)
          {
            if (*v106 != v59)
            {
              objc_enumerationMutation(v93);
            }

            v61 = *(*(&v105 + 1) + 8 * k);
            v62 = objc_autoreleasePoolPush();
            v63 = [v61 objectAtIndexedSubscript:0];
            v64 = [v61 objectAtIndexedSubscript:1];
            v130[0] = v63;
            v130[1] = v64;
            v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v130 count:2];
            v104 = 0;
            v66 = [v99 executeUpdate:@"DELETE FROM artwork WHERE artwork_token = ? AND artwork_variant_type = ?" withParameters:v65 error:&v104];
            v67 = v104;

            if ((v66 & 1) == 0)
            {
              v68 = os_log_create("com.apple.amp.medialibrary", "Default");
              if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v137 = v67;
                _os_log_impl(&dword_22D2FA000, v68, OS_LOG_TYPE_ERROR, "Failed to delete from artwork table with error: %{public}@", buf, 0xCu);
              }
            }

            objc_autoreleasePoolPop(v62);
          }

          v58 = [v93 countByEnumeratingWithState:&v105 objects:v131 count:16];
        }

        while (v58);
      }

      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v88 = array2;
      v69 = [v88 countByEnumeratingWithState:&v100 objects:v129 count:16];
      if (v69)
      {
        v70 = v69;
        v94 = *v101;
        do
        {
          for (m = 0; m != v70; ++m)
          {
            if (*v101 != v94)
            {
              objc_enumerationMutation(v88);
            }

            v72 = *(*(&v100 + 1) + 8 * m);
            v73 = objc_autoreleasePoolPush();
            v74 = [v72 objectAtIndexedSubscript:0];
            longLongValue = [v74 longLongValue];
            v76 = [v72 objectAtIndexedSubscript:1];
            intValue = [v76 intValue];
            v78 = [v72 objectAtIndexedSubscript:2];
            intValue2 = [v78 intValue];
            v80 = [v72 objectAtIndexedSubscript:3];
            -[ML3MusicLibrary updateBestArtworkTokenForEntityPersistentID:entityType:artworkType:variantType:retrievalTime:preserveExistingAvailableToken:usingConnection:](selfCopy, "updateBestArtworkTokenForEntityPersistentID:entityType:artworkType:variantType:retrievalTime:preserveExistingAvailableToken:usingConnection:", longLongValue, intValue, intValue2, [v80 intValue], 0, v99, 0.0);

            objc_autoreleasePoolPop(v73);
          }

          v70 = [v88 countByEnumeratingWithState:&v100 objects:v129 count:16];
        }

        while (v70);
      }

      v45 = v90;
    }

    v8 = v84;
  }

  v81 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
  {
    v82 = [array count];
    *buf = 134217984;
    v137 = v82;
    _os_log_impl(&dword_22D2FA000, v81, OS_LOG_TYPE_ERROR, "Deleting %ld orphaned artwork assets.", buf, 0xCu);
  }

  [(ML3MusicLibrary *)selfCopy _deleteAllArtworkVariantsAtRelativePaths:array];
  return 1;
}

void __63__ML3MusicLibrary__removeOrphanedArtworkAssetsUsingConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 stringForColumnIndex:0];
  [*(a1 + 32) addObject:v3];
}

void __63__ML3MusicLibrary__removeOrphanedArtworkAssetsUsingConnection___block_invoke_965(uint64_t a1, void *a2)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 stringForColumnIndex:0];
  v5 = [v3 numberForColumnIndex:1];

  v6 = *(a1 + 32);
  v8[0] = v4;
  v8[1] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  [v6 addObject:v7];
}

void __63__ML3MusicLibrary__removeOrphanedArtworkAssetsUsingConnection___block_invoke_2(uint64_t a1, void *a2)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 objectAtIndexedSubscript:0];
  v10[0] = v5;
  v6 = [v4 objectAtIndexedSubscript:1];
  v10[1] = v6;
  v7 = [v4 objectAtIndexedSubscript:2];

  v8 = *(a1 + 40);
  v10[2] = v7;
  v10[3] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:4];
  [v3 addObject:v9];
}

- (BOOL)_removeOrphanedArtworkMetadataUsingConnection:(id)connection
{
  v45 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v8 = objc_autoreleasePoolPush();
  v9 = [connectionCopy executeQuery:@"SELECT artwork_token withParameters:{artwork_source_type, relative_path, artwork.artwork_type, artwork.artwork_variant_type FROM artwork LEFT OUTER JOIN best_artwork_token ON (artwork_token = available_artwork_token) WHERE artwork.artwork_type != ? AND artwork.artwork_variant_type = best_artwork_token.artwork_variant_type AND available_artwork_token IS NULL", &unk_2840C6860}];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __65__ML3MusicLibrary__removeOrphanedArtworkMetadataUsingConnection___block_invoke;
  v40[3] = &unk_278763E40;
  v10 = dictionary;
  v41 = v10;
  v11 = array;
  v42 = v11;
  [v9 enumerateRowsWithBlock:v40];

  objc_autoreleasePoolPop(v8);
  v12 = [MEMORY[0x277CBEB58] set];
  v13 = objc_autoreleasePoolPush();
  v14 = [connectionCopy executeQuery:{@"SELECT item_pid, chapter_data FROM chapter JOIN item USING (item_pid) WHERE chapter_data IS NOT NULL"}];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __65__ML3MusicLibrary__removeOrphanedArtworkMetadataUsingConnection___block_invoke_941;
  v38[3] = &unk_278766118;
  v15 = v12;
  v39 = v15;
  [v14 enumerateRowsWithBlock:v38];

  objc_autoreleasePoolPop(v13);
  v16 = [connectionCopy executeQuery:@"SELECT artwork_token withParameters:{relative_path FROM artwork WHERE artwork_type = ?", &unk_2840C6878}];
  v17 = objc_autoreleasePoolPush();
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __65__ML3MusicLibrary__removeOrphanedArtworkMetadataUsingConnection___block_invoke_3;
  v34[3] = &unk_278764618;
  v18 = v15;
  v35 = v18;
  v19 = array2;
  v36 = v19;
  v20 = v11;
  v37 = v20;
  [v16 enumerateRowsWithBlock:v34];

  objc_autoreleasePoolPop(v17);
  if ([v19 count])
  {
    selfCopy = self;
    context = objc_autoreleasePoolPush();
    v22 = os_log_create("com.apple.amp.medialibrary", "Library");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v20 count];
      *buf = 134217984;
      v44 = v23;
      _os_log_impl(&dword_22D2FA000, v22, OS_LOG_TYPE_DEFAULT, "Deleting %ld chapter artwork assets from orphaned metadata.", buf, 0xCu);
    }

    v24 = +[ML3DatabaseStatementRenderer defaultRenderer];
    v25 = [v24 statementWithPrefix:@"DELETE FROM artwork WHERE artwork_token" inParameterCount:{objc_msgSend(v19, "count")}];
    v33 = 0;
    v26 = [connectionCopy executeUpdate:v25 withParameters:v19 error:&v33];

    self = selfCopy;
    if (v26)
    {
      v27 = os_log_create("com.apple.amp.medialibrary", "Library");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22D2FA000, v27, OS_LOG_TYPE_ERROR, "Failed to remove orphaned chapter artwork entries", buf, 2u);
      }
    }

    objc_autoreleasePoolPop(context);
  }

  if ([v10 count])
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __65__ML3MusicLibrary__removeOrphanedArtworkMetadataUsingConnection___block_invoke_954;
    v30[3] = &unk_27875DBD8;
    v31 = v20;
    v32 = connectionCopy;
    [v10 enumerateKeysAndObjectsUsingBlock:v30];
  }

  if ([v20 count])
  {
    [(ML3MusicLibrary *)self _deleteAllArtworkVariantsAtRelativePaths:v20];
  }

  return 1;
}

void __65__ML3MusicLibrary__removeOrphanedArtworkMetadataUsingConnection___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 stringForColumnIndex:0];
  v5 = [v3 intForColumnIndex:1];
  v6 = [v3 stringForColumnIndex:2];
  v7 = [v3 intForColumnIndex:3];
  v8 = [v3 numberForColumnIndex:4];

  v9 = [*(a1 + 32) objectForKeyedSubscript:v8];
  if (!v9)
  {
    v9 = [MEMORY[0x277CBEB18] array];
    [*(a1 + 32) setObject:v9 forKeyedSubscript:v8];
  }

  [v9 addObject:v4];
  [*(a1 + 40) addObject:v6];
  v10 = os_log_create("com.apple.amp.medialibrary", "Library");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109890;
    v11[1] = v7;
    v12 = 1024;
    v13 = v5;
    v14 = 2114;
    v15 = v4;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "Found orphaned artwork (type=%d, source=%d) in database with token: %{public}@ relative path: %{public}@", v11, 0x22u);
  }
}

void __65__ML3MusicLibrary__removeOrphanedArtworkMetadataUsingConnection___block_invoke_941(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 int64ForColumnIndex:0];
  v5 = [v3 dataForColumnIndex:1];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__ML3MusicLibrary__removeOrphanedArtworkMetadataUsingConnection___block_invoke_2;
  v6[3] = &unk_27875DBB0;
  v8 = v4;
  v7 = *(a1 + 32);
  [MLITChapterTOC enumerateChapterTimesInFlattenedChapterData:v5 usingBlock:v6];
}

void __65__ML3MusicLibrary__removeOrphanedArtworkMetadataUsingConnection___block_invoke_3(id *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 stringForColumnIndex:0];
  v5 = [v3 stringForColumnIndex:1];

  if (([a1[4] containsObject:v4] & 1) == 0)
  {
    [a1[5] addObject:v4];
    [a1[6] addObject:v5];
    v6 = os_log_create("com.apple.amp.medialibrary", "Library");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543618;
      v8 = v4;
      v9 = 2114;
      v10 = v5;
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "Found orphaned chapter artwork in database with token: %{public}@ relative path: %{public}@", &v7, 0x16u);
    }
  }
}

void __65__ML3MusicLibrary__removeOrphanedArtworkMetadataUsingConnection___block_invoke_954(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = os_log_create("com.apple.amp.medialibrary", "Library");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) count];
    *buf = 134218242;
    v19 = v9;
    v20 = 2114;
    v21 = v5;
    _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "Deleting %ld artwork assets from orphaned metadata with variantType = %{public}@.", buf, 0x16u);
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM artwork WHERE artwork_variant_type = %@ AND artwork_token", v5];
  v11 = *(a1 + 40);
  v12 = +[ML3DatabaseStatementRenderer defaultRenderer];
  v13 = [v12 statementWithPrefix:v10 inParameterCount:{objc_msgSend(v6, "count")}];
  v17 = 0;
  v14 = [v11 executeUpdate:v13 withParameters:v6 error:&v17];
  v15 = v17;

  if ((v14 & 1) == 0)
  {
    v16 = os_log_create("com.apple.amp.medialibrary", "Library");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = v15;
      _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_ERROR, "Failed to remove orphaned artwork entries with error: %{public}@", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v7);
}

void __65__ML3MusicLibrary__removeOrphanedArtworkMetadataUsingConnection___block_invoke_2(uint64_t a1)
{
  v2 = [ML3MusicLibrary artworkTokenForChapterWithItemPID:*(a1 + 40) retrievalTime:?];
  [*(a1 + 32) addObject:v2];
}

- (BOOL)_removeOrphanedArtworkTokensUsingConnection:(id)connection
{
  v16[7] = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  v15[0] = &unk_2840C8AC8;
  v15[1] = &unk_2840C8AE0;
  v16[0] = @"item";
  v16[1] = @"container";
  v15[2] = &unk_2840C8AF8;
  v15[3] = &unk_2840C8B10;
  v16[2] = @"item_artist";
  v16[3] = @"genre";
  v15[4] = &unk_2840C8B28;
  v15[5] = &unk_2840C8B40;
  v16[4] = @"album";
  v16[5] = @"composer";
  v15[6] = &unk_2840C8B58;
  v16[6] = @"album_artist";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:7];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__ML3MusicLibrary__removeOrphanedArtworkTokensUsingConnection___block_invoke;
  v8[3] = &unk_27875DB88;
  v10 = &v11;
  v5 = connectionCopy;
  v9 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];
  v6 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v6 & 1;
}

void __63__ML3MusicLibrary__removeOrphanedArtworkTokensUsingConnection___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = MEMORY[0x277CCACA8];
  v9 = a3;
  v10 = [v8 stringWithFormat:@"DELETE FROM artwork_token WHERE entity_type = ? AND entity_pid NOT IN (SELECT ROWID FROM %@)", v9];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM best_artwork_token WHERE entity_type = ? AND entity_pid NOT IN (SELECT ROWID FROM %@)", v9];

  v26[0] = v7;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v13 = *(a1 + 32);
  v23 = 0;
  v14 = [v13 executeUpdate:v10 withParameters:v12 error:&v23];
  v15 = v23;
  *(*(*(a1 + 40) + 8) + 24) = v14;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v16 = os_log_create("com.apple.amp.medialibrary", "Library");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v15;
      _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_ERROR, "Failed to remove orphaned artwork tokens with error: %{public}@", buf, 0xCu);
    }

    v15 = 0;
  }

  v17 = *(a1 + 32);
  v22 = v15;
  v18 = [v17 executeUpdate:v11 withParameters:v12 error:&v22];
  v19 = v22;

  *(*(*(a1 + 40) + 8) + 24) = v18;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v20 = 0;
  }

  else
  {
    v21 = os_log_create("com.apple.amp.medialibrary", "Library");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v19;
      _os_log_impl(&dword_22D2FA000, v21, OS_LOG_TYPE_ERROR, "Failed to remove orphaned best artwork tokens with error: %{public}@", buf, 0xCu);
    }

    v20 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
  }

  *a4 = v20 & 1;
}

- (void)_deleteAllArtworkVariantsAtRelativePaths:(id)paths
{
  v41 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [(ML3MusicLibrary *)self _allArtworkVariantDirectories];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v34 = 0u;
  v23 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v23)
  {
    v21 = *v32;
    do
    {
      v5 = 0;
      do
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v5;
        v6 = *(*(&v31 + 1) + 8 * v5);
        context = objc_autoreleasePoolPush();
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v7 = pathsCopy;
        v8 = [v7 countByEnumeratingWithState:&v27 objects:v39 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v28;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v28 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v27 + 1) + 8 * i);
              v13 = objc_autoreleasePoolPush();
              v14 = [v6 URLByAppendingPathComponent:v12];
              path = [v14 path];
              v16 = [defaultManager fileExistsAtPath:path];

              if (v16)
              {
                v17 = os_log_create("com.apple.amp.medialibrary", "Default");
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v36 = v14;
                  _os_log_impl(&dword_22D2FA000, v17, OS_LOG_TYPE_ERROR, "Deleting artwork at: %{public}@", buf, 0xCu);
                }

                v26 = 0;
                [defaultManager removeItemAtURL:v14 error:&v26];
                v18 = v26;
                if (v18)
                {
                  v19 = os_log_create("com.apple.amp.medialibrary", "Default");
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543618;
                    v36 = v14;
                    v37 = 2114;
                    v38 = v18;
                    _os_log_impl(&dword_22D2FA000, v19, OS_LOG_TYPE_ERROR, "Failed to delete artwork at '%{public}@' with error: %{public}@", buf, 0x16u);
                  }
                }
              }

              objc_autoreleasePoolPop(v13);
            }

            v9 = [v7 countByEnumeratingWithState:&v27 objects:v39 count:16];
          }

          while (v9);
        }

        objc_autoreleasePoolPop(context);
        v5 = v25 + 1;
      }

      while (v25 + 1 != v23);
      v23 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v23);
  }
}

- (id)_allArtworkVariantDirectories
{
  v30[1] = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  array = [MEMORY[0x277CBEB18] array];
  v5 = MEMORY[0x277CBEBC0];
  originalArtworkDirectory = [(ML3MusicLibrary *)self originalArtworkDirectory];
  v7 = [v5 fileURLWithPath:originalArtworkDirectory isDirectory:1];
  [array addObject:v7];

  rootArtworkCacheDirectory = [(ML3MusicLibrary *)self rootArtworkCacheDirectory];
  v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:rootArtworkCacheDirectory isDirectory:1];
  v10 = *MEMORY[0x277CBE868];
  v30[0] = *MEMORY[0x277CBE868];
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  v23 = defaultManager;
  v12 = [defaultManager contentsOfDirectoryAtURL:v9 includingPropertiesForKeys:v11 options:4 error:0];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v25 + 1) + 8 * i);
        v24 = 0;
        v19 = [v18 getResourceValue:&v24 forKey:v10 error:0];
        v20 = v24;
        v21 = v20;
        if (v19 && [v20 BOOLValue])
        {
          [array addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v15);
  }

  return array;
}

- (BOOL)_determineAndUpdateBestArtworkTokensForEntityPersistentID:(int64_t)d entityType:(int64_t)type artworkType:(int64_t)artworkType retrievalTime:(double)time preserveExistingAvailableToken:(BOOL)token variantType:(int64_t)variantType usingConnection:(id)connection
{
  tokenCopy = token;
  v93[4] = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = __Block_byref_object_copy__2504;
  v79 = __Block_byref_object_dispose__2505;
  v80 = &stru_28408B690;
  v74[0] = 0;
  v74[1] = v74;
  v74[2] = 0x2020000000;
  v74[3] = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__2504;
  v72 = __Block_byref_object_dispose__2505;
  v73 = &stru_28408B690;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
  v83[0] = v13;
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v83[1] = v14;
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:artworkType];
  v83[2] = v15;
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:variantType];
  v83[3] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:4];
  v57 = [connectionCopy executeQuery:@"SELECT artwork_token.artwork_token withParameters:{artwork_token.artwork_source_type, (artwork.relative_path != '') AS has_artwork_on_disk FROM artwork_token LEFT OUTER JOIN artwork USING (artwork_token) WHERE artwork_token.entity_pid = ? AND artwork_token.entity_type = ? AND artwork_token.artwork_type = ? AND artwork_token.artwork_variant_type = ? ORDER BY artwork_token.artwork_source_type ASC", v17}];

  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __173__ML3MusicLibrary__determineAndUpdateBestArtworkTokensForEntityPersistentID_entityType_artworkType_retrievalTime_preserveExistingAvailableToken_variantType_usingConnection___block_invoke;
  v63[3] = &unk_27875DB60;
  v63[6] = &v75;
  v63[7] = &v64;
  v63[4] = self;
  v63[5] = v74;
  v63[10] = type;
  v63[11] = artworkType;
  v63[8] = &v68;
  v63[9] = d;
  [v57 enumerateRowsWithBlock:v63];
  v18 = v76[5];
  v19 = v69[5];
  v54 = v65[3];
  v61 = connectionCopy;
  v20 = v18;
  v21 = v19;
  v60 = v20;
  if (!v20)
  {
    v49 = v21;
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL UpdateBestArtworkToken(ML3DatabaseConnection *__strong, int64_t, ML3EntityType, ML3ArtworkType, ML3ArtworkVariantType, NSString *__strong, NSString *__strong, ML3ArtworkSourceType, BOOL)"}];
    [currentHandler handleFailureInFunction:v51 file:@"ML3MusicLibrary.m" lineNumber:4796 description:@"Available artwork token cannot be nil"];

    v21 = v49;
  }

  v59 = v21;
  if (!v21)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL UpdateBestArtworkToken(ML3DatabaseConnection *__strong, int64_t, ML3EntityType, ML3ArtworkType, ML3ArtworkVariantType, NSString *__strong, NSString *__strong, ML3ArtworkSourceType, BOOL)"}];
    [currentHandler2 handleFailureInFunction:v53 file:@"ML3MusicLibrary.m" lineNumber:4797 description:@"Fetchable artwork token cannot be nil"];
  }

  v22 = [v60 length];
  v23 = [v59 length];
  v24 = v23 != 0;
  if (!tokenCopy || v22)
  {
    if (!(v22 | v23))
    {
      goto LABEL_10;
    }
  }

  else
  {
    v25 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
    v93[0] = v25;
    v26 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    v93[1] = v26;
    v27 = [MEMORY[0x277CCABB0] numberWithInteger:artworkType];
    v93[2] = v27;
    v28 = [MEMORY[0x277CCABB0] numberWithInteger:variantType];
    v93[3] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:4];
    v30 = [v61 executeQuery:@"SELECT available_artwork_token FROM best_artwork_token WHERE entity_pid = ? AND entity_type = ? AND artwork_type = ? AND artwork_variant_type = ?" withParameters:v29];

    v86 = 0;
    v87 = &v86;
    v88 = 0x3032000000;
    v89 = __Block_byref_object_copy__2504;
    v90 = __Block_byref_object_dispose__2505;
    v91 = 0;
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __UpdateBestArtworkToken_block_invoke;
    v82[3] = &unk_2787653C8;
    v82[4] = &v86;
    [v30 enumerateRowsWithBlock:v82];
    if ([v87[5] length])
    {
      v31 = v87[5];

      v24 = 1;
      v60 = v31;
    }

    _Block_object_dispose(&v86, 8);

    if (!v24)
    {
LABEL_10:
      v32 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
      v86 = v32;
      v33 = [MEMORY[0x277CCABB0] numberWithInteger:type];
      v87 = v33;
      v34 = [MEMORY[0x277CCABB0] numberWithInteger:artworkType];
      v88 = v34;
      v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:3];
      v81 = 0;
      v36 = [v61 executeUpdate:@"DELETE FROM best_artwork_token WHERE entity_pid = ? AND entity_type = ? AND artwork_type = ?" withParameters:v35 error:&v81];
      v37 = v81;

      if ((v36 & 1) == 0)
      {
        v38 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v85 = v37;
          v39 = "Failed to delete best_artwork_token with error: %{public}@";
LABEL_18:
          _os_log_impl(&dword_22D2FA000, v38, OS_LOG_TYPE_ERROR, v39, buf, 0xCu);
          goto LABEL_19;
        }

        goto LABEL_19;
      }

      goto LABEL_15;
    }
  }

  v40 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
  v86 = v40;
  v41 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v87 = v41;
  v42 = [MEMORY[0x277CCABB0] numberWithInteger:artworkType];
  v88 = v42;
  v89 = v60;
  v90 = v59;
  v43 = [MEMORY[0x277CCABB0] numberWithInteger:v55];
  v91 = v43;
  v44 = [MEMORY[0x277CCABB0] numberWithInteger:variantType];
  v92 = v44;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:7];
  v81 = 0;
  v46 = [v61 executeUpdate:@"INSERT OR REPLACE INTO best_artwork_token (entity_pid withParameters:entity_type error:{artwork_type, available_artwork_token, fetchable_artwork_token, fetchable_artwork_source_type, artwork_variant_type) VALUES (?, ?, ?, ?, ?, ?, ?)", v45, &v81}];
  v37 = v81;

  if ((v46 & 1) == 0)
  {
    v38 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v85 = v37;
      v39 = "Failed to update best_artwork_token with error: %{public}@";
      goto LABEL_18;
    }

LABEL_19:

    v47 = 0;
    goto LABEL_20;
  }

LABEL_15:
  v47 = 1;
LABEL_20:

  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v68, 8);

  _Block_object_dispose(v74, 8);
  _Block_object_dispose(&v75, 8);

  return v47;
}

void __173__ML3MusicLibrary__determineAndUpdateBestArtworkTokensForEntityPersistentID_entityType_artworkType_retrievalTime_preserveExistingAvailableToken_variantType_usingConnection___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  obj = [v6 stringForColumnIndex:0];
  v7 = [v6 intForColumnIndex:1];
  v8 = [v6 intForColumnIndex:2];

  if (!v8)
  {
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v9 = 1;
    }

    else
    {
      v9 = v7 == 0;
    }

    if (v9)
    {
      goto LABEL_14;
    }

    if (![*(a1 + 32) isArtworkFetchableForPersistentID:*(a1 + 72) entityType:*(a1 + 80) artworkType:*(a1 + 88) artworkSourceType:v7])
    {
      goto LABEL_14;
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), obj);
    *(*(*(a1 + 56) + 8) + 24) = v7;
    if (!*(*(*(a1 + 40) + 8) + 24))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (!*(*(*(a1 + 40) + 8) + 24))
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
    *(*(*(a1 + 40) + 8) + 24) = v7;
    if (v7 == 100 || v7 == 200 || v7 == 300)
    {
LABEL_13:
      *a4 = 1;
    }
  }

LABEL_14:
}

- (BOOL)_updateBestArtworkTokensForArtworkToken:(id)token artworkType:(int64_t)type sourceType:(int64_t)sourceType variantType:(int64_t)variantType preserveExistingAvailableToken:(BOOL)availableToken usingConnection:(id)connection
{
  availableTokenCopy = availableToken;
  v50[4] = *MEMORY[0x277D85DE8];
  obja = token;
  connectionCopy = connection;
  array = [MEMORY[0x277CBEB18] array];
  v50[0] = obja;
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v50[1] = v14;
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:sourceType];
  v50[2] = v15;
  variantTypeCopy = variantType;
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:variantType];
  v50[3] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:4];
  v19 = [connectionCopy executeQuery:@"SELECT entity_pid withParameters:{entity_type FROM artwork_token WHERE artwork_token = ? AND artwork_type = ? AND artwork_source_type = ? AND artwork_variant_type = ?", v18}];

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __141__ML3MusicLibrary__updateBestArtworkTokensForArtworkToken_artworkType_sourceType_variantType_preserveExistingAvailableToken_usingConnection___block_invoke;
  v44[3] = &unk_27875DB38;
  v20 = array;
  v45 = v20;
  v36 = obja;
  v46 = v36;
  typeCopy = type;
  typeCopy2 = type;
  sourceTypeCopy = sourceType;
  [v19 enumerateRowsWithBlock:v44];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v20;
  v22 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v22)
  {
    v23 = v22;
    v34 = v19;
    v24 = *v41;
    while (2)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v41 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v40 + 1) + 8 * i);
        v27 = [v26 objectAtIndexedSubscript:{0, v34}];
        longLongValue = [v27 longLongValue];

        v29 = [v26 objectAtIndexedSubscript:1];
        intValue = [v29 intValue];

        if (![(ML3MusicLibrary *)self _determineAndUpdateBestArtworkTokensForEntityPersistentID:longLongValue entityType:intValue artworkType:typeCopy2 retrievalTime:availableTokenCopy preserveExistingAvailableToken:variantTypeCopy variantType:connectionCopy usingConnection:0.0])
        {
          v31 = 0;
          goto LABEL_11;
        }

        [MLEntityClassForType(intValue) incrementRevisionWithLibrary:self persistentID:longLongValue deletionType:0 revisionType:1 usingConnection:connectionCopy];
      }

      v23 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }

    v31 = 1;
LABEL_11:
    v19 = v34;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

void __141__ML3MusicLibrary__updateBestArtworkTokensForArtworkToken_artworkType_sourceType_variantType_preserveExistingAvailableToken_usingConnection___block_invoke(void *a1, void *a2, void *a3)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = [v6 objectAtIndexedSubscript:0];
  v8 = [v6 objectAtIndexedSubscript:1];

  if (v7 && v8)
  {
    v9 = a1[4];
    v22[0] = v7;
    v22[1] = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    [v9 addObject:v10];
  }

  else
  {
    v10 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = a1[5];
      v12 = a1[6];
      v13 = a1[7];
      v14 = 138544130;
      v15 = v11;
      v16 = 1024;
      v17 = v12;
      v18 = 1024;
      v19 = v13;
      v20 = 2114;
      v21 = v5;
      _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_ERROR, "Could not find artwork with token %{public}@, type=%d, source=%d - error=%{public}@", &v14, 0x22u);
    }
  }
}

- (BOOL)_insertArtworkRowWithArtworkToken:(id)token artworkType:(int64_t)type sourceType:(int64_t)sourceType variantType:(int64_t)variantType relativePath:(id)path usingConnection:(id)connection
{
  v33 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  pathCopy = path;
  connectionCopy = connection;
  if (![pathCopy length])
  {
    v22 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v32 = tokenCopy;
      _os_log_impl(&dword_22D2FA000, v22, OS_LOG_TYPE_DEFAULT, "_insertArtworkRowWithArtworkToken passed empty path for artwork with token %{public}@", buf, 0xCu);
    }

    goto LABEL_9;
  }

  selfCopy = self;
  v28 = tokenCopy;
  v30[0] = tokenCopy;
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v30[1] = v17;
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:sourceType];
  v30[2] = v18;
  v30[3] = pathCopy;
  variantTypeCopy = variantType;
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:variantType];
  v30[4] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:5];
  v29 = 0;
  v21 = [connectionCopy executeUpdate:@"INSERT OR REPLACE INTO artwork (artwork_token withParameters:artwork_type error:{artwork_source_type, relative_path, artwork_variant_type) VALUES (?, ?, ?, ?, ?)", v20, &v29}];
  v22 = v29;

  if (!v21)
  {
    tokenCopy = v28;
    v24 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v32 = v22;
      _os_log_impl(&dword_22D2FA000, v24, OS_LOG_TYPE_ERROR, "Failed to insert into artwork table with error: %{public}@", buf, 0xCu);
    }

LABEL_9:
    v23 = 0;
    goto LABEL_10;
  }

  v23 = 1;
  [(ML3MusicLibrary *)selfCopy _updateBestArtworkTokensForArtworkToken:v28 artworkType:type sourceType:sourceType variantType:variantTypeCopy preserveExistingAvailableToken:1 usingConnection:connectionCopy];
  [(ML3MusicLibrary *)selfCopy updatePurgeabilityForOriginalArtworkWithRelativePath:pathCopy];
  tokenCopy = v28;
LABEL_10:

  return v23;
}

- (BOOL)_insertArtworkRowWithArtworkToken:(id)token artworkType:(int64_t)type sourceType:(int64_t)sourceType variantType:(int64_t)variantType relativePath:(id)path
{
  tokenCopy = token;
  pathCopy = path;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __101__ML3MusicLibrary__insertArtworkRowWithArtworkToken_artworkType_sourceType_variantType_relativePath___block_invoke;
  v17[3] = &unk_27875DB10;
  v20 = &v24;
  v17[4] = self;
  v14 = tokenCopy;
  v18 = v14;
  typeCopy = type;
  sourceTypeCopy = sourceType;
  variantTypeCopy = variantType;
  v15 = pathCopy;
  v19 = v15;
  [(ML3MusicLibrary *)self performDatabaseTransactionWithBlock:v17];
  LOBYTE(self) = *(v25 + 24);

  _Block_object_dispose(&v24, 8);
  return self;
}

- (void)_logDatabaseAccess
{
  if (!__daemonProcessInfo)
  {
    privacyContext = [(ML3MusicLibrary *)self privacyContext];
    [privacyContext logDatabasePrivacyAccess];
  }
}

- (id)securityScopedFileURLForItemPID:(unint64_t)d
{
  v5 = +[MLMediaLibraryService sharedMediaLibraryService];
  databasePath = [(ML3MusicLibrary *)self databasePath];
  v7 = [v5 securityScopedURLForItemPID:d withDatabasePath:databasePath];

  return v7;
}

- (BOOL)sanitizeSortMapContentsUsingConnection:(id)connection didSortMapEntries:(BOOL *)entries
{
  v59 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v6 = [MEMORY[0x277CBEB58] set];
  v7 = [connectionCopy executeQuery:{@"SELECT DISTINCT title, sort_title FROM item_extra JOIN item USING(item_pid) WHERE title_order = 0 AND LENGTH(title)"}];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __76__ML3MusicLibrary_sanitizeSortMapContentsUsingConnection_didSortMapEntries___block_invoke;
  v48[3] = &unk_278766118;
  v8 = v6;
  v49 = v8;
  [v7 enumerateRowsWithBlock:v48];

  v9 = [connectionCopy executeQuery:{@"SELECT DISTINCT item_artist, sort_item_artist, series_name, sort_series_name FROM item_artist JOIN item USING(item_artist_pid) WHERE item_artist_order = 0 AND LENGTH(item_artist)"}];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __76__ML3MusicLibrary_sanitizeSortMapContentsUsingConnection_didSortMapEntries___block_invoke_2;
  v46[3] = &unk_278766118;
  v10 = v8;
  v47 = v10;
  [v9 enumerateRowsWithBlock:v46];

  v11 = [connectionCopy executeQuery:{@"SELECT DISTINCT album_artist, sort_album_artist FROM album_artist WHERE sort_order = 0 AND LENGTH(album_artist)"}];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __76__ML3MusicLibrary_sanitizeSortMapContentsUsingConnection_didSortMapEntries___block_invoke_3;
  v44[3] = &unk_278766118;
  v12 = v10;
  v45 = v12;
  [v11 enumerateRowsWithBlock:v44];

  v13 = [connectionCopy executeQuery:{@"SELECT DISTINCT album, sort_album FROM album JOIN item USING(album_pid) WHERE album_order = 0 AND LENGTH(album)"}];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __76__ML3MusicLibrary_sanitizeSortMapContentsUsingConnection_didSortMapEntries___block_invoke_4;
  v42[3] = &unk_278766118;
  v14 = v12;
  v43 = v14;
  [v13 enumerateRowsWithBlock:v42];

  v15 = [connectionCopy executeQuery:{@"SELECT DISTINCT composer, sort_composer FROM composer JOIN item USING(composer_pid) WHERE composer_order = 0 AND LENGTH(composer)"}];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __76__ML3MusicLibrary_sanitizeSortMapContentsUsingConnection_didSortMapEntries___block_invoke_5;
  v40[3] = &unk_278766118;
  v16 = v14;
  v41 = v16;
  [v15 enumerateRowsWithBlock:v40];

  v17 = [connectionCopy executeQuery:@"SELECT DISTINCT genre FROM genre JOIN item USING(genre_id) WHERE genre_order = 0 AND LENGTH(genre)"];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __76__ML3MusicLibrary_sanitizeSortMapContentsUsingConnection_didSortMapEntries___block_invoke_6;
  v38[3] = &unk_278766118;
  v18 = v16;
  v39 = v18;
  [v17 enumerateRowsWithBlock:v38];

  if ([v18 count])
  {
    v19 = os_log_create("com.apple.amp.medialibrary", "Library");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v18;
      _os_log_impl(&dword_22D2FA000, v19, OS_LOG_TYPE_DEFAULT, "Sanity check recoverable condition: Sort map was missing the following names %{public}@", &buf, 0xCu);
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v20 = v18;
    v21 = [v20 countByEnumeratingWithState:&v34 objects:v58 count:16];
    if (v21)
    {
      v22 = *v35;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v35 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v57 = *(*(&v34 + 1) + 8 * i);
          v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
          [connectionCopy executeUpdate:@"INSERT OR REPLACE INTO sort_map (name withParameters:sort_key) VALUES (? error:{'')", v24, 0}];
        }

        v21 = [v20 countByEnumeratingWithState:&v34 objects:v58 count:16];
      }

      while (v21);
    }

    *(v51 + 24) = 1;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v55 = 0x2020000000;
  v56 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v33[3] = 0;
  v25 = [connectionCopy executeQuery:{@"SELECT name_order, name_section FROM sort_map ORDER BY sort_key ASC"}];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __76__ML3MusicLibrary_sanitizeSortMapContentsUsingConnection_didSortMapEntries___block_invoke_907;
  v32[3] = &unk_278762B58;
  v32[4] = &buf;
  v32[5] = &v50;
  v32[6] = v33;
  [v25 enumerateRowsWithBlock:v32];

  v26 = *(v51 + 24);
  if (entries)
  {
    *entries = v26;
  }

  if ((v26 & 1) == 0)
  {
    goto LABEL_19;
  }

  v27 = os_log_create("com.apple.amp.medialibrary", "Library");
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *v31 = 0;
    _os_log_impl(&dword_22D2FA000, v27, OS_LOG_TYPE_DEFAULT, "Sanity check recoverable condition: Sort map is inconsistent", v31, 2u);
  }

  if ([(ML3MusicLibrary *)self inTransactionUpdateSortMapOnConnection:connectionCopy forceUpdateOriginals:1]&& [(ML3MusicLibrary *)self inTransactionUpdateSearchMapOnConnection:connectionCopy])
  {
LABEL_19:
    v28 = 1;
  }

  else
  {
    v28 = 0;
  }

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v50, 8);
  return v28;
}

void __76__ML3MusicLibrary_sanitizeSortMapContentsUsingConnection_didSortMapEntries___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 stringForColumnIndex:0];
  v4 = [v3 length];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v13 stringForColumnIndex:0];
    v7 = [v6 sanitizedString];
    [v5 addObject:v7];
  }

  v8 = [v13 stringForColumnIndex:1];
  v9 = [v8 length];

  if (v9)
  {
    v10 = *(a1 + 32);
    v11 = [v13 stringForColumnIndex:1];
    v12 = [v11 sanitizedString];
    [v10 addObject:v12];
  }
}

void __76__ML3MusicLibrary_sanitizeSortMapContentsUsingConnection_didSortMapEntries___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = a2;
  v3 = [v23 stringForColumnIndex:0];
  v4 = [v3 length];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v23 stringForColumnIndex:0];
    v7 = [v6 sanitizedString];
    [v5 addObject:v7];
  }

  v8 = [v23 stringForColumnIndex:1];
  v9 = [v8 length];

  if (v9)
  {
    v10 = *(a1 + 32);
    v11 = [v23 stringForColumnIndex:1];
    v12 = [v11 sanitizedString];
    [v10 addObject:v12];
  }

  v13 = [v23 stringForColumnIndex:2];
  v14 = [v13 length];

  if (v14)
  {
    v15 = *(a1 + 32);
    v16 = [v23 stringForColumnIndex:2];
    v17 = [v16 sanitizedString];
    [v15 addObject:v17];
  }

  v18 = [v23 stringForColumnIndex:3];
  v19 = [v18 length];

  if (v19)
  {
    v20 = *(a1 + 32);
    v21 = [v23 stringForColumnIndex:3];
    v22 = [v21 sanitizedString];
    [v20 addObject:v22];
  }
}

void __76__ML3MusicLibrary_sanitizeSortMapContentsUsingConnection_didSortMapEntries___block_invoke_3(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 stringForColumnIndex:0];
  v4 = [v3 length];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v13 stringForColumnIndex:0];
    v7 = [v6 sanitizedString];
    [v5 addObject:v7];
  }

  v8 = [v13 stringForColumnIndex:1];
  v9 = [v8 length];

  if (v9)
  {
    v10 = *(a1 + 32);
    v11 = [v13 stringForColumnIndex:1];
    v12 = [v11 sanitizedString];
    [v10 addObject:v12];
  }
}

void __76__ML3MusicLibrary_sanitizeSortMapContentsUsingConnection_didSortMapEntries___block_invoke_4(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 stringForColumnIndex:0];
  v4 = [v3 length];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v13 stringForColumnIndex:0];
    v7 = [v6 sanitizedString];
    [v5 addObject:v7];
  }

  v8 = [v13 stringForColumnIndex:1];
  v9 = [v8 length];

  if (v9)
  {
    v10 = *(a1 + 32);
    v11 = [v13 stringForColumnIndex:1];
    v12 = [v11 sanitizedString];
    [v10 addObject:v12];
  }
}

void __76__ML3MusicLibrary_sanitizeSortMapContentsUsingConnection_didSortMapEntries___block_invoke_5(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 stringForColumnIndex:0];
  v4 = [v3 length];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v13 stringForColumnIndex:0];
    v7 = [v6 sanitizedString];
    [v5 addObject:v7];
  }

  v8 = [v13 stringForColumnIndex:1];
  v9 = [v8 length];

  if (v9)
  {
    v10 = *(a1 + 32);
    v11 = [v13 stringForColumnIndex:1];
    v12 = [v11 sanitizedString];
    [v10 addObject:v12];
  }
}

void __76__ML3MusicLibrary_sanitizeSortMapContentsUsingConnection_didSortMapEntries___block_invoke_6(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 stringForColumnIndex:0];
  v4 = [v3 length];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v8 stringForColumnIndex:0];
    v7 = [v6 sanitizedString];
    [v5 addObject:v7];
  }
}

void __76__ML3MusicLibrary_sanitizeSortMapContentsUsingConnection_didSortMapEntries___block_invoke_907(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 int64ForColumnIndex:0];
  v8 = [v6 int64ForColumnIndex:1];

  if (v7)
  {
    v9 = *(a1[4] + 8);
    if (v7 >= *(v9 + 24))
    {
      *(v9 + 24) = v7;
      if (v8 == -1)
      {
        return;
      }

      v12 = *(a1[6] + 8);
      if (v8 >= *(v12 + 24))
      {
        *(v12 + 24) = v8;
        return;
      }

      v13 = os_log_create("com.apple.amp.medialibrary", "Library");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(*(a1[6] + 8) + 24);
        v15 = 134218240;
        v16 = v8;
        v17 = 2048;
        v18 = v14;
        _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_DEFAULT, "Sort map nextSection %lli, nameSection %lli", &v15, 0x16u);
      }
    }

    else
    {
      v10 = os_log_create("com.apple.amp.medialibrary", "Library");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(*(a1[4] + 8) + 24);
        v15 = 134218240;
        v16 = v7;
        v17 = 2048;
        v18 = v11;
        _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "Sort map nextOrder %lli, nameOrder %lli", &v15, 0x16u);
      }
    }

    *(*(a1[5] + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)sanitizeDatabaseContentsUsingConnection:(id)connection removeOrphanedAssets:(BOOL *)assets
{
  selfCopy = self;
  v81 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v6 = [connectionCopy executeQuery:@"SELECT COUNT() FROM item"];
  int64ValueForFirstRowAndColumn = [v6 int64ValueForFirstRowAndColumn];

  v8 = [connectionCopy executeQuery:@"SELECT COUNT() FROM item_extra"];
  int64ValueForFirstRowAndColumn2 = [v8 int64ValueForFirstRowAndColumn];

  v10 = [connectionCopy executeQuery:@"SELECT COUNT() FROM item_stats"];
  int64ValueForFirstRowAndColumn3 = [v10 int64ValueForFirstRowAndColumn];

  v12 = [connectionCopy executeQuery:@"SELECT COUNT() FROM item_store"];
  int64ValueForFirstRowAndColumn4 = [v12 int64ValueForFirstRowAndColumn];

  v14 = [connectionCopy executeQuery:@"SELECT COUNT() FROM item_video"];
  int64ValueForFirstRowAndColumn5 = [v14 int64ValueForFirstRowAndColumn];

  v16 = int64ValueForFirstRowAndColumn4 == (int64ValueForFirstRowAndColumn3 == (int64ValueForFirstRowAndColumn == int64ValueForFirstRowAndColumn2));
  v56 = int64ValueForFirstRowAndColumn;
  if (int64ValueForFirstRowAndColumn5 == v16)
  {
    goto LABEL_21;
  }

  v17 = os_log_create("com.apple.amp.medialibrary", "Library");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219008;
    v72 = int64ValueForFirstRowAndColumn;
    v73 = 2048;
    v74 = int64ValueForFirstRowAndColumn2;
    v75 = 2048;
    v76 = int64ValueForFirstRowAndColumn3;
    v77 = 2048;
    v78 = int64ValueForFirstRowAndColumn4;
    v79 = 2048;
    v80 = int64ValueForFirstRowAndColumn5;
    _os_log_impl(&dword_22D2FA000, v17, OS_LOG_TYPE_DEFAULT, "Sanity check recoverable condition for inconsistent counts: item(%lli), item_extra(%lli), item_stats(%lli), item_store(%lli), item_video(%lli) ", buf, 0x34u);
  }

  array = [MEMORY[0x277CBEB18] array];
  if (int64ValueForFirstRowAndColumn > int64ValueForFirstRowAndColumn2)
  {
    v19 = int64ValueForFirstRowAndColumn4 == (int64ValueForFirstRowAndColumn3 == (int64ValueForFirstRowAndColumn == int64ValueForFirstRowAndColumn2));
    v20 = [connectionCopy executeQuery:@"SELECT ROWID FROM item WHERE item_pid IN (SELECT item.item_pid FROM item LEFT OUTER JOIN item_extra ON item.item_pid=item_extra.item_pid WHERE item_extra.item_pid ISNULL)"];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __80__ML3MusicLibrary_sanitizeDatabaseContentsUsingConnection_removeOrphanedAssets___block_invoke;
    v66[3] = &unk_278766118;
    v21 = &v67;
    v67 = array;
    [v20 enumerateRowsWithBlock:v66];
    v22 = @"DELETE FROM item WHERE item_pid IN (SELECT item.item_pid FROM item LEFT OUTER JOIN item_extra ON item.item_pid=item_extra.item_pid WHERE item_extra.item_pid ISNULL)";
LABEL_8:

    [connectionCopy executeUpdate:v22];
    v16 = v19;
    int64ValueForFirstRowAndColumn = v56;
    goto LABEL_9;
  }

  if (int64ValueForFirstRowAndColumn < int64ValueForFirstRowAndColumn2)
  {
    v19 = int64ValueForFirstRowAndColumn4 == (int64ValueForFirstRowAndColumn3 == (int64ValueForFirstRowAndColumn == int64ValueForFirstRowAndColumn2));
    v20 = [connectionCopy executeQuery:@"SELECT ROWID FROM item_extra WHERE item_pid IN (SELECT item_extra.item_pid FROM item_extra LEFT OUTER JOIN item ON item_extra.item_pid=item.item_pid WHERE item.item_pid ISNULL)"];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __80__ML3MusicLibrary_sanitizeDatabaseContentsUsingConnection_removeOrphanedAssets___block_invoke_2;
    v64[3] = &unk_278766118;
    v21 = &v65;
    v65 = array;
    [v20 enumerateRowsWithBlock:v64];
    v22 = @"DELETE FROM item_extra WHERE item_pid IN (SELECT item_extra.item_pid FROM item_extra LEFT OUTER JOIN item ON item_extra.item_pid=item.item_pid WHERE item.item_pid ISNULL)";
    goto LABEL_8;
  }

LABEL_9:
  [connectionCopy executeUpdate:@"DELETE FROM item_stats WHERE item_pid IN (SELECT item_stats.item_pid FROM item_stats LEFT OUTER JOIN item ON item_stats.item_pid=item.item_pid WHERE item.item_pid ISNULL)"];
  [connectionCopy executeUpdate:@"DELETE FROM item_search WHERE item_pid IN (SELECT item_search.item_pid FROM item_search LEFT OUTER JOIN item ON item_search.item_pid=item.item_pid WHERE item.item_pid ISNULL)"];
  [connectionCopy executeUpdate:@"DELETE FROM item_store WHERE item_pid IN (SELECT item_store.item_pid FROM item_store LEFT OUTER JOIN item ON item_store.item_pid=item.item_pid WHERE item.item_pid ISNULL)"];
  [connectionCopy executeUpdate:@"DELETE FROM item_playback WHERE item_pid IN (SELECT item_playback.item_pid FROM item_playback LEFT OUTER JOIN item ON item_playback.item_pid=item.item_pid WHERE item.item_pid ISNULL)"];
  [connectionCopy executeUpdate:@"DELETE FROM item_video WHERE Item_pid IN (SELECT item_video.item_pid FROM item_video LEFT OUTER JOIN item ON item_video.item_pid=item.item_pid WHERE item.item_pid ISNULL)"];
  if ([array count])
  {
    v53 = v16;
    v54 = int64ValueForFirstRowAndColumn5;
    v59 = connectionCopy;
    assetsCopy = assets;
    v23 = os_log_create("com.apple.amp.medialibrary", "Library");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v72 = array;
      _os_log_impl(&dword_22D2FA000, v23, OS_LOG_TYPE_DEFAULT, "Sanity check: Incrementing revision for removed tracks: %{public}@", buf, 0xCu);
    }

    v24 = [MEMORY[0x277CCABB0] numberWithInteger:{+[ML3Track revisionTrackingCode](ML3Track, "revisionTrackingCode")}];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v52 = array;
    v58 = array;
    v25 = [v58 countByEnumeratingWithState:&v60 objects:v70 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v61;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v61 != v27)
          {
            objc_enumerationMutation(v58);
          }

          v69[0] = *(*(&v60 + 1) + 8 * i);
          v29 = v69[0];
          v69[1] = &unk_2840C8A98;
          v69[2] = v24;
          v69[3] = &unk_2840C8AB0;
          v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:{4, v52}];
          [v59 executeUpdate:@"REPLACE INTO entity_revision (entity_pid withParameters:deleted error:{class, revision_type) VALUES (?, ?, ?, ?)", v30, 0}];

          v68[0] = &unk_2840C8AB0;
          v68[1] = v24;
          v68[2] = v29;
          v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:3];
          [v59 executeUpdate:@"DELETE FROM entity_revision WHERE revision_type > ? AND class = ? AND entity_pid = ?" withParameters:v31 error:0];
        }

        v26 = [v58 countByEnumeratingWithState:&v60 objects:v70 count:16];
      }

      while (v26);
    }

    int64ValueForFirstRowAndColumn5 = v54;
    assets = assetsCopy;
    connectionCopy = v59;
    array = v52;
    v16 = v53;
    int64ValueForFirstRowAndColumn = v56;
  }

LABEL_21:
  v32 = [connectionCopy executeQuery:{@"SELECT item_pid FROM item JOIN item_store USING(item_pid) WHERE media_type = 8 AND title_order = 0 AND album_order = 0 AND album_artist_order = 0 AND subscription_store_item_id = 0 AND is_ota_purchased = 0 AND store_saga_id = 0 AND store_item_id = 0 AND sync_id = 0 AND purchase_history_id = 0 AND base_location_id = 0 AND remote_location_id = 0 AND disc_number = 0 AND track_number = 0 AND needs_reporting = 1", v52}];
  v33 = [v32 objectsInColumn:0];

  if ([v33 count])
  {
    [v33 count];
    MEMORY[0x28223BE20]();
    v35 = &v52 - v34;
    if ([v33 count])
    {
      v36 = 0;
      do
      {
        v37 = [v33 objectAtIndexedSubscript:v36];
        *&v35[8 * v36] = [v37 longLongValue];

        ++v36;
      }

      while ([v33 count] > v36);
    }

    v38 = [v33 count];
    v39 = [ML3Track deleteFromLibrary:selfCopy deletionType:2 persistentIDs:v35 count:v38 usingConnection:connectionCopy];
    int64ValueForFirstRowAndColumn = v56;
    if (v39)
    {
      v40 = os_log_create("com.apple.amp.medialibrary", "Library");
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v72 = v33;
        _os_log_impl(&dword_22D2FA000, v40, OS_LOG_TYPE_DEFAULT, "Sanity check: Deleted garbage tracks %{public}@", buf, 0xCu);
      }
    }
  }

  v41 = selfCopy;
  [ML3Collection removeOrphanedCollectionsInLibrary:selfCopy usingConnection:connectionCopy];
  [(ML3MusicLibrary *)v41 coalesceMismatchedCollectionsUsingConnection:connectionCopy];
  [(ML3MusicLibrary *)v41 repairAlbumArtistRelationshipsWithConnection:connectionCopy];
  [(ML3Collection *)ML3Album canonicalizeCollectionRepresentativeItemsInLibrary:v41 usingConnection:connectionCopy];
  [(ML3Collection *)ML3AlbumArtist canonicalizeCollectionRepresentativeItemsInLibrary:v41 usingConnection:connectionCopy];
  [(ML3Collection *)ML3Artist canonicalizeCollectionRepresentativeItemsInLibrary:v41 usingConnection:connectionCopy];
  [(ML3Collection *)ML3Composer canonicalizeCollectionRepresentativeItemsInLibrary:v41 usingConnection:connectionCopy];
  [(ML3Collection *)ML3Genre canonicalizeCollectionRepresentativeItemsInLibrary:v41 usingConnection:connectionCopy];
  v42 = [connectionCopy executeQuery:@"SELECT COUNT() FROM lyrics"];
  int64ValueForFirstRowAndColumn6 = [v42 int64ValueForFirstRowAndColumn];

  if (int64ValueForFirstRowAndColumn6 != int64ValueForFirstRowAndColumn)
  {
    v44 = os_log_create("com.apple.amp.medialibrary", "Library");
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v72 = int64ValueForFirstRowAndColumn;
      v73 = 2048;
      v74 = int64ValueForFirstRowAndColumn6;
      _os_log_impl(&dword_22D2FA000, v44, OS_LOG_TYPE_DEFAULT, "Sanity check recoverable condition: %lli rows in item and %lli rows in lyrics", buf, 0x16u);
    }

    [connectionCopy executeUpdate:@"INSERT INTO lyrics (item_pid) SELECT item.item_pid FROM item LEFT OUTER JOIN lyrics USING (item_pid) WHERE lyrics.item_pid ISNULL;"];
  }

  if (int64ValueForFirstRowAndColumn5 != v16)
  {
    v45 = [connectionCopy executeQuery:@"SELECT value FROM _MLDatabaseProperties WHERE key = 'MLCloudDatabaseRevision'"];
    int64ValueForFirstRowAndColumn7 = [v45 int64ValueForFirstRowAndColumn];

    if (int64ValueForFirstRowAndColumn7 >= 1)
    {
      v47 = os_log_create("com.apple.amp.medialibrary", "Library");
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22D2FA000, v47, OS_LOG_TYPE_DEFAULT, "Sanity check: flagging cloud library for full refresh after next update", buf, 2u);
      }

      [connectionCopy executeUpdate:@"INSERT OR REPLACE INTO _MLDatabaseProperties (value withParameters:key) VALUES (? error:{?)", &unk_2840C6830, 0}];
    }

    v48 = [connectionCopy executeQuery:@"SELECT value FROM _MLDatabaseProperties WHERE key = 'MLJaliscoDatabaseRevision'"];
    int64ValueForFirstRowAndColumn8 = [v48 int64ValueForFirstRowAndColumn];

    if (int64ValueForFirstRowAndColumn8 >= 1)
    {
      v50 = os_log_create("com.apple.amp.medialibrary", "Library");
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22D2FA000, v50, OS_LOG_TYPE_DEFAULT, "Sanity check: flagging purchase history for next update to include all tokens", buf, 2u);
      }

      [connectionCopy executeUpdate:@"INSERT OR REPLACE INTO _MLDatabaseProperties (value withParameters:key) VALUES (? error:{?)", &unk_2840C6848, 0}];
    }

    v51 = os_log_create("com.apple.amp.medialibrary", "Library");
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v51, OS_LOG_TYPE_DEFAULT, "Sanity check: resetting sync anchors", buf, 2u);
    }

    [connectionCopy executeUpdate:@"DELETE FROM _MLDatabaseProperties WHERE key = 'MLSyncClientLastSyncedRevision'"];
    [connectionCopy executeUpdate:@"DELETE FROM _MLDatabaseProperties WHERE key = 'MLSyncClientSyncAnchor'"];
    [connectionCopy executeUpdate:@"DELETE FROM _MLDatabaseProperties WHERE key = 'MLSyncClientGenerationID'"];
    [connectionCopy executeUpdate:@"DELETE FROM _MLDatabaseProperties WHERE key = 'MLSyncClientHasPendingAssets'"];
  }

  if (assets)
  {
    *assets = int64ValueForFirstRowAndColumn5 != v16;
  }
}

void __80__ML3MusicLibrary_sanitizeDatabaseContentsUsingConnection_removeOrphanedAssets___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectAtIndexedSubscript:0];
  [v2 addObject:v3];
}

void __80__ML3MusicLibrary_sanitizeDatabaseContentsUsingConnection_removeOrphanedAssets___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectAtIndexedSubscript:0];
  [v2 addObject:v3];
}

- (BOOL)validateItemTablesEntriesUsingConnection:(id)connection
{
  v30 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v4 = [connectionCopy executeQuery:@"SELECT COUNT() FROM item"];
  int64ValueForFirstRowAndColumn = [v4 int64ValueForFirstRowAndColumn];

  v6 = [connectionCopy executeQuery:@"SELECT COUNT() FROM item_extra"];
  int64ValueForFirstRowAndColumn2 = [v6 int64ValueForFirstRowAndColumn];

  v8 = [connectionCopy executeQuery:@"SELECT COUNT() FROM item_stats"];
  int64ValueForFirstRowAndColumn3 = [v8 int64ValueForFirstRowAndColumn];

  v10 = [connectionCopy executeQuery:@"SELECT COUNT() FROM item_store"];
  int64ValueForFirstRowAndColumn4 = [v10 int64ValueForFirstRowAndColumn];

  v12 = [connectionCopy executeQuery:@"SELECT COUNT() FROM item_video"];

  int64ValueForFirstRowAndColumn5 = [v12 int64ValueForFirstRowAndColumn];
  v16 = int64ValueForFirstRowAndColumn == int64ValueForFirstRowAndColumn2 && int64ValueForFirstRowAndColumn == int64ValueForFirstRowAndColumn3 && int64ValueForFirstRowAndColumn == int64ValueForFirstRowAndColumn4 && int64ValueForFirstRowAndColumn == int64ValueForFirstRowAndColumn5;
  v17 = v16;
  if (!v16)
  {
    v18 = os_log_create("com.apple.amp.medialibrary", "Library");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134219008;
      v21 = int64ValueForFirstRowAndColumn;
      v22 = 2048;
      v23 = int64ValueForFirstRowAndColumn2;
      v24 = 2048;
      v25 = int64ValueForFirstRowAndColumn3;
      v26 = 2048;
      v27 = int64ValueForFirstRowAndColumn4;
      v28 = 2048;
      v29 = int64ValueForFirstRowAndColumn5;
      _os_log_impl(&dword_22D2FA000, v18, OS_LOG_TYPE_DEFAULT, "Counts in item table(s) are inconsistent: item(%lli), item_extra(%lli), item_stats(%lli), item_store(%lli), item_video(%lli) ", &v20, 0x34u);
    }
  }

  return v17;
}

- (void)deletePresignedValidity
{
  v2 = os_log_create("com.apple.amp.medialibrary", "Library");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_22D2FA000, v2, OS_LOG_TYPE_ERROR, "deleting presigned validity", v4, 2u);
  }

  v3 = GetP7BPath();
  unlink([v3 fileSystemRepresentation]);
}

- (BOOL)verifyPresignedValidity
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = GetP7BPath();
  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v3];
  if ([v4 length])
  {
    data = [MEMORY[0x277CBEB28] data];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __42__ML3MusicLibrary_verifyPresignedValidity__block_invoke;
    v13[3] = &unk_278766140;
    v6 = data;
    v14 = v6;
    [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:0 withBlock:v13];
    memset(&v12, 0, sizeof(v12));
    CC_SHA1_Init(&v12);
    CC_SHA1_Update(&v12, [v6 bytes], objc_msgSend(v6, "length"));
    CC_SHA1_Final(md, &v12);
    [v4 length];
    [v4 bytes];
    zLTj();
    v8 = v7 == 0;
    if (v7)
    {
      v9 = v7;
      v10 = os_log_create("com.apple.amp.medialibrary", "Library");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134219008;
        v16 = v9;
        v17 = 1024;
        v18 = md[0];
        v19 = 1024;
        v20 = md[1];
        v21 = 1024;
        v22 = md[2];
        v23 = 1024;
        v24 = md[3];
        _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "BarVerify returned %ld for %02x%02x%02x%02x...", buf, 0x24u);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __42__ML3MusicLibrary_verifyPresignedValidity__block_invoke(uint64_t a1, void *a2)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v22[0] = v4;
  v5 = objc_opt_new();
  v22[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  v9 = v7;
  if (v8)
  {
    v10 = v8;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [*(*(&v17 + 1) + 8 * i) name];
        v14 = [v3 tableExists:v13];

        if (!v14)
        {
          v9 = v7;
          goto LABEL_11;
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    v9 = [v3 executeQuery:{@"SELECT ML3TrackDigestCompute(item.item_pid, item.media_type, item_extra.location, item_extra.file_size) FROM item JOIN item_extra USING (item_pid) ORDER BY item_pid"}];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __42__ML3MusicLibrary_verifyPresignedValidity__block_invoke_2;
    v15[3] = &unk_278766118;
    v16 = *(a1 + 32);
    [v9 enumerateRowsWithBlock:v15];
  }

LABEL_11:
}

uint64_t __42__ML3MusicLibrary_verifyPresignedValidity__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = 0;
  v4 = 0;
  [a2 getBlobBytes:&v5 outLength:&v4 forColumnIndex:0];
  return [*(a1 + 32) appendBytes:v5 length:v4];
}

- (BOOL)hasPresignedValidity
{
  v2 = GetP7BPath();
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [defaultManager fileExistsAtPath:v2];

  return v4;
}

- (void)migratePresignedValidity
{
  if ([(ML3MusicLibrary *)self hasPresignedValidity])
  {
    if ([(ML3MusicLibrary *)self verifyPresignedValidity])
    {
      [(ML3MusicLibrary *)self updateTrackIntegrity];
    }

    [(ML3MusicLibrary *)self deletePresignedValidity];
  }
}

- (BOOL)deleteDatabaseProperty:(id)property
{
  propertyCopy = property;
  v5 = propertyCopy;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (propertyCopy)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __42__ML3MusicLibrary_deleteDatabaseProperty___block_invoke;
    v8[3] = &unk_2787651A8;
    v10 = &v11;
    v9 = propertyCopy;
    [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:1 withBlock:v8];

    v6 = *(v12 + 24);
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v6 & 1;
}

void __42__ML3MusicLibrary_deleteDatabaseProperty___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v7 count:1];
  v6 = [v4 executeUpdate:@"DELETE FROM _MLDatabaseProperties WHERE key = ?" withParameters:v5 error:{0, v7, v8}];

  *(*(*(a1 + 40) + 8) + 24) = v6;
}

- (BOOL)setValue:(id)value forDatabaseProperty:(id)property
{
  valueCopy = value;
  propertyCopy = property;
  if (propertyCopy)
  {
    if (!valueCopy)
    {
      valueCopy = [MEMORY[0x277CBEB68] null];
    }

    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__ML3MusicLibrary_setValue_forDatabaseProperty___block_invoke;
    v10[3] = &unk_278763398;
    v13 = &v14;
    valueCopy = valueCopy;
    v11 = valueCopy;
    v12 = propertyCopy;
    [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:1 withBlock:v10];
    v8 = *(v15 + 24);

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void __48__ML3MusicLibrary_setValue_forDatabaseProperty___block_invoke(void *a1, void *a2)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = a1[5];
  v8[0] = a1[4];
  v8[1] = v3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a2;
  v6 = [v4 arrayWithObjects:v8 count:2];
  v7 = [v5 executeUpdate:@"INSERT OR REPLACE INTO _MLDatabaseProperties (value withParameters:key) VALUES (? error:{?);", v6, 0}];

  *(*(a1[6] + 8) + 24) = v7;
}

- (id)valueForDatabaseProperty:(id)property
{
  propertyCopy = property;
  v5 = propertyCopy;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2504;
  v16 = __Block_byref_object_dispose__2505;
  v17 = 0;
  if (propertyCopy)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __44__ML3MusicLibrary_valueForDatabaseProperty___block_invoke;
    v9[3] = &unk_2787651A8;
    v10 = propertyCopy;
    v11 = &v12;
    [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:0 withBlock:v9];

    v6 = v13[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __44__ML3MusicLibrary_valueForDatabaseProperty___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 32);
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v10 count:1];
  v6 = [v4 executeQuery:@"SELECT value FROM _MLDatabaseProperties WHERE key = ?" withParameters:{v5, v10, v11}];

  v7 = [v6 objectForFirstRowAndColumn];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (void)removeItemsWithFamilyAccountID:(unint64_t)d purchaserAccountID:(unint64_t)iD downloaderAccountID:(unint64_t)accountID
{
  v34[2] = *MEMORY[0x277D85DE8];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:iD];
  v9 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.account_id" value:v8 comparison:1];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:accountID];
  v11 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.downloader_account_id" value:v10 comparison:1];

  v34[0] = v9;
  v34[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  v13 = [(ML3CompoundPredicate *)ML3AnyCompoundPredicate predicateMatchingPredicates:v12];

  dCopy = d;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
  v15 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.family_account_id" value:v14 comparison:1];

  v16 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.is_protected" value:&unk_2840C8AE0 comparison:1];
  v33[0] = v13;
  v33[1] = v15;
  v33[2] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
  v18 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v17];

  v19 = [(ML3Entity *)ML3Track unrestrictedAllItemsQueryWithlibrary:self predicate:v18 orderingTerms:0];
  array = [MEMORY[0x277CBEB18] array];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __89__ML3MusicLibrary_removeItemsWithFamilyAccountID_purchaserAccountID_downloaderAccountID___block_invoke;
  v25[3] = &unk_278765BD8;
  v21 = array;
  v26 = v21;
  [v19 enumeratePersistentIDsUsingBlock:v25];
  v22 = os_log_create("com.apple.amp.medialibrary", "Library");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = [v21 count];
    *buf = 134218498;
    v28 = v23;
    v29 = 2048;
    v30 = dCopy;
    v31 = 2114;
    v32 = v21;
    _os_log_impl(&dword_22D2FA000, v22, OS_LOG_TYPE_ERROR, "Removing %llu tracks due to family account removal (family account id = %lld)\npersistent_ids = %{public}@", buf, 0x20u);
  }

  [ML3Track unlinkRedownloadableAssetsFromLibrary:self persistentIDs:v21 deletionType:2 deletedFileSize:0];
}

void __89__ML3MusicLibrary_removeItemsWithFamilyAccountID_purchaserAccountID_downloaderAccountID___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  [v2 addObject:v3];
}

- (void)removeOrphanedTracksOnlyInCaches:(BOOL)caches
{
  v73[2] = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v8 = v7;

  if (![(ML3MusicLibrary *)self isHomeSharingLibrary])
  {
    v9 = [(ML3Entity *)ML3Track unrestrictedAllItemsQueryWithlibrary:self predicate:0 orderingTerms:0];
    v73[0] = @"item_extra.location";
    v73[1] = @"base_location_id";
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:2];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v13 = [defaultManager fileExistsAtPath:self->_databasePath];

    if (v13)
    {
      if ([(ML3MusicLibrary *)self currentDatabaseVersion]!= 2310000)
      {
        v15 = os_log_create("com.apple.amp.medialibrary", "Library");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf.st_dev) = 0;
          _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_ERROR, "De-orphaning called on old database, returning immediately", &buf, 2u);
        }

        goto LABEL_42;
      }

      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = __52__ML3MusicLibrary_removeOrphanedTracksOnlyInCaches___block_invoke;
      v70[3] = &unk_278762DC0;
      v71 = dictionary;
      [v9 enumeratePersistentIDsAndProperties:v10 usingBlock:v70];
      v14 = v71;
    }

    else
    {
      v14 = os_log_create("com.apple.amp.medialibrary", "Library");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.st_dev) = 0;
        _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_ERROR, "De-orphaning called with no database, removing everything", &buf, 2u);
      }
    }

    v15 = [(ML3MusicLibrary *)self pathForBaseLocationPath:300];
    v16 = [v15 stringByAppendingPathComponent:@"Ringtones.plist"];
    v58 = v16;
    v59 = v10;
    v57 = a2;
    if (caches || (v17 = v16, [MEMORY[0x277CCAA00] defaultManager], v18 = objc_claimAutoreleasedReturnValue(), v19 = v17, LODWORD(v17) = objc_msgSend(v18, "fileExistsAtPath:", v17), v18, !v17))
    {
      v34 = 1;
      v35 = v8;
LABEL_33:
      v42 = [MEMORY[0x277CBEB98] setWithObjects:{@"mp3", @"m4a", @"m4p", @"aa", @"aax", @"mp4", @"m4v", @"mov", @"m4b", @"movpkg", @"m4bpkg", 0}];
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __52__ML3MusicLibrary_removeOrphanedTracksOnlyInCaches___block_invoke_764;
      v60[3] = &unk_27875DAE8;
      v60[4] = self;
      v43 = v42;
      v61 = v43;
      v62 = dictionary;
      v63 = v35;
      v44 = MEMORY[0x2318CDB10](v60);
      if (!caches)
      {
        v45 = v9;
        v46 = v15;
        libraryContainerPath = [(ML3MusicLibrary *)self libraryContainerPath];
        v48 = +[ML3MusicLibrary mediaFolderPath];
        selfCopy = self;
        v50 = [libraryContainerPath isEqualToString:v48];

        if ((v50 & 1) == 0)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          libraryContainerPath2 = [(ML3MusicLibrary *)selfCopy libraryContainerPath];
          [currentHandler handleFailureInMethod:v57 object:selfCopy file:@"ML3MusicLibrary.m" lineNumber:3518 description:{@"Attempting to de-orphan shared resources in a MU library! %@", libraryContainerPath2}];
        }

        for (i = 3840; i != 3890; ++i)
        {
          v44[2](v44, i);
        }

        v44[2](v44, 250);
        v15 = v46;
        if (v34)
        {
          v44[2](v44, 300);
          v44[2](v44, 500);
          v44[2](v44, 600);
        }

        v44[2](v44, 400);
        v9 = v45;
      }

      v44[2](v44, 200);
      v44[2](v44, 100);

      v10 = v59;
LABEL_42:

      return;
    }

    v20 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v19];
    v56 = v20;
    if (v20)
    {
      selfCopy2 = self;
      v55 = v9;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v21 = [v20 objectForKey:@"Ringtones"];
      allKeys = [v21 allKeys];

      v23 = [allKeys countByEnumeratingWithState:&v66 objects:v72 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v67;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v67 != v25)
            {
              objc_enumerationMutation(allKeys);
            }

            v27 = *(*(&v66 + 1) + 8 * j);
            v28 = [MEMORY[0x277CCABB0] numberWithLongLong:300];
            v29 = [dictionary objectForKeyedSubscript:v28];

            if (!v29)
            {
              v30 = [MEMORY[0x277CBEB58] set];
              v31 = [MEMORY[0x277CCABB0] numberWithLongLong:300];
              [dictionary setObject:v30 forKeyedSubscript:v31];
            }

            v32 = [MEMORY[0x277CCABB0] numberWithLongLong:300];
            v33 = [dictionary objectForKeyedSubscript:v32];
            [v33 addObject:v27];
          }

          v24 = [allKeys countByEnumeratingWithState:&v66 objects:v72 count:16];
        }

        while (v24);
      }

      v34 = 1;
      self = selfCopy2;
      v9 = v55;
      v35 = v8;
      goto LABEL_32;
    }

    memset(&buf, 0, sizeof(buf));
    if (stat([v19 UTF8String], &buf))
    {
      v36 = os_log_create("com.apple.amp.medialibrary", "Library");
      v35 = v8;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *v64 = 0;
        v37 = "Couldn't stat ringtone.plist";
        v38 = v36;
        v39 = OS_LOG_TYPE_DEFAULT;
LABEL_29:
        _os_log_impl(&dword_22D2FA000, v38, v39, v37, v64, 2u);
      }
    }

    else
    {
      st_size = buf.st_size;
      v41 = _ML3LogCategoryLibrary();
      v36 = v41;
      if (st_size < 1)
      {
        v35 = v8;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *v64 = 0;
          _os_log_impl(&dword_22D2FA000, v36, OS_LOG_TYPE_DEFAULT, "Empty ringtone.plist found, OK to purge.", v64, 2u);
        }

        v34 = 1;
        goto LABEL_31;
      }

      v35 = v8;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *v64 = 0;
        v37 = "Skipping de-orphaning of Purchases directory due to locked ringtone.plist";
        v38 = v36;
        v39 = OS_LOG_TYPE_ERROR;
        goto LABEL_29;
      }
    }

    v34 = 0;
LABEL_31:

LABEL_32:
    goto LABEL_33;
  }
}

void __52__ML3MusicLibrary_removeOrphanedTracksOnlyInCaches___block_invoke(uint64_t a1, uint64_t a2, id *a3)
{
  v9 = *a3;
  v5 = a3[1];
  if ([v9 length])
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:v5];

    if (!v6)
    {
      v7 = [MEMORY[0x277CBEB58] set];
      [*(a1 + 32) setObject:v7 forKeyedSubscript:v5];
    }

    v8 = [*(a1 + 32) objectForKeyedSubscript:v5];
    [v8 addObject:v9];
  }
}

void __52__ML3MusicLibrary_removeOrphanedTracksOnlyInCaches___block_invoke_764(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) pathForBaseLocationPath:a2];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v33 = v3;
  v5 = [v4 enumeratorAtPath:v3];

  v32 = [MEMORY[0x277CBEB58] set];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    v34 = *v38;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v37 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [v10 pathExtension];
        v13 = [v12 lowercaseString];

        if ([*(a1 + 40) containsObject:v13])
        {
          if (v13)
          {
            v14 = [MEMORY[0x277CBEB98] setWithObjects:{@"movpkg", @"m4bpkg", 0}];
            v15 = [v14 containsObject:v13];
          }

          else
          {
            v15 = 0;
          }

          v16 = *(a1 + 48);
          v17 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
          v18 = [v16 objectForKeyedSubscript:v17];
          v19 = [v18 containsObject:v10];

          if (!v19)
          {
            v20 = [v33 stringByAppendingPathComponent:v10];
            v21 = [v20 fileSystemRepresentation];

            memset(&v45, 0, sizeof(v45));
            if (stat(v21, &v45))
            {
              v22 = os_log_create("com.apple.amp.medialibrary", "Library");
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                v23 = __error();
                v24 = strerror(*v23);
                *buf = 136446466;
                v42 = v21;
                v43 = 2082;
                v44 = v24;
                v25 = v22;
                v26 = OS_LOG_TYPE_ERROR;
                v27 = "Could not read old file: %{public}s, %{public}s";
                v28 = 22;
                goto LABEL_16;
              }

              goto LABEL_17;
            }

            if (((v45.st_mode & 0x4000) == 0) | v15 & 1)
            {
              if (v45.st_mtimespec.tv_sec <= *(a1 + 56) - 300)
              {
                v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:v21];
                [v32 addObject:v29];
              }

              else
              {
                v22 = os_log_create("com.apple.amp.medialibrary", "Library");
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136446210;
                  v42 = v21;
                  v25 = v22;
                  v26 = OS_LOG_TYPE_DEFAULT;
                  v27 = "Ignoring new unaccounted file %{public}s";
                  v28 = 12;
LABEL_16:
                  _os_log_impl(&dword_22D2FA000, v25, v26, v27, buf, v28);
                }

LABEL_17:
              }
            }

            else
            {
              [obj skipDescendants];
            }

            v8 = v34;
            goto LABEL_25;
          }

          v8 = v34;
          if (v15)
          {
            [obj skipDescendants];
          }
        }

LABEL_25:

        objc_autoreleasePoolPop(v11);
      }

      v7 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v7);
  }

  v30 = os_log_create("com.apple.amp.medialibrary", "Library");
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v31 = [v32 count];
    v45.st_dev = 138543874;
    *&v45.st_mode = v33;
    WORD2(v45.st_ino) = 2048;
    *(&v45.st_ino + 6) = v31;
    HIWORD(v45.st_gid) = 2114;
    *&v45.st_rdev = v32;
    _os_log_impl(&dword_22D2FA000, v30, OS_LOG_TYPE_ERROR, "Track de-orphaning of '%{public}@']: removing %lu orphaned tracks at paths %{public}@", &v45, 0x20u);
  }

  ML3DeleteAssetsAtPaths(v32);
}

void __50__ML3MusicLibrary_removeTombstonesForDeletedItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 executeUpdate:@"DELETE FROM item_store WHERE item_pid NOT IN (SELECT item_pid FROM item)"];
  [v2 executeUpdate:@"DELETE FROM item_stats WHERE item_pid NOT IN (SELECT item_pid FROM item)"];
}

- (BOOL)cleanupArtworkWithOptions:(unint64_t)options usingConnection:(id)connection
{
  optionsCopy = options;
  connectionCopy = connection;
  dispatch_assert_queue_not_V2(self->_serialQueue);
  if ([(ML3MusicLibrary *)self isHomeSharingLibrary])
  {
    LOBYTE(v7) = 1;
    goto LABEL_15;
  }

  if ((optionsCopy & 2) != 0)
  {
    v7 = [(ML3MusicLibrary *)self _removeOrphanedArtworkTokensUsingConnection:connectionCopy];
    if ((optionsCopy & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (v7)
    {
      v7 = [(ML3MusicLibrary *)self _removeOrphanedArtworkMetadataUsingConnection:connectionCopy];
    }

    goto LABEL_9;
  }

  v7 = 1;
  if ((optionsCopy & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  if ((optionsCopy & 8) != 0 && v7)
  {
    v7 = [(ML3MusicLibrary *)self _removeOrphanedArtworkAssetsUsingConnection:connectionCopy];
  }

  if ((optionsCopy & 0x10) != 0 && v7)
  {
    LOBYTE(v7) = [(ML3MusicLibrary *)self _removeInvalidAvailableArtworkTokensUsingConnection:connectionCopy];
  }

LABEL_15:

  return v7;
}

- (BOOL)cleanupArtworkWithOptions:(unint64_t)options
{
  v26 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_not_V2(self->_serialQueue);
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  if (![(ML3MusicLibrary *)self isHomeSharingLibrary])
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [defaultManager fileExistsAtPath:self->_databasePath];

    if (v6)
    {
      currentDatabaseVersion = [(ML3MusicLibrary *)self currentDatabaseVersion];
      if (currentDatabaseVersion == 2310000)
      {
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __45__ML3MusicLibrary_cleanupArtworkWithOptions___block_invoke;
        v13[3] = &unk_27875DAC0;
        v13[4] = self;
        v13[5] = &v14;
        v13[6] = options;
        [(ML3MusicLibrary *)self performDatabaseTransactionWithBlock:v13];
        goto LABEL_11;
      }

      v8 = os_log_create("com.apple.amp.medialibrary", "Library");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        databasePath = self->_databasePath;
        *buf = 67109890;
        optionsCopy2 = options;
        v20 = 2114;
        v21 = databasePath;
        v22 = 1024;
        v23 = currentDatabaseVersion;
        v24 = 1024;
        v25 = 2310000;
        _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_ERROR, "not cleaning up artwork with options (%d) with database at %{public}@ as current version (%d) is not (%d)", buf, 0x1Eu);
      }
    }

    else
    {
      v8 = os_log_create("com.apple.amp.medialibrary", "Library");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = self->_databasePath;
        *buf = 67109378;
        optionsCopy2 = options;
        v20 = 2114;
        v21 = v9;
        _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_ERROR, "not cleaning up artwork with options (%d) with database at %{public}@ as file does not exist at this location", buf, 0x12u);
      }
    }
  }

LABEL_11:
  v11 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v11;
}

- (BOOL)hasUserPinnedLibraryEntity
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__ML3MusicLibrary_hasUserPinnedLibraryEntity__block_invoke;
  v4[3] = &unk_27875D488;
  v4[4] = &v5;
  [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:0 withBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __45__ML3MusicLibrary_hasUserPinnedLibraryEntity__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 executeQuery:@"SELECT 1 FROM library_pins LIMIT 1"];
  *(*(*(a1 + 32) + 8) + 24) = [v3 hasAtLeastOneRow];
}

- (BOOL)hasUserPlaylistsContainingAppleMusicContent
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__ML3MusicLibrary_hasUserPlaylistsContainingAppleMusicContent__block_invoke;
  v4[3] = &unk_27875D488;
  v4[4] = &v5;
  [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:0 withBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __62__ML3MusicLibrary_hasUserPlaylistsContainingAppleMusicContent__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 executeQuery:@"SELECT 1 FROM container_item JOIN container USING (container_pid) JOIN item_store USING (item_pid) WHERE cloud_status = ? AND NOT is_hidden AND distinguished_kind = ? AND smart_criteria IS NULL AND NOT smart_is_genius AND (NOT cloud_is_subscribed OR is_editable) LIMIT 1" withParameters:&unk_2840C6818];
  *(*(*(a1 + 32) + 8) + 24) = [v3 hasAtLeastOneRow];
}

- (BOOL)hasAddedToLibraryAppleMusicContent
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__ML3MusicLibrary_hasAddedToLibraryAppleMusicContent__block_invoke;
  v4[3] = &unk_27875D488;
  v4[4] = &v5;
  [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:0 withBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __53__ML3MusicLibrary_hasAddedToLibraryAppleMusicContent__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 executeQuery:@"SELECT 1 FROM item JOIN item_store USING (item_pid) JOIN item_stats USING (item_pid) JOIN album ON (item.album_pid=album.album_pid) WHERE item.in_my_library AND item_store.cloud_status = 8 AND item_stats.liked_state != 2 AND album.liked_state != 2 LIMIT 1"];
  *(*(*(a1 + 32) + 8) + 24) = [v3 hasAtLeastOneRow];
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v4 = [v5 executeQuery:@"SELECT 1 FROM container WHERE store_cloud_id != 0 AND cloud_is_subscribed AND liked_state != 2 LIMIT 1"];

    *(*(*(a1 + 32) + 8) + 24) = [v4 hasAtLeastOneRow];
    v3 = v4;
  }
}

- (BOOL)hasUserPlaylists
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__ML3MusicLibrary_hasUserPlaylists__block_invoke;
  v4[3] = &unk_27875D488;
  v4[4] = &v5;
  [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:0 withBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __35__ML3MusicLibrary_hasUserPlaylists__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 executeQuery:@"SELECT 1 FROM container WHERE NOT is_hidden AND distinguished_kind = ? AND smart_criteria IS NULL AND NOT smart_is_genius AND (NOT cloud_is_subscribed OR is_editable) LIMIT 1" withParameters:&unk_2840C6800];
  *(*(*(a1 + 32) + 8) + 24) = [v3 hasAtLeastOneRow];
}

- (void)enumerateArtworkTokensForEntityPersistentID:(int64_t)d entityType:(int64_t)type artworkType:(int64_t)artworkType variantType:(int64_t)variantType usingBlock:(id)block
{
  blockCopy = block;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __109__ML3MusicLibrary_enumerateArtworkTokensForEntityPersistentID_entityType_artworkType_variantType_usingBlock___block_invoke;
  v14[3] = &unk_27875DA98;
  typeCopy = type;
  artworkTypeCopy = artworkType;
  variantTypeCopy = variantType;
  v15 = blockCopy;
  dCopy = d;
  v13 = blockCopy;
  [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:0 withBlock:v14];
}

void __109__ML3MusicLibrary_enumerateArtworkTokensForEntityPersistentID_entityType_artworkType_variantType_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 numberWithLongLong:v4];
  v14[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  v14[1] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
  v14[2] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 64)];
  v14[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:4];
  v11 = [v5 executeQuery:@"SELECT artwork_token withParameters:{artwork_source_type FROM artwork_token WHERE entity_pid = ? AND entity_type = ? AND artwork_type = ? AND artwork_variant_type = ?", v10}];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __109__ML3MusicLibrary_enumerateArtworkTokensForEntityPersistentID_entityType_artworkType_variantType_usingBlock___block_invoke_2;
  v12[3] = &unk_278760218;
  v13 = *(a1 + 32);
  [v11 enumerateRowsWithBlock:v12];
}

void __109__ML3MusicLibrary_enumerateArtworkTokensForEntityPersistentID_entityType_artworkType_variantType_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 stringForColumnIndex:0];
  [v3 intForColumnIndex:1];

  (*(*(a1 + 32) + 16))();
}

- (void)retrieveBestArtworkTokensForEntityPersistentID:(int64_t)d entityType:(int64_t)type artworkType:(int64_t)artworkType variantType:(int64_t)variantType retrievalTime:(double)time completionHandler:(id)handler
{
  handlerCopy = handler;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__2504;
  v32 = __Block_byref_object_dispose__2505;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2504;
  v22 = __Block_byref_object_dispose__2505;
  v23 = 0;
  if (artworkType == 3)
  {
    v15 = [ML3MusicLibrary artworkTokenForChapterWithItemPID:d retrievalTime:time];
    v16 = v29[5];
    v29[5] = v15;
  }

  else
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __133__ML3MusicLibrary_retrieveBestArtworkTokensForEntityPersistentID_entityType_artworkType_variantType_retrievalTime_completionHandler___block_invoke;
    v17[3] = &unk_27875DA70;
    v17[8] = type;
    v17[9] = artworkType;
    v17[10] = variantType;
    v17[4] = &v28;
    v17[5] = &v18;
    v17[6] = &v24;
    v17[7] = d;
    [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:0 withBlock:v17];
  }

  handlerCopy[2](handlerCopy, v29[5], v19[5], v25[3]);
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
}

void __133__ML3MusicLibrary_retrieveBestArtworkTokensForEntityPersistentID_entityType_artworkType_variantType_retrievalTime_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = *(a1 + 56);
  v5 = a2;
  v6 = [v3 numberWithLongLong:v4];
  v15[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 64)];
  v15[1] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 72)];
  v15[2] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 80)];
  v15[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
  v11 = [v5 executeQuery:@"SELECT available_artwork_token withParameters:{fetchable_artwork_token, fetchable_artwork_source_type FROM best_artwork_token WHERE entity_pid = ? AND entity_type = ? AND artwork_type = ? AND artwork_variant_type = ?", v10}];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __133__ML3MusicLibrary_retrieveBestArtworkTokensForEntityPersistentID_entityType_artworkType_variantType_retrievalTime_completionHandler___block_invoke_2;
  v12[3] = &unk_278762B58;
  v13 = *(a1 + 32);
  v14 = *(a1 + 48);
  [v11 enumerateRowsWithBlock:v12];
}

void __133__ML3MusicLibrary_retrieveBestArtworkTokensForEntityPersistentID_entityType_artworkType_variantType_retrievalTime_completionHandler___block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 stringForColumnIndex:0];
  if ([v6 length])
  {
    objc_storeStrong((*(a1[4] + 8) + 40), v6);
  }

  v7 = [v8 stringForColumnIndex:1];
  if ([v7 length])
  {
    objc_storeStrong((*(a1[5] + 8) + 40), v7);
  }

  *(*(a1[6] + 8) + 24) = [v8 intForColumnIndex:2];
  *a4 = 1;
}

- (BOOL)isArtworkTokenAvailable:(id)available forVariantType:(int64_t)type
{
  availableCopy = available;
  if ([availableCopy length])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__ML3MusicLibrary_isArtworkTokenAvailable_forVariantType___block_invoke;
    v9[3] = &unk_278765748;
    v11 = &v13;
    typeCopy = type;
    v10 = availableCopy;
    [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:0 withBlock:v9];
    v7 = *(v14 + 24);

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void __58__ML3MusicLibrary_isArtworkTokenAvailable_forVariantType___block_invoke(void *a1, void *a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v10[0] = a1[4];
  v3 = MEMORY[0x277CCABB0];
  v4 = a1[6];
  v5 = a2;
  v6 = [v3 numberWithInteger:v4];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v8 = [v5 executeQuery:@"SELECT 1 FROM artwork WHERE artwork_token=? AND artwork_variant_type = ?" withParameters:v7];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__ML3MusicLibrary_isArtworkTokenAvailable_forVariantType___block_invoke_2;
  v9[3] = &unk_2787653C8;
  v9[4] = a1[5];
  [v8 enumerateRowsWithBlock:v9];
}

uint64_t __58__ML3MusicLibrary_isArtworkTokenAvailable_forVariantType___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a4 = 1;
  return result;
}

- (void)removeArtworkTokenForEntityPersistentID:(int64_t)d entityType:(int64_t)type artworkType:(int64_t)artworkType sourceType:(int64_t)sourceType
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __93__ML3MusicLibrary_removeArtworkTokenForEntityPersistentID_entityType_artworkType_sourceType___block_invoke;
  v6[3] = &unk_27875DA48;
  v6[4] = self;
  v6[5] = d;
  v6[6] = type;
  v6[7] = artworkType;
  v6[8] = sourceType;
  [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:1 withBlock:v6];
}

- (void)importArtworkTokenForEntityPersistentID:(int64_t)d entityType:(int64_t)type artworkToken:(id)token artworkType:(int64_t)artworkType sourceType:(int64_t)sourceType variantType:(int64_t)variantType
{
  tokenCopy = token;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __118__ML3MusicLibrary_importArtworkTokenForEntityPersistentID_entityType_artworkToken_artworkType_sourceType_variantType___block_invoke;
  v16[3] = &unk_27875DA20;
  dCopy = d;
  typeCopy = type;
  v16[4] = self;
  v17 = tokenCopy;
  artworkTypeCopy = artworkType;
  sourceTypeCopy = sourceType;
  variantTypeCopy = variantType;
  v15 = tokenCopy;
  [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:1 withBlock:v16];
}

- (void)importArtworkTokenForEntityPersistentID:(int64_t)d entityType:(int64_t)type artworkToken:(id)token artworkType:(int64_t)artworkType sourceType:(int64_t)sourceType
{
  tokenCopy = token;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __106__ML3MusicLibrary_importArtworkTokenForEntityPersistentID_entityType_artworkToken_artworkType_sourceType___block_invoke;
  v14[3] = &unk_27875D9F8;
  dCopy = d;
  typeCopy = type;
  v14[4] = self;
  v15 = tokenCopy;
  artworkTypeCopy = artworkType;
  sourceTypeCopy = sourceType;
  v13 = tokenCopy;
  [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:1 withBlock:v14];
}

- (void)migrateExistingArtworkToken:(id)token newArtworkToken:(id)artworkToken newSourceType:(int64_t)type
{
  v67 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  artworkTokenCopy = artworkToken;
  v28 = tokenCopy;
  if ([tokenCopy length])
  {
    v51 = 0;
    v52 = &v51;
    v53 = 0x3032000000;
    v54 = __Block_byref_object_copy__2504;
    v55 = __Block_byref_object_dispose__2505;
    v56 = 0;
    v50[0] = 0;
    v50[1] = v50;
    v50[2] = 0x2020000000;
    v50[3] = 0;
    array = [MEMORY[0x277CBEB18] array];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __77__ML3MusicLibrary_migrateExistingArtworkToken_newArtworkToken_newSourceType___block_invoke;
    v45[3] = &unk_27875D9A8;
    v9 = v28;
    v46 = v9;
    v48 = &v51;
    v49 = v50;
    v26 = array;
    v47 = v26;
    [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:0 withBlock:v45];
    if ([v52[5] length])
    {
      v10 = [ML3MusicLibrary artworkRelativePathFromToken:artworkTokenCopy];
      *&v64 = 0;
      *(&v64 + 1) = &v64;
      v65 = 0x2020000000;
      v66 = 1;
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __77__ML3MusicLibrary_migrateExistingArtworkToken_newArtworkToken_newSourceType___block_invoke_714;
      v36[3] = &unk_27875D9D0;
      v37 = v26;
      v42 = &v64;
      v38 = artworkTokenCopy;
      typeCopy = type;
      v39 = v9;
      selfCopy = self;
      v43 = v50;
      v11 = v10;
      v41 = v11;
      [(ML3MusicLibrary *)self performDatabaseTransactionWithBlock:v36];
      if (*(*(&v64 + 1) + 24) == 1)
      {
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        [(ML3MusicLibrary *)self _allArtworkVariantDirectories];
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        obj = v33 = 0u;
        v13 = [obj countByEnumeratingWithState:&v32 objects:v63 count:16];
        if (v13)
        {
          v14 = *v33;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v33 != v14)
              {
                objc_enumerationMutation(obj);
              }

              v16 = *(*(&v32 + 1) + 8 * i);
              v17 = [v16 URLByAppendingPathComponent:v52[5]];
              v18 = [v16 URLByAppendingPathComponent:v11];
              uRLByDeletingLastPathComponent = [v18 URLByDeletingLastPathComponent];
              path = [uRLByDeletingLastPathComponent path];
              v21 = [defaultManager fileExistsAtPath:path];

              if ((v21 & 1) == 0)
              {
                [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];
              }

              path2 = [v17 path];
              v23 = [defaultManager fileExistsAtPath:path2];

              if (v23)
              {
                v31 = 0;
                [defaultManager moveItemAtURL:v17 toURL:v18 error:&v31];
                v24 = v31;
                if (v24)
                {
                  path3 = os_log_create("com.apple.amp.medialibrary", "Default");
                  if (os_log_type_enabled(path3, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543874;
                    v58 = v17;
                    v59 = 2114;
                    v60 = v18;
                    v61 = 2114;
                    v62 = v24;
                    _os_log_impl(&dword_22D2FA000, path3, OS_LOG_TYPE_ERROR, "Failed to move artwork from '%{public}@' to '%{public}@' with error: %{public}@", buf, 0x20u);
                  }
                }

                else
                {
                  path3 = [v18 path];
                  [(ML3MusicLibrary *)self updatePurgeabilityForCachedArtworkWithAbsolutePath:path3];
                }
              }
            }

            v13 = [obj countByEnumeratingWithState:&v32 objects:v63 count:16];
          }

          while (v13);
        }
      }

      _Block_object_dispose(&v64, 8);
    }

    else
    {
      v11 = os_log_create("com.apple.amp.medialibrary", "Library");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v64) = 138543362;
        *(&v64 + 4) = v9;
        _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_ERROR, "Cannot migrate exisitng artwork, no artwork found in database with token %{public}@", &v64, 0xCu);
      }
    }

    _Block_object_dispose(v50, 8);
    _Block_object_dispose(&v51, 8);
  }
}

void __77__ML3MusicLibrary_migrateExistingArtworkToken_newArtworkToken_newSourceType___block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13[0] = *(a1 + 32);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v5 = [v3 executeQuery:@"SELECT relative_path withParameters:{artwork_type FROM artwork WHERE artwork_token = ?", v4}];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__ML3MusicLibrary_migrateExistingArtworkToken_newArtworkToken_newSourceType___block_invoke_2;
  v10[3] = &unk_278765228;
  v11 = *(a1 + 48);
  [v5 enumerateRowsWithBlock:v10];
  if ([*(*(*(a1 + 48) + 8) + 40) length])
  {
    v12 = *(a1 + 32);
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
    v7 = [v3 executeQuery:@"SELECT entity_pid withParameters:{entity_type, artwork_type FROM artwork_token WHERE artwork_token = ?", v6}];

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __77__ML3MusicLibrary_migrateExistingArtworkToken_newArtworkToken_newSourceType___block_invoke_3;
    v8[3] = &unk_278766118;
    v9 = *(a1 + 40);
    [v7 enumerateRowsWithBlock:v8];

    v5 = v7;
  }
}

uint64_t __77__ML3MusicLibrary_migrateExistingArtworkToken_newArtworkToken_newSourceType___block_invoke_714(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v27 = a2;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = *(a1 + 32);
  v26 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v26)
  {
    v25 = *v31;
    *&v3 = 138543362;
    v23 = v3;
    do
    {
      v4 = 0;
      do
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v30 + 1) + 8 * v4);
        v29 = 0;
        v6 = [v27 executeUpdate:@"DELETE FROM artwork_token WHERE entity_pid = ? AND entity_type = ? AND artwork_type = ?" withParameters:v5 error:{&v29, v23}];
        v7 = v29;
        *(*(*(a1 + 72) + 8) + 24) = v6;
        if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
        {
          v8 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            *buf = v23;
            v35 = v7;
            _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_ERROR, "Failed to delete from artwork_token table with error: %{public}@", buf, 0xCu);
          }
        }

        v9 = *(a1 + 40);
        v10 = *(a1 + 88);
        v11 = [v5 objectAtIndexedSubscript:2];
        v12 = [v11 intValue];
        v13 = [v5 objectAtIndexedSubscript:0];
        v14 = [v13 longLongValue];
        v15 = [v5 objectAtIndexedSubscript:1];
        *(*(*(a1 + 72) + 8) + 24) = InsertOrReplaceIntoArtworkToken(v27, v9, v10, v12, v14, [v15 intValue], 0);

        ++v4;
      }

      while (v26 != v4);
      v26 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v26);
  }

  v38 = *(a1 + 48);
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  v28 = 0;
  v17 = [v27 executeUpdate:@"DELETE FROM artwork WHERE artwork_token = ?" withParameters:v16 error:&v28];
  v18 = v28;
  *(*(*(a1 + 72) + 8) + 24) = v17;

  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    v19 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 48);
      *buf = 138543618;
      v35 = v20;
      v36 = 2114;
      v37 = v18;
      _os_log_impl(&dword_22D2FA000, v19, OS_LOG_TYPE_ERROR, "Failed to delete from artwork table (token = %{public}@) with error: %{public}@", buf, 0x16u);
    }
  }

  *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 56) _insertArtworkRowWithArtworkToken:*(a1 + 40) artworkType:*(*(*(a1 + 80) + 8) + 24) sourceType:*(a1 + 88) variantType:0 relativePath:*(a1 + 64) usingConnection:v27];
  v21 = *(*(*(a1 + 72) + 8) + 24);

  return v21;
}

void __77__ML3MusicLibrary_migrateExistingArtworkToken_newArtworkToken_newSourceType___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 stringForColumnIndex:0];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [v6 intForColumnIndex:1];
  *(*(*(a1 + 40) + 8) + 24) = v10;
  *a4 = 1;
}

void __77__ML3MusicLibrary_migrateExistingArtworkToken_newArtworkToken_newSourceType___block_invoke_3(uint64_t a1, void *a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v3 objectAtIndexedSubscript:{1, v4}];
  v8[1] = v5;
  v6 = [v3 objectAtIndexedSubscript:2];

  v8[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
  [v2 addObject:v7];
}

- (BOOL)deleteArtworkToken:(id)token
{
  tokenCopy = token;
  if ([tokenCopy length])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__ML3MusicLibrary_deleteArtworkToken___block_invoke;
    v7[3] = &unk_278763398;
    selfCopy = self;
    v10 = &v11;
    v8 = tokenCopy;
    [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:1 withBlock:v7];
    v5 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void __38__ML3MusicLibrary_deleteArtworkToken___block_invoke(void *a1, void *a2)
{
  v50[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB18] array];
  v50[0] = a1[4];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:1];
  v6 = [v3 executeQuery:@"SELECT entity_pid withParameters:{entity_type, artwork_type FROM artwork_token WHERE artwork_token = ?", v5}];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __38__ML3MusicLibrary_deleteArtworkToken___block_invoke_2;
  v43[3] = &unk_278766118;
  v7 = v4;
  v44 = v7;
  [v6 enumerateRowsWithBlock:v43];
  v42 = 0;
  v8 = [v3 executeUpdate:@"DELETE FROM artwork_token WHERE artwork_token = ?" withParameters:v5 error:&v42];
  v9 = v42;
  v10 = v9;
  *(*(a1[6] + 8) + 24) = v8;
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v41 = v9;
    v11 = [v3 executeUpdate:@"DELETE FROM artwork WHERE artwork_token = ?" withParameters:v5 error:&v41];
    v12 = v41;

    *(*(a1[6] + 8) + 24) = v11;
    if (*(*(a1[6] + 8) + 24) == 1)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      obj = v7;
      v13 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
      if (v13)
      {
        v14 = v13;
        v31 = v12;
        v32 = v7;
        v33 = v6;
        v34 = v5;
        v36 = *v38;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            v16 = v3;
            if (*v38 != v36)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v37 + 1) + 8 * i);
            v18 = a1[5];
            v19 = [v17 objectAtIndexedSubscript:{0, v31, v32, v33, v34}];
            v20 = a1;
            v21 = [v19 longLongValue];
            v22 = [v17 objectAtIndexedSubscript:1];
            v23 = [v22 intValue];
            v24 = [v17 objectAtIndexedSubscript:2];
            v25 = [v24 intValue];
            v26 = v18;
            v27 = v21;
            a1 = v20;
            v3 = v16;
            [v26 updateBestArtworkTokenForEntityPersistentID:v27 entityType:v23 artworkType:v25 retrievalTime:v16 usingConnection:0.0];
          }

          v14 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
        }

        while (v14);
        v6 = v33;
        v5 = v34;
        v12 = v31;
        v7 = v32;
      }

      v28 = obj;
    }

    else
    {
      v28 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v30 = a1[4];
        *buf = 138543618;
        v46 = v30;
        v47 = 2114;
        v48 = v12;
        _os_log_impl(&dword_22D2FA000, v28, OS_LOG_TYPE_ERROR, "Failed to delete from artwork table (token = %{public}@) with error: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v28 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = a1[4];
      *buf = 138543618;
      v46 = v29;
      v47 = 2114;
      v48 = v10;
      _os_log_impl(&dword_22D2FA000, v28, OS_LOG_TYPE_ERROR, "Failed to delete from artwork_token table (token = %{public}@) with error: %{public}@", buf, 0x16u);
    }

    v12 = v10;
  }
}

void __38__ML3MusicLibrary_deleteArtworkToken___block_invoke_2(uint64_t a1, void *a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v3 objectAtIndexedSubscript:{1, v4}];
  v8[1] = v5;
  v6 = [v3 objectAtIndexedSubscript:2];

  v8[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
  [v2 addObject:v7];
}

- (BOOL)removeArtworkAssetWithToken:(id)token
{
  tokenCopy = token;
  if ([tokenCopy length])
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x2020000000;
    v27[3] = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__2504;
    v25 = __Block_byref_object_dispose__2505;
    v26 = 0;
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2020000000;
    v20[3] = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __47__ML3MusicLibrary_removeArtworkAssetWithToken___block_invoke;
    v15[3] = &unk_27875D958;
    v5 = tokenCopy;
    v16 = v5;
    v17 = v27;
    v18 = &v21;
    v19 = v20;
    [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:0 withBlock:v15];
    if ([v22[5] length])
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __47__ML3MusicLibrary_removeArtworkAssetWithToken___block_invoke_3;
      v8[3] = &unk_27875D980;
      v11 = &v28;
      v9 = v5;
      selfCopy = self;
      v12 = v20;
      v13 = v27;
      v14 = &v21;
      [(ML3MusicLibrary *)self performDatabaseTransactionWithBlock:v8];
    }

    v6 = *(v29 + 24);

    _Block_object_dispose(v20, 8);
    _Block_object_dispose(&v21, 8);

    _Block_object_dispose(v27, 8);
    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void __47__ML3MusicLibrary_removeArtworkAssetWithToken___block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = *(a1 + 32);
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:v10 count:1];
  v6 = [v4 executeQuery:@"SELECT artwork_source_type withParameters:{relative_path, artwork_type FROM artwork WHERE artwork_token = ?", v5}];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__ML3MusicLibrary_removeArtworkAssetWithToken___block_invoke_2;
  v7[3] = &unk_278762B58;
  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  [v6 enumerateRowsWithBlock:v7];
}

uint64_t __47__ML3MusicLibrary_removeArtworkAssetWithToken___block_invoke_3(uint64_t a1, void *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v20[0] = *(a1 + 32);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v14 = 0;
  v5 = [v3 executeUpdate:@"DELETE FROM artwork WHERE artwork_token = ?" withParameters:v4 error:&v14];
  v6 = v14;
  *(*(*(a1 + 48) + 8) + 24) = v5;

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [*(a1 + 40) _updateBestArtworkTokensForArtworkToken:*(a1 + 32) artworkType:*(*(*(a1 + 56) + 8) + 24) sourceType:*(*(*(a1 + 64) + 8) + 24) variantType:0 preserveExistingAvailableToken:0 usingConnection:v3];
    v7 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(*(a1 + 72) + 8) + 40);
      *buf = 138543362;
      v16 = v8;
      _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_ERROR, "Explicitly deleting artwork at relative path %{public}@", buf, 0xCu);
    }

    v9 = *(a1 + 40);
    v19 = *(*(*(a1 + 72) + 8) + 40);
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    [v9 _deleteAllArtworkVariantsAtRelativePaths:v10];
  }

  else
  {
    v10 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 138543618;
      v16 = v11;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_ERROR, "Failed to delete from artwork table (token = %{public}@) with error: %{public}@", buf, 0x16u);
    }
  }

  v12 = *(*(*(a1 + 48) + 8) + 24);
  return v12;
}

void __47__ML3MusicLibrary_removeArtworkAssetWithToken___block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  *(*(a1[4] + 8) + 24) = [v6 intForColumnIndex:0];
  v7 = [v6 stringForColumnIndex:1];
  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [v6 intForColumnIndex:2];
  *(*(a1[6] + 8) + 24) = v10;
  *a4 = 1;
}

- (void)importOriginalArtworkFromImageData:(id)data withArtworkToken:(id)token artworkType:(int64_t)type sourceType:(int64_t)sourceType mediaType:(unsigned int)mediaType variantType:(int64_t)variantType shouldPerformColorAnalysis:(BOOL)analysis completion:(id)self0
{
  v11 = *&mediaType;
  v37 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  completionCopy = completion;
  dataCopy = data;
  v19 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v35 = 2114;
    v36 = tokenCopy;
    _os_log_impl(&dword_22D2FA000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: import original artwork from image data, artwork token: %{public}@, completion handler", buf, 0x16u);
  }

  selfCopy2 = self;

  v20 = NSTemporaryDirectory();
  v21 = [v20 stringByAppendingPathComponent:@"imagedata.XXXXXX"];

  v32[1] = 0;
  v22 = MSVCreateTemporaryFileHandle();
  v23 = 0;
  v32[0] = 0;
  [v22 writeData:dataCopy error:v32];

  v24 = v32[0];
  [v22 closeFile];

  if (v24)
  {
    v25 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      selfCopy = v24;
      _os_log_impl(&dword_22D2FA000, v25, OS_LOG_TYPE_ERROR, "Failed to write original artwork to temporary path with error: %{public}@", buf, 0xCu);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v24);
    }
  }

  else
  {
    v26 = [MEMORY[0x277CBEBC0] fileURLWithPath:v23 isDirectory:0];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __154__ML3MusicLibrary_importOriginalArtworkFromImageData_withArtworkToken_artworkType_sourceType_mediaType_variantType_shouldPerformColorAnalysis_completion___block_invoke;
    v29[3] = &unk_2787658A0;
    v30 = v23;
    v31 = completionCopy;
    LOBYTE(v27) = analysis;
    [(ML3MusicLibrary *)selfCopy2 importOriginalArtworkFromFileURL:v26 withArtworkToken:tokenCopy artworkType:type sourceType:sourceType mediaType:v11 variantType:variantType shouldPerformColorAnalysis:v27 completion:v29];
  }
}

void __154__ML3MusicLibrary_importOriginalArtworkFromImageData_withArtworkToken_artworkType_sourceType_mediaType_variantType_shouldPerformColorAnalysis_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = *(a1 + 32);
  v11 = 0;
  v6 = [v4 removeItemAtPath:v5 error:&v11];
  v7 = v11;
  if ((v6 & 1) == 0)
  {
    v8 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_ERROR, "Failed to remove temporary artwork file: '%{public}@'. err = %{public}@", buf, 0x16u);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v3);
  }
}

- (BOOL)importOriginalArtworkFromImageData:(id)data withArtworkToken:(id)token artworkType:(int64_t)type sourceType:(int64_t)sourceType mediaType:(unsigned int)mediaType variantType:(int64_t)variantType shouldPerformColorAnalysis:(BOOL)analysis
{
  v58 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  tokenCopy = token;
  v12 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = tokenCopy;
    _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: import original artwork from image data, artwork token: %{public}@", buf, 0x16u);
  }

  if ([tokenCopy length])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v57 = 0;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v14 = [ML3MusicLibrary artworkRelativePathFromToken:tokenCopy];
    v15 = MEMORY[0x277CBEBC0];
    v16 = MEMORY[0x277CCACA8];
    originalArtworkDirectory = [(ML3MusicLibrary *)self originalArtworkDirectory];
    v55[0] = originalArtworkDirectory;
    v55[1] = v14;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
    v19 = [v16 pathWithComponents:v18];
    v20 = [v15 fileURLWithPath:v19 isDirectory:0];

    path = [v20 path];
    LODWORD(originalArtworkDirectory) = [defaultManager fileExistsAtPath:path];

    if (originalArtworkDirectory)
    {
      v22 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *v51 = 138543362;
        v52 = tokenCopy;
        _os_log_impl(&dword_22D2FA000, v22, OS_LOG_TYPE_DEBUG, "Artwork already exists on disk for artwork token %{public}@, ensuring artwork table is consistent", v51, 0xCu);
      }

      v23 = [(ML3MusicLibrary *)self _insertArtworkRowWithArtworkToken:tokenCopy artworkType:type sourceType:sourceType relativePath:v14];
      *(*&buf[8] + 24) = v23;
    }

    else
    {
      v24 = NSTemporaryDirectory();
      v35 = [v24 stringByAppendingPathComponent:@"imagedata.XXXXXX"];

      v50[1] = 0;
      v25 = MSVCreateTemporaryFileHandle();
      v34 = 0;
      v50[0] = 0;
      [v25 writeData:dataCopy error:v50];
      v26 = v50[0];
      [v25 closeFile];

      if (v26)
      {
        v27 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *v51 = 138543362;
          v52 = v26;
          _os_log_impl(&dword_22D2FA000, v27, OS_LOG_TYPE_ERROR, "Failed to write original artwork to temporary path with error: %{public}@", v51, 0xCu);
        }

        v23 = 0;
      }

      else
      {
        v28 = dispatch_semaphore_create(0);
        v29 = [MEMORY[0x277CBEBC0] fileURLWithPath:v34 isDirectory:0];
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __143__ML3MusicLibrary_importOriginalArtworkFromImageData_withArtworkToken_artworkType_sourceType_mediaType_variantType_shouldPerformColorAnalysis___block_invoke;
        v47[3] = &unk_2787649F8;
        v49 = buf;
        v27 = v28;
        v48 = v27;
        [(ML3MusicLibrary *)self _convertOriginalArtworkToDevicePreferredFormatFromSourceURL:v29 toDestinationURL:v20 completionHandler:v47];

        dispatch_semaphore_wait(v27, 0xFFFFFFFFFFFFFFFFLL);
        v46 = 0;
        LOBYTE(v29) = [defaultManager removeItemAtPath:v34 error:&v46];
        v30 = v46;
        if ((v29 & 1) == 0)
        {
          v31 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *v51 = 138543618;
            v52 = v34;
            v53 = 2114;
            v54 = v30;
            _os_log_impl(&dword_22D2FA000, v31, OS_LOG_TYPE_ERROR, "Failed to remove temporary artwork file: '%{public}@'. err = %{public}@", v51, 0x16u);
          }
        }

        if (*(*&buf[8] + 24) == 1 && (v32 = [(ML3MusicLibrary *)self _insertArtworkRowWithArtworkToken:tokenCopy artworkType:type sourceType:sourceType relativePath:v14], *(*&buf[8] + 24) = v32, v32))
        {
          v41[0] = MEMORY[0x277D85DD0];
          v41[1] = 3221225472;
          v41[2] = __143__ML3MusicLibrary_importOriginalArtworkFromImageData_withArtworkToken_artworkType_sourceType_mediaType_variantType_shouldPerformColorAnalysis___block_invoke_698;
          v41[3] = &unk_27875D930;
          analysisCopy = analysis;
          v41[4] = self;
          v42 = v20;
          typeCopy = type;
          v43 = tokenCopy;
          [(ML3MusicLibrary *)self _autogenerateArtworkForRelativePath:v14 artworkType:type mediaType:mediaType variantType:variantType completionHandler:v41];

          v23 = *(*&buf[8] + 24);
        }

        else
        {
          v23 = 0;
        }
      }
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

void __143__ML3MusicLibrary_importOriginalArtworkFromImageData_withArtworkToken_artworkType_sourceType_mediaType_variantType_shouldPerformColorAnalysis___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = v3 == 0;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v4 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_ERROR, "Failed to convert original artwork with error: %{public}@", &v5, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __143__ML3MusicLibrary_importOriginalArtworkFromImageData_withArtworkToken_artworkType_sourceType_mediaType_variantType_shouldPerformColorAnalysis___block_invoke_698(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  if (a5 && (*(a1 + 64) & 1) != 0)
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) absoluteString];
    [v8 _createColorAnalysisForRelativePath:v9 artworkType:*(a1 + 56) artworkToken:*(a1 + 48) preferredImageSize:0 completionHandler:{a2, a3}];
  }
}

- (void)importOriginalArtworkFromFileURL:(id)l withArtworkToken:(id)token artworkType:(int64_t)type sourceType:(int64_t)sourceType mediaType:(unsigned int)mediaType variantType:(int64_t)variantType shouldPerformColorAnalysis:(BOOL)analysis completion:(id)self0
{
  v53 = *MEMORY[0x277D85DE8];
  lCopy = l;
  tokenCopy = token;
  completionCopy = completion;
  v19 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v49 = 2114;
    v50 = lCopy;
    v51 = 2114;
    v52 = tokenCopy;
    _os_log_impl(&dword_22D2FA000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: import original artwork from file url: %{public}@, artwork token: %{public}@, completion handler", buf, 0x20u);
  }

  if ([(ML3MusicLibrary *)tokenCopy length])
  {
    mediaTypeCopy = mediaType;
    typeCopy = type;
    sourceTypeCopy = sourceType;
    v36 = lCopy;
    v20 = [ML3MusicLibrary artworkRelativePathFromToken:tokenCopy variantType:variantType];
    v21 = MEMORY[0x277CBEBC0];
    v22 = MEMORY[0x277CCACA8];
    originalArtworkDirectory = [(ML3MusicLibrary *)self originalArtworkDirectory];
    v46[0] = originalArtworkDirectory;
    v46[1] = v20;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
    v25 = [v22 pathWithComponents:v24];
    v26 = [v21 fileURLWithPath:v25 isDirectory:0];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [v26 path];
    LODWORD(v21) = [defaultManager fileExistsAtPath:path];

    if (v21)
    {
      v29 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy = tokenCopy;
        _os_log_impl(&dword_22D2FA000, v29, OS_LOG_TYPE_DEFAULT, "Artwork already exists on disk for artwork token %{public}@, ensuring artwork table is consistent", buf, 0xCu);
      }

      v30 = [(ML3MusicLibrary *)self _insertArtworkRowWithArtworkToken:tokenCopy artworkType:typeCopy sourceType:sourceTypeCopy variantType:variantType relativePath:v20];
      lCopy = v36;
      if (completionCopy)
      {
        if (v30)
        {
          completionCopy[2](completionCopy, 0);
        }

        else
        {
          v31 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_22D2FA000, v31, OS_LOG_TYPE_ERROR, "importOriginalArtworkFromFileURL failed to insert into artwork table", buf, 2u);
          }

          v32 = [MEMORY[0x277CCA9B8] msv_errorWithDomain:@"ML3DatabaseErrorDomain" code:0 debugDescription:@"Failed to insert row for artwork"];
          (completionCopy)[2](completionCopy, v32);
        }
      }
    }

    else
    {
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __152__ML3MusicLibrary_importOriginalArtworkFromFileURL_withArtworkToken_artworkType_sourceType_mediaType_variantType_shouldPerformColorAnalysis_completion___block_invoke;
      v37[3] = &unk_27875D908;
      v40 = completionCopy;
      v37[4] = self;
      v38 = tokenCopy;
      v41 = typeCopy;
      v42 = sourceTypeCopy;
      variantTypeCopy = variantType;
      v39 = v20;
      v44 = mediaTypeCopy;
      analysisCopy = analysis;
      lCopy = v36;
      [(ML3MusicLibrary *)self _convertOriginalArtworkToDevicePreferredFormatFromSourceURL:v36 toDestinationURL:v26 completionHandler:v37];
    }

    goto LABEL_17;
  }

  if (completionCopy)
  {
    v20 = [MEMORY[0x277CCA9B8] msv_errorWithDomain:@"ML3DatabaseErrorDomain" code:700 debugDescription:@"Cannot import artwork without a valid artwork token"];
    (completionCopy)[2](completionCopy, v20);
LABEL_17:
  }
}

void __152__ML3MusicLibrary_importOriginalArtworkFromFileURL_withArtworkToken_artworkType_sourceType_mediaType_variantType_shouldPerformColorAnalysis_completion___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [v3 msv_description];
      *buf = 138543618;
      v21 = v3;
      v22 = 2114;
      v23 = v5;
      _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_ERROR, "importOriginalArtworkFromFileURL failed to convert original artwork with error: %{public}@ error=%{public}@", buf, 0x16u);
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      (*(v6 + 16))(v6, v3);
    }
  }

  else if ([*(a1 + 32) _insertArtworkRowWithArtworkToken:*(a1 + 40) artworkType:*(a1 + 64) sourceType:*(a1 + 72) variantType:*(a1 + 80) relativePath:*(a1 + 48)])
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 64);
    v9 = *(a1 + 88);
    v10 = *(a1 + 80);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __152__ML3MusicLibrary_importOriginalArtworkFromFileURL_withArtworkToken_artworkType_sourceType_mediaType_variantType_shouldPerformColorAnalysis_completion___block_invoke_694;
    v15[3] = &unk_27875D8E0;
    v19 = *(a1 + 92);
    v15[4] = v7;
    v18 = v8;
    v11 = *(a1 + 48);
    v16 = *(a1 + 40);
    v17 = *(a1 + 56);
    [v7 _autogenerateArtworkForRelativePath:v11 artworkType:v8 mediaType:v9 variantType:v10 completionHandler:v15];
  }

  else
  {
    v12 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_ERROR, "importOriginalArtworkFromFileURL failed to insert into artwork table", buf, 2u);
    }

    v13 = *(a1 + 56);
    if (v13)
    {
      v14 = [MEMORY[0x277CCA9B8] msv_errorWithDomain:@"ML3DatabaseErrorDomain" code:0 debugDescription:@"Failed to insert row for artwork"];
      (*(v13 + 16))(v13, v14);
    }
  }
}

void __152__ML3MusicLibrary_importOriginalArtworkFromFileURL_withArtworkToken_artworkType_sourceType_mediaType_variantType_shouldPerformColorAnalysis_completion___block_invoke_694(uint64_t a1, void *a2, void *a3, double a4, double a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  if (v9)
  {
    v11 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v9 msv_description];
      v16 = 138543618;
      v17 = v9;
      v18 = 2114;
      v19 = v12;
      _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_ERROR, "importOriginalArtworkFromFileURL failed to convert original artwork with error: %{public}@ error=%{public}@", &v16, 0x16u);
    }
  }

  if (v10 && (*(a1 + 64) & 1) != 0)
  {
    v13 = *(a1 + 32);
    v14 = [v10 absoluteString];
    [v13 _createColorAnalysisForRelativePath:v14 artworkType:*(a1 + 56) artworkToken:*(a1 + 40) preferredImageSize:0 completionHandler:{a4, a5}];
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    (*(v15 + 16))(v15, v9);
  }
}

- (BOOL)importOriginalArtworkFromFileURL:(id)l withArtworkToken:(id)token artworkType:(int64_t)type sourceType:(int64_t)sourceType mediaType:(unsigned int)mediaType variantType:(int64_t)variantType shouldPerformColorAnalysis:(BOOL)analysis
{
  v45 = *MEMORY[0x277D85DE8];
  lCopy = l;
  tokenCopy = token;
  v14 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = lCopy;
    *&buf[22] = 2114;
    v44 = tokenCopy;
    _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: import original artwork from file url: %{public}@, artwork token: %{public}@", buf, 0x20u);
  }

  if ([tokenCopy length])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v44) = 0;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v16 = [ML3MusicLibrary artworkRelativePathFromToken:tokenCopy];
    v17 = MEMORY[0x277CBEBC0];
    v18 = MEMORY[0x277CCACA8];
    originalArtworkDirectory = [(ML3MusicLibrary *)self originalArtworkDirectory];
    v42[0] = originalArtworkDirectory;
    v42[1] = v16;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
    v21 = [v18 pathWithComponents:v20];
    v22 = [v17 fileURLWithPath:v21 isDirectory:0];

    path = [v22 path];
    LODWORD(originalArtworkDirectory) = [defaultManager fileExistsAtPath:path];

    if (originalArtworkDirectory)
    {
      v24 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *v40 = 138543362;
        v41 = tokenCopy;
        _os_log_impl(&dword_22D2FA000, v24, OS_LOG_TYPE_DEFAULT, "Artwork already exists on disk for artwork token %{public}@, ensuring artwork table is consistent", v40, 0xCu);
      }

      v25 = [(ML3MusicLibrary *)self _insertArtworkRowWithArtworkToken:tokenCopy artworkType:type sourceType:sourceType relativePath:v16];
      *(*&buf[8] + 24) = v25;
    }

    else
    {
      v26 = dispatch_semaphore_create(0);
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __141__ML3MusicLibrary_importOriginalArtworkFromFileURL_withArtworkToken_artworkType_sourceType_mediaType_variantType_shouldPerformColorAnalysis___block_invoke;
      v37[3] = &unk_2787649F8;
      v39 = buf;
      v27 = v26;
      v38 = v27;
      [(ML3MusicLibrary *)self _convertOriginalArtworkToDevicePreferredFormatFromSourceURL:lCopy toDestinationURL:v22 completionHandler:v37];
      dispatch_semaphore_wait(v27, 0xFFFFFFFFFFFFFFFFLL);
      if (*(*&buf[8] + 24) == 1 && (v28 = [(ML3MusicLibrary *)self _insertArtworkRowWithArtworkToken:tokenCopy artworkType:type sourceType:sourceType relativePath:v16], (*(*&buf[8] + 24) = v28) != 0))
      {
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __141__ML3MusicLibrary_importOriginalArtworkFromFileURL_withArtworkToken_artworkType_sourceType_mediaType_variantType_shouldPerformColorAnalysis___block_invoke_687;
        v33[3] = &unk_27875D8B8;
        analysisCopy = analysis;
        v33[4] = self;
        typeCopy = type;
        v34 = tokenCopy;
        [(ML3MusicLibrary *)self _autogenerateArtworkForRelativePath:v16 artworkType:type mediaType:mediaType variantType:variantType completionHandler:v33];

        v25 = *(*&buf[8] + 24);
      }

      else
      {
        v25 = 0;
      }
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

void __141__ML3MusicLibrary_importOriginalArtworkFromFileURL_withArtworkToken_artworkType_sourceType_mediaType_variantType_shouldPerformColorAnalysis___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = v3 == 0;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v4 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_ERROR, "Failed to convert original artwork with error: %{public}@", &v5, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __141__ML3MusicLibrary_importOriginalArtworkFromFileURL_withArtworkToken_artworkType_sourceType_mediaType_variantType_shouldPerformColorAnalysis___block_invoke_687(uint64_t a1, double a2, double a3, uint64_t a4, void *a5)
{
  if (a5 && (*(a1 + 56) & 1) != 0)
  {
    v8 = *(a1 + 32);
    v9 = [a5 absoluteString];
    [v8 _createColorAnalysisForRelativePath:v9 artworkType:*(a1 + 48) artworkToken:*(a1 + 40) preferredImageSize:0 completionHandler:{a2, a3}];
  }
}

- (BOOL)importExistingOriginalArtworkWithArtworkToken:(id)token artworkType:(int64_t)type sourceType:(int64_t)sourceType mediaType:(unsigned int)mediaType variantType:(int64_t)variantType
{
  v32 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  v13 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v30 = 2114;
    v31 = tokenCopy;
    _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: import existing original artwork with token: %{public}@", buf, 0x16u);
  }

  if ([tokenCopy length])
  {
    mediaTypeCopy = mediaType;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v15 = [ML3MusicLibrary artworkRelativePathFromToken:tokenCopy variantType:variantType];
    v16 = MEMORY[0x277CCACA8];
    originalArtworkDirectory = [(ML3MusicLibrary *)self originalArtworkDirectory];
    v27[0] = originalArtworkDirectory;
    v27[1] = v15;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v19 = [v16 pathWithComponents:v18];

    if ([defaultManager fileExistsAtPath:v19])
    {
      if ([(ML3MusicLibrary *)self _insertArtworkRowWithArtworkToken:tokenCopy artworkType:type sourceType:sourceType variantType:variantType relativePath:v15])
      {
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __110__ML3MusicLibrary_importExistingOriginalArtworkWithArtworkToken_artworkType_sourceType_mediaType_variantType___block_invoke;
        v24[3] = &unk_27875D890;
        v24[4] = self;
        typeCopy = type;
        v25 = tokenCopy;
        [(ML3MusicLibrary *)self _autogenerateArtworkForRelativePath:v15 artworkType:type mediaType:mediaTypeCopy variantType:variantType completionHandler:v24];

        v20 = 1;
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      v21 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        selfCopy = v19;
        _os_log_impl(&dword_22D2FA000, v21, OS_LOG_TYPE_ERROR, "Original artwork not found at '%{public}@'", buf, 0xCu);
      }
    }

    v20 = 0;
    goto LABEL_12;
  }

  v20 = 0;
LABEL_13:

  return v20;
}

void __110__ML3MusicLibrary_importExistingOriginalArtworkWithArtworkToken_artworkType_sourceType_mediaType_variantType___block_invoke(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  if (a5)
  {
    v8 = a1[4];
    v9 = [a5 absoluteString];
    [v8 _createColorAnalysisForRelativePath:v9 artworkType:a1[6] artworkToken:a1[5] preferredImageSize:0 completionHandler:{a2, a3}];
  }
}

- (void)performColorAnalysisForArtworkWithConnection:(id)connection shouldRegenerateColorAnalysis:(BOOL)analysis
{
  if (analysis)
  {
    v6 = @"SELECT DISTINCT(relative_path), artwork.artwork_type, item.media_type, artwork.artwork_token FROM artwork JOIN artwork_token ON artwork.artwork_token = artwork_token.artwork_token JOIN item ON item_pid = entity_pid";
  }

  else
  {
    v6 = @"SELECT DISTINCT(relative_path), artwork.artwork_type, item.media_type, artwork.artwork_token FROM artwork JOIN artwork_token ON artwork.artwork_token = artwork_token.artwork_token JOIN item ON item_pid = entity_pid WHERE artwork.interest_data IS NULL";
  }

  v7 = [connection executeQuery:v6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __94__ML3MusicLibrary_performColorAnalysisForArtworkWithConnection_shouldRegenerateColorAnalysis___block_invoke;
  v8[3] = &unk_278766118;
  v8[4] = self;
  [v7 enumerateRowsWithBlock:v8];
}

void __94__ML3MusicLibrary_performColorAnalysisForArtworkWithConnection_shouldRegenerateColorAnalysis___block_invoke(uint64_t a1, void *a2)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 stringForColumnIndex:0];
  v5 = [v3 intForColumnIndex:1];
  v6 = [v3 intForColumnIndex:2];
  v7 = [v3 stringForColumnIndex:3];

  [*(a1 + 32) _sizeForColorAnalysisForMediaType:v6 artworkType:v5];
  v9 = v8;
  v11 = v10;
  v12 = MEMORY[0x277CBEBC0];
  v13 = MEMORY[0x277CCACA8];
  v14 = [*(a1 + 32) originalArtworkDirectory];
  v23[0] = v14;
  v23[1] = v4;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v16 = [v13 pathWithComponents:v15];
  v17 = [v12 fileURLWithPath:v16 isDirectory:0];

  v18 = os_log_create("com.apple.amp.medialibrary", "Artwork");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138543362;
    v22 = v7;
    _os_log_impl(&dword_22D2FA000, v18, OS_LOG_TYPE_DEFAULT, "Creating color analysis for artwork token: %{public}@", &v21, 0xCu);
  }

  if (v7)
  {
    v19 = *(a1 + 32);
    v20 = [v17 absoluteString];
    [v19 _createColorAnalysisForRelativePath:v20 artworkType:v5 artworkToken:v7 preferredImageSize:&__block_literal_global_686 completionHandler:{v9, v11}];
  }
}

void __94__ML3MusicLibrary_performColorAnalysisForArtworkWithConnection_shouldRegenerateColorAnalysis___block_invoke_684(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = os_log_create("com.apple.amp.medialibrary", "Artwork");
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = [v2 msv_description];
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_ERROR, "_ML3MigrationExecuteDirectives - Color analysis for library artwork is completed error=%{public}@", &v6, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "_ML3MigrationExecuteDirectives - Color analysis for library artwork is completed", &v6, 2u);
  }
}

- (void)generateArtworkForRelativePath:(id)path sizes:(id)sizes completionHandler:(id)handler
{
  v61[2] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  sizesCopy = sizes;
  handlerCopy = handler;
  if (sizesCopy && [sizesCopy count])
  {
    v42 = handlerCopy;
    v9 = +[ML3MusicLibrary devicePreferredImageFormat];
    v10 = MEMORY[0x277CBEBC0];
    v11 = MEMORY[0x277CCACA8];
    originalArtworkDirectory = [(ML3MusicLibrary *)self originalArtworkDirectory];
    v61[0] = originalArtworkDirectory;
    v61[1] = pathCopy;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
    v14 = [v11 pathWithComponents:v13];
    v15 = [v10 fileURLWithPath:v14 isDirectory:0];

    v41 = v15;
    v16 = [objc_alloc(MEMORY[0x277D27EE8]) initWithSourceURL:v15];
    v17 = MEMORY[0x277CBF3A8];
    v18 = os_log_create("com.apple.amp.medialibrary", "Artwork");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = [sizesCopy count];
      _os_log_impl(&dword_22D2FA000, v18, OS_LOG_TYPE_DEFAULT, "Generating artwork for sizes: %lu", buf, 0xCu);
    }

    v20 = *v17;
    v19 = *(v17 + 8);

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v43 = sizesCopy;
    obj = sizesCopy;
    v21 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = 0;
      v24 = *v55;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v55 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v54 + 1) + 8 * i);
          *buf = 0;
          *&buf[8] = 0;
          [v26 getValue:buf];
          v27 = MEMORY[0x277CBEBC0];
          v28 = MEMORY[0x277CCACA8];
          v29 = [(ML3MusicLibrary *)self artworkCacheDirectoryForSize:*buf, *&buf[8]];
          v59[0] = v29;
          v59[1] = pathCopy;
          v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
          v31 = [v28 pathWithComponents:v30];
          v32 = [v27 fileURLWithPath:v31 isDirectory:0];

          v33 = *buf;
          if (v20 >= *buf)
          {
            v35 = *buf;
          }

          else
          {
            v19 = *&buf[8];
            v34 = v32;

            v35 = *buf;
            v23 = v34;
            v20 = v33;
          }

          if (v9)
          {
            [v16 addDestinationWithFormat:2 size:v32 url:v35, *&buf[8]];
          }

          else
          {
            [v16 addJPEGDestinationWithSize:v32 compressionQuality:v35 url:{*&buf[8], 0.9}];
          }
        }

        v22 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
      }

      while (v22);
    }

    else
    {
      v23 = 0;
    }

    v37 = os_log_create("com.apple.amp.medialibrary", "Artwork");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = v23;
      *&buf[12] = 2048;
      *&buf[14] = v20;
      _os_log_impl(&dword_22D2FA000, v37, OS_LOG_TYPE_DEFAULT, "Preferred for color analysis: %{public}@ of size %lu", buf, 0x16u);
    }

    mEMORY[0x277D27ED0] = [MEMORY[0x277D27ED0] sharedService];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __74__ML3MusicLibrary_generateArtworkForRelativePath_sizes_completionHandler___block_invoke;
    v47[3] = &unk_27875D868;
    v48 = v16;
    selfCopy = self;
    handlerCopy = v42;
    v52 = v20;
    v53 = v19;
    v50 = v23;
    v51 = v42;
    v39 = v23;
    v40 = v16;
    [mEMORY[0x277D27ED0] sendRequest:v40 completionHandler:v47];

    sizesCopy = v43;
  }

  else if (handlerCopy)
  {
    v36 = [MEMORY[0x277CCA9B8] ml_errorWithCode:1 description:0];
    (*(handlerCopy + 2))(handlerCopy, v36, 0, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8));
  }
}

void __74__ML3MusicLibrary_generateArtworkForRelativePath_sizes_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__ML3MusicLibrary_generateArtworkForRelativePath_sizes_completionHandler___block_invoke_2;
  v7[3] = &unk_27875D840;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v6 = v3;
  [v5 enumerateDestinationsUsingBlock:v7];
  (*(*(a1 + 56) + 16))(*(a1 + 64), *(a1 + 72));
}

void __74__ML3MusicLibrary_generateArtworkForRelativePath_sizes_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 destinationURL];
  v6 = [v3 path];

  if (!*(a1 + 32) || ([MEMORY[0x277CCAA00] defaultManager], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "fileExistsAtPath:", v6), v4, v5))
  {
    [*(a1 + 40) updatePurgeabilityForCachedArtworkWithAbsolutePath:v6];
  }
}

- (void)enumerateArtworkRelativePathsWithConnection:(id)connection matchingRelativePathContainer:(id)container block:(id)block
{
  connectionCopy = connection;
  containerCopy = container;
  blockCopy = block;
  if (containerCopy)
  {
    containerCopy = [MEMORY[0x277CCACA8] stringWithFormat:@" WHERE relative_path LIKE %@%%", containerCopy];
    v12 = [@"SELECT DISTINCT(relative_path) best:media_type FROM item JOIN best_artwork_token ON item_pid = entity_pid AND entity_type = 0 JOIN artwork ON available_artwork_token = artwork_token" artwork:"stringByAppendingString:" token.artwork:v11type];
  }

  else
  {
    v12 = @"SELECT DISTINCT(relative_path), best_artwork_token.artwork_type, media_type FROM item JOIN best_artwork_token ON item_pid = entity_pid AND entity_type = 0 JOIN artwork ON available_artwork_token = artwork_token";
  }

  v13 = [connectionCopy executeQuery:v12];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __99__ML3MusicLibrary_enumerateArtworkRelativePathsWithConnection_matchingRelativePathContainer_block___block_invoke;
  v21[3] = &unk_278764078;
  v21[4] = self;
  v14 = blockCopy;
  v22 = v14;
  [v13 enumerateRowsWithBlock:v21];

  if (containerCopy)
  {
    containerCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@" AND relative_path LIKE %@%%", containerCopy];
    v16 = [@"SELECT DISTINCT(relative_path) best:7") artwork:"stringByAppendingString:" token.artwork:containerCopy2 type FROM best:? artwork:? token JOIN artwork ON available:? artwork:? token = artwork:? token WHERE entity:?type IN (2];
  }

  else
  {
    v16 = @"SELECT DISTINCT(relative_path), best_artwork_token.artwork_type FROM best_artwork_token JOIN artwork ON available_artwork_token = artwork_token WHERE entity_type IN (2,7)";
  }

  v17 = [connectionCopy executeQuery:v16];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __99__ML3MusicLibrary_enumerateArtworkRelativePathsWithConnection_matchingRelativePathContainer_block___block_invoke_671;
  v19[3] = &unk_278764078;
  v19[4] = self;
  v20 = v14;
  v18 = v14;
  [v17 enumerateRowsWithBlock:v19];
}

void __99__ML3MusicLibrary_enumerateArtworkRelativePathsWithConnection_matchingRelativePathContainer_block___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (v8)
  {
    v9 = os_log_create("com.apple.amp.medialibrary", "CacheManagement");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v16 = 138543618;
      v17 = v10;
      v18 = 2114;
      v19 = v8;
      _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_ERROR, "%{public}@ Encountered error enumerating artwork paths. error=%{public}@", &v16, 0x16u);
    }

    *a4 = 1;
  }

  else
  {
    v11 = [v7 stringForColumnIndex:0];
    v12 = [v7 intForColumnIndex:1];
    v13 = [v7 intForColumnIndex:2];
    v14 = +[ML3ArtworkConfiguration systemConfiguration];
    v15 = [v14 sizesToAutogenerateForMediaType:v13 artworkType:v12];

    (*(*(a1 + 40) + 16))();
  }
}

void __99__ML3MusicLibrary_enumerateArtworkRelativePathsWithConnection_matchingRelativePathContainer_block___block_invoke_671(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (v8)
  {
    v9 = os_log_create("com.apple.amp.medialibrary", "CacheManagement");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v15 = 138543618;
      v16 = v10;
      v17 = 2114;
      v18 = v8;
      _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_ERROR, "%{public}@ Encountered error enumerating hero artwork paths. error=%{public}@", &v15, 0x16u);
    }

    *a4 = 1;
  }

  else
  {
    v11 = [v7 stringForColumnIndex:0];
    v12 = [v7 intForColumnIndex:1];
    v13 = +[ML3ArtworkConfiguration systemConfiguration];
    v14 = [v13 sizesToAutogenerateForMediaType:8 artworkType:v12];

    (*(*(a1 + 40) + 16))();
  }
}

- (void)autogenerateSupportedSizesForAllOriginalArtworkWithConnection:(id)connection completionHandler:(id)handler
{
  connectionCopy = connection;
  handlerCopy = handler;
  v8 = dispatch_group_create();
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__2504;
  v19[4] = __Block_byref_object_dispose__2505;
  v20 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __99__ML3MusicLibrary_autogenerateSupportedSizesForAllOriginalArtworkWithConnection_completionHandler___block_invoke;
  v15[3] = &unk_27875D7F0;
  v9 = v8;
  v16 = v9;
  selfCopy = self;
  v18 = v19;
  [(ML3MusicLibrary *)self enumerateArtworkRelativePathsWithConnection:connectionCopy matchingRelativePathContainer:0 block:v15];
  v10 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__ML3MusicLibrary_autogenerateSupportedSizesForAllOriginalArtworkWithConnection_completionHandler___block_invoke_3;
  block[3] = &unk_27875D818;
  v13 = handlerCopy;
  v14 = v19;
  v11 = handlerCopy;
  dispatch_group_notify(v9, v10, block);

  _Block_object_dispose(v19, 8);
}

void __99__ML3MusicLibrary_autogenerateSupportedSizesForAllOriginalArtworkWithConnection_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  dispatch_group_enter(v5);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __99__ML3MusicLibrary_autogenerateSupportedSizesForAllOriginalArtworkWithConnection_completionHandler___block_invoke_2;
  v9[3] = &unk_27875D7C8;
  v8 = *(a1 + 40);
  v11 = *(a1 + 48);
  v10 = *(a1 + 32);
  [v8 generateArtworkForRelativePath:v7 sizes:v6 completionHandler:v9];
}

uint64_t __99__ML3MusicLibrary_autogenerateSupportedSizesForAllOriginalArtworkWithConnection_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

void __99__ML3MusicLibrary_autogenerateSupportedSizesForAllOriginalArtworkWithConnection_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)removePlaylistsWithPersistentIDs:(id)ds fromSource:(int)source usingConnection:(id)connection withCompletionHandler:(id)handler
{
  v8 = *&source;
  v29 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  connectionCopy = connection;
  serialQueue = self->_serialQueue;
  handlerCopy = handler;
  dispatch_assert_queue_not_V2(serialQueue);
  v14 = +[MLMediaLibraryService sharedMediaLibraryService];
  v15 = MEMORY[0x277CBEB38];
  v16 = [MEMORY[0x277CCABB0] numberWithInt:v8];
  v17 = [v15 dictionaryWithObject:v16 forKey:@"MLDatabaseOperationAttributeTrackSourceKey"];

  if (dsCopy)
  {
    [v17 setObject:dsCopy forKey:@"MLDatabaseOperationAttributePersistentIDsArrayKey"];
  }

  v18 = MEMORY[0x277CBEB38];
  databasePath = [(ML3MusicLibrary *)self databasePath];
  v20 = [v18 dictionaryWithObject:databasePath forKey:@"MLDatabaseOperationOptionDatabasePathKey"];

  if (connectionCopy && [connectionCopy isInTransaction])
  {
    currentTransactionID = [connectionCopy currentTransactionID];
    [v20 setObject:currentTransactionID forKey:@"MLDatabaseOperationOptionTransactionIdentifierKey"];
  }

  v22 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138543874;
    v24 = v14;
    v25 = 2114;
    v26 = v17;
    v27 = 2114;
    v28 = v20;
    _os_log_impl(&dword_22D2FA000, v22, OS_LOG_TYPE_DEFAULT, "Sending remove playlists request to %{public}@. Attributes: %{public}@, options: %{public}@", &v23, 0x20u);
  }

  [v14 performDatabaseOperation:6 withAttributes:v17 options:v20 completionHandler:handlerCopy];
}

- (void)removeCloudSourcesWithAttributes:(id)attributes completionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  serialQueue = self->_serialQueue;
  handlerCopy = handler;
  dispatch_assert_queue_not_V2(serialQueue);
  v9 = +[MLMediaLibraryService sharedMediaLibraryService];
  v10 = MEMORY[0x277CBEB38];
  databasePath = [(ML3MusicLibrary *)self databasePath];
  v12 = [v10 dictionaryWithObject:databasePath forKey:@"MLDatabaseOperationOptionDatabasePathKey"];

  v13 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543874;
    v15 = v9;
    v16 = 2114;
    v17 = attributesCopy;
    v18 = 2114;
    v19 = v12;
    _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_DEFAULT, "Sending remove tracks request to %{public}@. Attributes: %{public}@, options: %{public}@", &v14, 0x20u);
  }

  [v9 performDatabaseOperation:9 withAttributes:attributesCopy options:v12 completionHandler:handlerCopy];
}

- (void)removeTracksWithPersistentIDs:(id)ds fromSource:(int)source usingConnection:(id)connection withCompletionHandler:(id)handler
{
  v8 = *&source;
  v29 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  connectionCopy = connection;
  serialQueue = self->_serialQueue;
  handlerCopy = handler;
  dispatch_assert_queue_not_V2(serialQueue);
  v14 = +[MLMediaLibraryService sharedMediaLibraryService];
  v15 = MEMORY[0x277CBEB38];
  v16 = [MEMORY[0x277CCABB0] numberWithInt:v8];
  v17 = [v15 dictionaryWithObject:v16 forKey:@"MLDatabaseOperationAttributeTrackSourceKey"];

  if (dsCopy)
  {
    [v17 setObject:dsCopy forKey:@"MLDatabaseOperationAttributePersistentIDsArrayKey"];
  }

  v18 = MEMORY[0x277CBEB38];
  databasePath = [(ML3MusicLibrary *)self databasePath];
  v20 = [v18 dictionaryWithObject:databasePath forKey:@"MLDatabaseOperationOptionDatabasePathKey"];

  if (connectionCopy && [connectionCopy isInTransaction])
  {
    currentTransactionID = [connectionCopy currentTransactionID];
    [v20 setObject:currentTransactionID forKey:@"MLDatabaseOperationOptionTransactionIdentifierKey"];
  }

  v22 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138543874;
    v24 = v14;
    v25 = 2114;
    v26 = v17;
    v27 = 2114;
    v28 = v20;
    _os_log_impl(&dword_22D2FA000, v22, OS_LOG_TYPE_DEFAULT, "Sending remove tracks request to %{public}@. Attributes: %{public}@, options: %{public}@", &v23, 0x20u);
  }

  [v14 performDatabaseOperation:3 withAttributes:v17 options:v20 completionHandler:handlerCopy];
}

- (unint64_t)countOfChangedPersistentIdsAfterRevision:(int64_t)revision revisionTrackingCode:(unint64_t)code maximumRevisionType:(int)type
{
  v5 = *&type;
  v29[1] = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  if (code == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = @"SELECT COUNT() FROM entity_revision WHERE revision > ? ";
  }

  else
  {
    v9 = [@"SELECT COUNT() FROM entity_revision WHERE revision > ? " stringByAppendingString:@" AND class = ? "];
  }

  if (v5 <= 2)
  {
    v10 = [(__CFString *)v9 stringByAppendingString:@" AND revision_type <= ? "];

    v9 = v10;
  }

  v11 = [(__CFString *)v9 stringByAppendingString:@""];;

  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:revision];
  v29[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v14 = [v13 mutableCopy];

  if (code != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:code];
    [v14 addObject:v15];
  }

  if (v5 <= 2)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
    [v14 addObject:v16];
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __101__ML3MusicLibrary_countOfChangedPersistentIdsAfterRevision_revisionTrackingCode_maximumRevisionType___block_invoke;
  v21[3] = &unk_278763398;
  v24 = &v25;
  v17 = v11;
  v22 = v17;
  v18 = v14;
  v23 = v18;
  [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:0 withBlock:v21];
  v19 = v26[3];

  _Block_object_dispose(&v25, 8);
  return v19;
}

void __101__ML3MusicLibrary_countOfChangedPersistentIdsAfterRevision_revisionTrackingCode_maximumRevisionType___block_invoke(void *a1, void *a2)
{
  v3 = [a2 executeQuery:a1[4] withParameters:a1[5]];
  *(*(a1[6] + 8) + 24) = [v3 int64ValueForFirstRowAndColumn];
}

- (BOOL)persistentID:(int64_t)d changedAfterRevision:(int64_t)revision revisionTrackingCode:(int64_t)code
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__ML3MusicLibrary_persistentID_changedAfterRevision_revisionTrackingCode___block_invoke;
  v7[3] = &unk_27875D7A0;
  v7[6] = code;
  v7[7] = revision;
  v7[4] = &v8;
  v7[5] = d;
  [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:0 withBlock:v7];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __74__ML3MusicLibrary_persistentID_changedAfterRevision_revisionTrackingCode___block_invoke(void *a1, void *a2)
{
  v11[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = a1[5];
  v5 = a2;
  v6 = [v3 numberWithLongLong:v4];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{a1[6], v6}];
  v11[1] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:a1[7]];
  v11[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
  v10 = [v5 executeQuery:@"SELECT 1 FROM entity_revision WHERE entity_pid = ? AND class = ? AND revision > ? " withParameters:v9];

  *(*(a1[4] + 8) + 24) = [v10 hasAtLeastOneRow];
}

- (void)getChangedPersistentIDsAfterRevision:(int64_t)revision revisionTrackingCode:(int64_t)code maximumRevisionType:(int)type usingBlock:(id)block
{
  blockCopy = block;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 32;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v20 = malloc_type_malloc(0x100uLL, 0x100004000313F17uLL);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __108__ML3MusicLibrary_getChangedPersistentIDsAfterRevision_revisionTrackingCode_maximumRevisionType_usingBlock___block_invoke;
  v11[3] = &unk_27875D778;
  typeCopy = type;
  v11[7] = revision;
  v11[8] = code;
  v11[4] = v21;
  v11[5] = &v13;
  v11[6] = &v17;
  [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:0 withBlock:v11];
  blockCopy[2](blockCopy, v18[3], v14[3]);
  free(v18[3]);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(v21, 8);
}

void __108__ML3MusicLibrary_getChangedPersistentIDsAfterRevision_revisionTrackingCode_maximumRevisionType_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [@"SELECT entity_pid class FROM entity_revision WHERE revision > ?"];
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 56)];
  v7 = [v5 initWithObjects:{v6, 0}];

  if (*(a1 + 72) <= 2u)
  {
    [v4 appendString:@" AND revision_type <= ? "];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 72)];
    [v7 addObject:v8];
  }

  [v4 appendString:@";"];
  v9 = [v3 executeQuery:v4 withParameters:v7];

  v10 = [MEMORY[0x277CBEB58] set];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __108__ML3MusicLibrary_getChangedPersistentIDsAfterRevision_revisionTrackingCode_maximumRevisionType_usingBlock___block_invoke_2;
  v13[3] = &unk_27875D750;
  v11 = *(a1 + 64);
  v14 = v10;
  v15 = *(a1 + 32);
  v16 = *(a1 + 48);
  v17 = v11;
  v12 = v10;
  [v9 enumerateRowsWithBlock:v13];
}

void __108__ML3MusicLibrary_getChangedPersistentIDsAfterRevision_revisionTrackingCode_maximumRevisionType_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 int64ForColumnIndex:0];
  v5 = [v3 intForColumnIndex:1];

  if (*(a1 + 64) == v5)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:v4];
    if (([*(a1 + 32) containsObject:v9] & 1) == 0)
    {
      [*(a1 + 32) addObject:v9];
      v6 = *(*(a1 + 40) + 8);
      v7 = *(v6 + 24);
      v8 = *(*(*(a1 + 48) + 8) + 24);
      if (v7 <= v8)
      {
        *(v6 + 24) = 2 * v7 + 2;
        *(*(*(a1 + 56) + 8) + 24) = malloc_type_realloc(*(*(*(a1 + 56) + 8) + 24), 8 * *(*(*(a1 + 40) + 8) + 24), 0x100004000313F17uLL);
        v8 = *(*(*(a1 + 48) + 8) + 24);
      }

      *(*(*(*(a1 + 56) + 8) + 24) + 8 * v8) = v4;
      ++*(*(*(a1 + 48) + 8) + 24);
    }

    MEMORY[0x2821F9730]();
  }
}

- (void)enumerateLibraryPinsPersistentIDsAfterRevision:(int64_t)revision revisionTrackingCode:(unint64_t)code usingBlock:(id)block
{
  v16[2] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:revision];
  v16[0] = v8;
  v16[1] = &unk_2840C8B70;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __98__ML3MusicLibrary_enumerateLibraryPinsPersistentIDsAfterRevision_revisionTrackingCode_usingBlock___block_invoke;
  v12[3] = &unk_2787640A0;
  v13 = @"SELECT entity_pid, revision, revision_type, deleted FROM entity_revision WHERE revision > ? AND class = ?;";
  v14 = v9;
  v15 = blockCopy;
  v10 = blockCopy;
  v11 = v9;
  [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:0 withBlock:v12];
}

void __98__ML3MusicLibrary_enumerateLibraryPinsPersistentIDsAfterRevision_revisionTrackingCode_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 executeQuery:*(a1 + 32) withParameters:*(a1 + 40)];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __98__ML3MusicLibrary_enumerateLibraryPinsPersistentIDsAfterRevision_revisionTrackingCode_usingBlock___block_invoke_2;
  v4[3] = &unk_278760218;
  v5 = *(a1 + 48);
  [v3 enumerateRowsWithBlock:v4];
}

uint64_t __98__ML3MusicLibrary_enumerateLibraryPinsPersistentIDsAfterRevision_revisionTrackingCode_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 int64ForColumnIndex:0];
  [v3 int64ForColumnIndex:1];
  [v3 int64ForColumnIndex:2];
  [v3 int64ForColumnIndex:3];

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

- (void)enumerateAlbumPersistentIDsAfterRevision:(int64_t)revision revisionTrackingCode:(unint64_t)code usingBlock:(id)block
{
  v17[2] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:revision];
  v17[0] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{+[ML3Album revisionTrackingCode](ML3Album, "revisionTrackingCode")}];
  v17[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __92__ML3MusicLibrary_enumerateAlbumPersistentIDsAfterRevision_revisionTrackingCode_usingBlock___block_invoke;
  v13[3] = &unk_2787640A0;
  v14 = @"SELECT entity_pid, revision, revision_type, deleted, representative_item_pid, liked_state FROM entity_revision LEFT JOIN album ON album.album_pid=entity_revision.entity_pid WHERE revision > ? AND class = ?;";
  v15 = v10;
  v16 = blockCopy;
  v11 = blockCopy;
  v12 = v10;
  [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:0 withBlock:v13];
}

void __92__ML3MusicLibrary_enumerateAlbumPersistentIDsAfterRevision_revisionTrackingCode_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 executeQuery:*(a1 + 32) withParameters:*(a1 + 40)];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __92__ML3MusicLibrary_enumerateAlbumPersistentIDsAfterRevision_revisionTrackingCode_usingBlock___block_invoke_2;
  v4[3] = &unk_278760218;
  v5 = *(a1 + 48);
  [v3 enumerateRowsWithBlock:v4];
}

uint64_t __92__ML3MusicLibrary_enumerateAlbumPersistentIDsAfterRevision_revisionTrackingCode_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 int64ForColumnIndex:0];
  [v3 int64ForColumnIndex:1];
  [v3 int64ForColumnIndex:2];
  [v3 int64ForColumnIndex:3];

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

- (void)enumerateAlbumArtistPersistentIDsAfterRevision:(int64_t)revision revisionTrackingCode:(unint64_t)code usingBlock:(id)block
{
  v17[2] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:revision];
  v17[0] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{+[ML3AlbumArtist revisionTrackingCode](ML3AlbumArtist, "revisionTrackingCode")}];
  v17[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __98__ML3MusicLibrary_enumerateAlbumArtistPersistentIDsAfterRevision_revisionTrackingCode_usingBlock___block_invoke;
  v13[3] = &unk_2787640A0;
  v14 = @"SELECT entity_pid, revision, revision_type, deleted, representative_item_pid, liked_state FROM entity_revision LEFT JOIN album_artist ON album_artist.album_artist_pid=entity_revision.entity_pid WHERE revision > ? AND class = ?;";
  v15 = v10;
  v16 = blockCopy;
  v11 = blockCopy;
  v12 = v10;
  [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:0 withBlock:v13];
}

void __98__ML3MusicLibrary_enumerateAlbumArtistPersistentIDsAfterRevision_revisionTrackingCode_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 executeQuery:*(a1 + 32) withParameters:*(a1 + 40)];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __98__ML3MusicLibrary_enumerateAlbumArtistPersistentIDsAfterRevision_revisionTrackingCode_usingBlock___block_invoke_2;
  v4[3] = &unk_278760218;
  v5 = *(a1 + 48);
  [v3 enumerateRowsWithBlock:v4];
}

uint64_t __98__ML3MusicLibrary_enumerateAlbumArtistPersistentIDsAfterRevision_revisionTrackingCode_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 int64ForColumnIndex:0];
  [v3 int64ForColumnIndex:1];
  [v3 int64ForColumnIndex:2];
  [v3 int64ForColumnIndex:3];
  [v3 int64ForColumnIndex:4];
  [v3 intForColumnIndex:5];

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

- (void)enumeratePersistentIDsAfterRevision:(int64_t)revision revisionTrackingCode:(unint64_t)code maximumRevisionType:(int)type usingBlock:(id)block
{
  v6 = *&type;
  v26[1] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (code == 0x7FFFFFFFFFFFFFFFLL)
  {
    revision = @"SELECT entity_pid, revision, deleted, class FROM entity_revision WHERE revision > ? ";
  }

  else
  {
    revision = [CFSTR(""SELECT entity_pid revision];
  }

  if (v6 <= 2)
  {
    v12 = [(__CFString *)revision stringByAppendingString:@" AND revision_type <= ? "];

    revision = v12;
  }

  v13 = [(__CFString *)revision stringByAppendingString:@""];;

  v14 = [MEMORY[0x277CCABB0] numberWithLongLong:revision];
  v26[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v16 = [v15 mutableCopy];

  if (code != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:code];
    [v16 addObject:v17];
  }

  if (v6 <= 2)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
    [v16 addObject:v18];
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __107__ML3MusicLibrary_enumeratePersistentIDsAfterRevision_revisionTrackingCode_maximumRevisionType_usingBlock___block_invoke;
  v22[3] = &unk_2787640A0;
  v23 = v13;
  v24 = v16;
  v25 = blockCopy;
  v19 = blockCopy;
  v20 = v16;
  v21 = v13;
  [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:0 withBlock:v22];
}

void __107__ML3MusicLibrary_enumeratePersistentIDsAfterRevision_revisionTrackingCode_maximumRevisionType_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 executeQuery:*(a1 + 32) withParameters:*(a1 + 40)];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __107__ML3MusicLibrary_enumeratePersistentIDsAfterRevision_revisionTrackingCode_maximumRevisionType_usingBlock___block_invoke_2;
  v4[3] = &unk_278760218;
  v5 = *(a1 + 48);
  [v3 enumerateRowsWithBlock:v4];
}

uint64_t __107__ML3MusicLibrary_enumeratePersistentIDsAfterRevision_revisionTrackingCode_maximumRevisionType_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 int64ForColumnIndex:0];
  [v3 int64ForColumnIndex:1];
  [v3 int64ForColumnIndex:2];
  [v3 intForColumnIndex:3];

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

- (void)enumeratePersistentIDsAfterRevision:(int64_t)revision revisionTrackingCode:(unint64_t)code maximumRevisionType:(int)type forMediaTypes:(id)types inUsersLibrary:(BOOL)library usingBlock:(id)block
{
  libraryCopy = library;
  v10 = *&type;
  v45[1] = *MEMORY[0x277D85DE8];
  typesCopy = types;
  blockCopy = block;
  if (enumeratePersistentIDsAfterRevision_revisionTrackingCode_maximumRevisionType_forMediaTypes_inUsersLibrary_usingBlock__onceToken != -1)
  {
    dispatch_once(&enumeratePersistentIDsAfterRevision_revisionTrackingCode_maximumRevisionType_forMediaTypes_inUsersLibrary_usingBlock__onceToken, &__block_literal_global_555);
  }

  revision = [CFSTR(""SELECT entity_pid revision];
  v16 = [MEMORY[0x277CCABB0] numberWithLongLong:revision];
  v45[0] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
  v18 = [v17 mutableCopy];

  if (typesCopy)
  {
    [revision appendString:@" LEFT OUTER JOIN item AS mediaType_item ON (mediaType_item.item_pid = entity_pid) "];
  }

  [revision appendString:@" WHERE revision > ? "];
  if (v10 <= 2)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v10];
    [v18 addObject:v19];

    [revision appendString:@" AND revision_type <= ? "];
  }

  if (code == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (libraryCopy)
    {
      [revision appendString:@" AND CASE "];
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      allValues = [enumeratePersistentIDsAfterRevision_revisionTrackingCode_maximumRevisionType_forMediaTypes_inUsersLibrary_usingBlock____existsInLibraryClauses allValues];
      v21 = [allValues countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v41;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v41 != v23)
            {
              objc_enumerationMutation(allValues);
            }

            [revision appendString:*(*(&v40 + 1) + 8 * i)];
          }

          v22 = [allValues countByEnumeratingWithState:&v40 objects:v44 count:16];
        }

        while (v22);
      }

      v25 = @"ELSE 0 END";
      goto LABEL_20;
    }
  }

  else
  {
    if (!libraryCopy)
    {
      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:code];
      [v18 addObject:v29];

      v25 = @" AND class = ? ";
LABEL_20:
      [revision appendString:v25];
      goto LABEL_21;
    }

    v26 = enumeratePersistentIDsAfterRevision_revisionTrackingCode_maximumRevisionType_forMediaTypes_inUsersLibrary_usingBlock____existsInLibraryClauses;
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:code];
    v28 = [v26 objectForKeyedSubscript:v27];
    [revision appendFormat:@" AND CASE %@ ELSE 0 END", v28];
  }

LABEL_21:
  if (typesCopy && [typesCopy count])
  {
    objc_msgSend(revision, "appendFormat:", @" AND (deleted != 0");
    if ([typesCopy count])
    {
      v30 = 0;
      do
      {
        [revision appendString:@" OR"];
        v31 = [typesCopy objectAtIndex:v30];
        [revision appendFormat:@" ((media_type & %lu) != 0)", objc_msgSend(v31, "unsignedIntegerValue")];

        ++v30;
      }

      while ([typesCopy count] > v30);
    }

    [revision appendString:@""]);
  }

  [revision appendString:@";"];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __136__ML3MusicLibrary_enumeratePersistentIDsAfterRevision_revisionTrackingCode_maximumRevisionType_forMediaTypes_inUsersLibrary_usingBlock___block_invoke_631;
  v36[3] = &unk_2787640A0;
  v37 = revision;
  v38 = v18;
  v39 = blockCopy;
  v32 = blockCopy;
  v33 = v18;
  v34 = revision;
  [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:0 withBlock:v36];
}

void __136__ML3MusicLibrary_enumeratePersistentIDsAfterRevision_revisionTrackingCode_maximumRevisionType_forMediaTypes_inUsersLibrary_usingBlock___block_invoke_631(uint64_t a1, void *a2)
{
  v3 = [a2 executeQuery:*(a1 + 32) withParameters:*(a1 + 40)];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __136__ML3MusicLibrary_enumeratePersistentIDsAfterRevision_revisionTrackingCode_maximumRevisionType_forMediaTypes_inUsersLibrary_usingBlock___block_invoke_2;
  v4[3] = &unk_278760218;
  v5 = *(a1 + 48);
  [v3 enumerateRowsWithBlock:v4];
}

uint64_t __136__ML3MusicLibrary_enumeratePersistentIDsAfterRevision_revisionTrackingCode_maximumRevisionType_forMediaTypes_inUsersLibrary_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 int64ForColumnIndex:0];
  [v3 int64ForColumnIndex:1];
  [v3 int64ForColumnIndex:2];
  [v3 int64ForColumnIndex:3];
  [v3 intForColumnIndex:4];

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

void __136__ML3MusicLibrary_enumeratePersistentIDsAfterRevision_revisionTrackingCode_maximumRevisionType_forMediaTypes_inUsersLibrary_usingBlock___block_invoke()
{
  v3[7] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_2840C8AC8;
  v2[1] = &unk_2840C8AE0;
  v3[0] = @"WHEN class = 0 THEN deleted != 0 OR EXISTS (SELECT 1 FROM item WHERE item.in_my_library AND item.item_pid = entity_pid) ";
  v3[1] = @"WHEN class = 1 THEN deleted != 0 OR EXISTS (SELECT 1 FROM container WHERE container_pid = entity_pid) ";
  v2[2] = &unk_2840C8AF8;
  v2[3] = &unk_2840C8B10;
  v3[2] = @"WHEN class = 2 THEN deleted != 0 OR EXISTS (SELECT 1 FROM item_artist JOIN item USING(item_artist_pid) WHERE item.in_my_library AND item_artist_pid = entity_pid LIMIT 1) ";
  v3[3] = @"WHEN class = 3 THEN deleted != 0 OR EXISTS (SELECT 1 FROM genre JOIN item USING(genre_id) WHERE item.in_my_library AND genre_id = entity_pid LIMIT 1) ";
  v2[4] = &unk_2840C8B28;
  v2[5] = &unk_2840C8B40;
  v3[4] = @"WHEN class = 4 THEN deleted != 0 OR EXISTS (SELECT 1 FROM album JOIN item USING(album_pid) WHERE item.in_my_library AND album_pid = entity_pid LIMIT 1) ";
  v3[5] = @"WHEN class = 5 THEN deleted != 0 OR EXISTS (SELECT 1 FROM composer JOIN item USING(composer_pid) WHERE item.in_my_library AND composer_pid = entity_pid LIMIT 1) ";
  v2[6] = &unk_2840C8B58;
  v3[6] = @"WHEN class = 7 THEN deleted != 0 OR EXISTS (SELECT 1 FROM album_artist JOIN item USING(album_artist_pid) WHERE item.in_my_library AND album_artist_pid = entity_pid LIMIT 1) ";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:7];
  v1 = enumeratePersistentIDsAfterRevision_revisionTrackingCode_maximumRevisionType_forMediaTypes_inUsersLibrary_usingBlock____existsInLibraryClauses;
  enumeratePersistentIDsAfterRevision_revisionTrackingCode_maximumRevisionType_forMediaTypes_inUsersLibrary_usingBlock____existsInLibraryClauses = v0;
}

- (BOOL)updateSortMap
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__ML3MusicLibrary_updateSortMap__block_invoke;
  v4[3] = &unk_2787651A8;
  v4[4] = self;
  v4[5] = &v5;
  [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:1 withBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __32__ML3MusicLibrary_updateSortMap__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) updateSortMapOnConnection:a2 forceUpdateOriginals:0];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)requiresNonSchemaUpdatesOnConnection:(id)connection
{
  connectionCopy = connection;
  if ([connectionCopy databasePathExists])
  {
    if ([connectionCopy tableExists:@"_MLDatabaseProperties"])
    {
      if ([ML3MusicLibrary orderingLanguageMatchesSystemUsingConnection:connectionCopy])
      {
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v5 = GetP7BPath();
        v6 = [defaultManager fileExistsAtPath:v5];

        if (v6)
        {
          v7 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v19 = 0;
            v8 = "Requires pre-processing because of integrity";
            v9 = &v19;
LABEL_13:
            _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
          }
        }

        else
        {
          if ([connectionCopy tableExists:@"sort_map"])
          {
            v12 = [connectionCopy executeQuery:@"SELECT rowid FROM sort_map WHERE name='' AND name_order != 0"];
            hasAtLeastOneRow = [v12 hasAtLeastOneRow];

            if (hasAtLeastOneRow)
            {
              v7 = _ML3LogCategoryDefault();
              if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_14;
              }

              v18 = 0;
              v8 = "Requires pre-processing because of invalid sort_map entries";
              v9 = &v18;
              goto LABEL_13;
            }
          }

          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT value FROM _MLDatabaseProperties WHERE key = '%@'", @"_UUID"];
          v15 = [connectionCopy executeQuery:v14];
          hasAtLeastOneRow2 = [v15 hasAtLeastOneRow];

          if (hasAtLeastOneRow2)
          {
            v10 = 0;
            goto LABEL_15;
          }

          v7 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v17 = 0;
            v8 = "Requires pre-processing because of missing database UID";
            v9 = &v17;
            goto LABEL_13;
          }
        }
      }

      else
      {
        v7 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v8 = "Requires pre-processing because of a language mismatch";
          v9 = buf;
          goto LABEL_13;
        }
      }
    }

    else
    {
      v7 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 0;
        v8 = "Requires pre-processing because database properties table does not exist";
        v9 = &v21;
        goto LABEL_13;
      }
    }
  }

  else
  {
    v7 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 0;
      v8 = "Requires pre-processing because database does not yet exist";
      v9 = &v22;
      goto LABEL_13;
    }
  }

LABEL_14:

  v10 = 1;
LABEL_15:

  return v10;
}

- (BOOL)requiresSchemaOnlyUpdatesOnConnection:(id)connection
{
  v24 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  if ([ML3MusicLibrary userVersionMatchesSystemUsingConnection:connectionCopy])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = +[ML3MusicLibrary allTables];
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      obj = v4;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT COUNT(name) FROM sqlite_master WHERE type='table' AND name = '%@'", v9];;
          v11 = [connectionCopy executeQuery:v10];
          int64ValueForFirstRowAndColumn = [v11 int64ValueForFirstRowAndColumn];

          if (!int64ValueForFirstRowAndColumn)
          {
            v14 = os_log_create("com.apple.amp.medialibrary", "Default");
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v22 = v9;
              _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_DEFAULT, "Requires schema upgrade because database is missing table %{public}@", buf, 0xCu);
            }

            v13 = 1;
            v4 = obj;
            goto LABEL_17;
          }
        }

        v4 = obj;
        v6 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
  }

  else
  {
    v4 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "Requires schema upgrade because of a version mismatch", buf, 2u);
    }

    v13 = 1;
  }

LABEL_17:

  return v13;
}

- (id)_getPlaylistContentTasteChangesSinceRevision:(int64_t)revision withGrappaID:(unsigned int)d
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__ML3MusicLibrary__getPlaylistContentTasteChangesSinceRevision_withGrappaID___block_invoke;
  v15[3] = &unk_27875D488;
  v15[4] = v16;
  [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:0 withBlock:v15];
  v7 = +[ML3Container revisionTrackingCode];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__ML3MusicLibrary__getPlaylistContentTasteChangesSinceRevision_withGrappaID___block_invoke_2;
  v12[3] = &unk_27875D6B8;
  v14 = v16;
  v12[4] = self;
  v8 = dictionary;
  v13 = v8;
  [(ML3MusicLibrary *)self enumeratePersistentIDsAfterRevision:revision revisionTrackingCode:v7 maximumRevisionType:3 forMediaTypes:0 inUsersLibrary:1 usingBlock:v12];
  v9 = v13;
  v10 = v8;

  _Block_object_dispose(v16, 8);

  return v10;
}

void __77__ML3MusicLibrary__getPlaylistContentTasteChangesSinceRevision_withGrappaID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 executeQuery:@"SELECT primary_container_pid FROM db_info"];
  *(*(*(a1 + 32) + 8) + 24) = [v3 int64ValueForFirstRowAndColumn];
}

void __77__ML3MusicLibrary__getPlaylistContentTasteChangesSinceRevision_withGrappaID___block_invoke_2(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v28[4] = *MEMORY[0x277D85DE8];
  if (a4 == 1 && *(*(a1[6] + 8) + 24) != a2)
  {
    v6 = [(ML3Entity *)ML3Container newWithPersistentID:a2 inLibrary:a1[4]];
    v7 = @"is_hidden";
    v28[0] = @"is_hidden";
    v8 = @"sync_id";
    v28[1] = @"sync_id";
    v9 = @"liked_state";
    v28[2] = @"liked_state";
    v10 = @"liked_state_changed_date";
    v28[3] = @"liked_state_changed_date";
    MEMORY[0x28223BE20](v10);
    v22 = 0u;
    v23 = 0u;
    [v6 getValues:&v22 forProperties:v28 count:4];
    if ([v22 BOOLValue])
    {
      v11 = os_log_create("com.apple.amp.medialibrary", "Library");
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      *buf = 134217984;
      v27 = a2;
      v12 = "Skip reverse syncing dynamic change for playlist persistentID=%lld as it's hidden";
    }

    else
    {
      if (*(&v22 + 1))
      {
        v13 = [*(&v22 + 1) longLongValue];
        if (v13)
        {
          v14 = v13;
          v25[0] = v23;
          v24[0] = @"likedState";
          v24[1] = @"likedMacOSDate";
          v15 = MEMORY[0x277CCABB0];
          [*(&v23 + 1) doubleValue];
          v17 = [v15 numberWithUnsignedInt:ML3UInt32MacTimeFromCFAbsoluteTime(v16)];
          v25[1] = v17;
          v24[2] = @"persistentID";
          v18 = [MEMORY[0x277CCABB0] numberWithLongLong:v14];
          v25[2] = v18;
          v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];

          v19 = a1[5];
          v20 = [MEMORY[0x277CCABB0] numberWithLongLong:v14];
          [v19 setObject:v11 forKey:v20];

          goto LABEL_12;
        }
      }

      v11 = os_log_create("com.apple.amp.medialibrary", "Library");
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
LABEL_12:

        for (i = 3; i != -1; --i)
        {
        }

        return;
      }

      *buf = 134217984;
      v27 = a2;
      v12 = "Skip reverse syncing dynamic change for playlist persistentID=%lld as syncID is 0";
    }

    _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
    goto LABEL_12;
  }
}

- (id)getAlbumChangesSinceRevision:(int64_t)revision withGrappaID:(unsigned int)d
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__2504;
  v14 = __Block_byref_object_dispose__2505;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = +[ML3Album revisionTrackingCode];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__ML3MusicLibrary_getAlbumChangesSinceRevision_withGrappaID___block_invoke;
  v9[3] = &unk_27875D690;
  v9[4] = self;
  v9[5] = &v10;
  [(ML3MusicLibrary *)self enumeratePersistentIDsAfterRevision:revision revisionTrackingCode:v6 maximumRevisionType:3 forMediaTypes:0 inUsersLibrary:1 usingBlock:v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __61__ML3MusicLibrary_getAlbumChangesSinceRevision_withGrappaID___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v33[3] = *MEMORY[0x277D85DE8];
  if (a4 == 1)
  {
    v7 = [(ML3Entity *)ML3Album newWithPersistentID:a2 inLibrary:*(a1 + 32)];
    v8 = @"liked_state";
    v33[0] = @"liked_state";
    v9 = @"liked_state_changed_date";
    v33[1] = @"liked_state_changed_date";
    v10 = @"sync_id";
    v33[2] = @"sync_id";
    MEMORY[0x28223BE20](v10);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    [v7 getValues:&v22 forProperties:v33 count:3];
    if (v24 && (v11 = [v24 longLongValue]) != 0)
    {
      v12 = v11;
      v32[0] = v22;
      v31[0] = @"likedState";
      v31[1] = @"likedMacOSDate";
      v13 = MEMORY[0x277CCABB0];
      [v23 doubleValue];
      v15 = [v13 numberWithUnsignedInt:ML3UInt32MacTimeFromCFAbsoluteTime(v14)];
      v32[1] = v15;
      v31[2] = @"persistentID";
      v16 = [MEMORY[0x277CCABB0] numberWithLongLong:v12];
      v32[2] = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];

      v18 = *(*(*(a1 + 40) + 8) + 40);
      v19 = [MEMORY[0x277CCABB0] numberWithLongLong:v12];
      [v18 setObject:v17 forKey:v19];
    }

    else
    {
      v17 = os_log_create("com.apple.amp.medialibrary", "Library");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        v26 = 1;
        v27 = 2048;
        v28 = a3;
        v29 = 2048;
        v30 = a2;
        _os_log_impl(&dword_22D2FA000, v17, OS_LOG_TYPE_DEFAULT, "Skip reverse syncing dynamic revision type=%d, revision=%lld album changes for pid=%lld as it's missing the syncID", buf, 0x1Cu);
      }
    }

    for (i = 2; i != -1; --i)
    {
    }
  }

  else
  {
    v7 = os_log_create("com.apple.amp.medialibrary", "Library");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v26 = a4;
      v27 = 2048;
      v28 = a3;
      v29 = 2048;
      v30 = a2;
      _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_DEFAULT, "Skip reverse syncing non dynamic revision type=%d, revision=%lld album changes for pid=%lld", buf, 0x1Cu);
    }
  }
}

- (id)getAlbumArtistChangesSinceRevision:(int64_t)revision withGrappaID:(unsigned int)d
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__2504;
  v14 = __Block_byref_object_dispose__2505;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = +[ML3AlbumArtist revisionTrackingCode];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__ML3MusicLibrary_getAlbumArtistChangesSinceRevision_withGrappaID___block_invoke;
  v9[3] = &unk_27875D690;
  v9[4] = self;
  v9[5] = &v10;
  [(ML3MusicLibrary *)self enumeratePersistentIDsAfterRevision:revision revisionTrackingCode:v6 maximumRevisionType:3 forMediaTypes:0 inUsersLibrary:1 usingBlock:v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __67__ML3MusicLibrary_getAlbumArtistChangesSinceRevision_withGrappaID___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v33[3] = *MEMORY[0x277D85DE8];
  if (a4 == 1)
  {
    v7 = [(ML3Entity *)ML3AlbumArtist newWithPersistentID:a2 inLibrary:*(a1 + 32)];
    v8 = @"liked_state";
    v33[0] = @"liked_state";
    v9 = @"liked_state_changed_date";
    v33[1] = @"liked_state_changed_date";
    v10 = @"sync_id";
    v33[2] = @"sync_id";
    MEMORY[0x28223BE20](v10);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    [v7 getValues:&v22 forProperties:v33 count:3];
    if (v24 && (v11 = [v24 longLongValue]) != 0)
    {
      v12 = v11;
      v32[0] = v22;
      v31[0] = @"likedState";
      v31[1] = @"likedMacOSDate";
      v13 = MEMORY[0x277CCABB0];
      [v23 doubleValue];
      v15 = [v13 numberWithUnsignedInt:ML3UInt32MacTimeFromCFAbsoluteTime(v14)];
      v32[1] = v15;
      v31[2] = @"persistentID";
      v16 = [MEMORY[0x277CCABB0] numberWithLongLong:v12];
      v32[2] = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];

      v18 = *(*(*(a1 + 40) + 8) + 40);
      v19 = [MEMORY[0x277CCABB0] numberWithLongLong:v12];
      [v18 setObject:v17 forKey:v19];
    }

    else
    {
      v17 = os_log_create("com.apple.amp.medialibrary", "Library");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        v26 = 1;
        v27 = 2048;
        v28 = a3;
        v29 = 2048;
        v30 = a2;
        _os_log_impl(&dword_22D2FA000, v17, OS_LOG_TYPE_DEFAULT, "Skip reverse syncing dynamic revision type=%d, revision=%lld album artist changes for pid=%lld as it's missing the syncID", buf, 0x1Cu);
      }
    }

    for (i = 2; i != -1; --i)
    {
    }
  }

  else
  {
    v7 = os_log_create("com.apple.amp.medialibrary", "Library");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v26 = a4;
      v27 = 2048;
      v28 = a3;
      v29 = 2048;
      v30 = a2;
      _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_DEFAULT, "Skip reverse syncing non dynamic revision type=%d, revision=%lld album artist changes for pid=%lld", buf, 0x1Cu);
    }
  }
}

- (void)savePlaylistsSinceRevision:(int64_t)revision withGrappaID:(unsigned int)d
{
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __59__ML3MusicLibrary_savePlaylistsSinceRevision_withGrappaID___block_invoke;
  v23[3] = &unk_27875D488;
  v23[4] = v24;
  [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:0 withBlock:v23];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v8 = +[ML3Container revisionTrackingCode];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__ML3MusicLibrary_savePlaylistsSinceRevision_withGrappaID___block_invoke_2;
  v13[3] = &unk_27875D640;
  v13[7] = &v15;
  v13[8] = a2;
  v13[4] = self;
  v13[5] = v24;
  v13[6] = &v19;
  dCopy = d;
  [(ML3MusicLibrary *)self enumeratePersistentIDsAfterRevision:revision revisionTrackingCode:v8 maximumRevisionType:3 forMediaTypes:0 inUsersLibrary:1 usingBlock:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__ML3MusicLibrary_savePlaylistsSinceRevision_withGrappaID___block_invoke_523;
  v11[3] = &unk_27875D668;
  v11[4] = self;
  dCopy2 = d;
  v9 = MEMORY[0x2318CDB10](v11);
  v10 = v9;
  if ((v20[3] & 1) != 0 || *(v16 + 24) == 1)
  {
    (*(v9 + 16))(v9, 5);
    v10[2](v10, 3);
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v24, 8);
}

void __59__ML3MusicLibrary_savePlaylistsSinceRevision_withGrappaID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 executeQuery:@"SELECT primary_container_pid FROM db_info"];
  *(*(*(a1 + 32) + 8) + 24) = [v3 int64ValueForFirstRowAndColumn];
}

void __59__ML3MusicLibrary_savePlaylistsSinceRevision_withGrappaID___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, int a4, int a5)
{
  v125 = *MEMORY[0x277D85DE8];
  if (a5 != 2 && *(*(*(a1 + 40) + 8) + 24) != a2)
  {
    v10 = os_log_create("com.apple.amp.medialibrary", "Library");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v108 = 134218496;
      *&v108[4] = a2;
      *&v108[12] = 2048;
      *&v108[14] = a3;
      *&v108[22] = 1024;
      LODWORD(v109) = a5;
      _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "Saving updated container data. container_pid=%lld, revision=%lld, deletionType=%d", v108, 0x1Cu);
    }

    v11 = [MEMORY[0x277CBEB38] dictionary];
    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
    [v11 setObject:v12 forKey:@"playlistPersistentID"];

    if (a5)
    {
      if (a5 != 1)
      {
        v15 = 0;
LABEL_48:
        v60 = [ML3MusicLibrary pathForResourceFileOrFolder:7];
        v91 = 0;
        v61 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v60 validFormatSpecifiers:@"%llu" error:&v91, a2];
        v62 = v91;

        if (v62)
        {
          v67 = [MEMORY[0x277CCA890] currentHandler];
          [v67 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"ML3MusicLibrary.m" lineNumber:1925 description:{@"Encountered error validating format. pathFormat=%@ error=%@", v60, v62}];
        }

        v15 = v61;
LABEL_51:
        v90 = 0;
        v63 = [MEMORY[0x277CCAC58] dataWithPropertyList:v11 format:100 options:0 error:&v90];
        v64 = v90;
        if (v63)
        {
          if (WriteDictionaryToPathWithGrappaID(v11, v15, *(a1 + 72)))
          {
LABEL_60:

LABEL_61:
            return;
          }
        }

        else
        {
          v65 = os_log_create("com.apple.amp.medialibrary", "Library");
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            *v108 = 138543618;
            *&v108[4] = v15;
            *&v108[12] = 2114;
            *&v108[14] = v64;
            _os_log_impl(&dword_22D2FA000, v65, OS_LOG_TYPE_ERROR, "Could not serialize plist: %{public}@ (%{public}@)", v108, 0x16u);
          }
        }

        v66 = os_log_create("com.apple.amp.medialibrary", "Library");
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          *v108 = 136446722;
          *&v108[4] = "[ML3MusicLibrary savePlaylistsSinceRevision:withGrappaID:]_block_invoke";
          *&v108[12] = 2114;
          *&v108[14] = v64;
          *&v108[22] = 2114;
          v109 = v15;
          _os_log_impl(&dword_22D2FA000, v66, OS_LOG_TYPE_ERROR, "%{public}s failed with error %{public}@ path = %{public}@\n", v108, 0x20u);
        }

        goto LABEL_60;
      }

      v13 = [MEMORY[0x277CCABB0] numberWithBool:1];
      [v11 setValue:v13 forKey:@"playlistDeleted"];

      v14 = [ML3MusicLibrary pathForResourceFileOrFolder:7];
      v95 = 0;
      v15 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v14 validFormatSpecifiers:@"%llu" error:&v95, a2];
      v16 = v95;
      if (v16)
      {
        v68 = [MEMORY[0x277CCA890] currentHandler];
        [v68 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"ML3MusicLibrary.m" lineNumber:1766 description:{@"Encountered error validating format. pathFormat=%@ error=%@", v14, v16}];
      }
    }

    else
    {
      v17 = [(ML3Entity *)ML3Container newWithPersistentID:a2 inLibrary:*(a1 + 32)];
      v18 = @"filepath";
      *v108 = @"filepath";
      v19 = @"is_ignored_syncing";
      *&v108[8] = @"is_ignored_syncing";
      v20 = @"date_modified";
      *&v108[16] = @"date_modified";
      v21 = @"orig_date_modified";
      v109 = @"orig_date_modified";
      v22 = @"smart_is_genius";
      v110 = @"smart_is_genius";
      v23 = @"smart_is_dynamic";
      v111 = @"smart_is_dynamic";
      v24 = @"smart_is_folder";
      v112 = @"smart_is_folder";
      v25 = @"container_type";
      v113 = @"container_type";
      v26 = @"container_seed.item_pid";
      v114 = @"container_seed.item_pid";
      v27 = @"name";
      v115 = @"name";
      v28 = @"distinguished_kind";
      v116 = @"distinguished_kind";
      v29 = @"is_hidden";
      v117 = @"is_hidden";
      v30 = @"liked_state";
      v118 = @"liked_state";
      v31 = @"description";
      v119 = @"description";
      v32 = @"parent_pid";
      v120 = @"parent_pid";
      v33 = @"external_vendor_identifier";
      v121 = @"external_vendor_identifier";
      v34 = @"external_vendor_display_name";
      v122 = @"external_vendor_display_name";
      v35 = @"external_vendor_container_tag";
      v123 = @"external_vendor_container_tag";
      v36 = @"is_external_vendor_playlist";
      v88 = &v79;
      v124 = @"is_external_vendor_playlist";
      MEMORY[0x28223BE20](v36);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v69 = 0u;
      [v17 getValues:&v69 forProperties:v108 count:19];
      if ([*(&v74 + 1) BOOLValue])
      {
        v87 = 0;
        v15 = 0;
      }

      else
      {
        v86 = [[ML3ArtworkTokenSet alloc] initWithEntity:v17 artworkType:5];
        v89 = [(ML3ArtworkTokenSet *)v86 artworkTokenForSource:100];
        if (a4)
        {
          v37 = v89 == 0;
        }

        else
        {
          v37 = 0;
        }

        v38 = !v37;
        v87 = v38;
        if (v37)
        {
          v41 = os_log_create("com.apple.amp.medialibrary", "Library");
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v103) = 134217984;
            *(&v103 + 4) = a2;
            _os_log_impl(&dword_22D2FA000, v41, OS_LOG_TYPE_DEFAULT, "no content changes for container %lld - skipping", &v103, 0xCu);
          }

          v15 = 0;
        }

        else
        {
          if (v73)
          {
            v39 = [ML3Track alloc];
            v40 = -[ML3Entity initWithPersistentID:inLibrary:](v39, "initWithPersistentID:inLibrary:", [v73 longLongValue], *(a1 + 32));
            v84 = [(ML3Entity *)v40 valueForProperty:@"item_store.sync_id"];
          }

          else
          {
            v84 = 0;
          }

          v42 = [v71 intValue];
          v43 = 48;
          if (!v42)
          {
            v43 = 56;
          }

          *(*(*(a1 + v43) + 8) + 24) = 1;
          [v11 setValue:*(&v69 + 1) forKey:@"deleteWithoutSyncing"];
          [v11 setValue:v70 forKey:@"dateLastModified"];
          [v11 setValue:*(&v70 + 1) forKey:@"originalDateLastModified"];
          [v11 setValue:v75 forKey:@"likedState"];
          [v11 setValue:*(&v75 + 1) forKey:@"description"];
          [v11 setValue:v76 forKey:@"parentPersistentID"];
          [v11 setValue:*(&v76 + 1) forKey:@"external_vendor_identifier"];
          [v11 setValue:v77 forKey:@"external_vendor_display_name"];
          [v11 setValue:*(&v77 + 1) forKey:@"external_tag"];
          [v11 setValue:v78 forKey:@"is_external_vendor_playlist"];
          [v11 setValue:v72 forKey:@"isFolder"];
          *&v103 = 0;
          *(&v103 + 1) = &v103;
          v104 = 0x3032000000;
          v105 = __Block_byref_object_copy__2504;
          v106 = __Block_byref_object_dispose__2505;
          v107 = 0;
          v44 = [v17 parentPlaylistPersistentIdsAndNames];
          v94[0] = MEMORY[0x277D85DD0];
          v94[1] = 3221225472;
          v94[2] = __59__ML3MusicLibrary_savePlaylistsSinceRevision_withGrappaID___block_invoke_494;
          v94[3] = &unk_27875D618;
          v94[4] = &v103;
          [v44 enumerateObjectsWithOptions:2 usingBlock:v94];

          if ([*(*(&v103 + 1) + 40) count])
          {
            [v11 setValue:*(*(&v103 + 1) + 40) forKey:@"parentPlaylist"];
          }

          v83 = [ML3Track containerQueryWithContainer:v17];
          v45 = [MEMORY[0x277CBEB18] array];
          v102[0] = @"item_store.sync_id";
          v102[1] = @"item_store.store_saga_id";
          v102[2] = @"item_store.purchase_history_id";
          v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v102 count:3];
          v92[0] = MEMORY[0x277D85DD0];
          v92[1] = 3221225472;
          v92[2] = __59__ML3MusicLibrary_savePlaylistsSinceRevision_withGrappaID___block_invoke_2_502;
          v92[3] = &unk_278762DC0;
          v85 = v45;
          v93 = v85;
          [v83 enumeratePersistentIDsAndProperties:v46 usingBlock:v92];

          [v11 setValue:v85 forKey:@"trackPersistentIDs"];
          if ([v85 count] && v84)
          {
            [v11 setValue:v84 forKey:@"seedTrackPersistentID"];
          }

          [v11 setValue:v74 forKey:@"distinguishedKind"];
          v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2];
          [v11 setValue:v47 forKey:@"version"];
          [v11 setValue:*(&v73 + 1) forKey:@"name"];
          v15 = [v69 copy];
          if (v89)
          {
            v48 = os_log_create("com.apple.amp.medialibrary", "Library");
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              v96 = 138543362;
              v97 = v89;
              _os_log_impl(&dword_22D2FA000, v48, OS_LOG_TYPE_DEFAULT, "container artwork has changed. new token=%{public}@", &v96, 0xCu);
            }

            v49 = [ML3Artwork alloc];
            v50 = [(ML3Artwork *)v49 initWithToken:v89 artworkType:5 musicLibrary:*(a1 + 32)];
            v82 = [(ML3Artwork *)v50 originalFileURL];
            v81 = v50;
            v51 = [MEMORY[0x277CCAA00] defaultManager];
            v52 = [v82 path];
            v53 = [v51 fileExistsAtPath:v52];
            v80 = v51;

            if (v53)
            {
              v54 = [v82 path];
              v55 = +[ML3MusicLibrary libraryContainerPath];
              v56 = [v54 substringFromIndex:{objc_msgSend(v55, "length")}];

              [v11 setValue:v89 forKey:@"artworkCacheId"];
              [v11 setValue:v56 forKey:@"artworkFilePath"];
            }

            else
            {
              v56 = _ML3LogCategoryLibrary();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
              {
                v96 = 134218498;
                v97 = a2;
                v98 = 2114;
                v99 = v89;
                v100 = 2114;
                v101 = v82;
                _os_log_impl(&dword_22D2FA000, v56, OS_LOG_TYPE_ERROR, "artwork file not found. container_pid=%lld, token=%{public}@, url=%{public}@", &v96, 0x20u);
              }
            }
          }

          _Block_object_dispose(&v103, 8);
          v41 = v84;
        }
      }

      for (i = 144; i != -8; i -= 8)
      {
      }

      if ((v87 & 1) == 0)
      {
        goto LABEL_61;
      }
    }

    if (v15)
    {
      v58 = [(__CFString *)v15 stringByDeletingLastPathComponent];
      v59 = [v58 length] == 0;

      if (!v59)
      {
        goto LABEL_51;
      }
    }

    goto LABEL_48;
  }
}

void __59__ML3MusicLibrary_savePlaylistsSinceRevision_withGrappaID___block_invoke_523(uint64_t a1, uint64_t a2)
{
  v9 = [*(a1 + 32) pathForResourceFileOrFolder:a2];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v3 fileExistsAtPath:v9];

  if ((v4 & 1) == 0)
  {
    valuePtr = ML3CreateIntegerUUID();
    v5 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
    v6 = MEMORY[0x277CBEAC0];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v8 = [v6 dictionaryWithObjectsAndKeys:{v7, @"deleteWithoutSyncing", v5, @"playlistPersistentID", @"SYNC_MARKER", @"name", 0}];

    WriteDictionaryToPathWithGrappaID(v8, v9, *(a1 + 40));
  }
}

void __59__ML3MusicLibrary_savePlaylistsSinceRevision_withGrappaID___block_invoke_494(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [v3 objectForKey:v8];
        v10 = [MEMORY[0x277CBEB38] dictionary];
        [v10 setValue:v8 forKey:@"playlistPersistentID"];
        [v10 setValue:v9 forKey:@"name"];
        v11 = *(*(a1 + 32) + 8);
        v14 = *(v11 + 40);
        v13 = (v11 + 40);
        v12 = v14;
        if (v14)
        {
          [v10 setValue:v12 forKey:@"parentPlaylist"];
          v15 = *(*(a1 + 32) + 8);
          v17 = *(v15 + 40);
          v13 = (v15 + 40);
          v16 = v17;
        }

        else
        {
          v16 = 0;
        }

        *v13 = v10;
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }
}

void __59__ML3MusicLibrary_savePlaylistsSinceRevision_withGrappaID___block_invoke_2_502(uint64_t a1, uint64_t a2, id *a3)
{
  if ([*a3 longLongValue])
  {
    v6 = *a3;
  }

  else
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  }

  v7 = v6;
  [*(a1 + 32) addObject:v6];
}

- (void)saveTrackMetadataSinceRevision:(int64_t)revision withGrappaID:(unsigned int)d
{
  v55 = *MEMORY[0x277D85DE8];
  v7 = +[ML3MusicLibrary autoupdatingSharedLibrary];

  if (v7 == self)
  {
    dCopy = d;
    context = objc_autoreleasePoolPush();
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = MEMORY[0x277CCABB0];
    Current = CFAbsoluteTimeGetCurrent();
    v38 = [v9 numberWithUnsignedInt:ML3UInt32MacTimeFromCFAbsoluteTime(Current)];
    [v8 setObject:? forKey:?];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
    v39 = v8;
    [v8 setObject:v11 forKey:@"version"];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __63__ML3MusicLibrary_saveTrackMetadataSinceRevision_withGrappaID___block_invoke;
    v46[3] = &unk_27875D5F0;
    v47 = @"SELECT item_store.sync_id, item_video.audio_track_id, item_stats.bookmark_time_ms, entity_revision.deleted, item_stats.play_count_recent, item_stats.date_played, item_stats.has_been_played, item_stats.skip_count_recent, item_stats.date_skipped, item_stats.user_rating, item_stats.liked_state, item_store.item_pid, store_saga_id, album.liked_state, item.in_my_library FROM item JOIN item_stats USING(item_pid) LEFT OUTER JOIN entity_revision ON (item.item_pid = entity_pid) JOIN item_video USING (item_pid) JOIN item_store using (item_pid) LEFT OUTER JOIN album USING (album_pid) WHERE revision > ? AND class = 0 ORDER BY entity_revision.revision DESC;";
    revisionCopy = revision;
    v13 = dictionary;
    v48 = v13;
    [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:0 withBlock:v46];
    v41 = [ML3MusicLibrary pathForResourceFileOrFolder:1 basePath:0 relativeToBase:0 createParentFolderIfNecessary:0];
    v14 = [MEMORY[0x277CBEA60] arrayWithContentsOfFile:?];
    v15 = v14;
    if (v14)
    {
      array = v14;
    }

    else
    {
      array = [MEMORY[0x277CBEA60] array];
    }

    v17 = array;

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v18 = v17;
    v19 = [v18 countByEnumeratingWithState:&v42 objects:v54 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v43;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v43 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v42 + 1) + 8 * i);
          v24 = [v23 objectForKeyedSubscript:@"persistentID"];

          if (v24)
          {
            v25 = [v23 objectForKeyedSubscript:@"persistentID"];
            [v13 setObject:v23 forKey:v25];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v42 objects:v54 count:16];
      }

      while (v20);
    }

    v26 = [(ML3MusicLibrary *)self getAlbumArtistChangesSinceRevision:revision withGrappaID:dCopy];
    v27 = [(ML3MusicLibrary *)self getAlbumChangesSinceRevision:revision withGrappaID:dCopy];
    v28 = [(ML3MusicLibrary *)self _getPlaylistContentTasteChangesSinceRevision:revision withGrappaID:dCopy];
    if ([v26 count])
    {
      allValues = [v26 allValues];
      [v39 setObject:allValues forKey:@"artists"];
    }

    if ([v27 count])
    {
      allValues2 = [v27 allValues];
      [v39 setObject:allValues2 forKey:@"albums"];
    }

    if ([v28 count])
    {
      allValues3 = [v28 allValues];
      [v39 setObject:allValues3 forKey:@"playlists"];
    }

    if ([v26 count] || objc_msgSend(v27, "count") || objc_msgSend(v28, "count"))
    {
      v32 = os_log_create("com.apple.amp.medialibrary", "Library_Oversize");
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v51 = v39;
        _os_log_impl(&dword_22D2FA000, v32, OS_LOG_TYPE_DEFAULT, "playCountsPlistDictionary=%{public}@", buf, 0xCu);
      }
    }

    dictionary2 = [MEMORY[0x277CBEAC0] dictionary];
    [dictionary2 writeToFile:v41 atomically:1];

    allValues4 = [v13 allValues];
    [v39 setObject:allValues4 forKey:@"tracks"];

    v35 = [ML3MusicLibrary pathForResourceFileOrFolder:2 basePath:0 relativeToBase:0 createParentFolderIfNecessary:1];
    if ((WriteDictionaryToPathWithGrappaID(v39, v35, dCopy) & 1) == 0)
    {
      v36 = os_log_create("com.apple.amp.medialibrary", "Library");
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v51 = v35;
        v52 = 1024;
        v53 = 0;
        _os_log_impl(&dword_22D2FA000, v36, OS_LOG_TYPE_DEFAULT, "Saved play counts to %{public}@: success=%d", buf, 0x12u);
      }
    }

    objc_autoreleasePoolPop(context);
  }
}

void __63__ML3MusicLibrary_saveTrackMetadataSinceRevision_withGrappaID___block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = MEMORY[0x277CCABB0];
  v5 = *(a1 + 48);
  v6 = a2;
  v7 = [v4 numberWithLongLong:v5];
  v12[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v9 = [v6 executeQuery:v3 withParameters:v8];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__ML3MusicLibrary_saveTrackMetadataSinceRevision_withGrappaID___block_invoke_2;
  v10[3] = &unk_278766118;
  v11 = *(a1 + 40);
  [v9 enumerateRowsWithBlock:v10];
}

void __63__ML3MusicLibrary_saveTrackMetadataSinceRevision_withGrappaID___block_invoke_2(uint64_t a1, void *a2)
{
  v34 = a2;
  v32 = [v34 objectAtIndexedSubscript:1];
  v2 = MEMORY[0x277CCABB0];
  v3 = [v34 objectAtIndexedSubscript:2];
  v31 = [v2 numberWithUnsignedLongLong:{objc_msgSend(v3, "longLongValue")}];

  v33 = [v34 objectAtIndexedSubscript:3];
  v30 = [v34 objectAtIndexedSubscript:4];
  v4 = MEMORY[0x277CCABB0];
  [v34 doubleForColumnIndex:5];
  v27 = [v4 numberWithUnsignedInt:ML3UInt32MacTimeFromCFAbsoluteTime(v5)];
  v26 = [v34 objectAtIndexedSubscript:6];
  v29 = [v34 objectAtIndexedSubscript:7];
  v6 = MEMORY[0x277CCABB0];
  [v34 doubleForColumnIndex:8];
  v25 = [v6 numberWithUnsignedInt:ML3UInt32MacTimeFromCFAbsoluteTime(v7)];
  v8 = MEMORY[0x277CCABB0];
  v9 = [v34 objectAtIndexedSubscript:9];
  v28 = [v8 numberWithUnsignedLongLong:{objc_msgSend(v9, "longLongValue")}];

  v10 = MEMORY[0x277CCABB0];
  v11 = [v34 objectAtIndexedSubscript:10];
  v12 = [v10 numberWithUnsignedLongLong:{objc_msgSend(v11, "longLongValue")}];

  v13 = [v34 objectAtIndexedSubscript:0];
  v14 = [v34 objectAtIndexedSubscript:11];
  v15 = [v34 objectAtIndexedSubscript:12];
  if (!v13 || (v16 = [v13 unsignedLongLongValue], v17 = v13, !v16))
  {
    v17 = v14;
  }

  v18 = v17;
  v19 = [v34 objectAtIndexedSubscript:13];
  v20 = [v34 objectAtIndexedSubscript:14];
  v21 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:13];
  if (v18)
  {
    v22 = [*(a1 + 32) objectForKey:v18];

    if (!v22)
    {
      [v21 setValue:v18 forKey:@"persistentID"];
      if ([v33 BOOLValue] && objc_msgSend(v13, "longLongValue"))
      {
        [v21 setValue:v33 forKey:@"deleted"];
      }

      if (![v15 longLongValue])
      {
        if ([v30 intValue])
        {
          [v21 setValue:v30 forKey:@"playCount"];
          [v21 setObject:v27 forKey:@"playMacOSDate"];
          [v21 setValue:v26 forKey:@"playedState"];
        }

        if ([v29 intValue])
        {
          [v21 setValue:v29 forKey:@"skipCount"];
          [v21 setObject:v25 forKey:@"skipMacOSDate"];
        }

        [v21 setValue:v31 forKey:@"bookmarkTimeInMS"];
        [v21 setValue:v32 forKey:@"audioTrackID"];
        [v21 setValue:v28 forKey:@"userRating"];
        [v21 setValue:v12 forKey:@"likedState"];
        [v21 setValue:v19 forKey:@"albumLikedState"];
        if (v20)
        {
          v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v20, "BOOLValue") ^ 1}];
          [v21 setValue:v23 forKey:@"isPlaylistOnly"];
        }
      }

      [*(a1 + 32) setObject:v21 forKey:v18];
    }
  }
}

- (void)notifyAssistantContentsDidChange
{
  if ([(ML3MusicLibrary *)self isAutoUpdatingSharedLibrary])
  {
    dispatch_assert_queue_not_V2(self->_serialQueue);
    notificationManager = [(ML3MusicLibrary *)self notificationManager];
    assistantSyncDataChangedNotificationName = [objc_opt_class() assistantSyncDataChangedNotificationName];
    [notificationManager enqueueDistributedNotificationNamed:assistantSyncDataChangedNotificationName];
  }
}

- (unint64_t)unknownSectionIndex
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__ML3MusicLibrary_unknownSectionIndex__block_invoke;
  v4[3] = &unk_278761E48;
  v4[4] = &v5;
  [(ML3MusicLibrary *)self accessSortKeyBuilder:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

CFIndex __38__ML3MusicLibrary_unknownSectionIndex__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24) + 48 * *(a2 + 32);
  v4 = *(v3 - 8);
  result = CFArrayGetCount(*(v3 - 24));
  *(*(*(a1 + 32) + 8) + 24) = v4 + result + 1;
  return result;
}

- (unint64_t)sectionIndexTitleIndexForSectionIndex:(unint64_t)index
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__2504;
  v14 = __Block_byref_object_dispose__2505;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__ML3MusicLibrary_sectionIndexTitleIndexForSectionIndex___block_invoke;
  v9[3] = &unk_27875D5A0;
  v9[4] = &v10;
  v9[5] = index;
  [(ML3MusicLibrary *)self accessSortKeyBuilder:v9];
  if ([v11[5] isEqualToString:@"NUMERIC_SECTION_HEADER"])
  {
    unknownSectionIndex = [(ML3MusicLibrary *)self unknownSectionIndex]- 1;
  }

  else if ([v11[5] isEqualToString:@"UNKNOWN_SECTION_HEADER"])
  {
    unknownSectionIndex = [(ML3MusicLibrary *)self unknownSectionIndex];
  }

  else
  {
    v5 = ML3LocalizedSectionDictionary();
    v6 = [v5 objectForKey:@"SectionIndices"];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__ML3MusicLibrary_sectionIndexTitleIndexForSectionIndex___block_invoke_2;
    v8[3] = &unk_27875D5C8;
    v8[4] = &v10;
    unknownSectionIndex = [v6 indexOfObjectPassingTest:v8];
  }

  _Block_object_dispose(&v10, 8);

  return unknownSectionIndex;
}

uint64_t __57__ML3MusicLibrary_sectionIndexTitleIndexForSectionIndex___block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 40) = iPhoneSortKeyBuilderGetHeaderForSection(a2, *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

- (id)localizedSectionHeaderForSectionIndex:(unint64_t)index
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2504;
  v15 = __Block_byref_object_dispose__2505;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__ML3MusicLibrary_localizedSectionHeaderForSectionIndex___block_invoke;
  v10[3] = &unk_27875D5A0;
  v10[4] = &v11;
  v10[5] = index;
  [(ML3MusicLibrary *)self accessSortKeyBuilder:v10];
  v3 = ML3LocalizedSectionDictionary();
  v4 = [v3 objectForKey:@"LocalizedSectionHeaders"];

  v5 = [v4 objectForKey:v12[5]];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v8 localizedStringForKey:v12[5] value:&stru_28408B690 table:@"MLLocalizable"];
  }

  _Block_object_dispose(&v11, 8);

  return v7;
}

uint64_t __57__ML3MusicLibrary_localizedSectionHeaderForSectionIndex___block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 40) = iPhoneSortKeyBuilderGetHeaderForSection(a2, *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

- (id)groupingKeysForStrings:(id)strings
{
  stringsCopy = strings;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2504;
  v15 = __Block_byref_object_dispose__2505;
  v16 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(stringsCopy, "count")}];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__ML3MusicLibrary_groupingKeysForStrings___block_invoke;
  v8[3] = &unk_27875D578;
  v5 = stringsCopy;
  v9 = v5;
  v10 = &v11;
  [(ML3MusicLibrary *)self accessSortKeyBuilder:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __42__ML3MusicLibrary_groupingKeysForStrings___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([(__CFString *)v9 length])
        {
          v10 = iPhoneSortKeyBuilderCopyGroupingKeyForString(a2, v9);
        }

        else
        {
          v10 = [MEMORY[0x277CBEA90] data];
        }

        v11 = v10;
        [*(*(*(a1 + 40) + 8) + 40) setObject:v10 forKey:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (id)groupingKeyForString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__2504;
    v14 = __Block_byref_object_dispose__2505;
    v15 = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__ML3MusicLibrary_groupingKeyForString___block_invoke;
    v7[3] = &unk_27875D578;
    v9 = &v10;
    v8 = stringCopy;
    [(ML3MusicLibrary *)self accessSortKeyBuilder:v7];
    data = v11[5];

    _Block_object_dispose(&v10, 8);
  }

  else
  {
    data = [MEMORY[0x277CBEA90] data];
  }

  return data;
}

uint64_t __40__ML3MusicLibrary_groupingKeyForString___block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 40) + 8) + 40) = iPhoneSortKeyBuilderCopyGroupingKeyForString(a2, *(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (void)accessSortKeyBuilder:(id)builder
{
  serialQueue = self->_serialQueue;
  builderCopy = builder;
  dispatch_assert_queue_not_V2(serialQueue);
  builderCopy[2](builderCopy, [(ML3MusicLibrary *)self sortKeyBuilder]);
}

- (id)accountCacheDatabase
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ML3MusicLibrary_accountCacheDatabase__block_invoke;
  block[3] = &unk_278765FB8;
  block[4] = self;
  dispatch_sync(serialQueue, block);
  return self->_accountCacheDatabase;
}

uint64_t __39__ML3MusicLibrary_accountCacheDatabase__block_invoke(uint64_t result)
{
  if (!*(*(result + 32) + 32))
  {
    *(*(result + 32) + 32) = [[ML3AccountCacheDatabase alloc] initWithLibrary:*(result + 32)];

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (BOOL)clearAllGeniusData
{
  v3 = [(ML3MusicLibrary *)self _clearAllRowsFromTables:&unk_2840C6788];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [ML3ComparisonPredicate predicateWithProperty:@"(container.is_container_type_active_target AND container.smart_is_genius)" equalToInteger:1];
  v5 = [(ML3Entity *)ML3Container queryWithLibrary:self predicate:v4];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__ML3MusicLibrary_clearAllGeniusData__block_invoke;
  v7[3] = &unk_27875D550;
  v7[4] = self;
  v7[5] = &v8;
  [v5 enumeratePersistentIDsUsingBlock:v7];
  if (*(v9 + 24) == 1)
  {
    [(ML3MusicLibrary *)self notifyContentsDidChange];
  }

  _Block_object_dispose(&v8, 8);
  return v3;
}

void __37__ML3MusicLibrary_clearAllGeniusData__block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = [(ML3Entity *)ML3Container newWithPersistentID:a2 inLibrary:*(a1 + 32)];
  if ([v4 existsInLibrary])
  {
    *(*(*(a1 + 40) + 8) + 24) = [v4 deleteFromLibrary];
    v5 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = a2;
      _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "Deleted active Genius playlist with pid: %lld", &v6, 0xCu);
    }
  }
}

- (BOOL)emptyAllTables
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(ML3MusicLibrary *)self _clearAllRowsFromTables:&unk_2840C6770];
  *(v8 + 24) = v3;
  if (v3 && (v6[0] = MEMORY[0x277D85DD0], v6[1] = 3221225472, v6[2] = __33__ML3MusicLibrary_emptyAllTables__block_invoke, v6[3] = &unk_27875D488, v6[4] = &v7, [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:1 withBlock:v6], *(v8 + 24) == 1))
  {
    [(ML3MusicLibrary *)self cleanupArtworkWithOptions:8];
    v4 = *(v8 + 24);
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v4 & 1;
}

uint64_t __33__ML3MusicLibrary_emptyAllTables__block_invoke(uint64_t a1, void *a2)
{
  result = ML3ValidationRunInitialInsertStatements(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)createIndexes
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__ML3MusicLibrary_createIndexes__block_invoke;
  v4[3] = &unk_2787651A8;
  v4[4] = self;
  v4[5] = &v5;
  [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:1 withBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __32__ML3MusicLibrary_createIndexes__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [objc_opt_class() indexSchemaSQL];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v10 != v7)
      {
        objc_enumerationMutation(v4);
      }

      *(*(*(a1 + 40) + 8) + 24) = [v3 executeUpdate:*(*(&v9 + 1) + 8 * v8)];
      if (*(*(*(a1 + 40) + 8) + 24) != 1)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  *(*(*(a1 + 40) + 8) + 24) &= [v3 executeUpdate:@"ANALYZE;"];
}

- (int)currentDatabaseVersion
{
  databasePath = [(ML3MusicLibrary *)self databasePath];
  v3 = [[ML3DatabaseConnection alloc] initWithDatabasePath:databasePath];
  if ([(ML3DatabaseConnection *)v3 databasePathExists])
  {
    v4 = [(ML3DatabaseConnection *)v3 executeQuery:@"PRAGMA user_version"];
    int64ValueForFirstRowAndColumn = [v4 int64ValueForFirstRowAndColumn];
  }

  else
  {
    int64ValueForFirstRowAndColumn = 0;
  }

  return int64ValueForFirstRowAndColumn;
}

- (BOOL)isCurrentThreadInTransaction
{
  connectionPool = [(ML3MusicLibrary *)self connectionPool];
  isCurrentThreadConnectionInTransaction = [connectionPool isCurrentThreadConnectionInTransaction];

  return isCurrentThreadConnectionInTransaction;
}

- (void)performAsyncDatabaseWriteTransactionWithBlock:(id)block completionBlock:(id)completionBlock
{
  blockCopy = block;
  completionBlockCopy = completionBlock;
  widthLimitedSetValuesQueue = [objc_opt_class() widthLimitedSetValuesQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__ML3MusicLibrary_performAsyncDatabaseWriteTransactionWithBlock_completionBlock___block_invoke;
  v11[3] = &unk_27875D528;
  v11[4] = self;
  v12 = blockCopy;
  v13 = completionBlockCopy;
  v9 = completionBlockCopy;
  v10 = blockCopy;
  [widthLimitedSetValuesQueue addOperationWithBlock:v11];
}

void __81__ML3MusicLibrary_performAsyncDatabaseWriteTransactionWithBlock_completionBlock___block_invoke(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __81__ML3MusicLibrary_performAsyncDatabaseWriteTransactionWithBlock_completionBlock___block_invoke_2;
  v4[3] = &unk_27875D500;
  v6 = &v7;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 performDatabaseTransactionWithBlock:v4];
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, *(v8 + 24), 0);
  }

  _Block_object_dispose(&v7, 8);
}

- (void)performReadOnlyDatabaseTransactionWithBlock:(id)block
{
  blockCopy = block;
  checkoutReaderConnection = [(ML3MusicLibrary *)self checkoutReaderConnection];
  [checkoutReaderConnection pushTransactionUsingBehaviorType:3];
  [checkoutReaderConnection popTransactionAndCommit:{blockCopy[2](blockCopy, checkoutReaderConnection)}];
  [(ML3MusicLibrary *)self checkInDatabaseConnection:checkoutReaderConnection];
}

- (void)performDatabaseTransactionWithBlock:(id)block
{
  blockCopy = block;
  checkoutWriterConnection = [(ML3MusicLibrary *)self checkoutWriterConnection];
  [checkoutWriterConnection pushTransaction];
  [checkoutWriterConnection popTransactionAndCommit:{blockCopy[2](blockCopy, checkoutWriterConnection)}];
  [(ML3MusicLibrary *)self checkInDatabaseConnection:checkoutWriterConnection];
}

- (void)databaseConnectionAllowingWrites:(BOOL)writes withBlock:(id)block
{
  writesCopy = writes;
  blockCopy = block;
  if (writesCopy)
  {
    [(ML3MusicLibrary *)self checkoutWriterConnection];
  }

  else
  {
    [(ML3MusicLibrary *)self checkoutReaderConnection];
  }
  v6 = ;
  blockCopy[2](blockCopy, v6);
  [(ML3MusicLibrary *)self checkInDatabaseConnection:v6];
}

- (void)reconnectToDatabase
{
  dispatch_assert_queue_not_V2(self->_serialQueue);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"ML3MusicLibraryWillInvalidateDatabaseConnectionNotification" object:self];

  connectionPool = [(ML3MusicLibrary *)self connectionPool];
  [connectionPool _closeAllConnectionsAndWaitForBusyConnections:0];
}

- (void)checkInDatabaseConnection:(id)connection
{
  v37 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  dispatch_assert_queue_not_V2(self->_serialQueue);
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__2504;
  v29 = __Block_byref_object_dispose__2505;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__2504;
  v23 = __Block_byref_object_dispose__2505;
  v24 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__ML3MusicLibrary_checkInDatabaseConnection___block_invoke;
  block[3] = &unk_278762988;
  block[4] = self;
  block[5] = &v25;
  block[6] = &v19;
  dispatch_sync(serialQueue, block);
  if ([v26[5] ownsConnection:connectionCopy])
  {
    [v26[5] checkInConnection:connectionCopy];
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v6 = v20[5];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __45__ML3MusicLibrary_checkInDatabaseConnection___block_invoke_2;
    v11[3] = &unk_27875D4D8;
    v7 = connectionCopy;
    v12 = v7;
    v13 = &v14;
    [v6 enumerateObjectsUsingBlock:v11];
    if ((v15[3] & 1) == 0)
    {
      v8 = os_log_create("com.apple.amp.medialibrary", "Default_Oversize");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v26[5];
        v10 = v20[5];
        *buf = 138543874;
        v32 = v7;
        v33 = 2114;
        v34 = v9;
        v35 = 2114;
        v36 = v10;
        _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "Orphaned connection=%{public}@, activePool=%{public}@, poolsPendingClose=%{public}@", buf, 0x20u);
      }
    }

    _Block_object_dispose(&v14, 8);
  }

  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
}

void __45__ML3MusicLibrary_checkInDatabaseConnection___block_invoke(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 104));
  v2 = *(a1[4] + 88);
  v3 = (*(a1[6] + 8) + 40);

  objc_storeStrong(v3, v2);
}

void __45__ML3MusicLibrary_checkInDatabaseConnection___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ([v5 ownsConnection:*(a1 + 32)])
  {
    [v5 checkInConnection:*(a1 + 32)];
    *(*(*(a1 + 40) + 8) + 24) = 1;
    if (a3)
    {
      *a3 = 1;
    }
  }
}

- (void)connectionDidClose:(id)close
{
  closeCopy = close;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__ML3MusicLibrary_connectionDidClose___block_invoke;
  v7[3] = &unk_2787660F0;
  v7[4] = self;
  v8 = closeCopy;
  v6 = closeCopy;
  dispatch_async(serialQueue, v7);
}

void __38__ML3MusicLibrary_connectionDidClose___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__2504;
  v20 = __Block_byref_object_dispose__2505;
  v21 = 0;
  v2 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543618;
    v23 = v3;
    v24 = 2114;
    v25 = v4;
    _os_log_impl(&dword_22D2FA000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ - Received connection=%{public}@ did close notification", buf, 0x16u);
  }

  v5 = *(*(a1 + 32) + 88);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __38__ML3MusicLibrary_connectionDidClose___block_invoke_218;
  v13 = &unk_27875D4D8;
  v14 = *(a1 + 40);
  v15 = &v16;
  [v5 enumerateObjectsUsingBlock:&v10];
  v6 = v17[5];
  if (v6)
  {
    [v6 setDelegate:{0, v10, v11, v12, v13}];
    v7 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = v17[5];
      *buf = 138543618;
      v23 = v8;
      v24 = 2114;
      v25 = v9;
      _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - connection pool %{public}@ will be removed from the pending pools as it has no pending or active connections", buf, 0x16u);
    }

    [*(*(a1 + 32) + 88) removeObject:v17[5]];
  }

  _Block_object_dispose(&v16, 8);
}

void __38__ML3MusicLibrary_connectionDidClose___block_invoke_218(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 ownsConnection:*(a1 + 32)])
  {
    if ([v6 isClosedWithNoActiveOrBusyConnections])
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      if (a3)
      {
        *a3 = 1;
      }
    }
  }
}

- (void)connectionDidAccessDatabase:(id)database
{
  databaseCopy = database;
  privacyContext = [databaseCopy privacyContext];

  if (privacyContext)
  {
    privacyContext2 = [databaseCopy privacyContext];
    [privacyContext2 logDatabasePrivacyAccess];
  }

  else
  {
    [(ML3MusicLibrary *)self _logDatabaseAccess];
  }
}

- (void)connection:(id)connection didEndDatabaseTransactionAndCommit:(BOOL)commit
{
  commitCopy = commit;
  connectionCopy = connection;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (commitCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained library:self didCommitDatabaseTransactionWithConnection:connectionCopy];
  }

  else if (objc_opt_respondsToSelector())
  {
    [WeakRetained library:self didRollbackDatabaseTransactionWithConnection:connectionCopy];
  }
}

- (void)connectionDidBeginDatabaseTransaction:(id)transaction
{
  transactionCopy = transaction;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained library:self didBeginDatabaseTransactionWithConnection:transactionCopy];
  }
}

- (void)connectionWillCloseDatabase:(id)database
{
  databaseCopy = database;
  if ([(ML3MusicLibrary *)self _canConfigureMediaLibraryDatabaseConnection:?])
  {
    [(ML3MusicLibrary *)self _teardownMediaLibraryDatabaseConnection:databaseCopy];
  }
}

- (void)connectionDidOpenDatabase:(id)database
{
  databaseCopy = database;
  if ([(ML3MusicLibrary *)self _canConfigureMediaLibraryDatabaseConnection:?])
  {
    [(ML3MusicLibrary *)self _configureMediaLibraryDatabaseConnection:databaseCopy];
  }
}

- (void)connectionWillOpenDatabase:(id)database
{
  databaseCopy = database;
  if (MSVDeviceOSIsInternalInstall())
  {
    if (!__daemonProcessInfo)
    {
      v4 = +[ML3TerminationCoordinator sharedCoordinator];
      isSigned = [v4 isSigned];

      if ((isSigned & 1) == 0)
      {
        v6 = +[ML3TerminationCoordinator sharedCoordinator];
        [v6 signForReason:1];
      }
    }
  }

  if ((__disableAutomaticDatabaseValidation & 1) == 0)
  {
    [(ML3MusicLibrary *)self validateDatabase];
  }

  privacyContext = [databaseCopy privacyContext];

  if (!privacyContext)
  {
    privacyContext2 = [(ML3MusicLibrary *)self privacyContext];
    [databaseCopy setPrivacyContext:privacyContext2];
  }
}

- (void)setClientIdentity:(id)identity
{
  identityCopy = identity;
  os_unfair_lock_lock(&__privacyContextLock);
  v5 = [[ML3DatabasePrivacyContext alloc] initWithClientIdentity:identityCopy];

  privacyContext = self->_privacyContext;
  self->_privacyContext = v5;

  os_unfair_lock_unlock(&__privacyContextLock);
}

- (id)libraryEntityFilterPredicatesForContainerClass:(Class)class
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2504;
  v11 = __Block_byref_object_dispose__2505;
  v12 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__ML3MusicLibrary_libraryEntityFilterPredicatesForContainerClass___block_invoke;
  block[3] = &unk_27875D4B0;
  block[4] = self;
  block[5] = &v7;
  block[6] = class;
  dispatch_sync(serialQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __66__ML3MusicLibrary_libraryEntityFilterPredicatesForContainerClass___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 56) objectForKey:a1[6]];
  v3 = [v2 copy];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1[5] + 8);
  v8 = *(v6 + 40);
  v7 = (v6 + 40);
  if (!v8)
  {
    v9 = *(a1[4] + 176);

    objc_storeStrong(v7, v9);
  }
}

- (id)libraryEntityFilterPredicatesForEntityClass:(Class)class
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2504;
  v11 = __Block_byref_object_dispose__2505;
  v12 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__ML3MusicLibrary_libraryEntityFilterPredicatesForEntityClass___block_invoke;
  block[3] = &unk_27875D4B0;
  block[4] = self;
  block[5] = &v7;
  block[6] = class;
  dispatch_sync(serialQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __63__ML3MusicLibrary_libraryEntityFilterPredicatesForEntityClass___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 48) objectForKey:a1[6]];
  v3 = [v2 copy];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1[5] + 8);
  v8 = *(v6 + 40);
  v7 = (v6 + 40);
  if (!v8)
  {
    v9 = *(a1[4] + 168);

    objc_storeStrong(v7, v9);
  }
}

- (void)setLibraryPublicContainerFilterPredicates:(id)predicates
{
  predicatesCopy = predicates;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__ML3MusicLibrary_setLibraryPublicContainerFilterPredicates___block_invoke;
  v7[3] = &unk_2787660F0;
  v7[4] = self;
  v8 = predicatesCopy;
  v6 = predicatesCopy;
  dispatch_sync(serialQueue, v7);
}

void __61__ML3MusicLibrary_setLibraryPublicContainerFilterPredicates___block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 192) isEqual:*(a1 + 40)] & 1) == 0)
  {
    objc_storeStrong((*(a1 + 32) + 192), *(a1 + 40));
    v2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v3 = *(a1 + 32);
    v4 = *(v3 + 72);
    *(v3 + 72) = v2;

    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = *(*(a1 + 32) + 72);
      v7 = objc_opt_class();

      [v6 setObject:v5 forKey:v7];
    }
  }
}

- (void)setLibraryPublicEntityFilterPredicates:(id)predicates
{
  predicatesCopy = predicates;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__ML3MusicLibrary_setLibraryPublicEntityFilterPredicates___block_invoke;
  v7[3] = &unk_2787660F0;
  v7[4] = self;
  v8 = predicatesCopy;
  v6 = predicatesCopy;
  dispatch_sync(serialQueue, v7);
}

void __58__ML3MusicLibrary_setLibraryPublicEntityFilterPredicates___block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 184) isEqual:*(a1 + 40)] & 1) == 0)
  {
    objc_storeStrong((*(a1 + 32) + 184), *(a1 + 40));
    v2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v3 = *(a1 + 32);
    v4 = *(v3 + 64);
    *(v3 + 64) = v2;

    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = *(*(a1 + 32) + 64);
      v7 = objc_opt_class();

      [v6 setObject:v5 forKey:v7];
    }
  }
}

- (void)setLibraryContainerFilterPredicates:(id)predicates
{
  predicatesCopy = predicates;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__ML3MusicLibrary_setLibraryContainerFilterPredicates___block_invoke;
  v7[3] = &unk_2787660F0;
  v7[4] = self;
  v8 = predicatesCopy;
  v6 = predicatesCopy;
  dispatch_sync(serialQueue, v7);
}

void __55__ML3MusicLibrary_setLibraryContainerFilterPredicates___block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 176) isEqual:*(a1 + 40)] & 1) == 0)
  {
    objc_storeStrong((*(a1 + 32) + 176), *(a1 + 40));
    v2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    *(v3 + 56) = v2;

    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = *(*(a1 + 32) + 56);
      v7 = objc_opt_class();

      [v6 setObject:v5 forKey:v7];
    }
  }
}

- (void)setLibraryEntityFilterPredicates:(id)predicates
{
  predicatesCopy = predicates;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__ML3MusicLibrary_setLibraryEntityFilterPredicates___block_invoke;
  v7[3] = &unk_2787660F0;
  v7[4] = self;
  v8 = predicatesCopy;
  v6 = predicatesCopy;
  dispatch_sync(serialQueue, v7);
}

void __52__ML3MusicLibrary_setLibraryEntityFilterPredicates___block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 168) isEqual:*(a1 + 40)] & 1) == 0)
  {
    objc_storeStrong((*(a1 + 32) + 168), *(a1 + 40));
    v2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v3 = *(a1 + 32);
    v4 = *(v3 + 48);
    *(v3 + 48) = v2;

    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = *(*(a1 + 32) + 48);
      v7 = objc_opt_class();

      [v6 setObject:v5 forKey:v7];
    }
  }
}

- (NSArray)preferredSubtitleTracks
{
  if (TCCAccessPreflight())
  {
    v3 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_ERROR, "Could not resolve preferredSubtitleTracks, missing TCC", v7, 2u);
    }

    v4 = 0;
    goto LABEL_7;
  }

  databaseInfo = [(ML3MusicLibrary *)self databaseInfo];
  v3 = [databaseInfo valueForProperty:@"subtitle_language"];

  [(ML3MusicLibrary *)self _logDatabaseAccess];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEA60] arrayWithObject:v3];
LABEL_7:

    goto LABEL_8;
  }

  v4 = 0;
LABEL_8:

  return v4;
}

- (NSArray)preferredAudioTracks
{
  if (TCCAccessPreflight())
  {
    v3 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_ERROR, "Could not resolve preferredAudioTracks, missing TCC", v7, 2u);
    }

    v4 = 0;
    goto LABEL_7;
  }

  databaseInfo = [(ML3MusicLibrary *)self databaseInfo];
  v3 = [databaseInfo valueForProperty:@"audio_language"];

  [(ML3MusicLibrary *)self _logDatabaseAccess];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEA60] arrayWithObject:v3];
LABEL_7:

    goto LABEL_8;
  }

  v4 = 0;
LABEL_8:

  return v4;
}

- (ML3Container)currentDevicePhotosMemoriesPlaylist
{
  v11[6] = *MEMORY[0x277D85DE8];
  if ([(ML3MusicLibrary *)self isHomeSharingLibrary])
  {
    v3 = 0;
  }

  else
  {
    v4 = MEMORY[0x277CBEC38];
    v5 = [ML3ComparisonPredicate predicateWithProperty:@"(container.distinguished_kind = 10010 AND container.is_container_type_active_target)" equalToValue:MEMORY[0x277CBEC38]];
    v3 = [(ML3Entity *)ML3Container anyInLibrary:self predicate:v5 options:7];
    if (!v3)
    {
      v10[0] = @"distinguished_kind";
      v10[1] = @"is_container_type_active_target";
      v11[0] = &unk_2840C8A80;
      v11[1] = v4;
      v11[2] = v4;
      v10[2] = @"is_hidden";
      v10[3] = @"date_created";
      v6 = MEMORY[0x277CCABB0];
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v7 = [v6 numberWithDouble:?];
      v11[3] = v7;
      v11[4] = &unk_2840C8A98;
      v10[4] = @"keep_local";
      v10[5] = @"name";
      v11[5] = @"Photos Memories";
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:6];

      v3 = [(ML3Entity *)ML3Container newWithDictionary:v8 inLibrary:self];
    }
  }

  return v3;
}

- (ML3Container)currentDeviceFavoriteSongsPlaylist
{
  v3 = [ML3ComparisonPredicate predicateWithProperty:@"(container.distinguished_kind = 71)" equalToValue:MEMORY[0x277CBEC38]];
  v4 = [(ML3Entity *)ML3Container anyInLibrary:self predicate:v3 options:3];

  return v4;
}

- (ML3Container)currentDevicePlaybackHistoryPlaylist
{
  v13[5] = *MEMORY[0x277D85DE8];
  if ([(ML3MusicLibrary *)self isHomeSharingLibrary])
  {
    v3 = 0;
  }

  else
  {
    v4 = MEMORY[0x277CBEC38];
    v5 = [ML3ComparisonPredicate predicateWithProperty:@"(container.distinguished_kind = 10000 AND container.is_container_type_active_target)" equalToValue:MEMORY[0x277CBEC38]];
    v3 = [(ML3Entity *)ML3Container anyInLibrary:self predicate:v5 options:3];
    if (!v3)
    {
      v12[0] = @"distinguished_kind";
      v12[1] = @"is_container_type_active_target";
      v13[0] = &unk_2840C8A68;
      v13[1] = v4;
      v13[2] = v4;
      v12[2] = @"is_hidden";
      v12[3] = @"date_created";
      v6 = MEMORY[0x277CCABB0];
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v7 = [v6 numberWithDouble:?];
      v13[3] = v7;
      v12[4] = @"name";
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"PLAYBACK_HISTORY_PLAYLIST_NAME" value:&stru_28408B690 table:@"MLLocalizable"];
      v13[4] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:5];

      v3 = [(ML3Entity *)ML3Container newWithDictionary:v10 inLibrary:self];
    }
  }

  return v3;
}

- (ML3Container)currentDevicePurchasesPlaylist
{
  v3 = [ML3ComparisonPredicate predicateWithProperty:@"(container.distinguished_kind = 20 AND container.is_container_type_active_target)" equalToValue:MEMORY[0x277CBEC38]];
  v4 = [(ML3Entity *)ML3Container anyInLibrary:self predicate:v3];

  return v4;
}

- (BOOL)isLibraryEmpty
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__ML3MusicLibrary_isLibraryEmpty__block_invoke;
  v4[3] = &unk_27875D488;
  v4[4] = &v5;
  [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:0 withBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __33__ML3MusicLibrary_isLibraryEmpty__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 executeQuery:@"SELECT 1 FROM item LIMIT 1"];
  v5 = [v4 hasAtLeastOneRow];

  v6 = [v3 executeQuery:@"SELECT 1 FROM container WHERE distinguished_kind = 0 LIMIT 1"];

  LODWORD(v3) = [v6 hasAtLeastOneRow];
  *(*(*(a1 + 32) + 8) + 24) = ((v5 | v3) & 1) == 0;
}

- (void)setLibraryUID:(id)d
{
  dCopy = d;
  [(NSLock *)self->_libraryUIDLock lock];
  libraryUID = self->_libraryUID;
  if (libraryUID && ![(NSString *)libraryUID isEqualToString:dCopy])
  {
    v6 = [dCopy copy];
    v7 = self->_libraryUID;
    self->_libraryUID = v6;

    [(NSLock *)self->_libraryUIDLock unlock];
    v8 = dispatch_get_global_queue(0, 0);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __33__ML3MusicLibrary_setLibraryUID___block_invoke;
    v9[3] = &unk_2787660F0;
    v9[4] = self;
    v10 = dCopy;
    dispatch_async(v8, v9);
  }

  else
  {
    [(NSLock *)self->_libraryUIDLock unlock];
  }
}

- (NSString)syncLibraryID
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__ML3MusicLibrary_syncLibraryID__block_invoke;
  block[3] = &unk_278766080;
  block[4] = self;
  block[5] = &v20;
  dispatch_sync(serialQueue, block);
  if (*(v21 + 24) == 1)
  {
    v4 = [(ML3MusicLibrary *)self valueForDatabaseProperty:@"MLSyncLibraryID"];
    v5 = self->_serialQueue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __32__ML3MusicLibrary_syncLibraryID__block_invoke_2;
    v17[3] = &unk_2787660F0;
    v17[4] = self;
    v18 = v4;
    v6 = v4;
    dispatch_sync(v5, v17);
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2504;
  v15 = __Block_byref_object_dispose__2505;
  v16 = 0;
  v7 = self->_serialQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __32__ML3MusicLibrary_syncLibraryID__block_invoke_3;
  v10[3] = &unk_278766080;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(v7, v10);
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v20, 8);

  return v8;
}

uint64_t __32__ML3MusicLibrary_syncLibraryID__block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 24) = [*(a1 + 40) copy];

  return MEMORY[0x2821F96F8]();
}

uint64_t __32__ML3MusicLibrary_syncLibraryID__block_invoke_3(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 24) copy];

  return MEMORY[0x2821F96F8]();
}

- (void)setSyncLibraryID:(id)d
{
  dCopy = d;
  serialQueue = self->_serialQueue;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __36__ML3MusicLibrary_setSyncLibraryID___block_invoke;
  v10 = &unk_2787660F0;
  selfCopy = self;
  v12 = dCopy;
  v6 = dCopy;
  dispatch_sync(serialQueue, &v7);
  [(ML3MusicLibrary *)self setValue:v6 forDatabaseProperty:@"MLSyncLibraryID", v7, v8, v9, v10, selfCopy];
}

- (int64_t)syncGenerationID
{
  v2 = [(ML3MusicLibrary *)self valueForDatabaseProperty:@"MLSyncClientGenerationID"];
  longLongValue = [v2 longLongValue];

  return longLongValue;
}

- (void)setSyncGenerationID:(int64_t)d
{
  dispatch_assert_queue_not_V2(self->_serialQueue);
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
  [(ML3MusicLibrary *)self setValue:v5 forDatabaseProperty:@"MLSyncClientGenerationID"];

  notificationManager = [(ML3MusicLibrary *)self notificationManager];
  [notificationManager enqueueDistributedNotificationNamed:@"com.apple.mobileipod.syncgenerationchanged"];
}

- (BOOL)downloadOnAddToLibrary
{
  v11 = *MEMORY[0x277D85DE8];
  if (MSVDeviceSupportsSideLoadedMediaContent())
  {
    v2 = +[ML3AccountStore defaultStore];
    activeAccount = [v2 activeAccount];

    if (activeAccount)
    {
      objc_opt_class();
      ams_automaticDownloadKinds = [activeAccount ams_automaticDownloadKinds];
      if ([ams_automaticDownloadKinds containsObject:@"song"])
      {
        v5 = [ams_automaticDownloadKinds containsObject:@"music-video"];
      }

      else
      {
        v5 = 0;
      }

      v6 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8[0] = 67109378;
        v8[1] = v5;
        v9 = 2114;
        v10 = ams_automaticDownloadKinds;
        _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "Automatic Downloads are %{BOOL}u. enabledKinds=%{public}@", v8, 0x12u);
      }
    }

    else
    {
      ams_automaticDownloadKinds = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(ams_automaticDownloadKinds, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8[0]) = 0;
        _os_log_impl(&dword_22D2FA000, ams_automaticDownloadKinds, OS_LOG_TYPE_DEFAULT, "Could not get active account. Treating automatic Downloads as disabled", v8, 2u);
      }

      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)setIsHomeSharingLibrary:(BOOL)library
{
  libraryCopy = library;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__ML3MusicLibrary_setIsHomeSharingLibrary___block_invoke;
  v7[3] = &unk_278765E08;
  v7[4] = self;
  libraryCopy2 = library;
  dispatch_sync(serialQueue, v7);
  v6 = [MEMORY[0x277CCABB0] numberWithBool:libraryCopy];
  [(ML3MusicLibrary *)self setValue:v6 forDatabaseProperty:@"MLIsHomeSharingLibrary"];
}

uint64_t __43__ML3MusicLibrary_setIsHomeSharingLibrary___block_invoke(uint64_t result)
{
  *(*(result + 32) + 80) = 1;
  *(*(result + 32) + 81) = *(result + 40);
  return result;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];
  iPhoneSortKeyBuilderRelease(self->_sortKeyBuilder);
  self->_sortKeyBuilder = 0;
  accountCacheDatabase = self->_accountCacheDatabase;
  self->_accountCacheDatabase = 0;

  v5.receiver = self;
  v5.super_class = ML3MusicLibrary;
  [(ML3MusicLibrary *)&v5 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dispatch_assert_queue_not_V2(self->_serialQueue);
  [coderCopy encodeBool:-[ML3MusicLibrary isAutoUpdatingSharedLibrary](self forKey:{"isAutoUpdatingSharedLibrary"), @"isAutoupdatingSharedLibraryKey"}];
  if (![(ML3MusicLibrary *)self isAutoUpdatingSharedLibrary])
  {
    resourcesManager = [(ML3MusicLibrary *)self resourcesManager];
    [coderCopy encodeObject:resourcesManager forKey:@"resourceManagerKey"];
  }
}

- (ML3MusicLibrary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__2504;
  v20 = __Block_byref_object_dispose__2505;
  v21 = 0;
  if ([coderCopy decodeBoolForKey:@"isAutoupdatingSharedLibraryKey"])
  {
    v5 = +[ML3MusicLibrary autoupdatingSharedLibrary];
    v6 = 0;
    v7 = v17[5];
    v17[5] = v5;
  }

  else
  {
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resourceManagerKey"];
    v9 = +[ML3MusicLibrary globalSerialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__ML3MusicLibrary_initWithCoder___block_invoke;
    block[3] = &unk_278765F28;
    v15 = &v16;
    v6 = v8;
    v13 = v6;
    v14 = 0;
    dispatch_sync(v9, block);

    v7 = v13;
  }

  v10 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v10;
}

uint64_t __33__ML3MusicLibrary_initWithCoder___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [ML3MusicLibrary _onGlobalQueue_shareableMusicLibraryWithResourcesManager:a1[4] libraryFilePath:a1[5]];

  return MEMORY[0x2821F96F8]();
}

- (ML3MusicLibrary)initWithClientIdentity:(id)identity path:(id)path readOnly:(BOOL)only populateUnitTestTablesBlock:(id)block
{
  identityCopy = identity;
  pathCopy = path;
  blockCopy = block;
  v37.receiver = self;
  v37.super_class = ML3MusicLibrary;
  v13 = [(ML3MusicLibrary *)&v37 init];
  v14 = v13;
  if (v13)
  {
    v13->_readOnly = only;
    if (pathCopy)
    {
      msv_stringByResolvingRealPath = [pathCopy msv_stringByResolvingRealPath];
    }

    else
    {
      msv_stringByResolvingRealPath = 0;
    }

    databasePath = v14->_databasePath;
    v14->_databasePath = msv_stringByResolvingRealPath;

    v17 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    libraryUIDLock = v14->_libraryUIDLock;
    v14->_libraryUIDLock = v17;

    v19 = [ML3DatabasePrivacyContext alloc];
    v20 = identityCopy;
    if (!identityCopy)
    {
      v20 = MSVTCCIdentityForCurrentProcess();
    }

    v21 = [(ML3DatabasePrivacyContext *)v19 initWithClientIdentity:v20];
    privacyContext = v14->_privacyContext;
    v14->_privacyContext = v21;

    if (!identityCopy)
    {
    }

    v23 = [MEMORY[0x277CBEB58] set];
    connectionPoolsPendingClose = v14->_connectionPoolsPendingClose;
    v14->_connectionPoolsPendingClose = v23;

    v25 = dispatch_queue_create("com.apple.MusicLibrary.atomicity", 0);
    serialQueue = v14->_serialQueue;
    v14->_serialQueue = v25;

    [(ML3MusicLibrary *)v14 _setupNotificationManager];
    if (blockCopy && !only)
    {
      v31 = MEMORY[0x277D85DD0];
      v32 = 3221225472;
      v33 = __84__ML3MusicLibrary_initWithClientIdentity_path_readOnly_populateUnitTestTablesBlock___block_invoke;
      v34 = &unk_27875D440;
      v36 = blockCopy;
      v35 = v14;
      [(ML3MusicLibrary *)v35 databaseConnectionAllowingWrites:1 withBlock:&v31];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v14 selector:sel__effectiveSettingsDidChangeNotification_ name:*MEMORY[0x277D25CA0] object:0];
    if (!__daemonProcessInfo)
    {
      [defaultCenter addObserver:v14 selector:sel__libraryPathDidChangeNotification_ name:@"MLUserDatabasePathDidChangeNotification" object:0];
      v28 = [defaultCenter addObserverForName:*MEMORY[0x277CBE620] object:0 queue:0 usingBlock:&__block_literal_global_126];
      v29 = [defaultCenter addObserverForName:@"SBFinishedLanguageChangeStartup" object:0 queue:0 usingBlock:&__block_literal_global_132];
    }

    ML3RestrictionInfoInitializeIfNecessary();
  }

  return v14;
}

uint64_t __84__ML3MusicLibrary_initWithClientIdentity_path_readOnly_populateUnitTestTablesBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __84__ML3MusicLibrary_initWithClientIdentity_path_readOnly_populateUnitTestTablesBlock___block_invoke_3()
{
  v0 = +[ML3LanguageResourceManager sharedResourceManager];
  [v0 invalidateCachedResources];
}

void __84__ML3MusicLibrary_initWithClientIdentity_path_readOnly_populateUnitTestTablesBlock___block_invoke_2()
{
  v0 = +[ML3LanguageResourceManager sharedResourceManager];
  [v0 invalidateCachedResources];
}

- (ML3MusicLibrary)initWithPath:(id)path readOnly:(BOOL)only populateUnitTestTablesBlock:(id)block
{
  onlyCopy = only;
  blockCopy = block;
  pathCopy = path;
  v10 = MSVTCCIdentityForCurrentProcess();
  v11 = [(ML3MusicLibrary *)self initWithClientIdentity:v10 path:pathCopy readOnly:onlyCopy populateUnitTestTablesBlock:blockCopy];

  return v11;
}

- (ML3MusicLibrary)initWithResourcesManager:(id)manager
{
  managerCopy = manager;
  v6 = [managerCopy pathForResourceFileOrFolder:15];
  v7 = [(ML3MusicLibrary *)self initWithPath:v6];
  v8 = v7;
  if (v7)
  {
    v7->_autoUpdatingSharedLibrary = 0;
    objc_storeStrong(&v7->_resourcesManager, manager);
    context = [managerCopy context];
    accountInfo = [context accountInfo];
    accountDSID = [accountInfo accountDSID];
    accountDSID = v8->_accountDSID;
    v8->_accountDSID = accountDSID;
  }

  return v8;
}

- (ML3MusicLibrary)initWithClientIdentity:(id)identity forUserAccount:(id)account
{
  identityCopy = identity;
  accountCopy = account;
  v8 = +[ML3MusicLibrary deviceSupportsMultipleLibraries];
  if (accountCopy && v8 && ([accountCopy accountDSID], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = [ML3MusicLibraryResourcesManagerContext contextForSingleUserLibraryWithAccountInfo:accountCopy];
    v11 = [[ML3MusicLibraryResourcesManager alloc] initWithContext:v10];
    v12 = [(ML3MusicLibraryResourcesManager *)v11 pathForResourceFileOrFolder:15];
    v13 = [(ML3MusicLibrary *)self initWithClientIdentity:identityCopy path:v12 readOnly:0 populateUnitTestTablesBlock:0];
    v14 = v13;
    if (v13)
    {
      v13->_autoUpdatingSharedLibrary = 0;
      objc_storeStrong(&v13->_resourcesManager, v11);
      context = [(ML3MusicLibraryResourcesManager *)v11 context];
      accountInfo = [context accountInfo];
      accountDSID = [accountInfo accountDSID];
      accountDSID = v14->_accountDSID;
      v14->_accountDSID = accountDSID;
    }
  }

  else
  {
    v14 = [(ML3MusicLibrary *)self initWithClientIdentity:identityCopy path:0 readOnly:0 populateUnitTestTablesBlock:0];
  }

  return v14;
}

+ (id)widthLimitedSetValuesQueue
{
  if (widthLimitedSetValuesQueue___once != -1)
  {
    dispatch_once(&widthLimitedSetValuesQueue___once, &__block_literal_global_909);
  }

  v3 = widthLimitedSetValuesQueue___setValuesQueue;

  return v3;
}

uint64_t __45__ML3MusicLibrary_widthLimitedSetValuesQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v1 = widthLimitedSetValuesQueue___setValuesQueue;
  widthLimitedSetValuesQueue___setValuesQueue = v0;

  v2 = widthLimitedSetValuesQueue___setValuesQueue;

  return [v2 setMaxConcurrentOperationCount:5];
}

+ (void)removeOrphanedTracks
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = +[ML3MusicLibrary allLibraries];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) removeOrphanedTracksOnlyInCaches:{+[ML3MusicLibrary deviceSupportsMultipleLibraries](ML3MusicLibrary, "deviceSupportsMultipleLibraries")}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

+ (void)enumerateSortMapTablesUsingBlock:(id)block
{
  blockCopy = block;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ML3MusicLibrary_enumerateSortMapTablesUsingBlock___block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = a2;
  block[5] = self;
  if (enumerateSortMapTablesUsingBlock____once != -1)
  {
    dispatch_once(&enumerateSortMapTablesUsingBlock____once, block);
  }

  v6 = enumerateSortMapTablesUsingBlock____sortMapTables;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__ML3MusicLibrary_enumerateSortMapTablesUsingBlock___block_invoke_2;
  v8[3] = &unk_27875D728;
  v9 = blockCopy;
  v7 = blockCopy;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];
}

void __52__ML3MusicLibrary_enumerateSortMapTablesUsingBlock___block_invoke(uint64_t a1)
{
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v2 = [v6 pathForResource:@"MLSortMapTables" ofType:@"plist"];
  v3 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v2];
  v4 = enumerateSortMapTablesUsingBlock____sortMapTables;
  enumerateSortMapTablesUsingBlock____sortMapTables = v3;

  if (!enumerateSortMapTablesUsingBlock____sortMapTables)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    [v5 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"ML3MusicLibrary.m" lineNumber:2185 description:{@"Unable to load MLSortMapTables.plist at %@", v2}];
  }
}

void __52__ML3MusicLibrary_enumerateSortMapTablesUsingBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__ML3MusicLibrary_enumerateSortMapTablesUsingBlock___block_invoke_3;
  v8[3] = &unk_27875D700;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v8];
}

void __52__ML3MusicLibrary_enumerateSortMapTablesUsingBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = a2;
  if ([v11 count] < 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v11 objectAtIndexedSubscript:1];
  }

  v9 = a1 + 32;
  v7 = *(a1 + 32);
  v8 = *(v9 + 8);
  v10 = [v11 objectAtIndexedSubscript:0];
  (*(v8 + 16))(v8, v7, v5, v10, v6);
}

+ (id)sectionIndexTitleForSectionHeader:(id)header
{
  v48 = *MEMORY[0x277D85DE8];
  headerCopy = header;
  v5 = sectionIndexTitleForSectionHeader__sectionHeaderToSectionIndex;
  if (!sectionIndexTitleForSectionHeader__sectionHeaderToSectionIndex)
  {
    v36 = headerCopy;
    context = objc_autoreleasePoolPush();
    sectionIndexTitles = [self sectionIndexTitles];
    array = [MEMORY[0x277CBEB18] array];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v7 = ML3LocalizedSectionDictionary();
    v8 = [v7 objectForKey:@"SectionHeaders"];

    v9 = [v8 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v43;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v43 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v42 + 1) + 8 * i);
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v14 = [v13 objectForKey:@"Headers"];
          v15 = [v14 countByEnumeratingWithState:&v38 objects:v46 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v39;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v39 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                [array addObject:*(*(&v38 + 1) + 8 * j)];
              }

              v16 = [v14 countByEnumeratingWithState:&v38 objects:v46 count:16];
            }

            while (v16);
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v10);
    }

    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v20 = sectionIndexTitleForSectionHeader__sectionHeaderToSectionIndex;
    sectionIndexTitleForSectionHeader__sectionHeaderToSectionIndex = v19;

    v21 = sectionIndexTitles;
    if ([sectionIndexTitles count])
    {
      v22 = 0;
      v23 = 0;
      v24 = 1;
      do
      {
        v25 = [v21 objectAtIndex:v23];
        if (([v25 isEqualToString:@"•"] & 1) == 0)
        {
          v26 = 0;
          v27 = v24;
          while (v27 < [v21 count])
          {
            v28 = [v21 objectAtIndex:v27];

            ++v27;
            v26 = v28;
            if (([v28 isEqualToString:@"•"] & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          v28 = v26;
LABEL_24:
          if (v22 < [array count])
          {
            while (1)
            {
              v29 = [array objectAtIndex:v22];
              if ([v28 isEqualToString:v29])
              {
                break;
              }

              [sectionIndexTitleForSectionHeader__sectionHeaderToSectionIndex setObject:v25 forKey:v29];

              if (++v22 >= [array count])
              {
                goto LABEL_29;
              }
            }
          }

LABEL_29:

          v21 = sectionIndexTitles;
        }

        ++v23;
        ++v24;
      }

      while (v23 < [v21 count]);
    }

    objc_autoreleasePoolPop(context);
    v5 = sectionIndexTitleForSectionHeader__sectionHeaderToSectionIndex;
    headerCopy = v36;
  }

  v30 = [v5 objectForKey:headerCopy];
  v31 = v30;
  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v32 = [v33 localizedStringForKey:@"NUMERIC_SECTION_HEADER" value:&stru_28408B690 table:@"MLLocalizable"];
  }

  return v32;
}

+ (id)sectionIndexTitles
{
  v2 = ML3LocalizedSectionDictionary();
  v3 = [v2 objectForKey:@"SectionIndices"];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"NUMERIC_SECTION_HEADER" value:&stru_28408B690 table:@"MLLocalizable"];
  v6 = [v3 arrayByAddingObject:v5];

  return v6;
}

+ (id)localizedSectionIndexTitleForSectionHeader:(id)header
{
  headerCopy = header;
  v4 = ML3LocalizedSectionDictionary();
  v5 = [v4 objectForKey:@"LocalizedSectionIndices"];

  v6 = [v5 objectForKey:headerCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = headerCopy;
  }

  v9 = v8;

  return v8;
}

+ (id)localizedSectionHeaderForSectionHeader:(id)header
{
  headerCopy = header;
  v4 = ML3LocalizedSectionDictionary();
  v5 = [v4 objectForKey:@"LocalizedSectionHeaders"];

  v6 = [v5 objectForKey:headerCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = headerCopy;
  }

  v9 = v8;

  return v8;
}

+ (void)setGlobalPrivacyContextWithAuditToken:(id *)token
{
  os_unfair_lock_lock(&__privacyContextLock);
  v4 = [ML3DatabasePrivacyContext alloc];
  v5 = *&token->var0[4];
  v8[0] = *token->var0;
  v8[1] = v5;
  v6 = [(ML3DatabasePrivacyContext *)v4 initWithAuditToken:v8];
  v7 = __privacyContextOverride;
  __privacyContextOverride = v6;

  os_unfair_lock_unlock(&__privacyContextLock);
}

+ (NSMutableDictionary)musicLibraryPerUserDSID
{
  if (musicLibraryPerUserDSID_onceToken != -1)
  {
    dispatch_once(&musicLibraryPerUserDSID_onceToken, &__block_literal_global_113_3145);
  }

  v3 = musicLibraryPerUserDSID___musicLibraryPerUserDSID;

  return v3;
}

uint64_t __42__ML3MusicLibrary_musicLibraryPerUserDSID__block_invoke()
{
  musicLibraryPerUserDSID___musicLibraryPerUserDSID = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];

  return MEMORY[0x2821F96F8]();
}

+ (void)setAutoupdatingSharedLibraryPath:(id)path
{
  pathCopy = path;
  globalSerialQueue = [self globalSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ML3MusicLibrary_setAutoupdatingSharedLibraryPath___block_invoke;
  block[3] = &unk_278765FB8;
  v8 = pathCopy;
  v6 = pathCopy;
  dispatch_sync(globalSerialQueue, block);
}

uint64_t __52__ML3MusicLibrary_setAutoupdatingSharedLibraryPath___block_invoke(uint64_t a1)
{
  __sharedLibraryDatabasePath = [*(a1 + 32) copy];

  return MEMORY[0x2821F96F8]();
}

+ (NSArray)registeredLibraries
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (+[ML3MusicLibrary deviceSupportsMultipleLibraries])
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__2504;
    v12 = __Block_byref_object_dispose__2505;
    v13 = 0;
    globalSerialQueue = [self globalSerialQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__ML3MusicLibrary_registeredLibraries__block_invoke;
    v7[3] = &unk_27875D418;
    v7[4] = &v8;
    v7[5] = self;
    dispatch_sync(globalSerialQueue, v7);

    v4 = v9[5];
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    autoupdatingSharedLibrary = [self autoupdatingSharedLibrary];
    v14[0] = autoupdatingSharedLibrary;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  }

  return v4;
}

void __38__ML3MusicLibrary_registeredLibraries__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 40) musicLibraryPerUserDSID];
  v2 = [v5 allValues];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (id)musicLibraryForUserAccount:(id)account
{
  accountCopy = account;
  accountDSID = [accountCopy accountDSID];
  if (+[ML3MusicLibrary deviceSupportsMultipleLibraries])
  {
    v6 = accountDSID == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    autoupdatingSharedLibrary = [self autoupdatingSharedLibrary];
  }

  else
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__2504;
    v19 = __Block_byref_object_dispose__2505;
    v20 = 0;
    globalSerialQueue = [self globalSerialQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__ML3MusicLibrary_musicLibraryForUserAccount___block_invoke;
    v10[3] = &unk_278765C68;
    v13 = &v15;
    selfCopy = self;
    v11 = accountDSID;
    v12 = accountCopy;
    dispatch_sync(globalSerialQueue, v10);

    autoupdatingSharedLibrary = v16[5];
    _Block_object_dispose(&v15, 8);
  }

  return autoupdatingSharedLibrary;
}

void __46__ML3MusicLibrary_musicLibraryForUserAccount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 56) musicLibraryPerUserDSID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v12 = [ML3MusicLibraryResourcesManagerContext contextForSingleUserLibraryWithAccountInfo:*(a1 + 40)];
    v6 = [[ML3MusicLibraryResourcesManager alloc] initWithContext:v12];
    v7 = [*(a1 + 56) _onGlobalQueue_shareableMusicLibraryWithResourcesManager:v6 libraryFilePath:0];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = *(*(*(a1 + 48) + 8) + 40);
    v11 = [*(a1 + 56) musicLibraryPerUserDSID];
    [v11 setObject:v10 forKeyedSubscript:*(a1 + 32)];
  }
}

+ (id)_onGlobalQueue_shareableMusicLibraryWithResourcesManager:(id)manager libraryFilePath:(id)path
{
  managerCopy = manager;
  pathCopy = path;
  globalSerialQueue = [self globalSerialQueue];
  dispatch_assert_queue_V2(globalSerialQueue);

  if (!managerCopy && ![pathCopy length])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3MusicLibrary.m" lineNumber:258 description:@"Must have a resource mananger or valid file path to create the library"];
  }

  if (!_onGlobalQueue_shareableMusicLibraryWithResourcesManager_libraryFilePath___cachedLibraries)
  {
    v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
    v11 = _onGlobalQueue_shareableMusicLibraryWithResourcesManager_libraryFilePath___cachedLibraries;
    _onGlobalQueue_shareableMusicLibraryWithResourcesManager_libraryFilePath___cachedLibraries = v10;
  }

  v12 = [managerCopy pathForResourceFileOrFolder:15];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = pathCopy;
  }

  v15 = v14;

  v16 = [_onGlobalQueue_shareableMusicLibraryWithResourcesManager_libraryFilePath___cachedLibraries objectForKey:v15];
  if (!v16)
  {
    v17 = [ML3MusicLibrary alloc];
    if (managerCopy)
    {
      v18 = [(ML3MusicLibrary *)v17 initWithResourcesManager:managerCopy];
    }

    else
    {
      v18 = [(ML3MusicLibrary *)v17 initWithPath:v15];
    }

    v16 = v18;
    [_onGlobalQueue_shareableMusicLibraryWithResourcesManager_libraryFilePath___cachedLibraries setObject:v18 forKey:v15];
  }

  return v16;
}

- (id)artistForArtistName:(id)name seriesName:(id)seriesName
{
  nameCopy = name;
  seriesNameCopy = seriesName;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__5398;
  v20 = __Block_byref_object_dispose__5399;
  v21 = 0;
  v8 = [(ML3MusicLibrary *)self artistGroupingKeyForArtistName:nameCopy seriesName:seriesNameCopy];
  v9 = v8;
  if (v8)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __70__ML3MusicLibrary_ML3ArtistAdditions__artistForArtistName_seriesName___block_invoke;
    v12[3] = &unk_278763398;
    selfCopy = self;
    v15 = &v16;
    v13 = v8;
    [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:0 withBlock:v12];
  }

  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __70__ML3MusicLibrary_ML3ArtistAdditions__artistForArtistName_seriesName___block_invoke(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = a1[4];
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v9 count:1];
  v6 = [v4 executeQuery:@"SELECT ROWID FROM item_artist WHERE (grouping_key = ?)" withParameters:{v5, v9, v10}];

  v7 = [v6 int64ValueForFirstRowAndColumn];
  if (v7)
  {
    v8 = [(ML3Entity *)ML3Artist newWithPersistentID:v7 inLibrary:a1[5]];
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong((*(a1[6] + 8) + 40), v8);
  if (v7)
  {
  }
}

- (id)artistGroupingKeyForArtistName:(id)name seriesName:(id)seriesName
{
  seriesNameCopy = seriesName;
  nameCopy = name;
  if ([seriesNameCopy length])
  {
    v8 = seriesNameCopy;
  }

  else
  {
    v8 = nameCopy;
  }

  v9 = [(ML3MusicLibrary *)self groupingKeyForString:v8];

  return v9;
}

- (BOOL)repairAlbumArtistRelationshipsWithConnection:(id)connection
{
  v33 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v4 = [connectionCopy executeQuery:@"SELECT album_pid FROM album LEFT OUTER JOIN album_artist USING(album_artist_pid) WHERE album_artist IS NULL AND album_artist_pid != 0"];
  v5 = [v4 objectsInColumn:0];

  v6 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218242;
    v30 = [v5 count];
    v31 = 2114;
    v32 = v5;
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEBUG, "Album -> AlbumArtist repair: Found %lu albums with invalid album artists %{public}@", buf, 0x16u);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v23;
    v20 = 1;
    *&v8 = 138543362;
    v19 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v27 = v12;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:{1, v19}];
        v14 = [connectionCopy executeQuery:@"SELECT album_artist_pid FROM item WHERE album_artist_pid != 0 AND album_pid = ? LIMIT 1" withParameters:v13];
        objectForFirstRowAndColumn = [v14 objectForFirstRowAndColumn];

        if ([objectForFirstRowAndColumn longLongValue])
        {
          v26[0] = objectForFirstRowAndColumn;
          v26[1] = v12;
          v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
          [connectionCopy executeUpdate:@"UPDATE album SET album_artist_pid = ? WHERE album_pid = ?" withParameters:v16 error:0];

          v17 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543618;
            v30 = v12;
            v31 = 2114;
            v32 = objectForFirstRowAndColumn;
            _os_log_impl(&dword_22D2FA000, v17, OS_LOG_TYPE_DEBUG, "Updated album %{public}@ with album artist %{public}@", buf, 0x16u);
          }
        }

        else
        {
          v17 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = v19;
            v30 = v12;
            _os_log_impl(&dword_22D2FA000, v17, OS_LOG_TYPE_ERROR, "Could not find valid album artist for album %{public}@", buf, 0xCu);
          }

          v20 = 0;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v9);
  }

  else
  {
    v20 = 1;
  }

  return v20 & 1;
}

- (id)albumForAlbumArtistPersistentID:(int64_t)d albumName:(id)name feedURL:(id)l seasonNumber:(id)number compilation:(BOOL)compilation
{
  compilationCopy = compilation;
  v30[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  lCopy = l;
  numberCopy = number;
  checkoutReaderConnection = [(ML3MusicLibrary *)self checkoutReaderConnection];
  if ([lCopy length])
  {
    v30[0] = lCopy;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    v17 = [checkoutReaderConnection executeQuery:@"SELECT ROWID FROM album WHERE feed_url = ?" withParameters:v16];

    int64ValueForFirstRowAndColumn = [v17 int64ValueForFirstRowAndColumn];
  }

  else
  {
    v19 = [(ML3MusicLibrary *)self groupingKeyForString:nameCopy];
    v17 = v19;
    v20 = @"SELECT ROWID FROM album WHERE (grouping_key = ?) AND (all_compilations = ?) AND (album_artist_pid = ?) AND (season_number = ?)";
    if (!numberCopy)
    {
      v20 = @"SELECT ROWID FROM album WHERE (grouping_key = ?) AND (all_compilations = ?) AND (album_artist_pid = ?)";
    }

    v21 = [MEMORY[0x277CCABB0] numberWithInt:{compilationCopy, v20, v19}];
    v29[1] = v21;
    v22 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
    v29[2] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
    v24 = [v23 mutableCopy];

    if (numberCopy)
    {
      [v24 addObject:numberCopy];
    }

    v25 = [checkoutReaderConnection executeQuery:v28 withParameters:v24];
    int64ValueForFirstRowAndColumn = [v25 int64ValueForFirstRowAndColumn];
  }

  if (int64ValueForFirstRowAndColumn)
  {
    v26 = [(ML3Entity *)ML3Album newWithPersistentID:int64ValueForFirstRowAndColumn inLibrary:self];
  }

  else
  {
    v26 = 0;
  }

  [(ML3MusicLibrary *)self checkInDatabaseConnection:checkoutReaderConnection];

  return v26;
}

- (BOOL)_validateDatabaseUsingConnection:(id)connection error:(id *)error
{
  *&v41[5] = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v7 = [ML3MusicLibrary userVersionUsingConnection:connectionCopy];
  v8 = v7;
  if (v7 > 2310000)
  {
    [MEMORY[0x277CCA9B8] ml_errorWithCode:3 description:{@"Media library database is too new for this device. (version = %d, latest known version is %d)", v7, 2310000}];
    v9 = LABEL_3:;
LABEL_4:
    v10 = os_log_create("com.apple.amp.medialibrary", "Validation");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *v41 = v9;
      _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_ERROR, "Failed to validate database with error: %{public}@", buf, 0xCu);
    }

    v11 = 0;
    goto LABEL_29;
  }

  if (v7 == 2310000)
  {
    v13 = 0;
    goto LABEL_19;
  }

  if (v7)
  {
    v14 = os_log_create("com.apple.amp.medialibrary", "Validation");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v41[0] = v8;
      LOWORD(v41[1]) = 1024;
      *(&v41[1] + 2) = 2310000;
      _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_DEFAULT, "Migrating media library database from %d to %d", buf, 0xEu);
    }

    v38 = 0;
    v15 = ML3MigrationMigrateLibraryToCurrentVersion(self, connectionCopy, &v38);
    v16 = v38;
    v9 = 0;
    if (v15)
    {
LABEL_17:

      v13 = v9;
      if (v8 > 1140159)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v9 = [MEMORY[0x277CCA9B8] ml_errorWithCode:5 description:{@"Failed to migrate database from version %d to %d. %@", v8, 2310000, v16}];
    v26 = os_log_create("com.apple.amp.medialibrary", "Validation");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v9 localizedDescription];
      *buf = 138543362;
      *v41 = localizedDescription;
      _os_log_impl(&dword_22D2FA000, v26, OS_LOG_TYPE_ERROR, "Migration error: %{public}@", buf, 0xCu);
    }

    v28 = os_log_create("com.apple.amp.medialibrary", "Validation");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v28, OS_LOG_TYPE_ERROR, "Recreating un-migratable database...", buf, 2u);
    }

    v29 = connectionCopy;
    v30 = v29;
    if (__daemonProcessInfo)
    {
      if ([v29 deleteDatabase])
      {
        v31 = _ML3ValidationBuildDatabaseTables(v30);

        if (v31)
        {
          v32 = _ML3LogCategoryValidation();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_22D2FA000, v32, OS_LOG_TYPE_DEFAULT, "Successfully deleted un-migratable database and re-created.", buf, 2u);
          }

          goto LABEL_17;
        }

LABEL_50:
        v35 = os_log_create("com.apple.amp.medialibrary", "Validation");
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22D2FA000, v35, OS_LOG_TYPE_ERROR, "Still can't validate database after recreating.", buf, 2u);
        }

        goto LABEL_4;
      }

      v34 = _ML3LogCategoryDefault();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22D2FA000, v34, OS_LOG_TYPE_ERROR, "Could not delete database", buf, 2u);
      }
    }

    goto LABEL_50;
  }

  v12 = os_log_create("com.apple.amp.medialibrary", "Validation");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_ERROR, "User version is 0, building tables for newly created DB", buf, 2u);
  }

  if ((_ML3ValidationBuildDatabaseTables(connectionCopy) & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] ml_errorWithCode:4 description:{@"Could not build database tables using connection %@.", connectionCopy, v36}];
    goto LABEL_3;
  }

  v9 = 0;
LABEL_18:
  [ML3Container populateMediaTypesOfStaticContainersInLibrary:self];
  v13 = v9;
LABEL_19:
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT value FROM _MLDatabaseProperties WHERE key = '%@'", @"_UUID"];
  v18 = [connectionCopy executeQuery:v17];
  objectForFirstRowAndColumn = [v18 objectForFirstRowAndColumn];

  if (objectForFirstRowAndColumn)
  {
    v9 = v13;
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    objectForFirstRowAndColumn = [uUID UUIDString];

    v39[0] = objectForFirstRowAndColumn;
    v39[1] = @"_UUID";
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
    v37 = v13;
    v22 = [connectionCopy executeUpdate:@"INSERT OR REPLACE INTO _MLDatabaseProperties (value withParameters:key) VALUES (? error:{?);", v21, &v37}];
    v9 = v37;

    if ((v22 & 1) == 0)
    {
      v33 = os_log_create("com.apple.amp.medialibrary", "Validation");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *v41 = v9;
        _os_log_impl(&dword_22D2FA000, v33, OS_LOG_TYPE_ERROR, "Failed to insert a library UID into the database properties table. (Error = %{public}@)", buf, 0xCu);
      }

      goto LABEL_4;
    }
  }

  v10 = os_log_create("com.apple.amp.medialibrary", "Validation");
  v23 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v23)
    {
      *buf = 138543362;
      *v41 = v9;
      _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "Successfully validated database, but encountered a recoverable error: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (v23)
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "Successfully validated database", buf, 2u);
    }

    v9 = 0;
  }

  v11 = 1;
LABEL_29:

  if (error)
  {
    v24 = v9;
    *error = v9;
  }

  return v11;
}

- (BOOL)coerceValidDatabaseWithError:(id *)error
{
  [(ML3MusicLibrary *)self migratePresignedValidity];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__ML3MusicLibrary_Validation__coerceValidDatabaseWithError___block_invoke;
  v6[3] = &unk_278765748;
  v6[4] = self;
  v6[5] = &v7;
  v6[6] = error;
  [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:1 withBlock:v6];
  LOBYTE(error) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return error;
}

uint64_t __60__ML3MusicLibrary_Validation__coerceValidDatabaseWithError___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _validateDatabaseUsingConnection:a2 error:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_coalesceMismatchedCollectionClass:(Class)class usingConnection:(id)connection
{
  v78 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  databaseTable = [(objc_class *)class databaseTable];
  trackForeignPersistentID = [(objc_class *)class trackForeignPersistentID];
  classCopy = class;
  propertiesForGroupingUniqueCollections = [(objc_class *)class propertiesForGroupingUniqueCollections];
  if (![propertiesForGroupingUniqueCollections count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3SortMap.m" lineNumber:511 description:{@"Collection %@ has no properties for grouping unique collections. This should be impossible!", databaseTable}];
  }

  v9 = 0x277CBE000uLL;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [propertiesForGroupingUniqueCollections componentsJoinedByString:{@", "}];
  v46 = v48 = databaseTable;
  v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT %@ FROM %@ GROUP BY %@ HAVING COUNT(*) > 1", v46, databaseTable, v46];
  v11 = [connectionCopy executeQuery:?];
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __79__ML3MusicLibrary_SortMap___coalesceMismatchedCollectionClass_usingConnection___block_invoke;
  v68[3] = &unk_278766118;
  v12 = v10;
  v69 = v12;
  v44 = v11;
  [v11 enumerateRowsWithBlock:v68];
  v54 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(propertiesForGroupingUniqueCollections, "count")}];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = propertiesForGroupingUniqueCollections;
  v13 = [obj countByEnumeratingWithState:&v64 objects:v77 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v65;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v65 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ = ?", *(*(&v64 + 1) + 8 * i)];
        [v54 addObject:v17];
      }

      v14 = [obj countByEnumeratingWithState:&v64 objects:v77 count:16];
    }

    while (v14);
  }

  v43 = [v54 componentsJoinedByString:@" AND "];
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT ROWID FROM %@ WHERE %@", v48, v43];
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE item SET %@ = ? WHERE %@ = ?", trackForeignPersistentID, trackForeignPersistentID];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v50 = v12;
  v55 = [v50 countByEnumeratingWithState:&v60 objects:v76 count:16];
  if (v55)
  {
    v53 = *v61;
    v20 = 1;
    v49 = v18;
    do
    {
      for (j = 0; j != v55; ++j)
      {
        if (*v61 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v22 = *(*(&v60 + 1) + 8 * j);
        v23 = objc_alloc_init(*(v9 + 2840));
        v24 = [connectionCopy executeQuery:v18 withParameters:v22];
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __79__ML3MusicLibrary_SortMap___coalesceMismatchedCollectionClass_usingConnection___block_invoke_2;
        v58[3] = &unk_278766118;
        v25 = v23;
        v59 = v25;
        [v24 enumerateRowsWithBlock:v58];
        v26 = [v25 count];
        if (v26 >= 2)
        {
          v27 = v26;
          v52 = v24;
          v28 = [v25 objectAtIndexedSubscript:0];
          v29 = 2;
          v30 = 1;
          while (1)
          {
            v31 = [v25 objectAtIndexedSubscript:v30];
            v75[0] = v28;
            v75[1] = v31;
            v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:2];
            v33 = [connectionCopy executeUpdate:v19 withParameters:v32 error:0];

            v34 = os_log_create("com.apple.amp.medialibrary", "SortMap");
            v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
            if ((v33 & 1) == 0)
            {
              break;
            }

            if (v35)
            {
              longLongValue = [v31 longLongValue];
              *buf = 138543618;
              v72 = classCopy;
              v73 = 2048;
              v74 = longLongValue;
              _os_log_impl(&dword_22D2FA000, v34, OS_LOG_TYPE_ERROR, "Deleting duplicate %{public}@ %lld", buf, 0x16u);
            }

            longLongValue2 = [v31 longLongValue];
            if (([(objc_class *)classCopy deleteFromLibrary:self deletionType:2 persistentIDs:&longLongValue2 count:1 usingConnection:connectionCopy]& 1) == 0)
            {
              v39 = os_log_create("com.apple.amp.medialibrary", "SortMap");
              v9 = 0x277CBE000;
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                longLongValue3 = [v31 longLongValue];
                *buf = 134217984;
                v72 = longLongValue3;
                _os_log_impl(&dword_22D2FA000, v39, OS_LOG_TYPE_ERROR, "Failed to delete duplicate collection with pid %lld", buf, 0xCu);
              }

              goto LABEL_29;
            }

            v30 = v29;
            if (v27 <= v29++)
            {
              v20 = 1;
              v9 = 0x277CBE000;
              v24 = v52;
              goto LABEL_30;
            }
          }

          if (v35)
          {
            longLongValue4 = [v28 longLongValue];
            *buf = 134217984;
            v72 = longLongValue4;
            _os_log_impl(&dword_22D2FA000, v34, OS_LOG_TYPE_ERROR, "Failed to repair entities converging on PID %lld", buf, 0xCu);
          }

          v9 = 0x277CBE000;
LABEL_29:
          v24 = v52;

          v20 = 0;
LABEL_30:

          v18 = v49;
        }
      }

      v55 = [v50 countByEnumeratingWithState:&v60 objects:v76 count:16];
    }

    while (v55);
  }

  else
  {
    v20 = 1;
  }

  return v20 & 1;
}

void __79__ML3MusicLibrary_SortMap___coalesceMismatchedCollectionClass_usingConnection___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 columnCount];
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v3];
  if (v3)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = [v12 valueForColumnIndex:v5];
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = [MEMORY[0x277CBEB68] null];
      }

      v10 = v9;

      [v4 addObject:v10];
      v5 = v6;
    }

    while (v3 > v6++);
  }

  [*(a1 + 32) addObject:v4];
}

void __79__ML3MusicLibrary_SortMap___coalesceMismatchedCollectionClass_usingConnection___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 numberForColumnIndex:0];
  [*(a1 + 32) addObject:v3];
}

- (BOOL)coalesceMismatchedCollectionsUsingConnection:(id)connection
{
  v22 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  +[ML3Collection collectionEntityClasses];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([(objc_class *)v11 isSubclassOfClass:objc_opt_class(), v15])
        {
          if (![(ML3MusicLibrary *)self _coalesceMismatchedCollectionClass:v11 usingConnection:connectionCopy])
          {
            v12 = os_log_create("com.apple.amp.medialibrary", "SortMap");
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v13 = NSStringFromClass(v11);
              *buf = 138543362;
              v20 = v13;
              _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_ERROR, "Failed to coalesce potentially mismatched collection %{public}@", buf, 0xCu);
            }

            goto LABEL_15;
          }

          v8 = 1;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_15:
    v8 = 0;
  }

  return v8 & 1;
}

- (id)_systemUnicodeVersionData
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6467;
  v9 = __Block_byref_object_dispose__6468;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__ML3MusicLibrary_SortMap___systemUnicodeVersionData__block_invoke;
  v4[3] = &unk_278761E48;
  v4[4] = &v5;
  [(ML3MusicLibrary *)self accessSortKeyBuilder:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __53__ML3MusicLibrary_SortMap___systemUnicodeVersionData__block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 40) = iPhoneSortKeyBuilderCopyVersionData(a2);

  return MEMORY[0x2821F96F8]();
}

- (int64_t)insertStringIntoSortMapNoTransaction:(id)transaction
{
  v62[3] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  if (![transactionCopy length])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3SortMap.m" lineNumber:426 description:@"blank string cannot be inserted into sort map"];
  }

  checkoutWriterConnection = [(ML3MusicLibrary *)self checkoutWriterConnection];
  v62[0] = transactionCopy;
  v62[1] = transactionCopy;
  v62[2] = transactionCopy;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:3];
  [checkoutWriterConnection executeUpdate:@"INSERT INTO sort_map (name withParameters:sort_key error:{name_section) VALUES (?, iPhoneSortKey(?), iPhoneSortSection(iPhoneSortKey(?)))", v7, 0}];

  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 1;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__6467;
  v41 = __Block_byref_object_dispose__6468;
  v42 = 0;
  v61 = transactionCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
  v9 = [checkoutWriterConnection executeQuery:@"SELECT sort_map1.name_order withParameters:{sort_map1.name FROM sort_map AS sort_map1 WHERE sort_map1.sort_key < (SELECT sort_map2.sort_key FROM sort_map AS sort_map2 WHERE name = ?) ORDER BY sort_map1.sort_key DESC, sort_map1.name_order DESC LIMIT 1", v8}];;

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __65__ML3MusicLibrary_SortMap__insertStringIntoSortMapNoTransaction___block_invoke;
  v36[3] = &unk_278765228;
  v36[4] = &v43;
  v36[5] = &v37;
  [v9 enumerateRowsWithBlock:v36];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0x7FFFFFFFFFFFFFFFLL;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__6467;
  v30 = __Block_byref_object_dispose__6468;
  v31 = 0;
  v60[0] = transactionCopy;
  v60[1] = transactionCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
  v11 = [checkoutWriterConnection executeQuery:@"SELECT sort_map1.name_order withParameters:{sort_map1.name FROM sort_map AS sort_map1 WHERE sort_map1.sort_key >= (SELECT sort_map2.sort_key FROM sort_map AS sort_map2 WHERE name = ?) AND sort_map1.name != ? ORDER BY sort_map1.sort_key ASC, sort_map1.name_order ASC LIMIT 1", v10}];;

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __65__ML3MusicLibrary_SortMap__insertStringIntoSortMapNoTransaction___block_invoke_2;
  v25[3] = &unk_278765228;
  v25[4] = &v32;
  v25[5] = &v26;
  [v11 enumerateRowsWithBlock:v25];
  v12 = v33[3];
  v13 = v44[3];
  v14 = v13 / 2 + v12 / 2;
  if (v14 == v12 || v14 == v13)
  {
    goto LABEL_9;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithLongLong:v14];
  v59[0] = v15;
  v59[1] = transactionCopy;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
  v17 = [checkoutWriterConnection executeUpdate:@"UPDATE sort_map SET name_order = ? WHERE name = ?;" withParameters:v16 error:0];

  if ((v17 & 1) == 0)
  {
    v18 = os_log_create("com.apple.amp.medialibrary", "SortMap");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = v44[3];
      v20 = v38[5];
      v21 = v33[3];
      v22 = v27[5];
      *buf = 134219266;
      v48 = v14;
      v49 = 2048;
      v50 = v19;
      v51 = 2114;
      v52 = v20;
      v53 = 2048;
      v54 = v21;
      v55 = 2114;
      v56 = v22;
      v57 = 2114;
      v58 = transactionCopy;
      _os_log_impl(&dword_22D2FA000, v18, OS_LOG_TYPE_ERROR, "Could not not insert name_order = %lld (between %lld/%{public}@ and %lld/%{public}@) for %{public}@", buf, 0x3Eu);
    }

LABEL_9:
    [(ML3MusicLibrary *)self updateSortMap];
    v14 = [(ML3MusicLibrary *)self nameOrderForString:transactionCopy];
  }

  [(ML3MusicLibrary *)self checkInDatabaseConnection:checkoutWriterConnection];
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(&v43, 8);
  return v14;
}

void __65__ML3MusicLibrary_SortMap__insertStringIntoSortMapNoTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = [v3 int64ForColumnIndex:0];
  v4 = [v3 stringForColumnIndex:1];

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __65__ML3MusicLibrary_SortMap__insertStringIntoSortMapNoTransaction___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = [v3 int64ForColumnIndex:0];
  v4 = [v3 stringForColumnIndex:1];

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)insertStringsIntoSortMap:(id)map didReSortMap:(BOOL *)sortMap
{
  mapCopy = map;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__6467;
  v18 = __Block_byref_object_dispose__6468;
  v19 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__ML3MusicLibrary_SortMap__insertStringsIntoSortMap_didReSortMap___block_invoke;
  v10[3] = &unk_278761E20;
  v10[4] = self;
  v7 = mapCopy;
  v12 = &v14;
  sortMapCopy = sortMap;
  v11 = v7;
  [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:1 withBlock:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __66__ML3MusicLibrary_SortMap__insertStringsIntoSortMap_didReSortMap___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = -[ML3SortMap initWithConnection:library:preloadNames:]([ML3SortMap alloc], "initWithConnection:library:preloadNames:", v3, *(a1 + 32), [*(a1 + 40) count] > 0x32);

  if ([(ML3SortMap *)v7 insertStringsIntoSortMap:*(a1 + 40) didReSortMap:*(a1 + 56)]&& [(ML3SortMap *)v7 commitUpdates])
  {
    v4 = [(ML3SortMap *)v7 nameOrders];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)nameOrderForString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3010000000;
    v15 = "";
    v16 = xmmword_22D5C6B00;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __47__ML3MusicLibrary_SortMap__nameOrderForString___block_invoke;
    v9[3] = &unk_2787651A8;
    v10 = stringCopy;
    v11 = &v12;
    [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:0 withBlock:v9];
    v6 = v13[4];
    unknownSectionIndex = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    unknownSectionIndex = [(ML3MusicLibrary *)self unknownSectionIndex];
    v6 = 0;
  }

  v7 = v6;
  v8 = unknownSectionIndex;
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

void __47__ML3MusicLibrary_SortMap__nameOrderForString___block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = *(a1 + 32);
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:v8 count:1];
  v6 = [v4 executeQuery:@"SELECT name_order withParameters:{name_section FROM sort_map WHERE name = ? LIMIT 1", v5}];;

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__ML3MusicLibrary_SortMap__nameOrderForString___block_invoke_2;
  v7[3] = &unk_2787653C8;
  v7[4] = *(a1 + 40);
  [v6 enumerateRowsWithBlock:v7];
}

void __47__ML3MusicLibrary_SortMap__nameOrderForString___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 int64ForColumnIndex:0];
  v8 = [v6 intForColumnIndex:1];

  v9 = *(*(a1 + 32) + 8);
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  *a4 = 1;
}

- (BOOL)validateSortMapUnicodeVersionOnConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [(ML3MusicLibrary *)self valueForDatabaseProperty:@"MLSortMapUnicodeVersion"];
  _systemUnicodeVersionData = [(ML3MusicLibrary *)self _systemUnicodeVersionData];
  if (v5 && ([v5 isEqualToData:_systemUnicodeVersionData] & 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v8 = os_log_create("com.apple.amp.medialibrary", "SortMap");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_ERROR, "System unicode version does not match version stored in the library -- upgrading sort map", v10, 2u);
    }

    v7 = [(ML3MusicLibrary *)self updateSortMapOnConnection:connectionCopy forceUpdateOriginals:1];
  }

  return v7;
}

- (BOOL)inTransactionUpdateSearchMapOnConnection:(id)connection
{
  connectionCopy = connection;
  if ([connectionCopy executeUpdate:{@"INSERT OR REPLACE INTO item_search (item_pid, search_title) SELECT item_extra.item_pid, sort_map.name_order from sort_map JOIN item_extra ON item_extra.title = sort_map.name"}] && objc_msgSend(connectionCopy, "executeUpdate:", @"UPDATE item_search SET search_album = IFNULL((SELECT sort_map.name_order FROM sort_map JOIN album ON album.album = sort_map.name JOIN item ON item.album_pid = album.album_pid WHERE item.item_pid = item_search.item_pid), 0)") && objc_msgSend(connectionCopy, "executeUpdate:", @"UPDATE item_search SET search_artist = IFNULL((SELECT sort_map.name_order FROM sort_map JOIN item_artist ON item_artist.item_artist = sort_map.name JOIN item ON item.item_artist_pid = item_artist.item_artist_pid WHERE item.item_pid = item_search.item_pid), 0)") && objc_msgSend(connectionCopy, "executeUpdate:", @"UPDATE item_search SET search_composer = IFNULL((SELECT sort_map.name_order FROM sort_map JOIN composer ON composer.composer = sort_map.name JOIN item ON item.composer_pid = composer.composer_pid WHERE item.item_pid = item_search.item_pid), 0)") && (objc_msgSend(connectionCopy, "executeUpdate:", @"UPDATE item_search SET search_album_artist = IFNULL((SELECT sort_map.name_order FROM sort_map JOIN album_artist ON album_artist.album_artist = sort_map.name JOIN item ON item.album_artist_pid = album_artist.album_artist_pid WHERE item.item_pid = item_search.item_pid), 0)") & 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v5 = os_log_create("com.apple.amp.medialibrary", "SortMap");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_ERROR, "failed to update item_search entries", v7, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (BOOL)inTransactionUpdateSortMapOnConnection:(id)connection forceRebuild:(BOOL)rebuild forceUpdateOriginals:(BOOL)originals
{
  originalsCopy = originals;
  rebuildCopy = rebuild;
  v152 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v143 = 0;
  v144 = &v143;
  v145 = 0x2020000000;
  v146 = 1;
  v8 = os_log_create("com.apple.amp.medialibrary", "SortMap");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "Rebuilding the sort_map table", buf, 2u);
  }

  v9 = [connectionCopy executeQuery:@"SELECT COUNT(name) FROM sqlite_master WHERE type='table' AND name = 'sort_map'"];;
  v10 = [v9 int64ValueForFirstRowAndColumn] == 1;

  if (v10)
  {
    v11 = [connectionCopy executeQuery:@"SELECT ROWID FROM sort_map LIMIT 1"];;
    hasAtLeastOneRow = [v11 hasAtLeastOneRow];

    v13 = hasAtLeastOneRow ^ 1;
  }

  else
  {
    v13 = 1;
  }

  v14 = [connectionCopy executeUpdate:@"DROP TABLE IF EXISTS sort_map_new"];
  *(v144 + 24) = v14;
  if ((v14 & 1) == 0)
  {
    v15 = os_log_create("com.apple.amp.medialibrary", "SortMap");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_ERROR, "failed to delete existing sort_map_new table", buf, 2u);
    }
  }

  v16 = +[ML3MusicLibrary sortMapNewSchemaSQL];
  v17 = [connectionCopy executeUpdate:v16];
  *(v144 + 24) = v17;

  if ((v17 & 1) == 0)
  {
    v39 = os_log_create("com.apple.amp.medialibrary", "SortMap");
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v40 = "failed to create sort_map_new";
    goto LABEL_19;
  }

  if ((v13 | rebuildCopy))
  {
    v18 = [connectionCopy executeUpdate:{@"INSERT OR IGNORE INTO sort_map_new (name, sort_key) SELECT title, iPhoneSortKey(title) FROM item_extra;"}];
    *(v144 + 24) &= v18;
    v19 = [connectionCopy executeUpdate:{@"INSERT OR IGNORE INTO sort_map_new (name, sort_key) SELECT ML3SortString(title), iPhoneSortKey(ML3SortString(title)) FROM item_extra;"}];
    *(v144 + 24) &= v19;
    v20 = [connectionCopy executeUpdate:{@"INSERT OR IGNORE INTO sort_map_new (name, sort_key) SELECT sort_title, iPhoneSortKey(sort_title) FROM item_extra;"}];
    *(v144 + 24) &= v20;
    v21 = [connectionCopy executeUpdate:{@"INSERT OR IGNORE INTO sort_map_new (name, sort_key) SELECT item_artist, iPhoneSortKey(item_artist) FROM item_artist;"}];
    *(v144 + 24) &= v21;
    v22 = [connectionCopy executeUpdate:{@"INSERT OR IGNORE INTO sort_map_new (name, sort_key) SELECT ML3SortString(item_artist), iPhoneSortKey(ML3SortString(item_artist)) FROM item_artist;"}];
    *(v144 + 24) &= v22;
    v23 = [connectionCopy executeUpdate:{@"INSERT OR IGNORE INTO sort_map_new (name, sort_key) SELECT sort_item_artist, iPhoneSortKey(sort_item_artist) FROM item_artist;"}];
    *(v144 + 24) &= v23;
    v24 = [connectionCopy executeUpdate:{@"INSERT OR IGNORE INTO sort_map_new (name, sort_key) SELECT series_name, iPhoneSortKey(series_name) FROM item_artist;"}];
    *(v144 + 24) &= v24;
    v25 = [connectionCopy executeUpdate:{@"INSERT OR IGNORE INTO sort_map_new (name, sort_key) SELECT ML3SortString(series_name), iPhoneSortKey(ML3SortString(series_name)) FROM item_artist;"}];
    *(v144 + 24) &= v25;
    v26 = [connectionCopy executeUpdate:{@"INSERT OR IGNORE INTO sort_map_new (name, sort_key) SELECT sort_series_name, iPhoneSortKey(sort_series_name) FROM item_artist;"}];
    *(v144 + 24) &= v26;
    v27 = [connectionCopy executeUpdate:{@"INSERT OR IGNORE INTO sort_map_new (name, sort_key) SELECT album_artist, iPhoneSortKey(album_artist) FROM album_artist;"}];
    *(v144 + 24) &= v27;
    v28 = [connectionCopy executeUpdate:{@"INSERT OR IGNORE INTO sort_map_new (name, sort_key) SELECT ML3SortString(album_artist), iPhoneSortKey(ML3SortString(album_artist)) FROM album_artist;"}];
    *(v144 + 24) &= v28;
    v29 = [connectionCopy executeUpdate:{@"INSERT OR IGNORE INTO sort_map_new (name, sort_key) SELECT sort_album_artist, iPhoneSortKey(sort_album_artist) FROM album_artist;"}];
    *(v144 + 24) &= v29;
    v30 = [connectionCopy executeUpdate:{@"INSERT OR IGNORE INTO sort_map_new (name, sort_key) SELECT album, iPhoneSortKey(album) FROM album;"}];
    *(v144 + 24) &= v30;
    v31 = [connectionCopy executeUpdate:{@"INSERT OR IGNORE INTO sort_map_new (name, sort_key) SELECT ML3SortString(album), iPhoneSortKey(ML3SortString(album)) FROM album;"}];
    *(v144 + 24) &= v31;
    v32 = [connectionCopy executeUpdate:{@"INSERT OR IGNORE INTO sort_map_new (name, sort_key) SELECT sort_album, iPhoneSortKey(sort_album) FROM album;"}];
    *(v144 + 24) &= v32;
    v33 = [connectionCopy executeUpdate:{@"INSERT OR IGNORE INTO sort_map_new (name, sort_key) SELECT season_number, iPhoneSortKey(season_number) FROM album;"}];
    *(v144 + 24) &= v33;
    v34 = [connectionCopy executeUpdate:{@"INSERT OR IGNORE INTO sort_map_new (name, sort_key) SELECT composer, iPhoneSortKey(composer) FROM composer;"}];
    *(v144 + 24) &= v34;
    v35 = [connectionCopy executeUpdate:{@"INSERT OR IGNORE INTO sort_map_new (name, sort_key) SELECT ML3SortString(composer), iPhoneSortKey(ML3SortString(composer)) FROM composer;"}];
    *(v144 + 24) &= v35;
    v36 = [connectionCopy executeUpdate:{@"INSERT OR IGNORE INTO sort_map_new (name, sort_key) SELECT sort_composer, iPhoneSortKey(sort_composer) FROM composer;"}];
    *(v144 + 24) &= v36;
    v37 = [connectionCopy executeUpdate:{@"INSERT OR IGNORE INTO sort_map_new (name, sort_key) SELECT genre, iPhoneSortKey(genre) FROM genre;"}];
    *(v144 + 24) &= v37;
    v38 = [connectionCopy executeUpdate:{@"INSERT OR IGNORE INTO sort_map_new (name, sort_key) SELECT name, iPhoneSortKey(name) FROM container;"}];
  }

  else
  {
    v41 = [connectionCopy executeUpdate:{@"INSERT INTO sort_map_new (name, sort_key) SELECT name, iPhoneSortKey(name) FROM sort_map;"}];
    *(v144 + 24) = v41;
    v42 = [connectionCopy executeUpdate:{@"INSERT OR IGNORE INTO sort_map_new (name, sort_key) SELECT ML3SortString(name), iPhoneSortKey(ML3SortString(name)) FROM sort_map;"}];
    *(v144 + 24) &= v42;
    v38 = [connectionCopy executeUpdate:{@"INSERT OR IGNORE INTO sort_map_new (name, sort_key) SELECT sort_composer, iPhoneSortKey(sort_composer) FROM composer WHERE sort_composer IS NOT NULL;"}];
  }

  v43 = v38 & v144[3];
  *(v144 + 24) = v43;
  if (v43)
  {
    goto LABEL_21;
  }

  v39 = os_log_create("com.apple.amp.medialibrary", "SortMap");
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v40 = "failed to populate sort_map_new";
LABEL_19:
    _os_log_impl(&dword_22D2FA000, v39, OS_LOG_TYPE_ERROR, v40, buf, 2u);
  }

LABEL_20:

  if ((v144[3] & 1) == 0)
  {
    goto LABEL_95;
  }

LABEL_21:
  v44 = [connectionCopy executeUpdate:@"UPDATE sort_map_new SET name_section = iPhoneSortSection(sort_key);"];
  if (!v44 || (v45 = [connectionCopy executeUpdate:{@"CREATE TEMPORARY TABLE sort_map_new_in_order (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, UNIQUE (name))"}], *(v144 + 24) = v45, !v45) || (v46 = objc_msgSend(connectionCopy, "executeUpdate:", @"INSERT INTO sort_map_new_in_order (name) SELECT name FROM sort_map_new ORDER BY sort_key;"), *(v144 + 24) = v46, !v46) || (v47 = objc_msgSend(connectionCopy, "executeUpdate:", @"UPDATE sort_map_new SET name_order = (SELECT sort_map_new_in_order.ROWID << 32 FROM sort_map_new_in_order WHERE sort_map_new.name = sort_map_new_in_order.name);"), *(v144 + 24) = v47, !v47) || (objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"INSERT OR REPLACE INTO sort_map_new (name, name_order, name_section, sort_key) VALUES ('', 0, %u, '')", -[ML3MusicLibrary unknownSectionIndex](self, "unknownSectionIndex")), v48 = *(v144 + 24) = v44;
  {
    v51 = os_log_create("com.apple.amp.medialibrary", "SortMap");
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v51, OS_LOG_TYPE_ERROR, "failed to re-order sort-map entries", buf, 2u);
    }

    if ((v144[3] & 1) == 0)
    {
      goto LABEL_95;
    }
  }

  if (((v13 | rebuildCopy) & 1) == 0)
  {
    v52 = [connectionCopy executeQuery:@"SELECT sort_map.name FROM sort_map JOIN sort_map_new ON sort_map.name = sort_map_new.name WHERE (sort_map_new.name_order != sort_map.name_order) OR (sort_map_new.name_section != sort_map.name_section) LIMIT 1"];;
    if ([v52 hasAtLeastOneRow])
    {
      v53 = os_log_create("com.apple.amp.medialibrary", "SortMap");
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22D2FA000, v53, OS_LOG_TYPE_ERROR, "Sort collations changed, need to recompute", buf, 2u);
      }
    }

    else
    {

      if (!originalsCopy)
      {
        goto LABEL_60;
      }
    }
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v139[0] = MEMORY[0x277D85DD0];
  v139[1] = 3221225472;
  v139[2] = __101__ML3MusicLibrary_SortMap__inTransactionUpdateSortMapOnConnection_forceRebuild_forceUpdateOriginals___block_invoke;
  v139[3] = &unk_278761DD0;
  v142 = &v143;
  v123 = dictionary;
  v140 = v123;
  v55 = connectionCopy;
  v141 = v55;
  [ML3MusicLibrary enumerateSortMapTablesUsingBlock:v139];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  array4 = [MEMORY[0x277CBEB18] array];
  v133[0] = MEMORY[0x277D85DD0];
  v133[1] = 3221225472;
  v133[2] = __101__ML3MusicLibrary_SortMap__inTransactionUpdateSortMapOnConnection_forceRebuild_forceUpdateOriginals___block_invoke_2;
  v133[3] = &unk_278761DF8;
  v121 = array;
  v134 = v121;
  selfCopy = self;
  v60 = array2;
  v136 = v60;
  v61 = array3;
  v137 = v61;
  v122 = array4;
  v138 = v122;
  [v123 enumerateKeysAndObjectsUsingBlock:v133];
  v62 = objc_alloc_init(ML3ItemTable);
  columns = [(ML3ItemTable *)v62 columns];
  v64 = [columns valueForKey:@"name"];

  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v65 = v64;
  v66 = [v65 countByEnumeratingWithState:&v129 objects:v151 count:16];
  if (v66)
  {
    v67 = *v130;
    do
    {
      for (i = 0; i != v66; ++i)
      {
        if (*v130 != v67)
        {
          objc_enumerationMutation(v65);
        }

        v69 = *(*(&v129 + 1) + 8 * i);
        if (([v60 containsObject:v69] & 1) == 0)
        {
          [v60 addObject:v69];
          v70 = [@"item." stringByAppendingString:v69];
          [v61 addObject:v70];
        }
      }

      v66 = [v65 countByEnumeratingWithState:&v129 objects:v151 count:16];
    }

    while (v66);
  }

  v71 = +[ML3MusicLibrary itemNewSchemaSQL];
  v72 = [v55 executeUpdate:v71];
  *(v144 + 24) = v72;

  if (v72)
  {
    v73 = MEMORY[0x277CCACA8];
    v74 = [v121 componentsJoinedByString:{@", "}];
    v75 = [v60 componentsJoinedByString:{@", "}];
    v76 = [v61 componentsJoinedByString:{@", "}];
    v77 = [v122 componentsJoinedByString:@" LEFT JOIN "];
    v78 = [v73 stringWithFormat:@"WITH %@ INSERT OR REPLACE INTO item_new (%@) SELECT %@ FROM item LEFT JOIN %@", v74, v75, v76, v77];;

    v79 = [v55 executeUpdate:v78];
    *(v144 + 24) = v79;
    if (v79)
    {
      v80 = [v55 executeUpdate:@"DROP TABLE IF EXISTS item;"];
      *(v144 + 24) = v80;
      if (v80)
      {
        v81 = [v55 executeUpdate:@"ALTER TABLE item_new RENAME TO item;"];
        *(v144 + 24) = v81;
        if (v81)
        {
          v127 = 0u;
          v128 = 0u;
          v125 = 0u;
          v126 = 0u;
          v82 = +[ML3MusicLibrary itemIndexSchemaSQL];
          v83 = [v82 countByEnumeratingWithState:&v125 objects:v150 count:16];
          if (v83)
          {
            v84 = *v126;
LABEL_50:
            v85 = 0;
            while (1)
            {
              if (*v126 != v84)
              {
                objc_enumerationMutation(v82);
              }

              v86 = [v55 executeUpdate:*(*(&v125 + 1) + 8 * v85)];
              *(v144 + 24) = v86;
              if ((v86 & 1) == 0)
              {
                break;
              }

              if (v83 == ++v85)
              {
                v83 = [v82 countByEnumeratingWithState:&v125 objects:v150 count:16];
                if (v83)
                {
                  goto LABEL_50;
                }

                break;
              }
            }
          }

          [v55 executeUpdate:@"ANALYZE;"];
        }
      }
    }
  }

  else
  {
    v78 = os_log_create("com.apple.amp.medialibrary", "SortMap");
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v78, OS_LOG_TYPE_ERROR, "failed to create item_new", buf, 2u);
    }
  }

LABEL_60:
  if (v144[3])
  {
    goto LABEL_100;
  }

  v87 = os_log_create("com.apple.amp.medialibrary", "SortMap");
  if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v87, OS_LOG_TYPE_ERROR, "failed to update tables with new name_orders", buf, 2u);
  }

  if (v144[3])
  {
LABEL_100:
    v88 = [connectionCopy executeUpdate:@"DROP TABLE IF EXISTS sort_map;"];
    *(v144 + 24) = v88;
    if (v88)
    {
      v89 = [connectionCopy executeUpdate:@"ALTER TABLE sort_map_new RENAME TO sort_map;"];
      *(v144 + 24) = v89;
      if (v89)
      {
        v90 = [connectionCopy executeUpdate:@"CREATE INDEX IF NOT EXISTS SortMapSortKeys ON sort_map (sort_key ASC);"];
        *(v144 + 24) = v90;
        if (v90)
        {
          goto LABEL_101;
        }
      }
    }

    v91 = os_log_create("com.apple.amp.medialibrary", "SortMap");
    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v91, OS_LOG_TYPE_ERROR, "failed to swap sort_map tables", buf, 2u);
    }

    if (v144[3])
    {
LABEL_101:
      v92 = MEMORY[0x277CCACA8];
      v93 = ML3LocalizationLanguageCanonicalIdentifier();
      v94 = [v92 stringWithFormat:@"INSERT OR REPLACE INTO _MLDatabaseProperties (key, value) VALUES ('OrderingLanguage', '%@')", v93];

      v95 = [connectionCopy executeUpdate:v94];
      *(v144 + 24) = v95;
      if (!v95 || (v96 = [connectionCopy executeUpdate:@"UPDATE item_artist SET grouping_key = iPhoneGroupingKey((CASE LENGTH(series_name) WHEN 0 THEN item_artist ELSE series_name END))"], *(v144 + 24) = v96, !v96) || (v97 = objc_msgSend(connectionCopy, "executeUpdate:", @"UPDATE album_artist SET grouping_key = iPhoneGroupingKey(album_artist), sort_order = IFNULL((SELECT name_order FROM sort_map WHERE name = IFNULL(album_artist.sort_album_artist, ML3SortString(album_artist.album_artist))), 0), sort_order_section = IFNULL((SELECT name_section FROM sort_map WHERE name = IFNULL(album_artist.sort_album_artist, ML3SortString(album_artist.album_artist))), 0), name_order = IFNULL((SELECT name_order FROM sort_map WHERE name = IFNULL(album_artist.album_artist, '')), 0)"), *(v144 + 24) = v97, !v97) || (v98 = objc_msgSend(connectionCopy, "executeUpdate:", @"UPDATE album SET grouping_key = iPhoneGroupingKey(album)"), *(v144 + 24) = v98, !v98) || (v99 = objc_msgSend(connectionCopy, "executeUpdate:", @"UPDATE composer SET grouping_key = iPhoneGroupingKey(composer)"), *(v144 + 24) = v99, !v99) || (v100 = objc_msgSend(connectionCopy, "executeUpdate:", @"UPDATE genre SET grouping_key = iPhoneGroupingKey(genre)"), *(v144 + 24) = v100, (v100 & 1) == 0))
      {
        v101 = os_log_create("com.apple.amp.medialibrary", "SortMap");
        if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22D2FA000, v101, OS_LOG_TYPE_ERROR, "failed to update grouping_key fields", buf, 2u);
        }
      }

      if (v144[3])
      {
        _systemUnicodeVersionData = [(ML3MusicLibrary *)self _systemUnicodeVersionData];
        v103 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT value FROM _MLDatabaseProperties WHERE key = '%@'", @"MLSortMapUnicodeVersion"];
        v104 = [connectionCopy executeQuery:v103];
        objectForFirstRowAndColumn = [v104 objectForFirstRowAndColumn];

        if ([_systemUnicodeVersionData isEqualToData:objectForFirstRowAndColumn])
        {
LABEL_90:
          v113 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT OR REPLACE INTO _MLDatabaseProperties (key, value) VALUES (?, ?)"];
          v149[0] = @"MLSortMapUnicodeVersion";
          v149[1] = _systemUnicodeVersionData;
          v114 = [MEMORY[0x277CBEA60] arrayWithObjects:v149 count:2];
          v115 = [connectionCopy executeUpdate:v113 withParameters:v114 error:0];
          *(v144 + 24) = v115;

          if ((v144[3] & 1) == 0)
          {
            v116 = os_log_create("com.apple.amp.medialibrary", "SortMap");
            if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_22D2FA000, v116, OS_LOG_TYPE_ERROR, "failed to update library unicode version", buf, 2u);
            }
          }

          goto LABEL_95;
        }

        v106 = os_log_create("com.apple.amp.medialibrary", "SortMap");
        if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22D2FA000, v106, OS_LOG_TYPE_ERROR, "Unicode version has changed after sort map update. Coalescing mismatched collections...", buf, 2u);
        }

        [ML3Collection removeOrphanedCollectionsInLibrary:self usingConnection:connectionCopy];
        v107 = [(ML3MusicLibrary *)self coalesceMismatchedCollectionsUsingConnection:connectionCopy];
        v108 = _ML3LogCategorySortMap();
        v109 = v108;
        if (v107)
        {
          if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v110 = "Successfully coalesced mismatched collections.";
            v111 = v109;
            v112 = OS_LOG_TYPE_DEFAULT;
LABEL_88:
            _os_log_impl(&dword_22D2FA000, v111, v112, v110, buf, 2u);
          }
        }

        else if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v110 = "failed to coalesce mismatched collections after rebuilding sort map";
          v111 = v109;
          v112 = OS_LOG_TYPE_ERROR;
          goto LABEL_88;
        }

        goto LABEL_90;
      }
    }
  }

LABEL_95:
  v117 = os_log_create("com.apple.amp.medialibrary", "SortMap");
  if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
  {
    v118 = *(v144 + 24);
    *buf = 67109120;
    v148 = v118;
    _os_log_impl(&dword_22D2FA000, v117, OS_LOG_TYPE_DEFAULT, "Finished rebuilding the sort_map table. success = %{BOOL}u", buf, 8u);
  }

  v119 = *(v144 + 24);
  _Block_object_dispose(&v143, 8);

  return v119 & 1;
}

void __101__ML3MusicLibrary_SortMap__inTransactionUpdateSortMapOnConnection_forceRebuild_forceUpdateOriginals___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    if (v12 && [v9 isEqualToString:@"item"])
    {
      v16[0] = v11;
      v16[1] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
      [*(a1 + 32) setObject:v14 forKeyedSubscript:v10];
    }

    else
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"IFNULL((SELECT sort_map_new.name_order FROM sort_map_new WHERE sort_map_new.name = (CASE %@ WHEN '' THEN NULL ELSE %@ END)), 0)", v11, v11];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE %@ SET %@ = %@", v9, v10, v14];;
      *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) executeUpdate:v15];
    }
  }
}

void __101__ML3MusicLibrary_SortMap__inTransactionUpdateSortMapOnConnection_forceRebuild_forceUpdateOriginals___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 stringByReplacingOccurrencesOfString:@"." withString:@"_"];
  v23 = [v7 stringByAppendingString:@"_view"];

  v8 = [v23 stringByAppendingString:@"_sq"];
  v9 = [v5 objectAtIndexedSubscript:0];
  v10 = [v5 objectAtIndexedSubscript:1];

  v11 = *(a1 + 32);
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%1$@(pid, name_order, name_section) AS (SELECT %3$@.pid, sort_map_new.name_order, sort_map_new.name_section FROM sort_map_new JOIN %2$@ AS %3$@ ON sort_map_new.name = %3$@.name UNION SELECT 0, 0, %4$u)", v23, v9, v8, objc_msgSend(*(a1 + 40), "unknownSectionIndex")];
  [v11 addObject:v12];

  v13 = *(a1 + 48);
  v14 = [v6 stringByReplacingOccurrencesOfString:@"item." withString:&stru_28408B690];
  [v13 addObject:v14];

  v15 = *(a1 + 56);
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.name_order", v23];
  [v15 addObject:v16];

  v17 = *(a1 + 48);
  v18 = [v6 stringByAppendingString:@"_section"];

  [v17 addObject:v18];
  v19 = *(a1 + 56);
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.name_section", v23];
  [v19 addObject:v20];

  v21 = *(a1 + 64);
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%1$@ ON %2$@ = %1$@.pid", v23, v10];
  [v21 addObject:v22];
}

- (BOOL)updateSortMapOnConnection:(id)connection forceUpdateOriginals:(BOOL)originals
{
  connectionCopy = connection;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__ML3MusicLibrary_SortMap__updateSortMapOnConnection_forceUpdateOriginals___block_invoke;
  v10[3] = &unk_278761DA8;
  v10[4] = self;
  v7 = connectionCopy;
  originalsCopy = originals;
  v11 = v7;
  v12 = &v14;
  [v7 performTransactionWithBlock:v10];
  v8 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v8;
}

uint64_t __75__ML3MusicLibrary_SortMap__updateSortMapOnConnection_forceUpdateOriginals___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) inTransactionUpdateSortMapOnConnection:*(a1 + 40) forceUpdateOriginals:*(a1 + 56)])
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) inTransactionUpdateSearchMapOnConnection:*(a1 + 40)];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  return *(*(*(a1 + 48) + 8) + 24);
}

- (id)genreForGenre:(id)genre
{
  genreCopy = genre;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__7680;
  v17 = __Block_byref_object_dispose__7681;
  v18 = 0;
  v5 = [(ML3MusicLibrary *)self groupingKeyForString:genreCopy];
  v6 = v5;
  if (v5)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __52__ML3MusicLibrary_ML3GenreAdditions__genreForGenre___block_invoke;
    v9[3] = &unk_278763398;
    selfCopy = self;
    v12 = &v13;
    v10 = v5;
    [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:0 withBlock:v9];
  }

  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __52__ML3MusicLibrary_ML3GenreAdditions__genreForGenre___block_invoke(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = a1[4];
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v9 count:1];
  v6 = [v4 executeQuery:@"SELECT ROWID FROM genre WHERE (grouping_key = ?)" withParameters:{v5, v9, v10}];

  v7 = [v6 int64ValueForFirstRowAndColumn];
  if (v7)
  {
    v8 = [(ML3Entity *)ML3Genre newWithPersistentID:v7 inLibrary:a1[5]];
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong((*(a1[6] + 8) + 40), v8);
  if (v7)
  {
  }
}

- (id)composerForComposerName:(id)name
{
  nameCopy = name;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__9512;
  v17 = __Block_byref_object_dispose__9513;
  v18 = 0;
  v5 = [(ML3MusicLibrary *)self groupingKeyForString:nameCopy];
  v6 = v5;
  if (v5)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __65__ML3MusicLibrary_ML3ComposerAdditions__composerForComposerName___block_invoke;
    v9[3] = &unk_278763398;
    selfCopy = self;
    v12 = &v13;
    v10 = v5;
    [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:0 withBlock:v9];
  }

  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __65__ML3MusicLibrary_ML3ComposerAdditions__composerForComposerName___block_invoke(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = a1[4];
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v9 count:1];
  v6 = [v4 executeQuery:@"SELECT ROWID FROM composer WHERE (grouping_key = ?)" withParameters:{v5, v9, v10}];

  v7 = [v6 int64ValueForFirstRowAndColumn];
  if (v7)
  {
    v8 = [(ML3Entity *)ML3Composer newWithPersistentID:v7 inLibrary:a1[5]];
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong((*(a1[6] + 8) + 40), v8);
  if (v7)
  {
  }
}

- (id)albumArtistForEffectiveAlbumArtistName:(id)name
{
  nameCopy = name;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__9635;
  v17 = __Block_byref_object_dispose__9636;
  v18 = 0;
  v5 = [(ML3MusicLibrary *)self groupingKeyForString:nameCopy];
  v6 = v5;
  if (v5)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __83__ML3MusicLibrary_ML3AlbumArtistAdditions__albumArtistForEffectiveAlbumArtistName___block_invoke;
    v9[3] = &unk_278763398;
    selfCopy = self;
    v12 = &v13;
    v10 = v5;
    [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:0 withBlock:v9];
  }

  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __83__ML3MusicLibrary_ML3AlbumArtistAdditions__albumArtistForEffectiveAlbumArtistName___block_invoke(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = a1[4];
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v9 count:1];
  v6 = [v4 executeQuery:@"SELECT ROWID FROM album_artist WHERE (grouping_key = ?)" withParameters:{v5, v9, v10}];

  v7 = [v6 int64ValueForFirstRowAndColumn];
  if (v7)
  {
    v8 = [(ML3Entity *)ML3AlbumArtist newWithPersistentID:v7 inLibrary:a1[5]];
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong((*(a1[6] + 8) + 40), v8);
  if (v7)
  {
  }
}

- (void)_updateSystemPlaylist:(id)playlist withName:(id)name usingConnection:(id)connection
{
  v23[2] = *MEMORY[0x277D85DE8];
  playlistCopy = playlist;
  nameCopy = name;
  v9 = nameCopy;
  if (playlistCopy && nameCopy)
  {
    v23[0] = nameCopy;
    v10 = MEMORY[0x277CCABB0];
    connectionCopy = connection;
    v12 = [v10 numberWithLongLong:{objc_msgSend(playlistCopy, "persistentID")}];
    v23[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    v18 = 0;
    v14 = [connectionCopy executeUpdate:@"UPDATE container SET name = ? WHERE container_pid = ?" withParameters:v13 error:&v18];

    v15 = v18;
    if ((v14 & 1) == 0)
    {
      v16 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        persistentID = [playlistCopy persistentID];
        *buf = 134218242;
        v20 = persistentID;
        v21 = 2114;
        v22 = v9;
        _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_ERROR, "Failed to update name of container %lld (%{public}@)", buf, 0x16u);
      }
    }
  }
}

- (void)updateOrderingLanguagesForCurrentLanguage
{
  v3 = ML3LocalizationLanguageCanonicalIdentifier();
  if (!v3)
  {
    __assert_rtn("[ML3MusicLibrary(ProcessingAdditions) updateOrderingLanguagesForCurrentLanguage]", "ML3MusicLibraryProcessingAdditions.m", 50, "currentLanaguage");
  }

  v4 = v3;
  [(ML3MusicLibrary *)self setValue:v3 forDatabaseProperty:@"OrderingLanguage"];
}

- (BOOL)updateSystemPlaylistNamesForCurrentLanguageUsingConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"GENIUS_PLAYLIST_NAME" value:&stru_28408B690 table:@"MLLocalizable"];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_28408B690;
  }

  v9 = v8;

  v10 = [ML3ComparisonPredicate predicateWithProperty:@"(container.is_container_type_active_target AND container.smart_is_genius)" equalToInteger:1];
  v11 = [(ML3Entity *)ML3Container anyInLibrary:self predicate:v10];

  [(ML3MusicLibrary *)self _updateSystemPlaylist:v11 withName:v9 usingConnection:connectionCopy];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"ON_THE_GO_PLAYLIST_NAME" value:&stru_28408B690 table:@"MLLocalizable"];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &stru_28408B690;
  }

  v16 = v15;

  v17 = [ML3ComparisonPredicate predicateWithProperty:@"(container.is_container_type_active_target AND (container.container_type = 2))" equalToInteger:1];
  v18 = [(ML3Entity *)ML3Container anyInLibrary:self predicate:v17];

  [(ML3MusicLibrary *)self _updateSystemPlaylist:v18 withName:v16 usingConnection:connectionCopy];
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"PLAYBACK_HISTORY_PLAYLIST_NAME" value:&stru_28408B690 table:@"MLLocalizable"];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = &stru_28408B690;
  }

  v23 = v22;

  currentDevicePlaybackHistoryPlaylist = [(ML3MusicLibrary *)self currentDevicePlaybackHistoryPlaylist];

  [(ML3MusicLibrary *)self _updateSystemPlaylist:currentDevicePlaybackHistoryPlaylist withName:v23 usingConnection:connectionCopy];
  [ML3Container updateBuiltInSmartPlaylistNamesForCurrentLanguageInLibrary:self];

  return 1;
}

- (int64_t)_clearPurgeableTracksOfAmount:(int64_t)amount withUrgency:(unint64_t)urgency includeCloudAssets:(BOOL)assets includeAutoFilledTracks:(BOOL)tracks
{
  tracksCopy = tracks;
  assetsCopy = assets;
  v36 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __121__ML3MusicLibrary_CacheManagement___clearPurgeableTracksOfAmount_withUrgency_includeCloudAssets_includeAutoFilledTracks___block_invoke;
  v26[3] = &unk_2787638A0;
  v28 = &v30;
  v26[4] = self;
  v12 = v11;
  v27 = v12;
  amountCopy = amount;
  [(ML3MusicLibrary *)self _enumeratePurgeableTracksForUrgency:urgency includeAutoFilledTracks:tracksCopy includeCloudAssets:assetsCopy usingBlock:v26];
  if ([v12 count] && !+[ML3Track unlinkRedownloadableAssetsFromLibrary:persistentIDs:](ML3Track, "unlinkRedownloadableAssetsFromLibrary:persistentIDs:", self, v12))
  {
    v14 = os_log_create("com.apple.amp.medialibrary", "CacheManagement");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_ERROR, "Failed to purge redownloadable assets", buf, 2u);
    }

    _clearAllCloudAssets = [(ML3MusicLibrary *)self _clearAllCloudAssets];
    v31[3] += _clearAllCloudAssets;
    v13 = [ML3Track unlinkRedownloadableAssetsFromLibrary:self persistentIDs:v12];
  }

  else
  {
    v13 = 1;
  }

  if (urgency == 3 && v13 && [v12 count])
  {
    v16 = [&stru_28408B690 stringByPaddingToLength:2 * objc_msgSend(v12 withString:"count") - 1 startingAtIndex:{@", ?", 1}];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE item SET keep_local=%d WHERE item_pid IN (%@)", 0, v16];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __121__ML3MusicLibrary_CacheManagement___clearPurgeableTracksOfAmount_withUrgency_includeCloudAssets_includeAutoFilledTracks___block_invoke_92;
    v23[3] = &unk_278764670;
    v18 = v17;
    v24 = v18;
    v25 = v12;
    [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:1 withBlock:v23];
  }

  v19 = os_log_create("com.apple.amp.medialibrary", "CacheManagement");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v31[3];
    *buf = 134217984;
    v35 = v20;
    _os_log_impl(&dword_22D2FA000, v19, OS_LOG_TYPE_DEFAULT, "Removed %lli bytes of track data", buf, 0xCu);
  }

  v21 = v31[3];
  _Block_object_dispose(&v30, 8);
  return v21;
}

uint64_t __121__ML3MusicLibrary_CacheManagement___clearPurgeableTracksOfAmount_withUrgency_includeCloudAssets_includeAutoFilledTracks___block_invoke(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  *(*(a1[6] + 8) + 24) += [v7 longLongValue];
  v8 = [(ML3Entity *)[ML3Track alloc] initWithPersistentID:a2 inLibrary:a1[4]];
  v9 = os_log_create("com.apple.amp.medialibrary", "CacheManagement");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(ML3Entity *)v8 valueForProperty:@"item_artist.item_artist"];
    v11 = [(ML3Entity *)v8 valueForProperty:@"item_extra.title"];
    v15 = 138543874;
    v16 = v10;
    v17 = 2114;
    v18 = v11;
    v19 = 2048;
    v20 = [v7 longLongValue];
    _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_DEFAULT, "Purging %{public}@ - %{public}@ (%lli bytes)", &v15, 0x20u);
  }

  v12 = a1[5];
  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  [v12 addObject:v13];

  if (*(*(a1[6] + 8) + 24) >= a1[7])
  {
    *a4 = 1;
  }

  return 0;
}

void __121__ML3MusicLibrary_CacheManagement___clearPurgeableTracksOfAmount_withUrgency_includeCloudAssets_includeAutoFilledTracks___block_invoke_92(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7 = 0;
  v4 = [a2 executeUpdate:v2 withParameters:v3 error:&v7];
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "CacheManagement");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v9 = v5;
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_ERROR, "failed to mark purged tracks as keep-local off. err=%{public}@", buf, 0xCu);
    }
  }
}

- (int64_t)_clearOrphanedAssetsOfAmount:(int64_t)amount withUrgency:(unint64_t)urgency
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = os_log_create("com.apple.amp.medialibrary", "CacheManagement");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 67109120;
    LODWORD(v17) = urgency;
    _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_DEFAULT, "Clearing orphaned assets with urgency %d", &v16, 8u);
  }

  if (urgency < 2)
  {
    v9 = 0;
  }

  else
  {
    _cloudAssetsTotalSize = [(ML3MusicLibrary *)self _cloudAssetsTotalSize];
    [(ML3MusicLibrary *)self removeOrphanedTracksOnlyInCaches:1];
    v9 = _cloudAssetsTotalSize - [(ML3MusicLibrary *)self _cloudAssetsTotalSize];
    v10 = os_log_create("com.apple.amp.medialibrary", "CacheManagement");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134217984;
      v17 = v9;
      _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "Removed %lld bytes of orphaned tracks", &v16, 0xCu);
    }

    if (v9 < amount)
    {
      totalSizeForArtwork = [(ML3MusicLibrary *)self totalSizeForArtwork];
      [(ML3MusicLibrary *)self cleanupArtworkWithOptions:30];
      v12 = totalSizeForArtwork - [(ML3MusicLibrary *)self totalSizeForArtwork];
      v9 += v12;
      v13 = os_log_create("com.apple.amp.medialibrary", "CacheManagement");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 134217984;
        v17 = v12;
        _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_DEFAULT, "Removed %lld bytes of orphaned artwork", &v16, 0xCu);
      }
    }
  }

  v14 = os_log_create("com.apple.amp.medialibrary", "CacheManagement");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134217984;
    v17 = v9;
    _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_DEFAULT, "Removed %lld bytes of orphaned assets", &v16, 0xCu);
  }

  return v9;
}

- (int64_t)_clearAllCloudAssets
{
  v23[2] = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.amp.medialibrary", "CacheManagement");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "Purging all cloud assets", buf, 2u);
  }

  _cloudAssetsTotalSize = [(ML3MusicLibrary *)self _cloudAssetsTotalSize];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [(ML3MusicLibrary *)self pathForBaseLocationPath:200];
  v23[0] = v6;
  v7 = [(ML3MusicLibrary *)self pathForBaseLocationPath:100];
  v23[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [defaultManager removeItemAtPath:*(*(&v16 + 1) + 8 * v13++) error:{0, v16}];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v11);
  }

  v14 = os_log_create("com.apple.amp.medialibrary", "CacheManagement");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = _cloudAssetsTotalSize;
    _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_DEFAULT, "Removed %lld bytes clearing cloud assets", buf, 0xCu);
  }

  return _cloudAssetsTotalSize;
}

- (int64_t)_clearDatabaseFileFreeSpace
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = os_log_create("com.apple.amp.medialibrary", "CacheManagement");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&dword_22D2FA000, v2, OS_LOG_TYPE_DEFAULT, "Compacting the database file", &v5, 2u);
  }

  v3 = os_log_create("com.apple.amp.medialibrary", "CacheManagement");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = 0;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "Removed %lld bytes compacting the db", &v5, 0xCu);
  }

  return 0;
}

- (id)_notInKeepLocalCollectionPredicate
{
  if (_notInKeepLocalCollectionPredicate_onceToken[0] != -1)
  {
    dispatch_once(_notInKeepLocalCollectionPredicate_onceToken, &__block_literal_global_13850);
  }

  v3 = _notInKeepLocalCollectionPredicate_predicate;

  return v3;
}

void __70__ML3MusicLibrary_CacheManagement___notInKeepLocalCollectionPredicate__block_invoke()
{
  v16[6] = *MEMORY[0x277D85DE8];
  v16[0] = @"album_artist.keep_local";
  v16[1] = @"item_artist.keep_local";
  v16[2] = @"album.keep_local";
  v16[3] = @"composer.keep_local";
  v16[4] = @"genre.keep_local";
  v16[5] = @"keep_local";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:6];
  v1 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = v0;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [ML3ComparisonPredicate predicateWithProperty:*(*(&v11 + 1) + 8 * v6) value:&unk_2840C93F8 comparison:1 caseInsensitive:0 treatNullAsString:&stru_28408B690, v11];
        [v1 addObject:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v8 = [(ML3CompoundPredicate *)ML3AnyCompoundPredicate predicateMatchingPredicates:v1];
  v9 = [(ML3UnaryPredicate *)ML3NegationPredicate predicateWithPredicate:v8];
  v10 = _notInKeepLocalCollectionPredicate_predicate;
  _notInKeepLocalCollectionPredicate_predicate = v9;
}

- (id)_allKeepLocalPlaylistTracks
{
  v3 = [ML3ComparisonPredicate predicateWithProperty:@"keep_local" value:&unk_2840C93E0 comparison:3];
  v4 = [(ML3Entity *)ML3Container queryWithLibrary:self predicate:v3];
  v5 = objc_opt_new();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__ML3MusicLibrary_CacheManagement___allKeepLocalPlaylistTracks__block_invoke;
  v10[3] = &unk_278763D00;
  v10[4] = self;
  v6 = v5;
  v11 = v6;
  [v4 enumeratePersistentIDsUsingBlock:v10];
  v7 = v11;
  v8 = v6;

  return v6;
}

void __63__ML3MusicLibrary_CacheManagement___allKeepLocalPlaylistTracks__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [(ML3Entity *)ML3Container newWithPersistentID:a2 inLibrary:*(a1 + 32)];
  v4 = [ML3Track containerQueryWithContainer:v3];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__ML3MusicLibrary_CacheManagement___allKeepLocalPlaylistTracks__block_invoke_2;
  v5[3] = &unk_278765BD8;
  v6 = *(a1 + 40);
  [v4 enumeratePersistentIDsUsingBlock:v5];
}

void __63__ML3MusicLibrary_CacheManagement___allKeepLocalPlaylistTracks__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  [v2 addObject:v3];
}

- (id)_purgeableTrackPredicateWithUrgency:(unint64_t)urgency includeAutoFilledTracks:(BOOL)tracks includeCloudAssets:(BOOL)assets
{
  assetsCopy = assets;
  v59 = *MEMORY[0x277D85DE8];
  v48 = [ML3ComparisonPredicate predicateWithProperty:@"item_stats.chosen_by_auto_fill" equalToInteger:1];
  _notInKeepLocalCollectionPredicate = [(ML3MusicLibrary *)self _notInKeepLocalCollectionPredicate];
  v10 = [ML3ComparisonPredicate predicateWithProperty:@"(item.remote_location_id >= 50 AND item.remote_location_id < 300)" equalToInteger:1];
  if (assetsCopy)
  {
    v11 = 6;
  }

  else
  {
    v11 = 1;
  }

  v12 = [ML3ComparisonPredicate predicateWithProperty:@"base_location_id" value:&unk_2840C9398 comparison:v11];
  [ML3ComparisonPredicate predicateWithProperty:@"keep_local" value:&unk_2840C93E0 comparison:6];
  v57[0] = v10;
  v57[1] = v12;
  v58 = v57[2] = _notInKeepLocalCollectionPredicate;
  v47 = v58;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:4];
  v14 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v13];

  if (tracks)
  {
    v56[0] = v48;
    v56[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
    v16 = [(ML3CompoundPredicate *)ML3AnyCompoundPredicate predicateMatchingPredicates:v15];
  }

  else
  {
    v16 = v14;
  }

  v17 = 0x27875C000uLL;
  v45 = v16;
  v46 = v14;
  if (urgency - 1 >= 2)
  {
    if (urgency == 3)
    {
      if (MSVDeviceIsWatch())
      {
        v18 = 0;
      }

      else
      {
        v18 = v16;
      }
    }

    else
    {
      v31 = v12;
      v32 = [ML3ComparisonPredicate predicateWithProperty:@"keep_local" equalToInt64:3];
      v52[0] = v32;
      v52[1] = _notInKeepLocalCollectionPredicate;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
      v34 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v33];

      if (tracks)
      {
        v51[0] = v48;
        v51[1] = v34;
        v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
        v18 = [(ML3CompoundPredicate *)ML3AnyCompoundPredicate predicateMatchingPredicates:v35];
      }

      else
      {
        v18 = v34;
      }

      v12 = v31;
    }
  }

  else
  {
    v18 = v16;
    if (urgency == 1)
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v20 = [MEMORY[0x277CCABB0] numberWithDouble:v19 + -3600.0];
      v21 = [ML3ComparisonPredicate predicateWithProperty:@"date_downloaded" value:v20 comparison:5];

      v55[0] = v18;
      v55[1] = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
      v23 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v22];

      v18 = v23;
    }

    if (MSVDeviceIsWatch())
    {
      v43 = [ML3ComparisonPredicate predicateWithProperty:@"item_extra.is_audible_audio_book" equalToInt64:1];
      v24 = [ML3ComparisonPredicate predicateWithProperty:@"item_stats.bookmark_time_ms" equalToInt64:0];
      v25 = [ML3ComparisonPredicate predicateWithProperty:@"keep_local" equalToInt64:2];
      v54[0] = v43;
      v54[1] = v25;
      v54[2] = v24;
      [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:3];
      v26 = v44 = v10;
      v27 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v26];

      v53[0] = v18;
      v53[1] = v27;
      [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
      v29 = v28 = v12;
      v30 = [(ML3CompoundPredicate *)ML3AnyCompoundPredicate predicateMatchingPredicates:v29];

      v12 = v28;
      v18 = v30;
      v17 = 0x27875C000;
      v10 = v44;
    }
  }

  v36 = [ML3ComparisonPredicate predicateWithProperty:@"base_location_id" value:&unk_2840C93E0 comparison:2];
  v37 = [ML3ComparisonPredicate predicateWithProperty:@"item_stats.is_alarm" equalToInteger:0];
  v38 = v37;
  v39 = *(v17 + 744);
  if (v18)
  {
    v49[0] = v18;
    v49[1] = v37;
    v49[2] = v36;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:3];
    v41 = [v39 predicateMatchingPredicates:v40];
  }

  else
  {
    v50[0] = v37;
    v50[1] = v36;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
    v41 = [v39 predicateMatchingPredicates:v40];
  }

  return v41;
}

- (void)_enumeratePurgeableTracksForUrgency:(unint64_t)urgency includeAutoFilledTracks:(BOOL)tracks includeCloudAssets:(BOOL)assets usingBlock:(id)block
{
  assetsCopy = assets;
  tracksCopy = tracks;
  v27[2] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v11 = [(ML3MusicLibrary *)self _purgeableTrackPredicateWithUrgency:urgency includeAutoFilledTracks:tracksCopy includeCloudAssets:assetsCopy];
  if (v11)
  {
    v12 = [MEMORY[0x277CBEA60] arrayWithObject:@"item_extra.file_size"];
    v13 = [ML3OrderingTerm orderingTermWithProperty:@"base_location_id" direction:1];
    v14 = [ML3OrderingTerm orderingTermWithProperty:@"item_stats.date_accessed" direction:1];
    v27[0] = v13;
    v27[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v16 = [(ML3Entity *)ML3Track unrestrictedAllItemsQueryWithlibrary:self predicate:v11 orderingTerms:v15];

    v17 = [MEMORY[0x277CBEB98] set];
    if (![(ML3MusicLibrary *)self _unmanagedPurgeShouldPurgeKeepLocalTracksForUrgency:urgency])
    {
      _allKeepLocalPlaylistTracks = [(ML3MusicLibrary *)self _allKeepLocalPlaylistTracks];

      v17 = _allKeepLocalPlaylistTracks;
    }

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __126__ML3MusicLibrary_CacheManagement___enumeratePurgeableTracksForUrgency_includeAutoFilledTracks_includeCloudAssets_usingBlock___block_invoke;
    v22[3] = &unk_278763840;
    v23 = v16;
    v24 = v12;
    v25 = v17;
    v26 = blockCopy;
    v19 = v17;
    v20 = v12;
    v21 = v16;
    [(ML3MusicLibrary *)self performReadOnlyDatabaseTransactionWithBlock:v22];
  }
}

uint64_t __126__ML3MusicLibrary_CacheManagement___enumeratePurgeableTracksForUrgency_includeAutoFilledTracks_includeCloudAssets_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __126__ML3MusicLibrary_CacheManagement___enumeratePurgeableTracksForUrgency_includeAutoFilledTracks_includeCloudAssets_usingBlock___block_invoke_2;
  v8[3] = &unk_278763818;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = &v12;
  [v4 enumeratePersistentIDsAndProperties:v5 usingBlock:v8];
  v6 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v6;
}

void __126__ML3MusicLibrary_CacheManagement___enumeratePurgeableTracksForUrgency_includeAutoFilledTracks_includeCloudAssets_usingBlock___block_invoke_2(void *a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v9 = a1[4];
  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  LOBYTE(v9) = [v9 containsObject:v10];

  if ((v9 & 1) == 0)
  {
    v12 = 0;
    v11 = a1[5];
    if (v11)
    {
      LOBYTE(v11) = (*(v11 + 16))(v11, a2, *a3, &v12);
    }

    if (a5)
    {
      *a5 = v12;
    }

    *(*(a1[6] + 8) + 24) |= v11;
  }
}

- (int64_t)_purgeableTracksTotalSizeWithUrgency:(unint64_t)urgency includeAutoFilledTracks:(BOOL)tracks
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __97__ML3MusicLibrary_CacheManagement___purgeableTracksTotalSizeWithUrgency_includeAutoFilledTracks___block_invoke;
  v8[3] = &unk_278763610;
  v8[4] = &v9;
  [(ML3MusicLibrary *)self _enumeratePurgeableTracksForUrgency:urgency includeAutoFilledTracks:tracks includeCloudAssets:1 usingBlock:v8];
  v4 = os_log_create("com.apple.amp.medialibrary", "CacheManagement");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v10[3];
    *buf = 134217984;
    v14 = v5;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "Purgeable tracks size: %lld bytes", buf, 0xCu);
  }

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (void)_enumeratePurgeableAlbumTracksForUrgency:(unint64_t)urgency usingBlock:(id)block
{
  blockCopy = block;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = [(ML3MusicLibrary *)self _minimumPurgeableStorageForUrgency:urgency];
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = [(ML3MusicLibrary *)self totalSizeForAllNonCacheTracks];
  _purgeableNonCachedItemsPredicateSQL = [(ML3MusicLibrary *)self _purgeableNonCachedItemsPredicateSQL];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT item_pid, item_extra.file_size FROM item JOIN item_stats USING (item_pid) JOIN item_extra USING (item_pid) WHERE album_pid = ? AND (%@)", _purgeableNonCachedItemsPredicateSQL];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__ML3MusicLibrary_CacheManagement___enumeratePurgeableAlbumTracksForUrgency_usingBlock___block_invoke;
  v11[3] = &unk_2787637E8;
  v11[4] = self;
  urgencyCopy = urgency;
  v9 = v8;
  v12 = v9;
  v14 = v17;
  v15 = v18;
  v10 = blockCopy;
  v13 = v10;
  [(ML3MusicLibrary *)self performReadOnlyDatabaseTransactionWithBlock:v11];

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v18, 8);
}

uint64_t __88__ML3MusicLibrary_CacheManagement___enumeratePurgeableAlbumTracksForUrgency_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v4 = [*(a1 + 32) _purgeableAlbumsQuerySQLWithUrgency:*(a1 + 72)];
  v5 = [v3 executeQuery:v4];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__ML3MusicLibrary_CacheManagement___enumeratePurgeableAlbumTracksForUrgency_usingBlock___block_invoke_2;
  v13[3] = &unk_2787637C0;
  v6 = v3;
  v14 = v6;
  v7 = *(a1 + 40);
  v8 = *(a1 + 64);
  v15 = v7;
  v17 = v8;
  v18 = &v19;
  v12 = *(a1 + 48);
  v9 = v12;
  v16 = v12;
  [v5 enumerateRowsWithBlock:v13];
  v10 = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return v10;
}

void __88__ML3MusicLibrary_CacheManagement___enumeratePurgeableAlbumTracksForUrgency_usingBlock___block_invoke_2(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v24 = a3;
  v8 = [v7 int64ForColumnIndex:0];
  v9 = objc_opt_new();
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v10 = a1[4];
  v11 = a1[5];
  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:v8];
  v32[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
  v14 = [v10 executeQuery:v11 withParameters:v13];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __88__ML3MusicLibrary_CacheManagement___enumeratePurgeableAlbumTracksForUrgency_usingBlock___block_invoke_3;
  v25[3] = &unk_278765180;
  v15 = v9;
  v26 = v15;
  v27 = &v28;
  [v14 enumerateRowsWithBlock:v25];
  v16 = *(a1[7] + 8);
  v17 = v29;
  v18 = *(v16 + 24) - v29[3];
  if (v18 >= *(*(a1[8] + 8) + 24))
  {
    *(v16 + 24) = v18;
    v19 = a1[6];
    v20 = [MEMORY[0x277CCABB0] numberWithLongLong:v17[3]];
    v21 = (*(v19 + 16))(v19, v8, v15, v20, a4);
    v22 = *(a1[9] + 8);
    if (v21)
    {
      v23 = *(v22 + 24);
    }

    else
    {
      v23 = 0;
    }

    *(v22 + 24) = v23 & 1;
  }

  else
  {
    *a4 = 1;
  }

  _Block_object_dispose(&v28, 8);
}

void __88__ML3MusicLibrary_CacheManagement___enumeratePurgeableAlbumTracksForUrgency_usingBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 int64ForColumnIndex:0];
  v5 = [v3 int64ForColumnIndex:1];

  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:v4];
  [v6 addObject:v7];

  *(*(*(a1 + 40) + 8) + 24) += v5;
}

- (void)_enumeratePurgeableStreamedTracksForUrgency:(unint64_t)urgency usingBlock:(id)block
{
  v26[2] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v7 = [ML3ComparisonPredicate predicateWithProperty:@"(item.base_location_id BETWEEN 100 AND 200)" equalToInteger:1];
  if (urgency <= 1)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:v8 + -3600.0];
    v10 = [ML3ComparisonPredicate predicateWithProperty:@"date_downloaded" value:v9 comparison:5];

    v26[0] = v7;
    v26[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    v12 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v11];

    v7 = v12;
  }

  v13 = [ML3ComparisonPredicate predicateWithProperty:@"keep_local" equalToInteger:3];
  v25[0] = v7;
  v25[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v15 = [(ML3CompoundPredicate *)ML3AnyCompoundPredicate predicateMatchingPredicates:v14];

  v16 = [MEMORY[0x277CBEA60] arrayWithObject:@"item_extra.file_size"];
  v17 = [(ML3Entity *)ML3Track queryWithLibrary:self predicate:v15];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __91__ML3MusicLibrary_CacheManagement___enumeratePurgeableStreamedTracksForUrgency_usingBlock___block_invoke;
  v21[3] = &unk_278763798;
  v22 = v17;
  v23 = v16;
  v24 = blockCopy;
  v18 = blockCopy;
  v19 = v16;
  v20 = v17;
  [(ML3MusicLibrary *)self performReadOnlyDatabaseTransactionWithBlock:v21];
}

uint64_t __91__ML3MusicLibrary_CacheManagement___enumeratePurgeableStreamedTracksForUrgency_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __91__ML3MusicLibrary_CacheManagement___enumeratePurgeableStreamedTracksForUrgency_usingBlock___block_invoke_2;
  v8[3] = &unk_278763770;
  v10 = &v11;
  v9 = *(a1 + 48);
  [v4 enumeratePersistentIDsAndProperties:v5 usingBlock:v8];
  v6 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __91__ML3MusicLibrary_CacheManagement___enumeratePurgeableStreamedTracksForUrgency_usingBlock___block_invoke_2(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  if (result)
  {
    v4 = *(v3 + 24);
  }

  else
  {
    v4 = 0;
  }

  *(v3 + 24) = v4 & 1;
  return result;
}

- (id)_purgeableAlbumsQuerySQLWithUrgency:(unint64_t)urgency
{
  v5 = [(ML3MusicLibrary *)self _nonPurgeableAlbumsQuerySQLWithUrgency:?];
  v6 = [(ML3MusicLibrary *)self _purgeableItemsPredicateSQLWithUrgency:urgency];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT album_pid, max(max(date_accessed), max(date_added), max(date_played)) AS date_accessed, max(liked_state = 2) AS liked_state FROM item JOIN item_stats USING (item_pid) JOIN item_extra USING (item_pid) WHERE album_pid NOT IN (%@) AND (%@) GROUP BY album_pid ORDER BY liked_state, date_accessed", v5, v6];

  return v7;
}

- (id)_nonPurgeableAlbumsQuerySQLWithUrgency:(unint64_t)urgency
{
  if (urgency >= 2)
  {
    return @"SELECT DISTINCT album_pid FROM item JOIN item_store USING (item_pid) JOIN item_extra USING (item_pid) JOIN item_stats USING (item_pid) WHERE (item.base_location_id > 0 AND item.remote_location_id < 200) OR (item.base_location_id = 0 AND item.keep_local_status = 1)";
  }

  else
  {
    return @"SELECT DISTINCT album_pid FROM item JOIN item_store USING (item_pid) JOIN item_extra USING (item_pid) JOIN item_stats USING (item_pid) WHERE (item.base_location_id > 0 AND (item.remote_location_id < 200 OR item_stats.liked_state = 2)) OR (item.base_location_id = 0 AND item.keep_local_status = 1)";
  }
}

- (unint64_t)_managedClearPurgeableTracksOfAmount:(unint64_t)amount urgency:(unint64_t)urgency
{
  v45 = *MEMORY[0x277D85DE8];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  array = [MEMORY[0x277CBEB18] array];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __81__ML3MusicLibrary_CacheManagement___managedClearPurgeableTracksOfAmount_urgency___block_invoke;
  v29[3] = &unk_278763660;
  v8 = array;
  v30 = v8;
  v31 = &v33;
  amountCopy = amount;
  [(ML3MusicLibrary *)self _enumeratePurgeableStreamedTracksForUrgency:urgency usingBlock:v29];
  v9 = [ML3Track unlinkRedownloadableAssetsFromLibrary:self persistentIDs:v8];
  v10 = os_log_create("com.apple.amp.medialibrary", "CacheManagement");
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v34[3];
      *buf = 134218242;
      *&buf[4] = v12;
      *&buf[12] = 2114;
      *&buf[14] = v8;
      _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, "Purged %llu bytes of streaming assets from tracks %{public}@", buf, 0x16u);
    }

    v13 = v34[3];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v8;
      _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_ERROR, "Failed to purge streaming assets %{public}@", buf, 0xCu);
    }

    v13 = 0;
    v34[3] = 0;
  }

  if (v13 < amount)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v42 = __Block_byref_object_copy__13882;
    v43 = __Block_byref_object_dispose__13883;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__13882;
    v27 = __Block_byref_object_dispose__13883;
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = __Block_byref_object_copy__13882;
    v21[4] = __Block_byref_object_dispose__13883;
    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __81__ML3MusicLibrary_CacheManagement___managedClearPurgeableTracksOfAmount_urgency___block_invoke_38;
    v20[3] = &unk_2787636B8;
    v20[4] = self;
    v20[5] = v21;
    v20[6] = &v23;
    v20[7] = buf;
    v20[8] = urgency;
    [(ML3MusicLibrary *)self _enumeratePurgeableAlbumTracksForUrgency:urgency usingBlock:v20];
    allKeys = [v24[5] allKeys];
    v15 = os_log_create("com.apple.amp.medialibrary", "CacheManagement_Oversize");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [allKeys count];
      *v37 = 134218242;
      v38 = v16;
      v39 = 2114;
      v40 = allKeys;
      _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_DEFAULT, "Found %lu albums to purge %{public}@", v37, 0x16u);
    }

    v17 = v24[5];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __81__ML3MusicLibrary_CacheManagement___managedClearPurgeableTracksOfAmount_urgency___block_invoke_40;
    v19[3] = &unk_278763738;
    v19[4] = self;
    v19[5] = v21;
    v19[6] = &v33;
    v19[7] = buf;
    v19[8] = urgency;
    v19[9] = amount;
    [v17 enumerateKeysAndObjectsUsingBlock:v19];
    v13 = v34[3];

    _Block_object_dispose(v21, 8);
    _Block_object_dispose(&v23, 8);

    _Block_object_dispose(buf, 8);
  }

  _Block_object_dispose(&v33, 8);
  return v13;
}

uint64_t __81__ML3MusicLibrary_CacheManagement___managedClearPurgeableTracksOfAmount_urgency___block_invoke(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a1[4];
  v8 = MEMORY[0x277CCABB0];
  v9 = a3;
  v10 = [v8 numberWithLongLong:a2];
  [v7 addObject:v10];

  v11 = [v9 unsignedLongLongValue];
  *(*(a1[5] + 8) + 24) += v11;
  if (*(*(a1[5] + 8) + 24) >= a1[6])
  {
    *a4 = 1;
  }

  return 0;
}

uint64_t __81__ML3MusicLibrary_CacheManagement___managedClearPurgeableTracksOfAmount_urgency___block_invoke_38(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = MEMORY[0x277CCABB0];
  v8 = a4;
  v9 = a3;
  v10 = [v7 numberWithLongLong:a2];
  [*(*(*(a1 + 40) + 8) + 40) setObject:v8 forKeyedSubscript:v10];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__ML3MusicLibrary_CacheManagement___managedClearPurgeableTracksOfAmount_urgency___block_invoke_2;
  v14[3] = &unk_278763690;
  v18 = *(a1 + 64);
  v11 = *(a1 + 32);
  v15 = v10;
  v16 = v11;
  v17 = *(a1 + 48);
  v12 = v10;
  [v9 enumerateObjectsUsingBlock:v14];

  return 1;
}

void __81__ML3MusicLibrary_CacheManagement___managedClearPurgeableTracksOfAmount_urgency___block_invoke_40(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v9 = [*(*(a1[5] + 8) + 40) objectForKeyedSubscript:v7];
  v10 = [ML3Track unlinkRedownloadableAssetsFromLibrary:a1[4] persistentIDs:v8];
  *(v21 + 24) = v10;
  v11 = os_log_create("com.apple.amp.medialibrary", "CacheManagement");
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v8 count];
      *buf = 134218754;
      v25 = v13;
      v26 = 2114;
      v27 = v7;
      v28 = 2114;
      v29 = v9;
      v30 = 2114;
      v31 = v8;
      v14 = "Purged %lu tracks from album %{public}@ (%{public}@ bytes): %{public}@";
      v15 = v12;
      v16 = OS_LOG_TYPE_DEFAULT;
      v17 = 42;
LABEL_6:
      _os_log_impl(&dword_22D2FA000, v15, v16, v14, buf, v17);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v25 = v7;
    v14 = "Failed to purge redownloadable assets for album %{public}@";
    v15 = v12;
    v16 = OS_LOG_TYPE_ERROR;
    v17 = 12;
    goto LABEL_6;
  }

  if (*(v21 + 24) == 1)
  {
    *(*(a1[6] + 8) + 24) += [v9 unsignedLongLongValue];
    if ((v21[3] & 1) != 0 && a1[8] == 3)
    {
      v18 = a1[4];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __81__ML3MusicLibrary_CacheManagement___managedClearPurgeableTracksOfAmount_urgency___block_invoke_41;
      v19[3] = &unk_278763710;
      v19[5] = a1[7];
      v19[6] = &v20;
      v19[4] = v18;
      [v18 performDatabaseTransactionWithBlock:v19];
    }
  }

  if (*(*(a1[6] + 8) + 24) >= a1[9])
  {
    *a4 = 1;
  }

  _Block_object_dispose(&v20, 8);
}

uint64_t __81__ML3MusicLibrary_CacheManagement___managedClearPurgeableTracksOfAmount_urgency___block_invoke_41(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1[5] + 8) + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__ML3MusicLibrary_CacheManagement___managedClearPurgeableTracksOfAmount_urgency___block_invoke_2_42;
  v9[3] = &unk_2787636E8;
  v5 = a1[6];
  v10 = v3;
  v11 = v5;
  v9[4] = a1[4];
  v6 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];
  v7 = *(*(a1[6] + 8) + 24);

  return v7;
}

void __81__ML3MusicLibrary_CacheManagement___managedClearPurgeableTracksOfAmount_urgency___block_invoke_2_42(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v19[0] = v7;
  v19[1] = &unk_2840C93C8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v18[0] = @"keep_local";
  v18[1] = @"keep_local_constraints";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  *(*(a1[6] + 8) + 24) = [(ML3Entity *)ML3Track setValues:v9 forProperties:v10 forEntityPersistentIDs:v8 inLibrary:a1[4] usingConnection:a1[5]];

  v11 = *(*(a1[6] + 8) + 24);
  v12 = os_log_create("com.apple.amp.medialibrary", "CacheManagement");
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_DEFAULT, "Marked %{public}@ persistentIDs as keep_local=%@ with keep_local_constraints=wifi", &v14, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_ERROR, "Failed to mark purged tracks as keep_local=%@ with keep_local_constraints=wifi", &v14, 0xCu);
    }

    *a4 = 1;
  }
}

void __81__ML3MusicLibrary_CacheManagement___managedClearPurgeableTracksOfAmount_urgency___block_invoke_2(void *a1, void *a2)
{
  v11 = a2;
  v3 = [*(*(a1[6] + 8) + 40) objectForKeyedSubscript:a1[4]];

  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    [*(*(a1[6] + 8) + 40) setObject:v4 forKeyedSubscript:a1[4]];
  }

  v5 = [*(*(a1[6] + 8) + 40) objectForKeyedSubscript:a1[4]];
  [v5 addObject:v11];

  if (a1[8] == 3)
  {
    v6 = +[ML3Entity newWithPersistentID:inLibrary:](ML3Track, "newWithPersistentID:inLibrary:", [v11 unsignedLongLongValue], a1[5]);
    v7 = [v6 valueForProperty:@"keep_local"];
    v8 = [*(*(a1[7] + 8) + 40) objectForKeyedSubscript:v7];

    if (!v8)
    {
      v9 = [MEMORY[0x277CBEB18] array];
      [*(*(a1[7] + 8) + 40) setObject:v9 forKeyedSubscript:v7];
    }

    v10 = [*(*(a1[7] + 8) + 40) objectForKeyedSubscript:v7];
    [v10 addObject:v11];
  }
}

- (unint64_t)_managedPurgeableTracksTotalSizeWithUrgency:(unint64_t)urgency
{
  v19 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__ML3MusicLibrary_CacheManagement___managedPurgeableTracksTotalSizeWithUrgency___block_invoke;
  v12[3] = &unk_278763610;
  v12[4] = &v13;
  [(ML3MusicLibrary *)self _enumeratePurgeableStreamedTracksForUrgency:urgency usingBlock:v12];
  v5 = v14[3];
  v6 = os_log_create("com.apple.amp.medialibrary", "CacheManagement");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v18 = v5;
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "Purgeable cached tracks size: %lld bytes", buf, 0xCu);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__ML3MusicLibrary_CacheManagement___managedPurgeableTracksTotalSizeWithUrgency___block_invoke_34;
  v11[3] = &unk_278763638;
  v11[4] = &v13;
  [(ML3MusicLibrary *)self _enumeratePurgeableAlbumTracksForUrgency:urgency usingBlock:v11];
  v7 = os_log_create("com.apple.amp.medialibrary", "CacheManagement");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v14[3] - v5;
    *buf = 134217984;
    v18 = v8;
    _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_DEFAULT, "Purgeable managed tracks size: %lld bytes", buf, 0xCu);
  }

  v9 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v9;
}

- (unint64_t)totalSizeForArtwork
{
  originalArtworkDirectory = [(ML3MusicLibrary *)self originalArtworkDirectory];
  DiskUsageForPath = ML3GetDiskUsageForPath(originalArtworkDirectory);

  return DiskUsageForPath;
}

- (int64_t)_cloudAssetsTotalSize
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = [(ML3MusicLibrary *)self pathForBaseLocationPath:200];
  v18[0] = v3;
  v4 = [(ML3MusicLibrary *)self pathForBaseLocationPath:100];
  v18[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v9 += ML3GetDiskUsageForPath(*(*(&v13 + 1) + 8 * i));
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)_databaseFileFreeSpace
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = os_log_create("com.apple.amp.medialibrary", "CacheManagement");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = 0;
    _os_log_impl(&dword_22D2FA000, v2, OS_LOG_TYPE_DEFAULT, "Purgeable database free space: %lld bytes", &v4, 0xCu);
  }

  return 0;
}

- (BOOL)_unmanagedPurgeShouldPurgeKeepLocalTracksForUrgency:(unint64_t)urgency
{
  if (urgency == 3)
  {
    if (MSVDeviceIsWatch())
    {
      return 1;
    }
  }

  else if (urgency < 2)
  {
    return 0;
  }

  return +[ML3MusicLibrary shouldOptimizeStorage];
}

- (unint64_t)_totalSizeForTracksPredicate:(id)predicate
{
  v3 = [(ML3Entity *)ML3Track queryWithLibrary:self predicate:predicate];
  v4 = [v3 valueForAggregateFunction:@"TOTAL" onEntitiesForProperty:@"item_extra.file_size"];
  unsignedLongLongValue = [v4 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (unint64_t)_minimumPurgeableStorageForUrgency:(unint64_t)urgency
{
  if (urgency == 3)
  {
    return 0;
  }

  else
  {
    return +[ML3MusicLibrary minimumPurgeableStorage];
  }
}

- (void)updateRootArtworkPurgeability
{
  v17 = *MEMORY[0x277D85DE8];
  if (MSVDeviceSupportsMultipleLibraries())
  {
    rootArtworkCacheDirectory = [(ML3MusicLibrary *)self rootArtworkCacheDirectory];
    originalArtworkDirectory = [(ML3MusicLibrary *)self originalArtworkDirectory];
    databasePath = [(ML3MusicLibrary *)self databasePath];
    v6 = +[ML3MusicLibrary autoupdatingSharedLibraryPath];
    v7 = [databasePath isEqualToString:v6];

    v8 = os_log_create("com.apple.amp.medialibrary", "CacheManagement");
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        databasePath2 = [(ML3MusicLibrary *)self databasePath];
        v13 = 138543619;
        selfCopy3 = self;
        v15 = 2113;
        v16 = databasePath2;
        _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating multi-user artwork purgeability for primary user. path=%{private}@", &v13, 0x16u);
      }

      v11 = 4;
      [(ML3MusicLibrary *)self markSystemPurgeableMusicPath:rootArtworkCacheDirectory forUrgency:4];
    }

    else
    {
      if (v9)
      {
        databasePath3 = [(ML3MusicLibrary *)self databasePath];
        v13 = 138543619;
        selfCopy3 = self;
        v15 = 2113;
        v16 = databasePath3;
        _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating multi-user artwork purgeability for non-primary user. path=%{private}@", &v13, 0x16u);
      }

      MSVEnableDirStatsForDirectory();
      [(ML3MusicLibrary *)self markSystemPurgeableMusicPath:rootArtworkCacheDirectory forUrgency:0];
      MSVEnableDirStatsForDirectory();
      v11 = 1;
    }

    [(ML3MusicLibrary *)self markSystemPurgeableMusicPath:originalArtworkDirectory forUrgency:v11];
  }

  else
  {
    rootArtworkCacheDirectory = os_log_create("com.apple.amp.medialibrary", "CacheManagement");
    if (os_log_type_enabled(rootArtworkCacheDirectory, OS_LOG_TYPE_ERROR))
    {
      v13 = 138543362;
      selfCopy3 = self;
      _os_log_impl(&dword_22D2FA000, rootArtworkCacheDirectory, OS_LOG_TYPE_ERROR, "%{public}@ Root artwork purgeability not supported on single-user devices.", &v13, 0xCu);
    }
  }
}

- (BOOL)markSystemPurgeableMusicPath:(id)path forUrgency:(unint64_t)urgency
{
  v30 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v7 = pathCopy;
  v21 = 65538;
  if (urgency <= 2)
  {
    if (urgency)
    {
      if (urgency == 1)
      {
        v8 = 66562;
      }

      else
      {
        if (urgency != 2)
        {
          goto LABEL_15;
        }

        v8 = 67586;
      }
    }

    else
    {
      v8 = 66050;
    }

    goto LABEL_14;
  }

  switch(urgency)
  {
    case 3uLL:
      v8 = 98306;
LABEL_14:
      v21 = v8;
      break;
    case 4uLL:
      v21 = 0;
      break;
    case 0x7FFFFFFFuLL:
      v9 = os_log_create("com.apple.amp.medialibrary", "CacheManagement");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        selfCopy3 = self;
        v10 = "%{public}@ Not marking purgeability for undefined urgency.";
        v11 = v9;
        v12 = 12;
LABEL_18:
        _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
      }

LABEL_19:
      v18 = 0;
      goto LABEL_20;
  }

LABEL_15:
  v13 = fsctl([(__CFString *)pathCopy UTF8String], 0xC0084A44uLL, &v21, 0);
  v14 = os_log_create("com.apple.amp.medialibrary", "CacheManagement");
  v9 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = v21;
      v16 = __error();
      v17 = strerror(*v16);
      *buf = 138544131;
      selfCopy3 = self;
      v24 = 2113;
      v25 = v7;
      v26 = 2048;
      v27 = v15;
      v28 = 2080;
      v29 = v17;
      v10 = "%{public}@ Failed to set purgeability for path %{private}@. flags=%llu error=%s";
      v11 = v9;
      v12 = 42;
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v18 = 1;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v20 = @"low";
    if (urgency <= 2)
    {
      if (urgency == 1)
      {
        v20 = @"medium";
      }

      else if (urgency == 2)
      {
        v20 = @"high";
      }
    }

    else if (urgency == 3)
    {
      v20 = @"special";
    }

    else if (urgency == 4)
    {
      v20 = @"none";
    }

    *buf = 138544131;
    selfCopy3 = self;
    v24 = 2114;
    v25 = v20;
    v26 = 2113;
    v27 = v7;
    v28 = 2048;
    v29 = v21;
    _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_INFO, "%{public}@ Marked purgeability level %{public}@ for path %{private}@. flags=%llu", buf, 0x2Au);
  }

LABEL_20:

  return v18;
}

- (unint64_t)totalSizeForAllSyncedTracks
{
  v3 = [ML3ComparisonPredicate predicateWithProperty:@"base_location_id" value:&unk_2840C93B0 comparison:4];
  v4 = [(ML3MusicLibrary *)self _totalSizeForTracksPredicate:v3];

  return v4;
}

- (unint64_t)totalSizeForAllNonRedownloadableTracks
{
  v3 = [ML3ComparisonPredicate predicateWithProperty:@"base_location_id" value:&unk_2840C9398 comparison:3];
  v4 = [(ML3MusicLibrary *)self _totalSizeForTracksPredicate:v3];

  return v4;
}

- (unint64_t)totalSizeForAllRedownloadableNonCacheTracks
{
  v3 = [ML3ComparisonPredicate predicateWithProperty:@"base_location_id" value:&unk_2840C9398 comparison:1];
  v4 = [(ML3MusicLibrary *)self _totalSizeForTracksPredicate:v3];

  return v4;
}

- (unint64_t)totalSizeForAllNonCacheTracks
{
  v3 = [ML3ComparisonPredicate predicateWithProperty:@"base_location_id" value:&unk_2840C9398 comparison:4];
  v4 = [(ML3MusicLibrary *)self _totalSizeForTracksPredicate:v3];

  return v4;
}

- (void)enumeratePurgeableAlbumTracksForUrgency:(unint64_t)urgency usingBlock:(id)block
{
  blockCopy = block;
  if ([(ML3MusicLibrary *)self _shouldPurgeManagedAlbumsTracksForUrgency:urgency])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __87__ML3MusicLibrary_CacheManagement__enumeratePurgeableAlbumTracksForUrgency_usingBlock___block_invoke;
    v7[3] = &unk_2787635E0;
    v8 = blockCopy;
    [(ML3MusicLibrary *)self _enumeratePurgeableAlbumTracksForUrgency:urgency usingBlock:v7];
  }
}

- (int64_t)clearAllRemovedTracks
{
  v3 = os_log_create("com.apple.amp.medialibrary", "CacheManagement");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "Clearing removed tracks.", v5, 2u);
  }

  return [(ML3MusicLibrary *)self _clearPurgeableTracksOfAmount:0x7FFFFFFFFFFFFFFFLL withUrgency:2 includeCloudAssets:0 includeAutoFilledTracks:0];
}

- (int64_t)clearPurgeableStorageAmount:(int64_t)amount withUrgency:(unint64_t)urgency includeAutoFilledTracks:(BOOL)tracks
{
  tracksCopy = tracks;
  v27 = *MEMORY[0x277D85DE8];
  v9 = [(ML3MusicLibrary *)self _shouldPurgeManagedAlbumsTracksForUrgency:urgency];
  v10 = [(ML3MusicLibrary *)self _minimumPurgeableStorageForUrgency:urgency];
  v11 = os_log_create("com.apple.amp.medialibrary", "CacheManagement");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 134219008;
    *v21 = amount;
    *&v21[8] = 1024;
    urgencyCopy2 = urgency;
    v23 = 1024;
    *v24 = tracksCopy;
    *&v24[4] = 1024;
    *&v24[6] = v9;
    v25 = 2048;
    v26 = v10;
    _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, "Purging media data of at least %lli bytes for urgency %d. includeAutoFilledTracks=%{BOOL}u, optimizedStorageEnabled=%{BOOL}u, minStorageAmount=%llu", &v20, 0x28u);
  }

  IsWatch = MSVDeviceIsWatch();
  if (amount < 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = IsWatch;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = [(ML3MusicLibrary *)self _clearOrphanedAssetsOfAmount:amount withUrgency:urgency];
  }

  if ([(ML3MusicLibrary *)self currentDatabaseVersion]== 2310000)
  {
    v14 += [(ML3MusicLibrary *)self _clearDatabaseFileFreeSpace];
    if (v14 < amount)
    {
      if (v9)
      {
        v15 = [(ML3MusicLibrary *)self _managedClearPurgeableTracksOfAmount:amount urgency:urgency];
      }

      else
      {
        v15 = [(ML3MusicLibrary *)self _clearPurgeableTracksOfAmount:amount withUrgency:urgency includeAutoFilledTracks:tracksCopy];
      }

      v14 += v15;
    }
  }

  else
  {
    v16 = os_log_create("com.apple.amp.medialibrary", "CacheManagement");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      currentDatabaseVersion = [(ML3MusicLibrary *)self currentDatabaseVersion];
      v20 = 67109376;
      *v21 = currentDatabaseVersion;
      *&v21[4] = 1024;
      strcpy(&v21[6], "p?#");
      _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_ERROR, "Skipping purge for tracks because DB is not present or invalid (db version=%d, current version=%d)", &v20, 0xEu);
    }
  }

  v18 = os_log_create("com.apple.amp.medialibrary", "CacheManagement");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 134218496;
    *v21 = v14;
    *&v21[8] = 1024;
    urgencyCopy2 = urgency;
    v23 = 2048;
    *v24 = amount;
    _os_log_impl(&dword_22D2FA000, v18, OS_LOG_TYPE_DEFAULT, "Purged %lld bytes of media data for urgency %d (%lld bytes requested)", &v20, 0x1Cu);
  }

  return v14;
}

- (int64_t)clearPurgeableStorageAmount:(int64_t)amount withUrgency:(unint64_t)urgency
{
  v7 = +[ML3MusicLibrary autoFilledTracksArePurgeable];

  return [(ML3MusicLibrary *)self clearPurgeableStorageAmount:amount withUrgency:urgency includeAutoFilledTracks:v7];
}

- (int64_t)purgeableStorageSizeWithUrgency:(unint64_t)urgency includeAutoFilledTracks:(BOOL)tracks
{
  tracksCopy = tracks;
  v18 = *MEMORY[0x277D85DE8];
  if ([(ML3MusicLibrary *)self currentDatabaseVersion]== 2310000)
  {
    _databaseFileFreeSpace = [(ML3MusicLibrary *)self _databaseFileFreeSpace];
    if ([(ML3MusicLibrary *)self _shouldPurgeManagedAlbumsTracksForUrgency:urgency])
    {
      v8 = [(ML3MusicLibrary *)self _managedPurgeableTracksTotalSizeWithUrgency:urgency];
    }

    else
    {
      v8 = [(ML3MusicLibrary *)self _purgeableTracksTotalSizeWithUrgency:urgency includeAutoFilledTracks:tracksCopy];
    }

    v10 = v8 + _databaseFileFreeSpace;
  }

  else
  {
    v9 = os_log_create("com.apple.amp.medialibrary", "CacheManagement");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = 67109376;
      *v14 = [(ML3MusicLibrary *)self currentDatabaseVersion];
      *&v14[4] = 1024;
      strcpy(&v14[6], "p?#");
      _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_ERROR, "Skipping purgeable calculation for tracks because DB is not present or invalid (db version=%d, current version=%d)", &v13, 0xEu);
    }

    v10 = 0;
  }

  v11 = os_log_create("com.apple.amp.medialibrary", "CacheManagement");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218496;
    *v14 = v10;
    *&v14[8] = 1024;
    urgencyCopy = urgency;
    v16 = 1024;
    v17 = tracksCopy;
    _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, "Purgeable size of %lld bytes for urgency %d, includeAutoFilledTracks=%d", &v13, 0x18u);
  }

  return v10;
}

- (int64_t)purgeableStorageSizeWithUrgency:(unint64_t)urgency
{
  v5 = +[ML3MusicLibrary autoFilledTracksArePurgeable];

  return [(ML3MusicLibrary *)self purgeableStorageSizeWithUrgency:urgency includeAutoFilledTracks:v5];
}

+ (void)clearCloudAssetSharedCache
{
  v20 = *MEMORY[0x277D85DE8];
  cloudAssetsSharedCacheFolderPath = [self cloudAssetsSharedCacheFolderPath];
  if (cloudAssetsSharedCacheFolderPath)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v4 = [v3 enumeratorAtPath:cloudAssetsSharedCacheFolderPath];
    nextObject = [v4 nextObject];
    if (nextObject)
    {
      v7 = nextObject;
      v8 = 0;
      *&v6 = 138543618;
      v14 = v6;
      do
      {
        v9 = v8;
        v10 = [cloudAssetsSharedCacheFolderPath stringByAppendingPathComponent:{v7, v14}];
        v15 = v8;
        v11 = [v3 removeItemAtPath:v10 error:&v15];
        v8 = v15;

        if ((v11 & 1) == 0)
        {
          v12 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = v14;
            v17 = v7;
            v18 = 2114;
            v19 = v8;
            _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_ERROR, "Failed to remove cached asset %{public}@ error %{public}@", buf, 0x16u);
          }
        }

        nextObject2 = [v4 nextObject];

        v7 = nextObject2;
      }

      while (nextObject2);
    }
  }
}

+ (int64_t)minimumPurgeableStorage
{
  result = CFPreferencesCopyAppValue(@"MinimumStorageSize", @"com.apple.Music");
  valuePtr = 0;
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v3, kCFNumberSInt64Type, &valuePtr);
    }

    CFRelease(v3);
    return valuePtr;
  }

  return result;
}

+ (void)setMinimumPurgeableStorage:(int64_t)storage
{
  valuePtr = storage;
  v3 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  CFPreferencesSetAppValue(@"MinimumStorageSize", v3, @"com.apple.Music");
  CFRelease(v3);
}

+ (BOOL)shouldOptimizeStorage
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"OptimizeStorage", @"com.apple.Music", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

+ (void)setShouldOptimizeStorage:(BOOL)storage
{
  v3 = MEMORY[0x277CBED28];
  if (!storage)
  {
    v3 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetAppValue(@"OptimizeStorage", *v3, @"com.apple.Music");
}

+ (void)setAutoFilledTracksArePurgeable:(BOOL)purgeable
{
  v3 = MEMORY[0x277CBED28];
  if (!purgeable)
  {
    v3 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetAppValue(@"_ML3AutofilledTracksArePurgeableKey", *v3, @"com.apple.medialibrary");
}

- (void)updatePurgeabilityForCachedArtworkWithAbsolutePath:(id)path
{
  v13 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  rootArtworkCacheDirectory = [(ML3MusicLibrary *)self rootArtworkCacheDirectory];
  v6 = [pathCopy containsString:rootArtworkCacheDirectory];

  if (v6)
  {
    stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
    if (MSVDeviceIsAppleTV())
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    [(ML3MusicLibrary *)self markSystemPurgeableMusicPath:stringByDeletingLastPathComponent forUrgency:v8];
  }

  else
  {
    stringByDeletingLastPathComponent = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(stringByDeletingLastPathComponent, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543618;
      selfCopy = self;
      v11 = 2114;
      v12 = pathCopy;
      _os_log_impl(&dword_22D2FA000, stringByDeletingLastPathComponent, OS_LOG_TYPE_ERROR, "%{public}@ Unexpected path for cached artwork %{public}@", &v9, 0x16u);
    }
  }
}

- (void)updatePurgeabilityForOriginalArtworkWithRelativePath:(id)path
{
  v15[2] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v5 = MEMORY[0x277CCACA8];
  originalArtworkDirectory = [(ML3MusicLibrary *)self originalArtworkDirectory];
  v15[0] = originalArtworkDirectory;
  v15[1] = pathCopy;
  v7 = 2;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v9 = [v5 pathWithComponents:v8];

  if (MSVDeviceIsAppleTV())
  {
    goto LABEL_4;
  }

  if (MSVDeviceIsWatch())
  {
    v7 = 3;
LABEL_4:
    [(ML3MusicLibrary *)self markSystemPurgeableMusicPath:v9 forUrgency:v7];
    goto LABEL_8;
  }

  v10 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138543618;
    selfCopy = self;
    v13 = 2114;
    v14 = pathCopy;
    _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEBUG, "%{public}@ Not marking purgeability for original artwork. relativePath=%{public}@", &v11, 0x16u);
  }

LABEL_8:
}

- (BOOL)isArtworkFetchableForPersistentID:(int64_t)d entityType:(int64_t)type artworkType:(int64_t)artworkType artworkSourceType:(int64_t)sourceType
{
  v6 = 0;
  if (type > 1)
  {
    if (type == 2 || type == 7)
    {
      return sourceType == 500;
    }
  }

  else
  {
    if (!type)
    {
      if (sourceType != 600)
      {
        if (sourceType == 400)
        {
          if ((artworkType - 1) <= 1)
          {
            v7 = [(ML3Entity *)ML3Track newWithPersistentID:d inLibrary:self];
            if ([v7 existsInLibrary])
            {
              v8 = @"item_store.purchase_history_id";
              goto LABEL_22;
            }

LABEL_25:
            v6 = 0;
            goto LABEL_26;
          }
        }

        else if (sourceType == 200 && (artworkType - 1) <= 1)
        {
          v7 = [(ML3Entity *)ML3Track newWithPersistentID:d inLibrary:self];
          if ([v7 existsInLibrary])
          {
            v9 = [v7 valueForProperty:@"item_store.store_saga_id"];
            v6 = [v9 longLongValue] > 0;
LABEL_23:

LABEL_26:
            return v6;
          }

          goto LABEL_25;
        }

        return 0;
      }

      return 1;
    }

    if (type == 1)
    {
      if (sourceType != 600)
      {
        if (sourceType == 200 && artworkType == 5)
        {
          v7 = [(ML3Entity *)ML3Container newWithPersistentID:d inLibrary:self];
          if ([v7 existsInLibrary])
          {
            v8 = @"store_cloud_id";
LABEL_22:
            v9 = [v7 valueForProperty:v8];
            v6 = [v9 unsignedIntegerValue] != 0;
            goto LABEL_23;
          }

          goto LABEL_25;
        }

        return 0;
      }

      return 1;
    }
  }

  return v6;
}

- (BOOL)hasOriginalArtworkForRelativePath:(id)path
{
  pathCopy = path;
  originalArtworkDirectory = [(ML3MusicLibrary *)self originalArtworkDirectory];
  v6 = [originalArtworkDirectory stringByAppendingPathComponent:pathCopy];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  LOBYTE(pathCopy) = [defaultManager fileExistsAtPath:v6];

  return pathCopy;
}

- (id)artworkCacheDirectoryForEffect:(id)effect
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACA8];
  effectCopy = effect;
  rootArtworkCacheDirectory = [(ML3MusicLibrary *)self rootArtworkCacheDirectory];
  v10[0] = rootArtworkCacheDirectory;
  v10[1] = effectCopy;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v8 = [v4 pathWithComponents:v7];

  return v8;
}

- (id)artworkCacheDirectoryForSize:(CGSize)size
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.0fx%.0f", *&size.width, *&size.height];
  v5 = MEMORY[0x277CCACA8];
  rootArtworkCacheDirectory = [(ML3MusicLibrary *)self rootArtworkCacheDirectory];
  v10[0] = rootArtworkCacheDirectory;
  v10[1] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v8 = [v5 pathWithComponents:v7];

  return v8;
}

+ (int64_t)artworkSourceTypeForTrackSource:(int)source
{
  if ((source - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_22D5C9528[source - 1];
  }
}

+ (id)artworkRelativePathFromToken:(id)token variantType:(int64_t)type
{
  v65 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  memset(v60, 0, sizeof(v60));
  CC_SHA1_Init(v60);
  v6 = tokenCopy;
  CC_SHA1_Update(v60, [v6 UTF8String], objc_msgSend(v6, "length"));

  memset(&v61[8], 0, 64);
  *v61 = 4001;
  CC_SHA1_Final(&v61[8], v60);
  v62[0] = *v61;
  v62[1] = *&v61[16];
  v62[2] = *&v61[32];
  v62[3] = *&v61[48];
  v63 = *&v61[64];
  if (*v61 > 3999)
  {
    if (*v61 > 4255)
    {
      if (*v61 == 4256)
      {
        v48 = v62 + 8;
        v49 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
        v50 = v49;
        for (i = 0; i != 64; i += 2)
        {
          v52 = *v48++;
          v53 = &v49[i];
          *v53 = MSVFastHexStringFromBytes_hexCharacters_28195[v52 >> 4];
          v53[1] = MSVFastHexStringFromBytes_hexCharacters_28195[v52 & 0xF];
        }

        v19 = objc_alloc(MEMORY[0x277CCACA8]);
        v20 = v50;
        v21 = 64;
      }

      else
      {
        if (*v61 != 4512)
        {
          goto LABEL_54;
        }

        v26 = v62 + 8;
        v27 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
        v28 = v27;
        for (j = 0; j != 128; j += 2)
        {
          v30 = *v26++;
          v31 = &v27[j];
          *v31 = MSVFastHexStringFromBytes_hexCharacters_28195[v30 >> 4];
          v31[1] = MSVFastHexStringFromBytes_hexCharacters_28195[v30 & 0xF];
        }

        v19 = objc_alloc(MEMORY[0x277CCACA8]);
        v20 = v28;
        v21 = 128;
      }
    }

    else if (*v61 == 4000)
    {
      v38 = v62 + 8;
      v39 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
      v40 = v39;
      for (k = 0; k != 32; k += 2)
      {
        v42 = *v38++;
        v43 = &v39[k];
        *v43 = MSVFastHexStringFromBytes_hexCharacters_28195[v42 >> 4];
        v43[1] = MSVFastHexStringFromBytes_hexCharacters_28195[v42 & 0xF];
      }

      v19 = objc_alloc(MEMORY[0x277CCACA8]);
      v20 = v40;
      v21 = 32;
    }

    else
    {
      if (*v61 != 4001)
      {
        goto LABEL_54;
      }

      v13 = v62 + 8;
      v14 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
      v15 = v14;
      for (m = 0; m != 40; m += 2)
      {
        v17 = *v13++;
        v18 = &v14[m];
        *v18 = MSVFastHexStringFromBytes_hexCharacters_28195[v17 >> 4];
        v18[1] = MSVFastHexStringFromBytes_hexCharacters_28195[v17 & 0xF];
      }

      v19 = objc_alloc(MEMORY[0x277CCACA8]);
      v20 = v15;
      v21 = 40;
    }

LABEL_47:
    v37 = [v19 initWithBytesNoCopy:v20 length:v21 encoding:4 freeWhenDone:1];
    goto LABEL_48;
  }

  if (*v61 > 2999)
  {
    if (*v61 == 3000)
    {
      LODWORD(v64[0]) = bswap32(DWORD2(v62[0]));
      v44 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
      v45 = 0;
      v46 = v44 + 1;
      do
      {
        v47 = *(v64 + v45);
        *(v46 - 1) = MSVFastHexStringFromBytes_hexCharacters_28195[v47 >> 4];
        *v46 = MSVFastHexStringFromBytes_hexCharacters_28195[v47 & 0xF];
        v46 += 2;
        ++v45;
      }

      while (v45 != 4);
      v19 = objc_alloc(MEMORY[0x277CCACA8]);
      v20 = v44;
      v21 = 8;
    }

    else
    {
      if (*v61 != 3001)
      {
        goto LABEL_54;
      }

      v64[0] = bswap64(*(&v62[0] + 1));
      v22 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
      v23 = 0;
      v24 = v22 + 1;
      do
      {
        v25 = *(v64 + v23);
        *(v24 - 1) = MSVFastHexStringFromBytes_hexCharacters_28195[v25 >> 4];
        *v24 = MSVFastHexStringFromBytes_hexCharacters_28195[v25 & 0xF];
        v24 += 2;
        ++v23;
      }

      while (v23 != 8);
      v19 = objc_alloc(MEMORY[0x277CCACA8]);
      v20 = v22;
      v21 = 16;
    }

    goto LABEL_47;
  }

  if (*v61 == 1000)
  {
    v32 = *(&v62[0] + 1);
    if (*(&v62[0] + 1))
    {
      v33 = &v65 + 1;
      quot = *(&v62[0] + 1);
      do
      {
        v35 = lldiv(quot, 10);
        quot = v35.quot;
        if (v35.rem >= 0)
        {
          LOBYTE(v36) = v35.rem;
        }

        else
        {
          v36 = -v35.rem;
        }

        *(v33 - 2) = v36 + 48;
        v12 = (v33 - 2);
        --v33;
      }

      while (v35.quot);
      if (v32 < 0)
      {
        *(v33 - 2) = 45;
        v12 = (v33 - 2);
      }

      v11 = (&v65 - v12);
      goto LABEL_37;
    }

    goto LABEL_55;
  }

  if (*v61 != 2000)
  {
LABEL_54:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
    [currentHandler handleFailureInFunction:v59 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

    v54 = &stru_28408B690;
    goto LABEL_49;
  }

  v7 = DWORD2(v62[0]);
  if (DWORD2(v62[0]))
  {
    v8 = &v65;
    do
    {
      v9 = ldiv(v7, 10);
      v7 = v9.quot;
      if (v9.rem >= 0)
      {
        LOBYTE(v10) = v9.rem;
      }

      else
      {
        v10 = -v9.rem;
      }

      *(v8 - 1) = v10 + 48;
      v8 = (v8 - 1);
    }

    while (v9.quot);
    v11 = (&v65 - v8);
    v12 = v8;
LABEL_37:
    v37 = CFStringCreateWithBytes(0, v12, v11, 0x8000100u, 0);
LABEL_48:
    v54 = v37;
    goto LABEL_49;
  }

LABEL_55:
  v54 = @"0";
LABEL_49:

  v55 = [(__CFString *)v54 mutableCopy];
  [v55 insertString:@"/" atIndex:2];
  if (type)
  {
    [v55 appendFormat:@"-%d", type];
  }

  v56 = [v55 copy];

  return v56;
}

+ (int64_t)devicePreferredImageFormat
{
  if ([self deviceSupportsASTC])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

+ (BOOL)deviceSupportsASTC
{
  if (_os_feature_enabled_impl())
  {
    v2 = 0;
  }

  else
  {
    if (deviceSupportsASTC_onceToken != -1)
    {
      dispatch_once(&deviceSupportsASTC_onceToken, &__block_literal_global_14026);
    }

    v2 = deviceSupportsASTC_deviceSupportsASTC;
  }

  return v2 & 1;
}

uint64_t __46__ML3MusicLibrary_Artwork__deviceSupportsASTC__block_invoke()
{
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"DisableASTCEncoding", @"com.apple.mobileipod", 0);
  result = CFPreferencesGetAppBooleanValue(@"EnableASTCEncoding", @"com.apple.medialibrary", 0);
  if (AppBooleanValue)
  {
    v2 = 0;
  }

  else if (result)
  {
    v2 = 1;
  }

  else
  {
    v3 = MGGetBoolAnswer();
    result = MGGetBoolAnswer();
    v2 = v3 & result;
  }

  deviceSupportsASTC_deviceSupportsASTC = v2;
  return result;
}

+ (BOOL)dropIndexesUsingConnection:(id)connection tableNames:(const char *)names
{
  v29 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  array = [MEMORY[0x277CBEB18] array];
  names = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT name FROM sqlite_master WHERE type='index' AND tbl_name IN (%s)", names];;
  v8 = [connectionCopy executeQuery:names];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __65__ML3MusicLibrary_Schema__dropIndexesUsingConnection_tableNames___block_invoke;
  v26[3] = &unk_278766118;
  v9 = array;
  v27 = v9;
  [v8 enumerateRowsWithBlock:v26];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v20 = v8;
    v21 = names;
    v13 = *v23;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        if (([v15 hasPrefix:@"sqlite_autoindex_"] & 1) == 0)
        {
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"DROP INDEX %@", v15];;
          v17 = [connectionCopy executeUpdate:v16];

          if (!v17)
          {
            v18 = 0;
            goto LABEL_12;
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    v18 = 1;
LABEL_12:
    v8 = v20;
    names = v21;
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

void __65__ML3MusicLibrary_Schema__dropIndexesUsingConnection_tableNames___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectAtIndexedSubscript:0];
  [v2 addObject:v3];
}

+ (BOOL)orderingLanguageMatchesSystemUsingConnection:(id)connection
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [connection executeQuery:@"SELECT value FROM _MLDatabaseProperties WHERE key = 'OrderingLanguage'"];;
  stringValueForFirstRowAndColumn = [v3 stringValueForFirstRowAndColumn];

  v5 = ML3LocalizationLanguageCanonicalIdentifier();
  v6 = [v5 isEqualToString:stringValueForFirstRowAndColumn];
  if ((v6 & 1) == 0)
  {
    v7 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543618;
      v10 = stringValueForFirstRowAndColumn;
      v11 = 2114;
      v12 = v5;
      _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_DEFAULT, "[Schema] Device language changed from %{public}@ to %{public}@", &v9, 0x16u);
    }
  }

  return v6;
}

+ (BOOL)userVersionMatchesSystemUsingConnection:(id)connection
{
  v12 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9[0]) = 0;
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "[Schema] Checking if the current database version is up-to-date...", v9, 2u);
  }

  v6 = [self userVersionUsingConnection:connectionCopy];
  if (v6 != 2310000)
  {
    v7 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109376;
      v9[1] = v6;
      v10 = 1024;
      v11 = 2310000;
      _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_DEFAULT, "[Schema] Database version is %d, not %d", v9, 0xEu);
    }
  }

  return v6 == 2310000;
}

+ (int)userVersionUsingConnection:(id)connection
{
  connectionCopy = connection;
  if ([connectionCopy databasePathExists])
  {
    v4 = [connectionCopy executeQuery:@"PRAGMA user_version"];;
    int64ValueForFirstRowAndColumn = [v4 int64ValueForFirstRowAndColumn];
  }

  else
  {
    int64ValueForFirstRowAndColumn = 0;
  }

  return int64ValueForFirstRowAndColumn;
}

+ (id)itemIndexSchemaSQL
{
  if (itemIndexSchemaSQL_onceToken != -1)
  {
    dispatch_once(&itemIndexSchemaSQL_onceToken, &__block_literal_global_494);
  }

  v3 = itemIndexSchemaSQL_itemIndices;

  return v3;
}

uint64_t __45__ML3MusicLibrary_Schema__itemIndexSchemaSQL__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:itemIndexSchemaSQL_indexSQLs count:32];
  v1 = itemIndexSchemaSQL_itemIndices;
  itemIndexSchemaSQL_itemIndices = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)indexSchemaSQL
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ML3MusicLibrary_Schema__indexSchemaSQL__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (indexSchemaSQL_onceToken != -1)
  {
    dispatch_once(&indexSchemaSQL_onceToken, block);
  }

  v2 = indexSchemaSQL_indices;

  return v2;
}

void __41__ML3MusicLibrary_Schema__indexSchemaSQL__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) itemIndexSchemaSQL];
  v1 = [v3 setByAddingObjectsFromArray:&unk_2840C85B8];
  v2 = indexSchemaSQL_indices;
  indexSchemaSQL_indices = v1;
}

+ (id)allTables
{
  if (allTables_once != -1)
  {
    dispatch_once(&allTables_once, &__block_literal_global_111);
  }

  v3 = allTables_allTables;

  return v3;
}

uint64_t __36__ML3MusicLibrary_Schema__allTables__block_invoke()
{
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"album", @"item_artist", @"album_artist", @"composer", @"genre", @"category", @"base_location", @"sort_map", @"item", @"item_extra", @"item_playback", @"item_search", @"item_stats", @"item_store", @"item_video", @"item_kvs", @"container", @"container_seed", @"container_item", @"_MLDatabaseProperties", @"db_info", @"chapter", @"lyrics", @"entity_revision", @"genius_config", @"genius_metadata", @"genius_similarities", @"artwork_token", @"best_artwork_token", @"artwork", @"entity_changes", @"source", @"library_property", @"cloud_kvs", @"account", @"person", @"container_item_person", @"container_author", @"container_item_reaction", @"library_pins", 0}];
  v1 = allTables_allTables;
  allTables_allTables = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)allTriggersSQL
{
  v4[5] = *MEMORY[0x277D85DE8];
  v4[0] = @"CREATE TRIGGER IF NOT EXISTS on_insert_item_setRemoteLocationColumn AFTER INSERT ON item_store BEGIN UPDATE item SET remote_location_id =(CASE WHEN new.home_sharing_id != 0 THEN 300 ELSE(CASE WHEN IFNULL(new.match_redownload_params, '') != '' THEN 200 ELSE(CASE WHEN IFNULL(new.purchase_history_redownload_params, '') != '' AND new.purchase_history_id != 0 THEN 100 ELSE(CASE WHEN new.subscription_store_item_id != 0 AND new.is_subscription AND new.cloud_asset_available THEN 50 ELSE(CASE WHEN new.sync_redownload_params == 'redownload' AND new.sync_id != 0 THEN 20 ELSE(CASE WHEN new.sync_redownload_params == 'local' AND new.sync_id != 0 THEN 10 ELSE 0 END) END) END) END) END) END) WHERE item_pid = new.item_pid; END;";
  v4[1] = @"CREATE TRIGGER IF NOT EXISTS on_update_item_setRemoteLocationColumn AFTER UPDATE OF match_redownload_params, purchase_history_redownload_params, purchase_history_id, home_sharing_id, sync_redownload_params, subscription_store_item_id, store_saga_id, is_subscription, cloud_asset_available ON item_store BEGIN UPDATE item SET remote_location_id =(CASE WHEN new.home_sharing_id != 0 THEN 300 ELSE(CASE WHEN IFNULL(new.match_redownload_params, '') != '' THEN 200 ELSE(CASE WHEN IFNULL(new.purchase_history_redownload_params, '') != '' AND new.purchase_history_id != 0 THEN 100 ELSE(CASE WHEN new.subscription_store_item_id != 0 AND new.is_subscription AND new.cloud_asset_available THEN 50 ELSE(CASE WHEN new.sync_redownload_params == 'redownload' AND new.sync_id != 0 THEN 20 ELSE(CASE WHEN new.sync_redownload_params == 'local' AND new.sync_id != 0 THEN 10 ELSE 0 END) END) END) END) END) END) WHERE item_pid = new.item_pid; END;";
  v4[2] = @"CREATE TRIGGER IF NOT EXISTS on_insert_item_setInMyLibraryColumn AFTER INSERT ON item_store BEGIN UPDATE item SET in_my_library =(CASE WHEN new.home_sharing_id OR (new.store_saga_id AND new.cloud_in_my_library) OR new.purchase_history_id OR (new.sync_id AND new.sync_in_my_library) OR new.is_ota_purchased THEN 1 ELSE 0 END) WHERE item_pid = new.item_pid; END;";
  v4[3] = @"CREATE TRIGGER IF NOT EXISTS on_update_item_setInMyLibraryColumn AFTER UPDATE OF purchase_history_id, home_sharing_id, sync_id, subscription_store_item_id, store_saga_id, is_ota_purchased, sync_in_my_library, cloud_in_my_library ON item_store BEGIN UPDATE item SET in_my_library =(CASE WHEN new.home_sharing_id OR (new.store_saga_id AND new.cloud_in_my_library) OR new.purchase_history_id OR (new.sync_id AND new.sync_in_my_library) OR new.is_ota_purchased THEN 1 ELSE 0 END) WHERE item_pid = new.item_pid; END;";
  v4[4] = @"CREATE TRIGGER IF NOT EXISTS on_remove_source_setPlaybackEndpointType AFTER UPDATE OF playback_endpoint_type ON item_store BEGIN UPDATE item_store SET playback_endpoint_type = (CASE WHEN new.playback_endpoint_type >= 0 THEN new.playback_endpoint_type ELSE (CASE WHEN store_saga_id THEN cloud_playback_endpoint_type WHEN sync_id THEN 0 WHEN purchase_history_id THEN 1 WHEN is_ota_purchased THEN 0 WHEN is_subscription THEN 3 ELSE 0 END) END) WHERE item_pid = new.item_pid; END;";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:5];

  return v2;
}

+ (id)allSchemaSQL
{
  if (allSchemaSQL_once != -1)
  {
    dispatch_once(&allSchemaSQL_once, &__block_literal_global_14907);
  }

  v3 = allSchemaSQL_allSchemaSQL;

  return v3;
}

void __39__ML3MusicLibrary_Schema__allSchemaSQL__block_invoke()
{
  v44[42] = *MEMORY[0x277D85DE8];
  v43 = objc_opt_new();
  v42 = [v43 createTableSQLWithExistenceClause:0];
  v44[0] = v42;
  v41 = objc_opt_new();
  v40 = [v41 createTableSQLWithExistenceClause:0];
  v44[1] = v40;
  v39 = objc_opt_new();
  v38 = [v39 createTableSQLWithExistenceClause:0];
  v44[2] = v38;
  v37 = objc_opt_new();
  v36 = [v37 createTableSQLWithExistenceClause:0];
  v44[3] = v36;
  v35 = objc_opt_new();
  v34 = [v35 createTableSQLWithExistenceClause:0];
  v44[4] = v34;
  v44[5] = @"CREATE TABLE category (category_id INTEGER PRIMARY KEY, category TEXT NOT NULL UNIQUE)";
  v44[6] = @"CREATE TABLE base_location (base_location_id INTEGER PRIMARY KEY, path TEXT NOT NULL)";
  v44[7] = @"CREATE TABLE sort_map (name TEXT NOT NULL UNIQUE, name_order INTEGER UNIQUE, name_section INTEGER,  sort_key BLOB NOT NULL)";
  v33 = objc_opt_new();
  v32 = [v33 createTableSQLWithExistenceClause:0];
  v44[8] = v32;
  v31 = objc_opt_new();
  v30 = [v31 createTableSQLWithExistenceClause:0];
  v44[9] = v30;
  v29 = objc_opt_new();
  v28 = [v29 createTableSQLWithExistenceClause:0];
  v44[10] = v28;
  v27 = objc_opt_new();
  v26 = [v27 createTableSQLWithExistenceClause:0];
  v44[11] = v26;
  v25 = objc_opt_new();
  v24 = [v25 createTableSQLWithExistenceClause:0];
  v44[12] = v24;
  v23 = objc_opt_new();
  v22 = [v23 createTableSQLWithExistenceClause:0];
  v44[13] = v22;
  v21 = objc_opt_new();
  v20 = [v21 createTableSQLWithExistenceClause:0];
  v44[14] = v20;
  v19 = objc_opt_new();
  v18 = [v19 createTableSQLWithExistenceClause:0];
  v44[15] = v18;
  v44[16] = @"CREATE TABLE container (container_pid INTEGER PRIMARY KEY, distinguished_kind INTEGER NOT NULL DEFAULT 0, date_created INTEGER NOT NULL DEFAULT 0, date_modified INTEGER NOT NULL DEFAULT 0, date_played INTEGER NOT NULL DEFAULT 0, name TEXT NOT NULL DEFAULT '', name_order INTEGER NOT NULL DEFAULT 0, is_owner INTEGER NOT NULL DEFAULT 1, is_editable INTEGER NOT NULL DEFAULT 0, parent_pid INTEGER NOT NULL DEFAULT 0, contained_media_type INTEGER NOT NULL DEFAULT 0, workout_template_id INTEGER NOT NULL DEFAULT 0, is_hidden INTEGER NOT NULL DEFAULT 0, is_ignorable_itunes_playlist INTEGER NOT NULL DEFAULT 0, description TEXT, play_count_user INTEGER NOT NULL DEFAULT 0, play_count_recent INTEGER NOT NULL DEFAULT 0, liked_state INTEGER NOT NULL DEFAULT 0, smart_evaluation_order INTEGER NOT NULL DEFAULT 0, smart_is_folder INTEGER NOT NULL DEFAULT 0, smart_is_dynamic INTEGER NOT NULL DEFAULT 0, smart_is_filtered INTEGER NOT NULL DEFAULT 0, smart_is_genius INTEGER NOT NULL DEFAULT 0, smart_enabled_only INTEGER NOT NULL DEFAULT 0, smart_is_limited INTEGER NOT NULL DEFAULT 0, smart_limit_kind INTEGER NOT NULL DEFAULT 0, smart_limit_order INTEGER NOT NULL DEFAULT 0, smart_limit_value INTEGER NOT NULL DEFAULT 0, smart_reverse_limit_order INTEGER NOT NULL DEFAULT 0, smart_criteria BLOB, play_order INTEGER NOT NULL DEFAULT 0, is_reversed INTEGER NOT NULL DEFAULT 0, album_field_order INTEGER NOT NULL DEFAULT 0, repeat_mode INTEGER NOT NULL DEFAULT 0, shuffle_items INTEGER NOT NULL DEFAULT 0, has_been_shuffled INTEGER NOT NULL DEFAULT 0, filepath TEXT NOT NULL DEFAULT '', is_saveable INTEGER NOT NULL DEFAULT 0, is_src_remote INTEGER NOT NULL DEFAULT 0, is_ignored_syncing INTEGER NOT NULL DEFAULT 0, container_type INTEGER NOT NULL DEFAULT 0, is_container_type_active_target INTEGER NOT NULL DEFAULT 0, orig_date_modified INTEGER NOT NULL DEFAULT 0, store_cloud_id INTEGER NOT NULL DEFAULT 0, has_cloud_play_order INTEGER NOT NULL DEFAULT 0, cloud_global_id TEXT NOT NULL DEFAULT '', cloud_share_url TEXT NOT NULL DEFAULT '', cloud_is_public INTEGER NOT NULL DEFAULT 0, cloud_is_visible INTEGER NOT NULL DEFAULT 0, cloud_is_subscribed INTEGER NOT NULL DEFAULT 0, cloud_is_curator_playlist INTEGER NOT NULL DEFAULT 0, cloud_author_store_id INTEGER NOT NULL DEFAULT 0, cloud_author_display_name TEXT NOT NULL DEFAULT '', cloud_author_store_url TEXT NOT NULL DEFAULT '', cloud_min_refresh_interval INTEGER NOT NULL DEFAULT 0, cloud_last_update_time INTEGER NOT NULL DEFAULT 0, cloud_user_count INTEGER NOT NULL DEFAULT 0, cloud_global_play_count INTEGER NOT NULL DEFAULT 0, cloud_global_like_count INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0, keep_local_status_reason INTEGER NOT NULL DEFAULT 0, keep_local_constraints INTEGER NOT NULL DEFAULT 0, external_vendor_identifier TEXT NOT NULL DEFAULT '', external_vendor_display_name TEXT NOT NULL DEFAULT '', external_vendor_container_tag TEXT NOT NULL DEFAULT '', is_external_vendor_playlist INTEGER NOT NULL DEFAULT 0, sync_id INTEGER NOT NULL DEFAULT 0, cloud_is_sharing_disabled INTEGER NOT NULL DEFAULT 0, cloud_version_hash TEXT NOT NULL DEFAULT '', date_played_local INTEGER NOT NULL DEFAULT 0, cloud_author_handle TEXT NOT NULL DEFAULT '', cloud_universal_library_id TEXT NOT NULL DEFAULT '', should_display_index INTEGER NOT NULL DEFAULT 0, date_downloaded INTEGER NOT NULL DEFAULT 0, category_type_mask INTEGER NOT NULL DEFAULT 0, grouping_sort_key TEXT NOT NULL DEFAULT '', traits INTEGER NOT NULL DEFAULT 0, liked_state_changed_date INTEGER NOT NULL DEFAULT 0, is_collaborative INTEGER NOT NULL DEFAULT 0, collaborator_invite_options INTEGER NOT NULL DEFAULT 0, collaborator_permissions INTEGER NOT NULL DEFAULT 0, collaboration_invitation_link TEXT NOT NULL DEFAULT '', cover_artwork_recipe TEXT NOT NULL DEFAULT '', collaboration_invitation_url_expiration_date INTEGER NOT NULL DEFAULT 0 ,collaboration_join_request_pending INTEGER NOT NULL DEFAULT 0 ,collaborator_status INTEGER NOT NULL DEFAULT 0, edit_session_id TEXT NOT NULL DEFAULT '') ";
  v44[17] = @"CREATE TABLE container_seed (container_pid INTEGER PRIMARY KEY, item_pid INTEGER NOT NULL DEFAULT 0, seed_order INTEGER NOT NULL DEFAULT 0)";
  v44[18] = @"CREATE TABLE container_item_media_type (container_pid INTEGER PRIMARY KEY, media_type INTEGER NOT NULL DEFAULT 0, count INTEGER NOT NULL DEFAULT 0, UNIQUE (container_pid, media_type))";
  v17 = objc_opt_new();
  v16 = [v17 createTableSQLWithExistenceClause:0];
  v44[19] = v16;
  v44[20] = @"CREATE TABLE _MLDatabaseProperties (key TEXT PRIMARY KEY, value TEXT)";
  v44[21] = @"CREATE TABLE db_info (db_pid INTEGER PRIMARY KEY, primary_container_pid INTEGER, media_folder_url TEXT, audio_language INTEGER, subtitle_language INTEGER, genius_cuid TEXT, bib BLOB, rib BLOB)";
  v15 = objc_opt_new();
  v14 = [v15 createTableSQLWithExistenceClause:0];
  v44[22] = v14;
  v13 = objc_opt_new();
  v12 = [v13 createTableSQLWithExistenceClause:0];
  v44[23] = v12;
  v44[24] = @"CREATE TABLE entity_revision (revision INTEGER PRIMARY KEY, entity_pid INTEGER NOT NULL DEFAULT 0, deleted INTEGER NOT NULL DEFAULT 0, class INTEGER NOT NULL DEFAULT 0, revision_type INTEGER NOT NULL DEFAULT 0, UNIQUE (entity_pid, class, revision_type))";
  v44[25] = @"CREATE TABLE genius_config (id INTEGER PRIMARY KEY, version INTEGER UNIQUE, default_num_results INTEGER NOT NULL DEFAULT 0, min_num_results INTEGER NOT NULL DEFAULT 0, data BLOB)";
  v44[26] = @"CREATE TABLE genius_metadata (genius_id INTEGER PRIMARY KEY, revision_level INTEGER NOT NULL DEFAULT 0, version INTEGER NOT NULL DEFAULT 0, checksum INTEGER NOT NULL DEFAULT 0, data BLOB)";
  v44[27] = @"CREATE TABLE genius_similarities (genius_id INTEGER PRIMARY KEY, data BLOB)";
  v44[28] = @"CREATE TABLE artwork_token (artwork_token TEXT NOT NULL DEFAULT '', artwork_source_type INTEGER NOT NULL DEFAULT 0, artwork_type INTEGER NOT NULL DEFAULT 0, entity_pid INTEGER NOT NULL DEFAULT 0, entity_type INTEGER NOT NULL DEFAULT 0, artwork_variant_type INTEGER NOT NULL DEFAULT 0, UNIQUE (artwork_source_type, artwork_type, entity_pid, entity_type, artwork_variant_type))";
  v44[29] = @"CREATE TABLE best_artwork_token (entity_pid INTEGER NOT NULL DEFAULT 0, entity_type INTEGER NOT NULL DEFAULT 0, artwork_type INTEGER NOT NULL DEFAULT 0, available_artwork_token TEXT NOT NULL DEFAULT '', fetchable_artwork_token TEXT NOT NULL DEFAULT '', fetchable_artwork_source_type INTEGER NOT NULL DEFAULT 0, artwork_variant_type INTEGER NOT NULL DEFAULT 0, UNIQUE (entity_pid, entity_type, artwork_type, artwork_variant_type))";
  v44[30] = @"CREATE TABLE artwork (artwork_token TEXT NOT NULL DEFAULT '', artwork_source_type INTEGER NOT NULL DEFAULT 0, relative_path TEXT NOT NULL DEFAULT '', artwork_type INTEGER NOT NULL DEFAULT 0, interest_data BLOB, artwork_variant_type INTEGER NOT NULL DEFAULT 0, UNIQUE (artwork_token, artwork_source_type, artwork_variant_type))";
  v44[31] = @"CREATE TABLE entity_changes (class INTEGER NOT NULL, entity_pid INTEGER NOT NULL, source_pid INTEGER NOT NULL, change_type INTEGER NOT NULL, changes TEXT NOT NULL DEFAULT '', UNIQUE (class, entity_pid, source_pid, change_type))";
  v44[32] = @"CREATE TABLE source (source_pid INTEGER PRIMARY KEY, source_name TEXT, last_sync_date INTEGER NOT NULL DEFAULT 0, last_sync_revision INTEGER NOT NULL DEFAULT 0)";
  v44[33] = @"CREATE TABLE library_property (property_pid INTEGER PRIMARY KEY, source_id INTEGER, key TEXT, value TEXT, UNIQUE (source_id, key))";
  v0 = objc_opt_new();
  v1 = [v0 createTableSQLWithExistenceClause:0];
  v44[34] = v1;
  v2 = objc_opt_new();
  v3 = [v2 createTableSQLWithExistenceClause:0];
  v44[35] = v3;
  v4 = objc_opt_new();
  v5 = [v4 createTableSQLWithExistenceClause:0];
  v44[36] = v5;
  v44[37] = @"CREATE TABLE container_item_person (container_item_person_pid INTEGER PRIMARY KEY, container_item_pid INTEGER NOT NULL DEFAULT 0, person_pid INTEGER NOT NULL DEFAULT 0, UNIQUE (container_item_pid, person_pid))";
  v6 = objc_opt_new();
  v7 = [v6 createTableSQLWithExistenceClause:0];
  v44[38] = v7;
  v44[39] = @"CREATE TABLE container_author (container_author_pid INTEGER PRIMARY KEY, container_pid INTEGER NOT NULL DEFAULT 0, person_pid INTEGER NOT NULL DEFAULT 0, role INTEGER NOT NULL DEFAULT 0, is_pending INTEGER NOT NULL DEFAULT 0, position INTEGER NOT NULL DEFAULT 0, UNIQUE (container_pid, person_pid))";
  v8 = objc_opt_new();
  v9 = [v8 createTableSQLWithExistenceClause:0];
  v44[40] = v9;
  v44[41] = @"CREATE TABLE library_pins (pin_pid INTEGER PRIMARY KEY, entity_pid INTEGER NOT NULL DEFAULT 0, entity_type INTEGER NOT NULL DEFAULT 0, position INTEGER NOT NULL DEFAULT 0, default_action INTEGER NOT NULL DEFAULT 1, position_uuid TEXT, UNIQUE (entity_pid, entity_type))";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:42];
  v11 = allSchemaSQL_allSchemaSQL;
  allSchemaSQL_allSchemaSQL = v10;
}

+ (id)itemNewSchemaSQL
{
  v2 = objc_opt_new();
  v3 = [v2 mutableCopy];

  [v3 setName:@"item_new"];
  v4 = [v3 createTableSQLWithExistenceClause:0];

  return v4;
}

+ (id)itemSchemaSQL
{
  v2 = objc_opt_new();
  v3 = [v2 createTableSQLWithExistenceClause:0];

  return v3;
}

- (void)updateUbiquitousDatabaseByRemovingUbiquitousMetadataFromTrackWithPersistentID:(int64_t)d
{
  v4 = [(ML3Entity *)[ML3Track alloc] initWithPersistentID:d inLibrary:self];
  v5 = [(ML3Entity *)v4 valueForProperty:@"item_kvs.key"];
  if ([v5 length])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __117__ML3MusicLibrary_UbiquitousDatabase__updateUbiquitousDatabaseByRemovingUbiquitousMetadataFromTrackWithPersistentID___block_invoke;
    v6[3] = &unk_278764670;
    v7 = v5;
    selfCopy = self;
    [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:1 withBlock:v6];
  }
}

void __117__ML3MusicLibrary_UbiquitousDatabase__updateUbiquitousDatabaseByRemovingUbiquitousMetadataFromTrackWithPersistentID___block_invoke(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v18[0] = *(a1 + 32);
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:v18 count:1];
  v11 = 0;
  v6 = [v4 executeUpdate:@"DELETE FROM cloud_kvs WHERE key = ?" withParameters:v5 error:&v11];

  v7 = v11;
  if ((v6 & 1) == 0)
  {
    v8 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      *buf = 138543874;
      v13 = v9;
      v14 = 2114;
      v15 = v10;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_ERROR, "%{public}@ Encountered removing item from cloud_kvs. key=%{public}@ error=%{public}@", buf, 0x20u);
    }
  }
}

- (BOOL)supportsUbiquitousPlaybackPositions
{
  if (MSVDeviceIsHomePod() & 1) != 0 || (MSVDeviceIsWatch())
  {
    return 0;
  }

  databasePath = [(ML3MusicLibrary *)self databasePath];
  v5 = +[ML3MusicLibrary autoupdatingSharedLibraryPath];
  v3 = ([databasePath isEqualToString:v5] & 1) != 0 || NSClassFromString(&cfstr_Sentestcase.isa) != 0;

  return v3;
}

- (id)mediaFolderRelativePath:(id)path
{
  pathCopy = path;
  resourcesManager = [(ML3MusicLibrary *)self resourcesManager];
  v6 = [resourcesManager mediaFolderRelativePath:pathCopy];

  return v6;
}

- (id)pathForBaseLocationPath:(int64_t)path
{
  resourcesManager = [(ML3MusicLibrary *)self resourcesManager];
  v5 = [resourcesManager pathForBaseLocationPath:path];

  return v5;
}

- (id)pathForResourceFileOrFolder:(int)folder basePath:(id)path relativeToBase:(BOOL)base createParentFolderIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  baseCopy = base;
  v8 = *&folder;
  pathCopy = path;
  resourcesManager = [(ML3MusicLibrary *)self resourcesManager];
  v12 = [resourcesManager pathForResourceFileOrFolder:v8 basePath:pathCopy relativeToBase:baseCopy createParentFolderIfNecessary:necessaryCopy];

  return v12;
}

- (id)pathForResourceFileOrFolder:(int)folder
{
  v3 = *&folder;
  resourcesManager = [(ML3MusicLibrary *)self resourcesManager];
  v5 = [resourcesManager pathForResourceFileOrFolder:v3];

  return v5;
}

- (id)libraryContainerRelativePath:(id)path
{
  pathCopy = path;
  resourcesManager = [(ML3MusicLibrary *)self resourcesManager];
  v6 = [resourcesManager libraryContainerRelativePath:pathCopy];

  return v6;
}

- (id)libraryContainerPathByAppendingPathComponent:(id)component
{
  componentCopy = component;
  resourcesManager = [(ML3MusicLibrary *)self resourcesManager];
  v6 = [resourcesManager libraryContainerPathByAppendingPathComponent:componentCopy];

  return v6;
}

- (id)libraryContainerPath
{
  resourcesManager = [(ML3MusicLibrary *)self resourcesManager];
  libraryContainerPath = [resourcesManager libraryContainerPath];

  return libraryContainerPath;
}

+ (id)cloudAssetsSharedCacheFolderPath
{
  v2 = [ML3MusicLibrary mediaFolderPathByAppendingPathComponent:@"Music/Cache/SharedCache"];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ML3MusicLibrary_ML3Resources__cloudAssetsSharedCacheFolderPath__block_invoke;
  block[3] = &unk_278765FB8;
  v3 = v2;
  v6 = v3;
  if (cloudAssetsSharedCacheFolderPath_onceToken != -1)
  {
    dispatch_once(&cloudAssetsSharedCacheFolderPath_onceToken, block);
  }

  return v3;
}

void __65__ML3MusicLibrary_ML3Resources__cloudAssetsSharedCacheFolderPath__block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = a1;
  v4 = *(a1 + 32);
  v44 = 0;
  v37 = v2;
  v5 = [v2 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v44];
  v6 = v44;
  if ((v5 & 1) == 0)
  {
    v7 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 138543618;
      v47 = v8;
      v48 = 2114;
      v49 = v6;
      _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_ERROR, "Failed to create cloud asset shared cache folder %{public}@ error %{public}@", buf, 0x16u);
    }
  }

  MSVGetKernelBootTime();
  v10 = v9;
  v11 = [MEMORY[0x277CBEAA8] date];
  [v11 timeIntervalSince1970];
  v13 = v12 + -604800.0;

  if (v10 < v13)
  {
    v10 = v13;
  }

  v14 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v10];
    *buf = 138412290;
    v47 = v15;
    _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_DEFAULT, "Clearing cached items created before %@ in the shared cache folder", buf, 0xCu);
  }

  v16 = [v37 enumeratorAtPath:*(a1 + 32)];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v17)
  {
    v19 = v17;
    v20 = *v41;
    v36 = *MEMORY[0x277CCA108];
    *&v18 = 138543618;
    v35 = v18;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v41 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v40 + 1) + 8 * i);
        if ([v22 hasPrefix:{@"tmp.", v35}])
        {
          v23 = v6;
        }

        else
        {
          v24 = [*(v3 + 32) stringByAppendingPathComponent:v22];
          v39 = v6;
          v25 = [v37 attributesOfItemAtPath:v24 error:&v39];
          v23 = v39;

          if (!v25)
          {
            v32 = os_log_create("com.apple.amp.medialibrary", "Default");
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              *buf = v35;
              v47 = v22;
              v48 = 2114;
              v49 = v23;
              v33 = v32;
              v34 = "Failed to retrieve attributes of shared cache file %{public}@ error %{public}@";
LABEL_23:
              _os_log_impl(&dword_22D2FA000, v33, OS_LOG_TYPE_ERROR, v34, buf, 0x16u);
            }

LABEL_24:

            goto LABEL_25;
          }

          v26 = [v25 objectForKey:v36];
          [v26 timeIntervalSince1970];
          v28 = v27;

          v6 = v23;
          if (v28 >= v10)
          {
            goto LABEL_26;
          }
        }

        v29 = v23;
        v30 = [*(v3 + 32) stringByAppendingPathComponent:v22];
        v38 = v23;
        v31 = [v37 removeItemAtPath:v30 error:&v38];
        v23 = v38;

        if ((v31 & 1) == 0)
        {
          v32 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = v35;
            v47 = v22;
            v48 = 2114;
            v49 = v23;
            v33 = v32;
            v34 = "Failed to remove shared cache temporary file %{public}@ error %{public}@";
            goto LABEL_23;
          }

          goto LABEL_24;
        }

LABEL_25:
        v6 = v23;
LABEL_26:
        [v16 skipDescendants];
      }

      v19 = [v16 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v19);
  }
}

+ (id)pathForBaseLocationPath:(int64_t)path
{
  v4 = +[ML3MusicLibraryResourcesManager sharedManager];
  v5 = [v4 pathForBaseLocationPath:path];

  return v5;
}

+ (id)pathForResourceFileOrFolder:(int)folder basePath:(id)path relativeToBase:(BOOL)base createParentFolderIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  baseCopy = base;
  v8 = *&folder;
  pathCopy = path;
  v10 = +[ML3MusicLibraryResourcesManager sharedManager];
  v11 = [v10 pathForResourceFileOrFolder:v8 basePath:pathCopy relativeToBase:baseCopy createParentFolderIfNecessary:necessaryCopy];

  return v11;
}

+ (id)pathForResourceFileOrFolder:(int)folder
{
  v3 = *&folder;
  v4 = +[ML3MusicLibraryResourcesManager sharedManager];
  v5 = [v4 pathForResourceFileOrFolder:v3];

  return v5;
}

+ (id)libraryContainerRelativePath:(id)path
{
  pathCopy = path;
  v4 = +[ML3MusicLibraryResourcesManager sharedManager];
  v5 = [v4 libraryContainerRelativePath:pathCopy];

  return v5;
}

+ (id)libraryContainerPathByAppendingPathComponent:(id)component
{
  componentCopy = component;
  v4 = +[ML3MusicLibraryResourcesManager sharedManager];
  v5 = [v4 libraryContainerPathByAppendingPathComponent:componentCopy];

  return v5;
}

+ (id)libraryContainerPath
{
  v2 = +[ML3MusicLibraryResourcesManager sharedManager];
  libraryContainerPath = [v2 libraryContainerPath];

  return libraryContainerPath;
}

+ (id)libraryPathForContainerPath:(id)path
{
  msv_stringByResolvingRealPath = [path msv_stringByResolvingRealPath];
  v4 = [msv_stringByResolvingRealPath stringByAppendingPathComponent:@"iTunes_Control/iTunes/MediaLibrary.sqlitedb"];

  return v4;
}

+ (id)allLibraryContainerPaths
{
  v23 = *MEMORY[0x277D85DE8];
  if (allLibraryContainerPaths_onceToken != -1)
  {
    dispatch_once(&allLibraryContainerPaths_onceToken, &__block_literal_global_16944);
  }

  array = [MEMORY[0x277CBEB18] array];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = +[ML3MusicLibrary mediaFolderPath];
  v4 = [defaultManager contentsOfDirectoryAtPath:v3 error:0];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = +[ML3MusicLibrary mediaFolderPath];
        v12 = [v11 stringByAppendingPathComponent:v10];

        if (([allLibraryContainerPaths___potentialContainerDenylist containsObject:v10] & 1) == 0)
        {
          defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
          v14 = [defaultManager2 contentsOfDirectoryAtPath:v12 error:0];
          v15 = [v14 containsObject:@"iTunes_Control"];

          if (v15)
          {
            [array addObject:v12];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  return array;
}

void __57__ML3MusicLibrary_ML3Resources__allLibraryContainerPaths__block_invoke()
{
  v0 = allLibraryContainerPaths___potentialContainerDenylist;
  allLibraryContainerPaths___potentialContainerDenylist = &unk_2840C8600;
}

+ (id)mediaFolderPathByAppendingPathComponent:(id)component
{
  componentCopy = component;
  v4 = +[ML3MusicLibrary mediaFolderPath];
  v5 = [v4 stringByAppendingPathComponent:componentCopy];

  return v5;
}

- (void)_removeLibraryPinsForDeletedTracksUsingConnection:(id)connection
{
  connectionCopy = connection;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__18595;
  v23[4] = __Block_byref_object_dispose__18596;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__18595;
  v21 = __Block_byref_object_dispose__18596;
  array = [MEMORY[0x277CBEB18] array];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__18595;
  v15[4] = __Block_byref_object_dispose__18596;
  v16 = 0;
  v4 = [connectionCopy executeQuery:{@"SELECT pin_pid, entity_pid, entity_type from library_pins"}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91__ML3MusicLibrary_RemoveSourceOrTracks___removeLibraryPinsForDeletedTracksUsingConnection___block_invoke;
  v11[3] = &unk_278763E68;
  v13 = v15;
  v5 = connectionCopy;
  v12 = v5;
  v14 = &v17;
  [v4 enumerateRowsWithBlock:v11];
  v6 = v18[5];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __91__ML3MusicLibrary_RemoveSourceOrTracks___removeLibraryPinsForDeletedTracksUsingConnection___block_invoke_172;
  v8[3] = &unk_278763E90;
  v7 = v5;
  v9 = v7;
  v10 = v23;
  [v6 enumerateObjectsUsingBlock:v8];

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(v23, 8);
}

void __91__ML3MusicLibrary_RemoveSourceOrTracks___removeLibraryPinsForDeletedTracksUsingConnection___block_invoke(void *a1, void *a2)
{
  v44[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 int64ForColumnIndex:0];
  v5 = [v3 int64ForColumnIndex:1];
  v6 = [v3 intForColumnIndex:2];

  switch(v6)
  {
    case 7:
      v25 = a1[4];
      v26 = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
      v40 = v26;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
      v28 = [v25 executeQuery:@"SELECT 1 FROM item JOIN album_artist ON (item.album_artist_pid=album_artist.album_artist_pid) WHERE album_artist.album_artist_pid=? AND in_my_library=1 LIMIT 1" withParameters:v27];
      v29 = *(a1[5] + 8);
      v30 = *(v29 + 40);
      *(v29 + 40) = v28;

      if (([*(*(a1[5] + 8) + 40) hasAtLeastOneRow] & 1) == 0)
      {
        v31 = a1[4];
        v32 = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
        v39[0] = v32;
        v39[1] = &unk_2840C9C50;
        v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
        v34 = [v31 executeQuery:@"SELECT 1 FROM album_artist WHERE album_artist.album_artist_pid=? AND liked_state=? LIMIT 1" withParameters:v33];
        v35 = *(a1[5] + 8);
        v36 = *(v35 + 40);
        *(v35 + 40) = v34;

        if (([*(*(a1[5] + 8) + 40) hasAtLeastOneRow] & 1) == 0)
        {
          v37 = *(*(a1[6] + 8) + 40);
          v38 = [MEMORY[0x277CCABB0] numberWithLongLong:v4];
          [v37 addObject:v38];

          v15 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v43 = v4;
            v16 = "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks Removing pinned artist with PID=%lld as it no longer has library backed tracks";
            goto LABEL_14;
          }

LABEL_15:
        }
      }

      break;
    case 4:
      v17 = a1[4];
      v18 = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
      v41 = v18;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
      v20 = [v17 executeQuery:@"SELECT 1 FROM item JOIN album ON (item.album_pid=album.album_pid) WHERE album.album_pid=? AND in_my_library=1 LIMIT 1" withParameters:v19];
      v21 = *(a1[5] + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;

      if ([*(*(a1[5] + 8) + 40) hasAtLeastOneRow])
      {
        return;
      }

      v23 = *(*(a1[6] + 8) + 40);
      v24 = [MEMORY[0x277CCABB0] numberWithLongLong:v4];
      [v23 addObject:v24];

      v15 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 134217984;
      v43 = v4;
      v16 = "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks Removing pinned album with PID=%lld as it no longer has library backed tracks";
      goto LABEL_14;
    case 0:
      v7 = a1[4];
      v8 = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
      v44[0] = v8;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
      v10 = [v7 executeQuery:@"SELECT 1 FROM item JOIN item_store USING(item_pid) WHERE item_pid=? AND in_my_library=1 LIMIT 1" withParameters:v9];
      v11 = *(a1[5] + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      if (([*(*(a1[5] + 8) + 40) hasAtLeastOneRow] & 1) == 0)
      {
        v13 = *(*(a1[6] + 8) + 40);
        v14 = [MEMORY[0x277CCABB0] numberWithLongLong:v4];
        [v13 addObject:v14];

        v15 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v43 = v4;
          v16 = "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks Removing pinned song with PID=%lld as it's no longer in library";
LABEL_14:
          _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 0xCu);
          goto LABEL_15;
        }

        goto LABEL_15;
      }

      break;
  }
}

void __91__ML3MusicLibrary_RemoveSourceOrTracks___removeLibraryPinsForDeletedTracksUsingConnection___block_invoke_172(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v15[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v6 = *(*(a1 + 40) + 8);
  obj = *(v6 + 40);
  LOBYTE(v4) = [v4 executeUpdate:@"DELETE FROM library_pins WHERE pin_pid=?" withParameters:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);

  if ((v4 & 1) == 0)
  {
    v7 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v3 longLongValue];
      v9 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 134218242;
      v12 = v8;
      v13 = 2114;
      v14 = v9;
      _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_DEFAULT, "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks Removing pinned entity with PID=%lld failed with error=%{public}@", buf, 0x16u);
    }
  }
}

- (BOOL)_removeSource:(int)source fromPersistentIDS:(id)s forImportOperation:(id)operation canonocalizeCollections:(BOOL)collections usingConnection:(id)connection postNotifications:(BOOL)notifications
{
  collectionsCopy = collections;
  v139 = *MEMORY[0x277D85DE8];
  sCopy = s;
  operationCopy = operation;
  connectionCopy = connection;
  v13 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    *v130 = source;
    *&v130[4] = 2048;
    *&v130[6] = [sCopy count];
    v131 = 1024;
    v132 = collectionsCopy;
    _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_DEFAULT, "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks removing source %d from %lu tracks, canonocalizeCollections=%{BOOL}u", buf, 0x18u);
  }

  v86 = sCopy;

  if (sCopy && [sCopy count])
  {
    v125 = 0;
    v126 = &v125;
    v127 = 0x2020000000;
    v128 = 0;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v15 = v14;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v17 = malloc_type_malloc(8 * [sCopy count], 0x100004000313F17uLL);
    v121 = 0;
    v122 = &v121;
    v123 = 0x2020000000;
    v124 = 0;
    v114[0] = MEMORY[0x277D85DD0];
    v114[1] = 3221225472;
    v114[2] = __150__ML3MusicLibrary_RemoveSourceOrTracks___removeSource_fromPersistentIDS_forImportOperation_canonocalizeCollections_usingConnection_postNotifications___block_invoke;
    v114[3] = &unk_278763E18;
    sourceCopy = source;
    v114[4] = self;
    v117 = &v125;
    v81 = v17;
    v119 = v17;
    v118 = &v121;
    v18 = connectionCopy;
    v115 = v18;
    v95 = dictionary;
    v116 = v95;
    [ML3Track enumeratePathsToDeleteFromLibrary:self persistentIDs:sCopy usingConnection:v18 usingBlock:v114];
    if ([operationCopy isCancelled])
    {
      goto LABEL_37;
    }

    v19 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v122[3];
      *buf = 134217984;
      *v130 = v20;
      _os_log_impl(&dword_22D2FA000, v19, OS_LOG_TYPE_DEFAULT, "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks deleting %lu tracks", buf, 0xCu);
    }

    v21 = v122[3];
    if (v21)
    {
      if (![ML3Track deleteFromLibrary:self deletionType:2 canonicalizeCollections:collectionsCopy persistentIDs:v81 count:v21 usingConnection:v18])
      {
        allValues = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(allValues, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v40 = "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks failed to delete purged tracks";
LABEL_34:
          _os_log_impl(&dword_22D2FA000, allValues, OS_LOG_TYPE_DEFAULT, v40, buf, 2u);
        }

LABEL_35:
        v82 = 0;
LABEL_36:

        if (([operationCopy isCancelled] & 1) == 0)
        {
          array = [MEMORY[0x277CBEB18] array];
          v42 = [ML3MusicLibrary artworkSourceTypeForTrackSource:source];
          v43 = MEMORY[0x277CBEB18];
          v44 = [MEMORY[0x277CCABB0] numberWithInteger:v42];
          v90 = [v43 arrayWithObjects:{v44, &unk_2840C9C08, &unk_2840C9C38, 0}];

          v45 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v46 = [v86 count];
            *buf = 134218240;
            *v130 = v46;
            *&v130[8] = 1024;
            *&v130[10] = v42;
            _os_log_impl(&dword_22D2FA000, v45, OS_LOG_TYPE_DEFAULT, "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks updating artwork for %lu persistentIDs, sourceType=%d", buf, 0x12u);
          }

          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          obj = v86;
          v47 = [obj countByEnumeratingWithState:&v106 objects:v136 count:16];
          if (v47)
          {
            v88 = *v107;
            do
            {
              v91 = v47;
              for (i = 0; i != v91; ++i)
              {
                if (*v107 != v88)
                {
                  objc_enumerationMutation(obj);
                }

                v49 = *(*(&v106 + 1) + 8 * i);
                [v90 replaceObjectAtIndex:1 withObject:v49];
                [v18 executeUpdate:@"DELETE FROM artwork_token WHERE artwork_source_type = ? AND entity_pid = ? AND entity_type = ?" withParameters:v90 error:0];
                v50 = [v18 executeQuery:@"SELECT artwork_type FROM best_artwork_token WHERE fetchable_artwork_source_type = ? AND entity_pid = ? AND entity_type = ?" withParameters:v90];
                v103[0] = MEMORY[0x277D85DD0];
                v103[1] = 3221225472;
                v103[2] = __150__ML3MusicLibrary_RemoveSourceOrTracks___removeSource_fromPersistentIDS_forImportOperation_canonocalizeCollections_usingConnection_postNotifications___block_invoke_146;
                v103[3] = &unk_278763E40;
                v51 = array;
                v104 = v51;
                v105 = v49;
                [v50 enumerateRowsWithBlock:v103];
                v93 = v50;
                v101 = 0u;
                v102 = 0u;
                v99 = 0u;
                v100 = 0u;
                v52 = v51;
                v53 = [v52 countByEnumeratingWithState:&v99 objects:v135 count:16];
                if (v53)
                {
                  v54 = *v100;
                  do
                  {
                    for (j = 0; j != v53; ++j)
                    {
                      if (*v100 != v54)
                      {
                        objc_enumerationMutation(v52);
                      }

                      v56 = *(*(&v99 + 1) + 8 * j);
                      v57 = [v56 objectAtIndexedSubscript:0];
                      longLongValue = [v57 longLongValue];
                      v59 = [v56 objectAtIndexedSubscript:1];
                      -[ML3MusicLibrary updateBestArtworkTokenForEntityPersistentID:entityType:artworkType:retrievalTime:usingConnection:](self, "updateBestArtworkTokenForEntityPersistentID:entityType:artworkType:retrievalTime:usingConnection:", longLongValue, 0, [v59 intValue], v18, 0.0);
                    }

                    v53 = [v52 countByEnumeratingWithState:&v99 objects:v135 count:16];
                  }

                  while (v53);
                }
              }

              v47 = [obj countByEnumeratingWithState:&v106 objects:v136 count:16];
            }

            while (v47);
          }

          if (source == 3 && *(v126 + 24) == 1)
          {
            v60 = _ML3LogCategoryDefault();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *v130 = 3;
              _os_log_impl(&dword_22D2FA000, v60, OS_LOG_TYPE_DEFAULT, "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks cleaning artwork options for source=%d", buf, 8u);
            }

            [(ML3MusicLibrary *)self cleanupArtworkWithOptions:6 usingConnection:v18];
          }

          array2 = [MEMORY[0x277CBEB18] array];
          v61 = [obj count];
          if (v61 >= 1)
          {
            do
            {
              if (v61 >= 0xFA)
              {
                v62 = 250;
              }

              else
              {
                v62 = v61;
              }

              v63 = +[ML3DatabaseStatementRenderer defaultRenderer];
              v64 = [v63 statementWithPrefix:@"SELECT item_pid FROM item JOIN item_stats USING(item_pid) WHERE in_my_library=0 AND liked_state=2 AND item_pid" inParameterCount:v62];
              v65 = [obj subarrayWithRange:{objc_msgSend(obj, "count") - v61, v62}];
              v66 = [v18 executeQuery:v64 withParameters:v65];
              v97[0] = MEMORY[0x277D85DD0];
              v97[1] = 3221225472;
              v97[2] = __150__ML3MusicLibrary_RemoveSourceOrTracks___removeSource_fromPersistentIDS_forImportOperation_canonocalizeCollections_usingConnection_postNotifications___block_invoke_151;
              v97[3] = &unk_278766118;
              v98 = array2;
              [v66 enumerateRowsWithBlock:v97];

              v67 = v61 <= v62;
              v61 -= v62;
            }

            while (!v67);
          }

          v68 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            v69 = [array2 count];
            *buf = 134217984;
            *v130 = v69;
            _os_log_impl(&dword_22D2FA000, v68, OS_LOG_TYPE_DEFAULT, "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks removing liked_state from=%lu presistentIDs", buf, 0xCu);
          }

          v70 = [array2 count];
          if (v70 >= 1)
          {
            do
            {
              date = [MEMORY[0x277CBEAA8] date];
              if (v70 >= 0xFA)
              {
                v72 = 250;
              }

              else
              {
                v72 = v70;
              }

              v73 = +[ML3DatabaseStatementRenderer defaultRenderer];
              v74 = [v73 statementWithPrefix:@"UPDATE item_stats SET liked_state=0 inParameterCount:{liked_state_changed_date=? WHERE item_pid", v72}];
              v75 = [MEMORY[0x277CBEB18] arrayWithObject:date];
              v76 = [array2 subarrayWithRange:{objc_msgSend(array2, "count") - v70, v72}];
              [v75 addObjectsFromArray:v76];

              v96 = 0;
              LOBYTE(v76) = [v18 executeUpdate:v74 withParameters:v75 error:&v96];
              v92 = v96;
              if ((v76 & 1) == 0)
              {
                v77 = os_log_create("com.apple.amp.medialibrary", "Default");
                if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  *v130 = v92;
                  _os_log_impl(&dword_22D2FA000, v77, OS_LOG_TYPE_DEFAULT, "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks failed to update liked_state on deleted tracks, error=%{public}@", buf, 0xCu);
                }
              }

              v67 = v70 <= v72;
              v70 -= v72;
            }

            while (!v67);
          }

          if (source == 2)
          {
            [(ML3MusicLibrary *)self _removeLibraryPinsForDeletedTracksUsingConnection:v18];
          }

          v78 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
          {
            v79 = [obj count];
            [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
            *buf = 67109888;
            *v130 = source;
            *&v130[4] = 2048;
            *&v130[6] = v79;
            v131 = 1024;
            v132 = v82;
            v133 = 2048;
            v134 = v80 - v15;
            _os_log_impl(&dword_22D2FA000, v78, OS_LOG_TYPE_DEFAULT, "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks Removing source: %d from %lu tracks finished with success=%d in %.3f seconds", buf, 0x22u);
          }

          [(ML3MusicLibrary *)self notifyEntitiesAddedOrRemoved];
          [(ML3MusicLibrary *)self notifyContentsDidChange];
          free(v81);

          goto LABEL_38;
        }

LABEL_37:
        LOBYTE(v82) = 0;
LABEL_38:

        _Block_object_dispose(&v121, 8);
        _Block_object_dispose(&v125, 8);
        goto LABEL_39;
      }

      [v18 executeUpdate:@"UPDATE album SET user_rating=IFNULL((SELECT AVG(user_rating) FROM item_stats JOIN item USING (item_pid) WHERE album.album_pid=item.album_pid) withParameters:album.user_rating) WHERE album.user_rating_is_derived=1" error:{0, 0}];
    }

    v22 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *v130 = sCopy;
      _os_log_impl(&dword_22D2FA000, v22, OS_LOG_TYPE_DEFAULT, "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks Removing potential non-library tracks from all containers: %{public}@", buf, 0xCu);
    }

    [ML3Container removeAnyNonLibraryItemsInPersistentIDs:sCopy fromContainersInLibrary:self usingConnection:v18];
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    allKeys = [v95 allKeys];
    v24 = [allKeys countByEnumeratingWithState:&v110 objects:v138 count:16];
    if (v24)
    {
      v25 = *v111;
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v111 != v25)
          {
            objc_enumerationMutation(allKeys);
          }

          v27 = *(*(&v110 + 1) + 8 * k);
          v137 = v27;
          v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v137 count:1];
          v29 = [v18 executeQuery:@"SELECT 1 FROM container_item JOIN container USING(container_pid) WHERE is_hidden = 0 AND item_pid = ?" withParameters:v28];
          hasAtLeastOneRow = [v29 hasAtLeastOneRow];

          if (hasAtLeastOneRow)
          {
            v31 = os_log_create("com.apple.amp.medialibrary", "Default");
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              longLongValue2 = [v27 longLongValue];
              *buf = 134217984;
              *v130 = longLongValue2;
              _os_log_impl(&dword_22D2FA000, v31, OS_LOG_TYPE_DEFAULT, "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks Keeping asset for track %llu because it is ATPWATL", buf, 0xCu);
            }

            [v95 removeObjectForKey:v27];
          }
        }

        v24 = [allKeys countByEnumeratingWithState:&v110 objects:v138 count:16];
      }

      while (v24);
    }

    v33 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [v95 count];
      *buf = 134217984;
      *v130 = v34;
      _os_log_impl(&dword_22D2FA000, v33, OS_LOG_TYPE_DEFAULT, "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks purging %lu assets", buf, 0xCu);
    }

    if (![v95 count] || (objc_msgSend(v95, "allKeys"), v35 = objc_claimAutoreleasedReturnValue(), v36 = +[ML3Track clearLocationFromLibrary:persistentIDs:usingConnection:](ML3Track, "clearLocationFromLibrary:persistentIDs:usingConnection:", self, v35, v18), v35, v36))
    {
      v37 = MEMORY[0x277CBEB98];
      allValues = [v95 allValues];
      v39 = [v37 setWithArray:allValues];
      ML3DeleteAssetsAtPaths(v39);

      v82 = 1;
      goto LABEL_36;
    }

    allValues = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(allValues, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v40 = "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks failed to clear location for purged tracks";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  LOBYTE(v82) = 1;
LABEL_39:

  return v82;
}

void __150__ML3MusicLibrary_RemoveSourceOrTracks___removeSource_fromPersistentIDS_forImportOperation_canonocalizeCollections_usingConnection_postNotifications___block_invoke(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  *&v40[5] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v40 = a5;
    _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks enumeratePathsToDeleteFromLibrary: %lld", buf, 0xCu);
  }

  v11 = [(ML3Entity *)ML3Track newWithPersistentID:a5 inLibrary:*(a1 + 32)];
  v12 = [v11 valueForProperty:@"item_stats.needs_restore"];
  if ([v12 BOOLValue])
  {
    v13 = [v11 valueForProperty:@"item_store.store_item_id"];
    v14 = [v13 longLongValue] != 0;
  }

  else
  {
    v14 = 0;
  }

  if (*(a1 + 80) == 3 && (*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v15 = [v11 valueForProperty:@"item_store.sync_id"];
    *(*(*(a1 + 56) + 8) + 24) = [v15 longLongValue] != 0;

    v16 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(*(*(a1 + 56) + 8) + 24);
      *buf = 67109376;
      v40[0] = v17;
      LOWORD(v40[1]) = 2048;
      *(&v40[1] + 2) = a5;
      _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_DEFAULT, "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks hasSyncSource=%{BOOL}u, trackPID= %lld", buf, 0x12u);
    }
  }

  if (!v14)
  {
    v18 = *(a1 + 80);
    if (v18 < 2)
    {
LABEL_13:
      v19 = *(a1 + 72);
      v20 = *(*(a1 + 64) + 8);
      v21 = *(v20 + 24);
      *(v20 + 24) = v21 + 1;
      *(v19 + 8 * v21) = a5;
      goto LABEL_27;
    }

    if (a4)
    {
      v37 = a3;
    }

    else
    {
      if (ML3TrackRulesRemoveLocalAssetForSource(v18))
      {
        goto LABEL_13;
      }

      v37 = a3;
      v18 = *(a1 + 80);
    }

    v22 = ML3TrackRulesRemovalPropertiesForSource(v18);
    v23 = [v22 allValues];
    v24 = [v22 allKeys];
    [v11 setValues:v23 forProperties:v24 usingConnection:*(a1 + 40)];

    v25 = *(a1 + 40);
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT %@ FROM item WHERE item_pid=?", @"(item.remote_location_id >= 50 AND item.remote_location_id < 300)"];
    v27 = [MEMORY[0x277CCABB0] numberWithLongLong:a5];
    v38 = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
    v29 = [v25 executeQuery:v26 withParameters:v28];
    v30 = [v29 int64ValueForFirstRowAndColumn];

    if (v30)
    {
      if (v9 && ML3TrackRulesRemoveLocalAssetForSource(*(a1 + 80)))
      {
        v31 = *(a1 + 48);
        v32 = [MEMORY[0x277CCABB0] numberWithLongLong:a5];
        [v31 setObject:v9 forKey:v32];
      }
    }

    else if (!v9 || (v33 = ML3TrackRulesRemoveLocalAssetForSource(*(a1 + 80)), v37 < 250) || v33)
    {
      v34 = *(a1 + 72);
      v35 = *(*(a1 + 64) + 8);
      v36 = *(v35 + 24);
      *(v35 + 24) = v36 + 1;
      *(v34 + 8 * v36) = a5;
    }
  }

LABEL_27:
}

void __150__ML3MusicLibrary_RemoveSourceOrTracks___removeSource_fromPersistentIDS_forImportOperation_canonocalizeCollections_usingConnection_postNotifications___block_invoke_146(uint64_t a1, void *a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v5[0] = *(a1 + 40);
  v3 = [a2 objectAtIndexedSubscript:0];
  v5[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  [v2 addObject:v4];
}

void __150__ML3MusicLibrary_RemoveSourceOrTracks___removeSource_fromPersistentIDS_forImportOperation_canonocalizeCollections_usingConnection_postNotifications___block_invoke_151(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(a2, "int64ForColumnIndex:", 0)}];
  [v2 addObject:v3];
}

- (BOOL)removeSource:(int)source forImportOperation:(id)operation usingConnection:(id)connection postNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  v150 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  connectionCopy = connection;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v9 = v8;
  v10 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = source;
    _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks Removing source: %d from entire library", buf, 8u);
  }

  sourceCopy = source;

  v110 = ML3TrackRulesRemovalPropertiesForSource(source);
  v107 = ML3TrackRulesRemovalSourceIdentityPropertyForSource(source);
  v106 = [ML3ComparisonPredicate predicateWithProperty:v107 value:&unk_2840C9C08 comparison:2];
  if (source != 3)
  {
    if (source != 2)
    {
      v97 = 0;
      v23 = 0;
      goto LABEL_24;
    }

    v97 = 1;
    v148[0] = v106;
    v11 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.is_protected" equalToInt64:2];
    v148[1] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v148 count:2];
    v13 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v12];

    v14 = [(ML3Entity *)ML3Track unrestrictedAllItemsQueryWithlibrary:self predicate:v13 orderingTerms:MEMORY[0x277CBEBF8]];
    array = [MEMORY[0x277CBEB18] array];
    v139[0] = MEMORY[0x277D85DD0];
    v139[1] = 3221225472;
    v139[2] = __107__ML3MusicLibrary_RemoveSourceOrTracks__removeSource_forImportOperation_usingConnection_postNotifications___block_invoke;
    v139[3] = &unk_278765BD8;
    v16 = array;
    v140 = v16;
    [v14 enumeratePersistentIDsUsingBlock:v139];
    if ([v16 count])
    {
      v17 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v16 count];
        *buf = 134218240;
        *&buf[4] = v18;
        *&buf[12] = 1024;
        *&buf[14] = 2;
        _os_log_impl(&dword_22D2FA000, v17, OS_LOG_TYPE_DEFAULT, "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks Found %lu tracks to unlink with asset protection type = %d", buf, 0x12u);
      }

      v19 = [MEMORY[0x277CBEB58] set];
      v137[0] = MEMORY[0x277D85DD0];
      v137[1] = 3221225472;
      v137[2] = __107__ML3MusicLibrary_RemoveSourceOrTracks__removeSource_forImportOperation_usingConnection_postNotifications___block_invoke_95;
      v137[3] = &unk_278763DA8;
      v20 = v19;
      v138 = v20;
      [ML3Track enumeratePathsToDeleteFromLibrary:self persistentIDs:v16 usingBlock:v137];
      v21 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v20;
        _os_log_impl(&dword_22D2FA000, v21, OS_LOG_TYPE_DEFAULT, "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks Deleting assets due to remove cloud library source:%{public}@", buf, 0xCu);
      }

      ML3DeleteAssetsAtPaths(v20);
      if (![ML3Track clearLocationFromLibrary:self persistentIDs:v16 usingConnection:connectionCopy])
      {
        v22 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *&buf[4] = 2;
          *&buf[8] = 1024;
          *&buf[10] = 2;
          _os_log_impl(&dword_22D2FA000, v22, OS_LOG_TYPE_DEFAULT, "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks Removing source: %d, failed to clear location for tracks with asset protection type = %d", buf, 0xEu);
        }
      }
    }

    v23 = 0;
    v24 = v140;
    goto LABEL_22;
  }

  v97 = 0;
  v13 = ML3NonQualifiedColumnNameFromProperty(@"item_stats.chosen_by_auto_fill");
  v14 = [v110 objectForKey:@"item_stats.chosen_by_auto_fill"];
  v25 = [v110 mutableCopy];
  [v25 removeObjectForKey:@"item_stats.chosen_by_auto_fill"];

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE item_stats SET %@=%@", v13, v14];
  v141 = 0;
  v26 = [connectionCopy executeUpdate:v16 withParameters:0 error:&v141];
  v23 = v141;
  if ((v26 & 1) == 0)
  {
    v24 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109890;
      *&buf[4] = 3;
      *&buf[8] = 2112;
      *&buf[10] = @"item_stats.chosen_by_auto_fill";
      *&buf[18] = 2112;
      *&buf[20] = v14;
      *&buf[28] = 2112;
      *&buf[30] = v23;
      _os_log_impl(&dword_22D2FA000, v24, OS_LOG_TYPE_DEFAULT, "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks Removing source: %d, failed to set %@ to %@ with error: %@", buf, 0x26u);
    }

    v110 = v25;
LABEL_22:

    v25 = v110;
    goto LABEL_23;
  }

  v97 = 0;
LABEL_23:

  v110 = v25;
LABEL_24:
  if ([operationCopy isCancelled])
  {
    LOBYTE(v103) = 0;
  }

  else
  {
    v105 = [(ML3Entity *)ML3Track unrestrictedAllItemsQueryWithlibrary:self predicate:v106 orderingTerms:MEMORY[0x277CBEBF8]];
    [v105 setIgnoreRestrictionsPredicates:1];
    selectPersistentIDsSQL = [v105 selectPersistentIDsSQL];
    persistentIDParameters = [v105 persistentIDParameters];
    v101 = [MEMORY[0x277CCAB68] stringWithString:@"UPDATE item_store SET "];
    v27 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v110, "count")}];
    v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v110, "count")}];
    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    v29 = v110;
    v30 = [v29 countByEnumeratingWithState:&v133 objects:v147 count:16];
    if (v30)
    {
      v31 = *v134;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v134 != v31)
          {
            objc_enumerationMutation(v29);
          }

          v33 = *(*(&v133 + 1) + 8 * i);
          v34 = ML3NonQualifiedColumnNameFromProperty(v33);
          [v27 addObject:v34];
          v35 = [v29 objectForKey:v33];
          [v28 addObject:v35];
        }

        v30 = [v29 countByEnumeratingWithState:&v133 objects:v147 count:16];
      }

      while (v30);
    }

    v98 = [v27 componentsJoinedByString:{@"=?, "}];
    [v101 appendFormat:@"%@=? WHERE item_pid IN (%@)", v98, selectPersistentIDsSQL];
    v104 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v28, "count") + objc_msgSend(persistentIDParameters, "count")}];
    [v104 addObjectsFromArray:v28];
    [v104 addObjectsFromArray:persistentIDParameters];
    v132 = v23;
    v36 = [connectionCopy executeUpdate:v101 withParameters:v104 error:&v132];
    v94 = v132;

    if ((v36 & 1) == 0)
    {
      v37 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        allKeys = [v29 allKeys];
        *buf = 67109634;
        *&buf[4] = sourceCopy;
        *&buf[8] = 2114;
        *&buf[10] = allKeys;
        *&buf[18] = 2112;
        *&buf[20] = v94;
        _os_log_impl(&dword_22D2FA000, v37, OS_LOG_TYPE_DEFAULT, "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks Removing source: %d, failed to remove source properties: %{public}@\nwith error: %@", buf, 0x1Cu);
      }
    }

    if ([operationCopy isCancelled])
    {
      LOBYTE(v103) = 0;
    }

    else
    {
      array2 = [MEMORY[0x277CBEB18] array];
      array3 = [MEMORY[0x277CBEB18] array];
      array4 = [MEMORY[0x277CBEB18] array];
      array5 = [MEMORY[0x277CBEB18] array];
      v41 = [ML3ComparisonPredicate predicateWithProperty:@"remote_location_id" equalToInt64:0];
      [array5 addObject:v41];

      v42 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.is_ota_purchased" equalToInteger:0];
      [array5 addObject:v42];

      v43 = [ML3ComparisonPredicate predicateWithProperty:@"item_stats.needs_restore" equalToInt64:0];
      [array5 addObject:v43];

      v44 = sourceCopy;
      if (sourceCopy > 3 || sourceCopy == 1)
      {
        v45 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.sync_id" equalToInt64:0];
        [array5 addObject:v45];

        v44 = sourceCopy;
      }

      if ((ML3TrackRulesRemoveLocalAssetForSource(v44) & 1) == 0)
      {
        v46 = [ML3ComparisonPredicate predicateWithProperty:@"base_location_id" value:&unk_2840C9C20 comparison:5];
        [array5 addObject:v46];
      }

      v92 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:array5];
      v96 = [(ML3Entity *)ML3Track unrestrictedAllItemsQueryWithlibrary:self predicate:v92 orderingTerms:0];
      [v96 setIgnoreRestrictionsPredicates:1];
      selectPersistentIDsSQL2 = [v96 selectPersistentIDsSQL];
      persistentIDParameters2 = [v96 persistentIDParameters];
      v88 = [connectionCopy executeQuery:selectPersistentIDsSQL2 withParameters:persistentIDParameters2];
      v130[0] = MEMORY[0x277D85DD0];
      v130[1] = 3221225472;
      v130[2] = __107__ML3MusicLibrary_RemoveSourceOrTracks__removeSource_forImportOperation_usingConnection_postNotifications___block_invoke_109;
      v130[3] = &unk_278766118;
      v91 = array2;
      v131 = v91;
      [v88 enumerateRowsWithBlock:v130];
      v87 = [(ML3UnaryPredicate *)ML3NegationPredicate predicateWithPredicate:v92];
      v95 = [(ML3Entity *)ML3Track unrestrictedAllItemsQueryWithlibrary:self predicate:v87 orderingTerms:0];
      [v95 setIgnoreRestrictionsPredicates:1];
      selectPersistentIDsSQL3 = [v95 selectPersistentIDsSQL];
      persistentIDParameters3 = [v95 persistentIDParameters];
      v84 = [connectionCopy executeQuery:selectPersistentIDsSQL3 withParameters:persistentIDParameters3];
      v128[0] = MEMORY[0x277D85DD0];
      v128[1] = 3221225472;
      v128[2] = __107__ML3MusicLibrary_RemoveSourceOrTracks__removeSource_forImportOperation_usingConnection_postNotifications___block_invoke_2;
      v128[3] = &unk_278766118;
      v82 = array4;
      v129 = v82;
      [v84 enumerateRowsWithBlock:v128];
      if ([operationCopy isCancelled])
      {
        goto LABEL_67;
      }

      v47 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = [v91 count];
        v49 = [array3 count];
        *buf = 67109632;
        *&buf[4] = sourceCopy;
        *&buf[8] = 2048;
        *&buf[10] = v48;
        *&buf[18] = 2048;
        *&buf[20] = v49;
        _os_log_impl(&dword_22D2FA000, v47, OS_LOG_TYPE_DEFAULT, "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks Removing source: %d, deleting %lu tracks, purging %lu assets", buf, 0x1Cu);
      }

      if ([v91 count])
      {
        v50 = objc_autoreleasePoolPush();
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        *&buf[24] = 0;
        v51 = [v91 count];
        v124 = 0;
        v125 = &v124;
        v126 = 0x2020000000;
        v127 = malloc_type_malloc(8 * v51, 0x100004000313F17uLL);
        v123[0] = MEMORY[0x277D85DD0];
        v123[1] = 3221225472;
        v123[2] = __107__ML3MusicLibrary_RemoveSourceOrTracks__removeSource_forImportOperation_usingConnection_postNotifications___block_invoke_112;
        v123[3] = &unk_278763DF0;
        v123[4] = &v124;
        v123[5] = buf;
        [v91 enumerateObjectsUsingBlock:v123];
        [v91 removeAllObjects];
        v52 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *v145 = 134217984;
          v146 = v51;
          _os_log_impl(&dword_22D2FA000, v52, OS_LOG_TYPE_DEFAULT, "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks deleting %lu tracks", v145, 0xCu);
        }

        if (![ML3Track deleteFromLibrary:self deletionType:2 persistentIDs:v125[3] count:v51 usingConnection:connectionCopy])
        {
          v53 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            *v145 = 67109120;
            LODWORD(v146) = sourceCopy;
            _os_log_impl(&dword_22D2FA000, v53, OS_LOG_TYPE_DEFAULT, "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks Removing source: %d, failed to delete purged tracks", v145, 8u);
          }
        }

        free(v125[3]);
        [connectionCopy executeUpdate:@"UPDATE album SET user_rating=IFNULL((SELECT AVG(user_rating) FROM item_stats JOIN item USING (item_pid) WHERE album.album_pid=item.album_pid) withParameters:album.user_rating) WHERE album.user_rating_is_derived=1" error:{0, 0}];
        _Block_object_dispose(&v124, 8);
        _Block_object_dispose(buf, 8);
        objc_autoreleasePoolPop(v50);
      }

      if ([operationCopy isCancelled])
      {
        goto LABEL_67;
      }

      if ([array3 count])
      {
        v54 = objc_autoreleasePoolPush();
        v55 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22D2FA000, v55, OS_LOG_TYPE_DEFAULT, "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks Deleting assets due to remove source:", buf, 2u);
        }

        v56 = [array3 count];
        v57 = [MEMORY[0x277CBEB58] set];
        v121[0] = MEMORY[0x277D85DD0];
        v121[1] = 3221225472;
        v121[2] = __107__ML3MusicLibrary_RemoveSourceOrTracks__removeSource_forImportOperation_usingConnection_postNotifications___block_invoke_117;
        v121[3] = &unk_278763DA8;
        v58 = v57;
        v122 = v58;
        [ML3Track enumeratePathsToDeleteFromLibrary:self persistentIDs:array3 usingBlock:v121];
        ML3DeleteAssetsAtPaths(v58);
        v59 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v56;
          _os_log_impl(&dword_22D2FA000, v59, OS_LOG_TYPE_DEFAULT, "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks clearing location from %lu tracks", buf, 0xCu);
        }

        if (![ML3Track clearLocationFromLibrary:self persistentIDs:array3 usingConnection:connectionCopy])
        {
          v60 = _ML3LogCategoryDefault();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = sourceCopy;
            _os_log_impl(&dword_22D2FA000, v60, OS_LOG_TYPE_DEFAULT, "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks Removing source: %d, failed to clear location for purged tracks", buf, 8u);
          }
        }

        objc_autoreleasePoolPop(v54);
      }

      if ([operationCopy isCancelled])
      {
LABEL_67:
        LOBYTE(v103) = 0;
      }

      else
      {
        if ([v82 count])
        {
          [(ML3Entity *)ML3Track incrementRevisionForRevisionTypeContentWithConnection:connectionCopy deletionType:0 persistentIDs:v82];
        }

        v62 = [ML3MusicLibrary artworkSourceTypeForTrackSource:sourceCopy];
        v63 = [MEMORY[0x277CCABB0] numberWithInteger:v62];
        v144 = v63;
        v64 = [MEMORY[0x277CBEA60] arrayWithObjects:&v144 count:1];
        v103 = [connectionCopy executeUpdate:@"DELETE FROM artwork_token WHERE artwork_source_type = ?" withParameters:v64 error:0];

        array6 = [MEMORY[0x277CBEB18] array];
        v66 = [MEMORY[0x277CCABB0] numberWithInteger:v62];
        v143 = v66;
        v67 = [MEMORY[0x277CBEA60] arrayWithObjects:&v143 count:1];
        v81 = [connectionCopy executeQuery:@"SELECT entity_pid withParameters:{entity_type, artwork_type FROM best_artwork_token WHERE fetchable_artwork_source_type = ?", v67}];

        v119[0] = MEMORY[0x277D85DD0];
        v119[1] = 3221225472;
        v119[2] = __107__ML3MusicLibrary_RemoveSourceOrTracks__removeSource_forImportOperation_usingConnection_postNotifications___block_invoke_125;
        v119[3] = &unk_278766118;
        v68 = array6;
        v120 = v68;
        [v81 enumerateRowsWithBlock:v119];
        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        obj = v68;
        v69 = [obj countByEnumeratingWithState:&v115 objects:v142 count:16];
        if (v69)
        {
          v70 = *v116;
          do
          {
            for (j = 0; j != v69; ++j)
            {
              if (*v116 != v70)
              {
                objc_enumerationMutation(obj);
              }

              v72 = *(*(&v115 + 1) + 8 * j);
              v73 = [v72 objectAtIndexedSubscript:0];
              longLongValue = [v73 longLongValue];
              v75 = [v72 objectAtIndexedSubscript:1];
              intValue = [v75 intValue];
              v77 = [v72 objectAtIndexedSubscript:2];
              -[ML3MusicLibrary updateBestArtworkTokenForEntityPersistentID:entityType:artworkType:retrievalTime:usingConnection:](self, "updateBestArtworkTokenForEntityPersistentID:entityType:artworkType:retrievalTime:usingConnection:", longLongValue, intValue, [v77 intValue], connectionCopy, 0.0);
            }

            v69 = [obj countByEnumeratingWithState:&v115 objects:v142 count:16];
          }

          while (v69);
        }

        if (sourceCopy == 3)
        {
          [(ML3MusicLibrary *)self cleanupArtworkWithOptions:6 usingConnection:connectionCopy];
        }

        if (v97)
        {
          v78 = _ML3LogCategoryDefault();
          if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_22D2FA000, v78, OS_LOG_TYPE_DEFAULT, "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks Deleting all non-library tracks from playlists (removing source match)", buf, 2u);
          }

          [ML3Container removeNonLibraryItemsFromContainersInLibrary:self usingConnection:connectionCopy];
          [(ML3MusicLibrary *)self _removeLibraryPinsForDeletedTracksUsingConnection:connectionCopy];
        }

        v79 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
          *buf = 67109632;
          *&buf[4] = sourceCopy;
          *&buf[8] = 1024;
          *&buf[10] = v103;
          *&buf[14] = 2048;
          *&buf[16] = v80 - v9;
          _os_log_impl(&dword_22D2FA000, v79, OS_LOG_TYPE_DEFAULT, "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks Removing source: %d from entire library finished with success=%d in %.3f seconds", buf, 0x18u);
        }

        if ((v103 & notificationsCopy) == 1)
        {
          v114[0] = MEMORY[0x277D85DD0];
          v114[1] = 3221225472;
          v114[2] = __107__ML3MusicLibrary_RemoveSourceOrTracks__removeSource_forImportOperation_usingConnection_postNotifications___block_invoke_127;
          v114[3] = &unk_278765158;
          v114[4] = self;
          [connectionCopy enqueueBlockForTransactionCommit:v114];
        }
      }
    }

    v23 = v94;
  }

  return v103;
}

void __107__ML3MusicLibrary_RemoveSourceOrTracks__removeSource_forImportOperation_usingConnection_postNotifications___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  [v2 addObject:v3];
}

uint64_t __107__ML3MusicLibrary_RemoveSourceOrTracks__removeSource_forImportOperation_usingConnection_postNotifications___block_invoke_95(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [v3 length];
    v4 = v6;
    if (v3)
    {
      v3 = [*(a1 + 32) addObject:v6];
      v4 = v6;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

void __107__ML3MusicLibrary_RemoveSourceOrTracks__removeSource_forImportOperation_usingConnection_postNotifications___block_invoke_109(uint64_t a1, void *a2)
{
  v3 = [a2 int64ForColumnIndex:0];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:v3];
  [v4 addObject:v5];
}

void __107__ML3MusicLibrary_RemoveSourceOrTracks__removeSource_forImportOperation_usingConnection_postNotifications___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 int64ForColumnIndex:0];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:v3];
  [v4 addObject:v5];
}

uint64_t __107__ML3MusicLibrary_RemoveSourceOrTracks__removeSource_forImportOperation_usingConnection_postNotifications___block_invoke_112(uint64_t a1, void *a2)
{
  result = [a2 longLongValue];
  v4 = *(*(*(a1 + 32) + 8) + 24);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 24);
  *(v5 + 24) = v6 + 1;
  *(v4 + 8 * v6) = result;
  return result;
}

void __107__ML3MusicLibrary_RemoveSourceOrTracks__removeSource_forImportOperation_usingConnection_postNotifications___block_invoke_117(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 length])
  {
    [*(a1 + 32) addObject:v4];
    v5 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks %{public}@", &v6, 0xCu);
    }
  }
}

void __107__ML3MusicLibrary_RemoveSourceOrTracks__removeSource_forImportOperation_usingConnection_postNotifications___block_invoke_125(uint64_t a1, void *a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v3 objectAtIndexedSubscript:{1, v4}];
  v8[1] = v5;
  v6 = [v3 objectAtIndexedSubscript:2];

  v8[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
  [v2 addObject:v7];
}

uint64_t __107__ML3MusicLibrary_RemoveSourceOrTracks__removeSource_forImportOperation_usingConnection_postNotifications___block_invoke_127(uint64_t a1)
{
  [*(a1 + 32) notifyEntitiesAddedOrRemoved];
  v2 = *(a1 + 32);

  return [v2 notifyContentsDidChange];
}

- (void)clearCachedPurchaseHistoryVersionsUsingConnection:(id)connection
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v3 = [connection executeUpdate:@"DELETE FROM _MLDatabaseProperties WHERE key IN (? withParameters:? error:{?, ?)", &unk_2840C8630, &v6}];
  v4 = v6;
  if ((v3 & 1) == 0)
  {
    v5 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v8 = v4;
      _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks Could not remove cached jalisco library properties - error=%{public}@", buf, 0xCu);
    }
  }
}

- (void)clearCachedCloudLibraryVersionsUsingConnection:(id)connection
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v3 = [connection executeUpdate:@"DELETE FROM _MLDatabaseProperties WHERE key IN (? withParameters:? error:{?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", &unk_2840C8618, &v6}];
  v4 = v6;
  if ((v3 & 1) == 0)
  {
    v5 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v8 = v4;
      _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "[ML3MusicLibrary+RemoveSourceOrTracks] ML3MusicLibrary+RemoveSourceOrTracks Could not remove cached saga library properties - error=%{public}@", buf, 0xCu);
    }
  }
}

- (void)setSagaMaximumLibraryPinCount:(int64_t)count
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:count];
  [(ML3MusicLibrary *)self setValue:v4 forDatabaseProperty:@"MLCloudLibraryMaxPinCount"];
}

- (int64_t)sagaMaximumLibraryPinCount
{
  v2 = [(ML3MusicLibrary *)self valueForDatabaseProperty:@"MLCloudLibraryMaxPinCount"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setPreferredVideoQuality:(int64_t)quality
{
  quality = [MEMORY[0x277CCACA8] stringWithFormat:@"%li", quality];
  [(ML3MusicLibrary *)self setValue:quality forDatabaseProperty:@"MLCloudDatabasePreferredVideoQuality"];
}

- (int64_t)preferredVideoQuality
{
  v2 = [(ML3MusicLibrary *)self valueForDatabaseProperty:@"MLCloudDatabasePreferredVideoQuality"];
  v3 = v2;
  if (v2 && [v2 length])
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = -1;
  }

  return intValue;
}

- (void)setSagaLastSubscribedContainersUpdateTime:(id)time
{
  [time timeIntervalSinceReferenceDate];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [(ML3MusicLibrary *)self setValue:v4 forDatabaseProperty:@"MLCloudLastSubscribedContainersUpdate"];
}

- (NSDate)sagaLastSubscribedContainersUpdateTime
{
  v2 = MEMORY[0x277CBEAA8];
  v3 = [(ML3MusicLibrary *)self valueForDatabaseProperty:@"MLCloudLastSubscribedContainersUpdate"];
  [v3 doubleValue];
  v4 = [v2 dateWithTimeIntervalSinceReferenceDate:?];

  return v4;
}

- (void)setSagaLastLibraryUpdateTime:(id)time
{
  [time timeIntervalSinceReferenceDate];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [(ML3MusicLibrary *)self setValue:v4 forDatabaseProperty:@"MLCloudLastLibraryUpdate"];
}

- (NSDate)sagaLastLibraryUpdateTime
{
  v2 = MEMORY[0x277CBEAA8];
  v3 = [(ML3MusicLibrary *)self valueForDatabaseProperty:@"MLCloudLastLibraryUpdate"];
  [v3 doubleValue];
  v4 = [v2 dateWithTimeIntervalSinceReferenceDate:?];

  return v4;
}

- (void)setSagaOnDiskDatabaseRevision:(int64_t)revision
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:revision];
  [(ML3MusicLibrary *)self setValue:v4 forDatabaseProperty:@"MLCloudDatabaseRevision"];
}

- (void)setStorefrontIdentifier:(id)identifier
{
  if (identifier)
  {
    [(ML3MusicLibrary *)self setValue:identifier forDatabaseProperty:@"MLStorefrontID"];
  }

  else
  {
    [(ML3MusicLibrary *)self deleteDatabaseProperty:@"MLStorefrontID"];
  }
}

- (void)setSagaForcePerformDeltaSync:(BOOL)sync
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:sync];
  [(ML3MusicLibrary *)self setValue:v4 forDatabaseProperty:@"MLCloudLibraryForcePerformDeltaSync"];
}

- (void)setSagaPrefersToMergeWithCloudLibrary:(BOOL)library
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:library];
  [(ML3MusicLibrary *)self setValue:v4 forDatabaseProperty:@"MLCloudLibraryPrefersToMerge"];
}

- (BOOL)sagaInitiateClientResetSync
{
  v2 = [(ML3MusicLibrary *)self valueForDatabaseProperty:@"MLSagaInitiateClientResetSync"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setSagaInitiateClientResetSync:(BOOL)sync
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:sync];
  [(ML3MusicLibrary *)self setValue:v4 forDatabaseProperty:@"MLSagaInitiateClientResetSync"];
}

- (BOOL)sagaForcePerformDeltaSync
{
  v2 = [(ML3MusicLibrary *)self valueForDatabaseProperty:@"MLCloudLibraryForcePerformDeltaSync"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)sagaPrefersToMergeWithCloudLibrary
{
  v2 = [(ML3MusicLibrary *)self valueForDatabaseProperty:@"MLCloudLibraryPrefersToMerge"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setSagaNeedsFullUpdate:(BOOL)update
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:update];
  [(ML3MusicLibrary *)self setValue:v4 forDatabaseProperty:@"MLSagaNeedsFullUpdate"];
}

- (BOOL)sagaNeedsFullUpdate
{
  v2 = [(ML3MusicLibrary *)self valueForDatabaseProperty:@"MLSagaNeedsFullUpdate"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setSagaCloudFavoriteSongAddToLibraryBehavior:(int64_t)behavior
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:behavior];
  [(ML3MusicLibrary *)self setValue:v4 forDatabaseProperty:@"MLCloudAccountFavoriteSongAddToLibraryBehavior"];
}

- (int64_t)sagaCloudFavoriteSongAddToLibraryBehavior
{
  v2 = [(ML3MusicLibrary *)self valueForDatabaseProperty:@"MLCloudAccountFavoriteSongAddToLibraryBehavior"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setSagaCloudAddToPlaylistBehavior:(int64_t)behavior
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:behavior];
  [(ML3MusicLibrary *)self setValue:v4 forDatabaseProperty:@"MLCloudAccountAddToPlaylistBehavior"];
}

- (int64_t)sagaCloudAddToPlaylistBehavior
{
  v2 = [(ML3MusicLibrary *)self valueForDatabaseProperty:@"MLCloudAccountAddToPlaylistBehavior"];
  integerValue = [v2 integerValue];

  if (integerValue)
  {
    return integerValue;
  }

  else
  {
    return 2;
  }
}

- (void)setSagaDatabaseUserVersion:(int64_t)version
{
  version = [MEMORY[0x277CCACA8] stringWithFormat:@"%i", version];
  [(ML3MusicLibrary *)self setValue:version forDatabaseProperty:@"MLCloudDatabaseUserVersion"];
}

- (int64_t)sagaDatabaseUserVersion
{
  v2 = [(ML3MusicLibrary *)self valueForDatabaseProperty:@"MLCloudDatabaseUserVersion"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setSagaLastPlaylistPlayDataUploadDate:(id)date
{
  [date timeIntervalSinceReferenceDate];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [(ML3MusicLibrary *)self setValue:v4 forDatabaseProperty:@"MLCloudLastPlaylistPlayDataUpdate"];
}

- (NSDate)sagaLastPlaylistPlayDataUploadDate
{
  v2 = [(ML3MusicLibrary *)self valueForDatabaseProperty:@"MLCloudLastPlaylistPlayDataUpdate"];
  [v2 doubleValue];
  v4 = v3;

  if (v4 == 0.0)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v6 = [date dateByAddingTimeInterval:-86400.0];
  }

  else
  {
    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v4];
  }

  return v6;
}

- (void)setSagaLastItemPlayDataUploadDate:(id)date
{
  [date timeIntervalSinceReferenceDate];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [(ML3MusicLibrary *)self setValue:v4 forDatabaseProperty:@"MLCloudLastPlayDataUpdate"];
}

- (NSDate)sagaLastItemPlayDataUploadDate
{
  v2 = [(ML3MusicLibrary *)self valueForDatabaseProperty:@"MLCloudLastPlayDataUpdate"];
  [v2 doubleValue];
  v4 = v3;

  if (v4 == 0.0)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v6 = [date dateByAddingTimeInterval:-86400.0];
  }

  else
  {
    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v4];
  }

  return v6;
}

- (void)setSagaLastGeniusUpdateDate:(id)date
{
  [date timeIntervalSinceReferenceDate];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [(ML3MusicLibrary *)self setValue:v4 forDatabaseProperty:@"MLSagaLastGeniusUpdate"];
}

- (NSDate)sagaLastGeniusUpdateDate
{
  v2 = MEMORY[0x277CBEAA8];
  v3 = [(ML3MusicLibrary *)self valueForDatabaseProperty:@"MLSagaLastGeniusUpdate"];
  [v3 doubleValue];
  v4 = [v2 dateWithTimeIntervalSinceReferenceDate:?];

  return v4;
}

- (void)setSagaLastKnownActiveLockerAccountDSID:(id)d
{
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(d, "longLongValue")}];
  [(ML3MusicLibrary *)self setValue:v4 forDatabaseProperty:@"MLLastKnownActiveLockerAccountDSID"];
}

- (NSNumber)sagaLastKnownActiveLockerAccountDSID
{
  v2 = [(ML3MusicLibrary *)self valueForDatabaseProperty:@"MLLastKnownActiveLockerAccountDSID"];
  v3 = v2;
  if (v2)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v2, "longLongValue")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSNumber)sagaAccountID
{
  v2 = [(ML3MusicLibrary *)self valueForDatabaseProperty:@"MLCloudAccountID"];
  v3 = v2;
  if (v2)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v2, "longLongValue")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)syncIdFromMultiverseId:(id)id
{
  v19 = *MEMORY[0x277D85DE8];
  idCopy = id;
  syncLibraryID = [(ML3MusicLibrary *)self syncLibraryID];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  libraryIdentifiers = [idCopy libraryIdentifiers];
  libraryId = [libraryIdentifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (libraryId)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != libraryId; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(libraryIdentifiers);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        libraryName = [v10 libraryName];
        v12 = [libraryName isEqualToString:syncLibraryID];

        if (v12)
        {
          libraryId = [v10 libraryId];
          goto LABEL_11;
        }
      }

      libraryId = [libraryIdentifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (libraryId)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return libraryId;
}

- (BOOL)prepareUnitTestDatabaseWithSQLFromContentsOfFile:(id)file error:(id *)error
{
  v54[1] = *MEMORY[0x277D85DE8];
  fileCopy = file;
  if ([fileCopy length])
  {
    if (error)
    {
      *error = 0;
    }

    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithContentsOfFile:fileCopy encoding:4 error:error];
    v8 = v7;
    if (v7)
    {
      fileCopy = [v7 componentsSeparatedByString:@""];;
      if ([fileCopy count])
      {
        checkoutWriterConnection = [(ML3MusicLibrary *)self checkoutWriterConnection];
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        fileCopy = fileCopy;
        v11 = [fileCopy countByEnumeratingWithState:&v44 objects:v50 count:16];
        if (v11)
        {
          v12 = v11;
          selfCopy = self;
          v40 = v8;
          errorCopy = error;
          v41 = fileCopy;
          obj = fileCopy;
          v13 = *v45;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v45 != v13)
              {
                objc_enumerationMutation(obj);
              }

              v15 = *(*(&v44 + 1) + 8 * i);
              whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
              v17 = [v15 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
              v18 = [v17 mutableCopy];

              v19 = 1;
              do
              {
                v20 = NSPersistentStringFromMLMediaType(v19);
                if ([v20 length])
                {
                  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v19];
                  [v18 replaceOccurrencesOfString:v20 withString:v21 options:1 range:{0, objc_msgSend(v18, "length")}];
                }

                v22 = (v19 & 0x7FFFFF) == 0;
                v19 *= 2;
              }

              while (!v22);
              v23 = [v18 rangeOfString:@"mlmediatype" options:1];
              if (v24)
              {
                v27 = v23;
                currentHandler = [MEMORY[0x277CCA890] currentHandler];
                v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *executableSQLFromUnitTestFileForString(NSString *__strong)"];
                v30 = [v18 substringFromIndex:v27];
                [currentHandler handleFailureInFunction:v29 file:@"ML3MusicLibrary+MLUnitTestingAdditions.m" lineNumber:27 description:{@"sql contains invalid text at '%@'", v30}];
              }

              if ([v18 length])
              {
                v25 = [checkoutWriterConnection executeUpdate:v18];
                v26 = v25;
                if (errorCopy && (v25 & 1) == 0)
                {
                  v35 = MEMORY[0x277CCA9B8];
                  v48 = *MEMORY[0x277CCA450];
                  v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error executing '%@'", v18];
                  v49 = v36;
                  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
                  *errorCopy = [v35 errorWithDomain:&stru_28408B690 code:-1 userInfo:v37];

LABEL_35:
                  v31 = 0;
                  goto LABEL_36;
                }

                if (!v26)
                {
                  goto LABEL_35;
                }
              }

              else
              {
              }
            }

            v12 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }

          v31 = 1;
LABEL_36:
          v8 = v40;
          fileCopy = v41;
          fileCopy = obj;
          self = selfCopy;
        }

        else
        {
          v31 = 1;
        }

        [checkoutWriterConnection executeUpdate:@"DROP TABLE sort_map"];
        [(ML3MusicLibrary *)self updateSortMapOnConnection:checkoutWriterConnection forceUpdateOriginals:1];
        [(ML3MusicLibrary *)self checkInDatabaseConnection:checkoutWriterConnection];
      }

      else
      {
        if (!error)
        {
          v31 = 0;
          goto LABEL_39;
        }

        v33 = MEMORY[0x277CCA9B8];
        v51 = *MEMORY[0x277CCA450];
        checkoutWriterConnection = [MEMORY[0x277CCACA8] stringWithFormat:@"No SQL statements found in %@", fileCopy];
        v52 = checkoutWriterConnection;
        v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
        *error = [v33 errorWithDomain:&stru_28408B690 code:-1 userInfo:v34];

        v31 = 0;
      }
    }

    else
    {
      if (!error)
      {
        v31 = 0;
LABEL_40:

        goto LABEL_41;
      }

      v32 = MEMORY[0x277CCA9B8];
      v53 = *MEMORY[0x277CCA450];
      fileCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to open file '%@'", fileCopy];
      v54[0] = fileCopy;
      checkoutWriterConnection = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:&v53 count:1];
      [v32 errorWithDomain:&stru_28408B690 code:-1 userInfo:checkoutWriterConnection];
      *error = v31 = 0;
    }

LABEL_39:
    goto LABEL_40;
  }

  v31 = 1;
LABEL_41:

  return v31;
}

+ (id)unitTestableLibraryForTest:(id)test basePath:(id)path setupSQLFilenames:(id)filenames
{
  v51 = *MEMORY[0x277D85DE8];
  testCopy = test;
  pathCopy = path;
  filenamesCopy = filenames;
  v34 = testCopy;
  v9 = objc_opt_class();
  v33 = NSStringFromClass(v9);
  v32 = NSStringFromSelector([testCopy selector]);
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  array = [MEMORY[0x277CBEB18] array];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v12 = filenamesCopy;
  v13 = [v12 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v13)
  {
    v14 = *v47;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v47 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v46 + 1) + 8 * i);
        stringByDeletingPathExtension = [v16 stringByDeletingPathExtension];
        pathExtension = [v16 pathExtension];
        v19 = [v10 pathForResource:stringByDeletingPathExtension ofType:pathExtension];

        if ([v16 length] && !objc_msgSend(v19, "length"))
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"ML3MusicLibrary+MLUnitTestingAdditions.m" lineNumber:99 description:{@"Could not prepare for test '%@/%@' database, unable to load setupSQLFilename = '%@' - no such file in bundle %@", v33, v32, v16, v10}];

          v26 = 0;
          v24 = v12;
          goto LABEL_15;
        }

        [array addObject:v19];
      }

      v13 = [v12 countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v19 = [self databasePathForUnitTest:v34 withBasePath:pathCopy];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  stringByDeletingLastPathComponent = [v19 stringByDeletingLastPathComponent];
  [defaultManager removeItemAtPath:stringByDeletingLastPathComponent error:0];

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v22 = [ML3MusicLibrary alloc];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __97__ML3MusicLibrary_MLUnitTestingAdditions__unitTestableLibraryForTest_basePath_setupSQLFilenames___block_invoke;
  v35[3] = &unk_278764D58;
  v36 = array;
  v40 = a2;
  selfCopy = self;
  v37 = v33;
  v38 = v32;
  v39 = &v42;
  v23 = [(ML3MusicLibrary *)v22 initWithPath:v19 readOnly:0 populateUnitTestTablesBlock:v35];
  v24 = v23;
  if (*(v43 + 24))
  {
    v25 = 0;
  }

  else
  {
    v25 = v23;
  }

  v26 = v25;

  _Block_object_dispose(&v42, 8);
LABEL_15:

  return v26;
}

void __97__ML3MusicLibrary_MLUnitTestingAdditions__unitTestableLibraryForTest_basePath_setupSQLFilenames___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    do
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v15 + 1) + 8 * v9);
        v14 = v10;
        v12 = [v3 prepareUnitTestDatabaseWithSQLFromContentsOfFile:v11 error:&v14];
        v7 = v14;

        if ((v12 & 1) == 0)
        {
          v13 = [MEMORY[0x277CCA890] currentHandler];
          [v13 handleFailureInMethod:*(a1 + 64) object:*(a1 + 72) file:@"ML3MusicLibrary+MLUnitTestingAdditions.m" lineNumber:114 description:{@"Could not prepare for test '%@/%@' database with setupSQLPath = %@, error = %@", *(a1 + 40), *(a1 + 48), v11, v7}];

          *(*(*(a1 + 56) + 8) + 24) = 1;
        }

        ++v9;
        v10 = v7;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }
}

+ (id)databasePathForUnitTest:(id)test withBasePath:(id)path
{
  pathCopy = path;
  testCopy = test;
  v7 = [(__CFString *)pathCopy length];
  v8 = @"/tmp/ML3UnitTests";
  if (v7)
  {
    v8 = pathCopy;
  }

  v9 = v8;

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  selector = [testCopy selector];

  v13 = NSStringFromSelector(selector);
  if ([(__CFString *)v9 length])
  {
    v14 = [(__CFString *)v9 stringByAppendingPathComponent:v11];
    v15 = [v14 stringByAppendingPathComponent:v13];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:0];

    [v15 stringByAppendingPathComponent:@"library.sqlitedb"];
  }

  else
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v11, v13];
    ML3MemorySQLiteDatabasePathWithName(v15);
  }
  v17 = ;

  return v17;
}

- (BOOL)performMainentanceTasksUsingActivity:(id)activity
{
  v221[4] = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  currentDatabaseVersion = [(ML3MusicLibrary *)self currentDatabaseVersion];
  if (currentDatabaseVersion == 2310000)
  {
    v4 = [(ML3MusicLibrary *)self valueForDatabaseProperty:@"MLMaintenanceTaskOperationDate"];
    [v4 doubleValue];
    v6 = v5;

    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-604800.0];
    v8 = os_log_create("com.apple.amp.medialibrary", "Service");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "[Maintenance] %{pubic}@ Cleaning up missing foreign keys", buf, 0xCu);
    }

    selfCopy = self;
    v10 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = selfCopy;
      _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "ML3MaintenanceUtilitiesPerformForeignKeyConstraintCheck: Checking library %{public}@", buf, 0xCu);
    }

    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __ML3MaintenanceUtilitiesPerformForeignKeyConstraintCheck_block_invoke;
    v198 = &unk_278762160;
    v11 = selfCopy;
    v199 = v11;
    LOBYTE(v200) = 1;
    [(ML3MusicLibrary *)v11 performDatabaseTransactionWithBlock:buf];
    v12 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v181 = 138543362;
      *&v181[4] = v11;
      _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_DEFAULT, "ML3MaintenanceUtilitiesPerformForeignKeyConstraintCheck: Finished checking library %{public}@", v181, 0xCu);
    }

    v13 = os_log_create("com.apple.amp.medialibrary", "Service");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v11;
      *&buf[12] = 2114;
      *&buf[14] = v7;
      _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_DEFAULT, "[Maintenance] %{pubic}@ Removing cached playlists not played since %{public}@", buf, 0x16u);
    }

    v14 = v11;
    v15 = v7;
    v16 = v14;
    v17 = v15;
    v18 = [ML3ComparisonPredicate predicateWithProperty:@"is_hidden" equalToInt64:1];
    *&v184 = v18;
    v19 = [ML3ComparisonPredicate predicateWithProperty:@"cloud_is_subscribed" equalToInt64:1];
    *(&v184 + 1) = v19;
    v20 = [ML3ComparisonPredicate predicateWithProperty:@"store_cloud_id" equalToInt64:0];
    *&v185 = v20;
    v21 = [ML3ComparisonPredicate predicateWithProperty:@"cloud_global_id" value:&stru_28408B690 comparison:2];
    *(&v185 + 1) = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v184 count:4];
    v23 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v22];

    v24 = MEMORY[0x277CCABB0];
    [v17 timeIntervalSinceReferenceDate];
    v25 = [v24 numberWithDouble:?];
    v26 = [ML3ComparisonPredicate predicateWithProperty:@"date_played_local" value:v25 comparison:6];

    v209 = 0;
    v210 = &v209;
    v211 = 0x2020000000;
    LODWORD(v212) = 0;
    *v217 = v23;
    *&v217[8] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v217 count:2];
    v28 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v27];

    v165 = [(ML3Entity *)ML3Container allItemsQueryWithLibrary:v16 predicate:v28 orderingTerms:MEMORY[0x277CBEBF8] usingSections:0];
    v29 = [MEMORY[0x277CBEB58] set];
    v203 = @"name";
    v204 = @"cloud_global_id";
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v203 count:2];
    *&v173 = MEMORY[0x277D85DD0];
    *(&v173 + 1) = 3221225472;
    *&v174 = __ML3MaintenanceUtilitiesRemoveCachedPlaylistsNotPlayedSinceDate_block_invoke;
    *(&v174 + 1) = &unk_278762750;
    *(&v175 + 1) = &v209;
    v31 = v29;
    *&v175 = v31;
    [v165 enumeratePersistentIDsAndProperties:v30 usingBlock:&v173];

    v32 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [v31 count];
      *buf = 134217984;
      *&buf[4] = v33;
      _os_log_impl(&dword_22D2FA000, v32, OS_LOG_TYPE_DEFAULT, "[Maintenance] Found %lu total cached playlists to purge", buf, 0xCu);
    }

    if ([v31 count])
    {
      v156 = v17;
      v34 = malloc_type_malloc(8 * [v31 count], 0x100004000313F17uLL);
      obj = v28;
      log = v26;
      v35 = v23;
      v36 = v16;
      v182 = 0u;
      v183 = 0u;
      memset(v181, 0, sizeof(v181));
      v37 = v31;
      v38 = [v37 countByEnumeratingWithState:v181 objects:buf count:16];
      if (v38)
      {
        v39 = 0;
        v40 = **&v181[16];
        do
        {
          v41 = 0;
          v42 = v39;
          do
          {
            if (**&v181[16] != v40)
            {
              objc_enumerationMutation(v37);
            }

            v39 = v42 + 1;
            v34[v42++] = [*(*&v181[8] + 8 * v41++) longLongValue];
          }

          while (v38 != v41);
          v38 = [v37 countByEnumeratingWithState:v181 objects:buf count:16];
        }

        while (v38);
      }

      v28 = obj;
      v26 = log;
      v16 = v36;
      v23 = v35;
      +[ML3Container deleteFromLibrary:deletionType:persistentIDs:count:](ML3Container, "deleteFromLibrary:deletionType:persistentIDs:count:", v36, 2, v34, [v37 count]);
      free(v34);
      v17 = v156;
    }

    _Block_object_dispose(&v209, 8);
    v43 = os_log_create("com.apple.amp.medialibrary", "Service");
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v16;
      *&buf[12] = 2114;
      *&buf[14] = v17;
      _os_log_impl(&dword_22D2FA000, v43, OS_LOG_TYPE_DEFAULT, "[Maintenance] %{pubic}@ Removing orphaned tracks before %{public}@", buf, 0x16u);
    }

    v154 = v16;
    v151 = v17;
    v145 = [ML3ComparisonPredicate predicateWithProperty:@"remote_location_id" equalToInt64:50];
    v44 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_saga_id" equalToInt64:0];
    v221[0] = v44;
    v45 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.sync_id" equalToInt64:0];
    v221[1] = v45;
    v46 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.purchase_history_id" equalToInt64:0];
    v221[2] = v46;
    v47 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.is_ota_purchased" equalToInt64:0];
    v221[3] = v47;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v221 count:4];
    v148 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v48];

    v49 = MEMORY[0x277CCABB0];
    [v151 timeIntervalSinceReferenceDate];
    v50 = [v49 numberWithDouble:?];
    v147 = [ML3ComparisonPredicate predicateWithProperty:@"date_added" value:v50 comparison:6];

    v220[0] = v147;
    v220[1] = v148;
    v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v220 count:2];
    v146 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v51];

    activity = [(ML3Entity *)ML3Track allItemsQueryWithLibrary:v154 predicate:v146 orderingTerms:MEMORY[0x277CBEBF8] usingSections:0];
    countOfEntities = [(_xpc_activity_s *)activity countOfEntities];
    loga = os_log_create("com.apple.amp.medialibrary", "Default");
    v53 = os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT);
    if (countOfEntities)
    {
      if (v53)
      {
        *buf = 134218242;
        *&buf[4] = countOfEntities;
        *&buf[12] = 2114;
        *&buf[14] = activity;
        _os_log_impl(&dword_22D2FA000, loga, OS_LOG_TYPE_DEFAULT, "Found %lu potential orphan tracks to evaluate using query: %{public}@", buf, 0x16u);
      }

      v54 = [MEMORY[0x277CBEB58] setWithCapacity:countOfEntities];
      *v217 = MEMORY[0x277D85DD0];
      *&v217[8] = 3221225472;
      *&v217[16] = __ML3MaintenanceUtilitiesRemoveOrphanTracksAddedBeforeDate_block_invoke;
      v218 = &unk_278765BD8;
      v55 = v54;
      v219 = v55;
      [(_xpc_activity_s *)activity enumeratePersistentIDsUsingBlock:v217];
      v56 = [ML3PropertyPredicate predicateWithProperty:@"cloud_is_subscribed"];
      v216[0] = v56;
      v57 = [ML3PropertyPredicate predicateWithProperty:@"cloud_is_curator_playlist"];
      v216[1] = v57;
      v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v216 count:2];
      v142 = [(ML3CompoundPredicate *)ML3AnyCompoundPredicate predicateMatchingPredicates:v58];

      v141 = [(ML3Entity *)ML3Container allItemsQueryWithLibrary:v154 predicate:v142 orderingTerms:MEMORY[0x277CBEBF8] usingSections:0];
      v59 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22D2FA000, v59, OS_LOG_TYPE_DEFAULT, "Keeping the following tracks from subscribed containers...", buf, 2u);
      }

      v209 = MEMORY[0x277D85DD0];
      v210 = 3221225472;
      v211 = __ML3MaintenanceUtilitiesRemoveOrphanTracksAddedBeforeDate_block_invoke_9;
      v212 = &unk_2787620C0;
      v166 = v154;
      v213 = v166;
      v157 = v145;
      v214 = v157;
      v60 = v55;
      v215 = v60;
      [v141 enumeratePersistentIDsUsingBlock:&v209];
      currentDevicePlaybackHistoryPlaylist = [(ML3MusicLibrary *)v166 currentDevicePlaybackHistoryPlaylist];
      v139 = [ML3Track containerQueryWithContainer:currentDevicePlaybackHistoryPlaylist predicate:v157];
      v61 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22D2FA000, v61, OS_LOG_TYPE_DEFAULT, "Keeping the following tracks from playback history...", buf, 2u);
      }

      v208 = @"item_extra.title";
      v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v208 count:1];
      v203 = MEMORY[0x277D85DD0];
      v204 = 3221225472;
      v205 = __ML3MaintenanceUtilitiesRemoveOrphanTracksAddedBeforeDate_block_invoke_11;
      v206 = &unk_278762DC0;
      v143 = v60;
      v207 = v143;
      [v139 enumeratePersistentIDsAndProperties:v62 usingBlock:&v203];

      obja = [v143 allObjects];
      v175 = 0u;
      v176 = 0u;
      v173 = 0u;
      v174 = 0u;
      v63 = [obja countByEnumeratingWithState:&v173 objects:buf count:16];
      if (v63)
      {
        v64 = *v174;
        do
        {
          for (i = 0; i != v63; ++i)
          {
            if (*v174 != v64)
            {
              objc_enumerationMutation(obja);
            }

            v66 = +[ML3Entity newWithPersistentID:inLibrary:](ML3Track, "newWithPersistentID:inLibrary:", [*(*(&v173 + 1) + 8 * i) longLongValue], v166);
            v67 = [v66 valueForProperty:@"base_location_id"];
            v68 = [v67 longLongValue] > 0;

            if (v68)
            {
              v69 = os_log_create("com.apple.amp.medialibrary", "Default");
              if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
              {
                persistentID = [v66 persistentID];
                v71 = [v66 valueForProperty:@"item_extra.title"];
                *v181 = 134218242;
                *&v181[4] = persistentID;
                *&v181[12] = 2114;
                *&v181[14] = v71;
                _os_log_impl(&dword_22D2FA000, v69, OS_LOG_TYPE_DEFAULT, "Removing assets for track: %lld - %{public}@", v181, 0x16u);
              }
            }
          }

          v63 = [obja countByEnumeratingWithState:&v173 objects:buf count:16];
        }

        while (v63);
      }

      [ML3Track unlinkRedownloadableAssetsFromLibrary:v166 persistentIDs:obja deletionType:2 deletedFileSize:0];
      v72 = [ML3ComparisonPredicate predicateWithProperty:@"item_stats.liked_state" value:&unk_2840C8D50 comparison:2];
      v196[0] = v72;
      v196[1] = v157;
      v73 = [MEMORY[0x277CBEA60] arrayWithObjects:v196 count:2];
      v138 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v73];

      v137 = [(ML3Entity *)ML3Track allItemsQueryWithLibrary:v166 predicate:v138 orderingTerms:MEMORY[0x277CBEBF8] usingSections:0];
      v74 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        *v181 = 0;
        _os_log_impl(&dword_22D2FA000, v74, OS_LOG_TYPE_DEFAULT, "Keeping the following tracks from the love cache...", v181, 2u);
      }

      v195 = @"item_extra.title";
      v75 = [MEMORY[0x277CBEA60] arrayWithObjects:&v195 count:1];
      v190 = MEMORY[0x277D85DD0];
      v191 = 3221225472;
      v192 = __ML3MaintenanceUtilitiesRemoveOrphanTracksAddedBeforeDate_block_invoke_13;
      v193 = &unk_278762DC0;
      v76 = v143;
      v194 = v76;
      [v137 enumeratePersistentIDsAndProperties:v75 usingBlock:&v190];

      v77 = [ML3ComparisonPredicate predicateWithProperty:@"album.liked_state" value:&unk_2840C8D50 comparison:2];
      v189[0] = v77;
      v189[1] = v157;
      v78 = [MEMORY[0x277CBEA60] arrayWithObjects:v189 count:2];
      v136 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v78];

      v135 = [(ML3Entity *)ML3Track allItemsQueryWithLibrary:v166 predicate:v136 orderingTerms:MEMORY[0x277CBEBF8] usingSections:0];
      v79 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        *v181 = 0;
        _os_log_impl(&dword_22D2FA000, v79, OS_LOG_TYPE_DEFAULT, "Keeping the following tracks that are in albums from the love cache...", v181, 2u);
      }

      v188[0] = @"item_extra.title";
      v188[1] = @"album.album";
      v80 = [MEMORY[0x277CBEA60] arrayWithObjects:v188 count:2];
      v171[0] = MEMORY[0x277D85DD0];
      v171[1] = 3221225472;
      v171[2] = __ML3MaintenanceUtilitiesRemoveOrphanTracksAddedBeforeDate_block_invoke_14;
      v171[3] = &unk_278762DC0;
      v81 = v76;
      v172 = v81;
      [v135 enumeratePersistentIDsAndProperties:v80 usingBlock:v171];

      v144 = [v81 count];
      v82 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
      {
        *v181 = 134217984;
        *&v181[4] = v144;
        _os_log_impl(&dword_22D2FA000, v82, OS_LOG_TYPE_DEFAULT, "Found %lu orphan tracks to delete.", v181, 0xCu);
      }

      v83 = malloc_type_malloc(8 * v144, 0x100004000313F17uLL);
      v186 = 0u;
      v187 = 0u;
      v184 = 0u;
      v185 = 0u;
      loga = v81;
      v84 = [loga countByEnumeratingWithState:&v184 objects:v181 count:16];
      if (v84)
      {
        v85 = 0;
        v86 = *v185;
        do
        {
          for (j = 0; j != v84; ++j)
          {
            if (*v185 != v86)
            {
              objc_enumerationMutation(loga);
            }

            longLongValue = [*(*(&v184 + 1) + 8 * j) longLongValue];
            v83[v85] = longLongValue;
            v89 = os_log_create("com.apple.amp.medialibrary", "Default");
            if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
            {
              v90 = [(ML3Entity *)ML3Track newWithPersistentID:longLongValue inLibrary:v166];
              v91 = [v90 valueForProperty:@"item_extra.title"];
              *v177 = 134218242;
              v178 = longLongValue;
              v179 = 2114;
              v180 = v91;
              _os_log_impl(&dword_22D2FA000, v89, OS_LOG_TYPE_DEFAULT, "Deleting track: %lld - %{public}@", v177, 0x16u);
            }

            ++v85;
          }

          v84 = [loga countByEnumeratingWithState:&v184 objects:v181 count:16];
        }

        while (v84);
      }

      [ML3Track deleteFromLibrary:v166 deletionType:2 persistentIDs:v83 count:v144];
      free(v83);
    }

    else if (v53)
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, loga, OS_LOG_TYPE_DEFAULT, "No potential orphan tracks to evaluate at this time.", buf, 2u);
    }

    v93 = os_log_create("com.apple.amp.medialibrary", "Service");
    if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v154;
      _os_log_impl(&dword_22D2FA000, v93, OS_LOG_TYPE_DEFAULT, "[Maintenance] %{pubic}@ Removing orphaned assets", buf, 0xCu);
    }

    +[ML3MusicLibrary removeOrphanedTracks];
    v94 = os_log_create("com.apple.amp.medialibrary", "Service");
    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v154;
      _os_log_impl(&dword_22D2FA000, v94, OS_LOG_TYPE_DEFAULT, "[Maintenance] %{pubic}@ Start maintenance activity to prune unused metadata", buf, 0xCu);
    }

    v169[0] = MEMORY[0x277D85DD0];
    v169[1] = 3221225472;
    v169[2] = __69__ML3MusicLibrary_Maintenance__performMainentanceTasksUsingActivity___block_invoke;
    v169[3] = &unk_278764E80;
    v169[4] = v154;
    activitya = activityCopy;
    v170 = activitya;
    [(ML3MusicLibrary *)v154 performDatabaseTransactionWithBlock:v169];
    v95 = os_log_create("com.apple.amp.medialibrary", "Service");
    if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v154;
      _os_log_impl(&dword_22D2FA000, v95, OS_LOG_TYPE_DEFAULT, "[Maintenance] %{pubic}@ Reconciling HLS Asset Size", buf, 0xCu);
    }

    if (v6 > 3600.0)
    {
      v6 = v6 + -3600.0;
    }

    v96 = v154;
    v97 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v6;
      _os_log_impl(&dword_22D2FA000, v97, OS_LOG_TYPE_DEFAULT, "ML3MaintenanceUtilitiesReconcileHLSAssetSize: Starting reconcile. reconcileStartInterval=%f", buf, 0xCu);
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v98 = @"base_location.path";
    *&v184 = @"base_location.path";
    v99 = @"item_extra.location";
    *(&v184 + 1) = @"item_extra.location";
    v100 = @"item_extra.file_size";
    *&v185 = @"item_extra.file_size";
    v101 = [MEMORY[0x277CBEA60] arrayWithObjects:&v184 count:3];
    logb = [ML3ComparisonPredicate predicateWithProperty:@"base_location_id" value:&unk_2840C8D68 comparison:6];
    objb = [ML3ComparisonPredicate predicateWithProperty:@"base_location_id" value:&unk_2840C8D80 comparison:4];
    v203 = logb;
    v204 = objb;
    v102 = [MEMORY[0x277CBEA60] arrayWithObjects:&v203 count:2];
    v158 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v102];

    v103 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
    v104 = [ML3ComparisonPredicate predicateWithProperty:@"item_stats.date_played" value:v103 comparison:4];

    v105 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
    v106 = [ML3ComparisonPredicate predicateWithProperty:@"item_stats.date_accessed" value:v105 comparison:4];

    v190 = v104;
    v191 = v106;
    v107 = [MEMORY[0x277CBEA60] arrayWithObjects:&v190 count:2];
    v108 = [(ML3CompoundPredicate *)ML3AnyCompoundPredicate predicateMatchingPredicates:v107];

    v109 = [ML3ComparisonPredicate predicateWithProperty:@"item_video.hls_asset_traits" value:&unk_2840C8D50 comparison:2];
    v209 = v158;
    v210 = v109;
    v211 = v108;
    v110 = [MEMORY[0x277CBEA60] arrayWithObjects:&v209 count:3];
    v111 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v110];

    v112 = [(ML3Entity *)ML3Track queryWithLibrary:v96 predicate:v111];
    *v181 = 0;
    *&v181[8] = v181;
    *&v181[16] = 0x2020000000uLL;
    *&v173 = 0;
    *(&v173 + 1) = &v173;
    v174 = 0x2020000000uLL;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __ML3MaintenanceUtilitiesReconcileHLSAssetSize_block_invoke;
    v198 = &unk_278762198;
    v167 = v96;
    v199 = v167;
    v113 = defaultManager;
    v200 = v113;
    v201 = v181;
    v202 = &v173;
    [v112 enumeratePersistentIDsAndProperties:v101 usingBlock:buf];
    v114 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
    {
      v115 = *(*(&v173 + 1) + 24);
      v116 = *(*&v181[8] + 24);
      *v217 = 134218240;
      *&v217[4] = v115;
      *&v217[12] = 2048;
      *&v217[14] = v116;
      _os_log_impl(&dword_22D2FA000, v114, OS_LOG_TYPE_DEFAULT, "ML3MaintenanceUtilitiesReconcileHLSAssetSize: Finished! Reconciled %llu tracks for a total discrepancy of %lld bytes", v217, 0x16u);
    }

    _Block_object_dispose(&v173, 8);
    _Block_object_dispose(v181, 8);

    for (k = 16; k != -8; k -= 8)
    {
    }

    v118 = MEMORY[0x277CCABB0];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v119 = [v118 numberWithDouble:?];
    [(ML3MusicLibrary *)v167 setValue:v119 forDatabaseProperty:@"MLMaintenanceTaskOperationDate"];

    v120 = os_log_create("com.apple.amp.medialibrary", "Service");
    if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v167;
      _os_log_impl(&dword_22D2FA000, v120, OS_LOG_TYPE_DEFAULT, "[Maintenance] %{pubic}@ Cleaning up old Cache", buf, 0xCu);
    }

    v121 = [ML3MusicLibrary mediaFolderPathByAppendingPathComponent:@"CloudAssets"];
    v122 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v123 = [v122 enumeratorAtPath:v121];
    nextObject = [v123 nextObject];
    if (nextObject)
    {
      v125 = 0;
      do
      {
        v126 = [v121 stringByAppendingPathComponent:{nextObject, v135}];
        v168 = v125;
        v127 = [v122 removeItemAtPath:v126 error:&v168];
        v128 = v168;

        if ((v127 & 1) == 0)
        {
          v129 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            *&buf[4] = v167;
            *&buf[12] = 2114;
            *&buf[14] = nextObject;
            *&buf[22] = 2114;
            v198 = v128;
            _os_log_impl(&dword_22D2FA000, v129, OS_LOG_TYPE_ERROR, "%{public}@ Failed to remove cached asset %{public}@ error %{public}@", buf, 0x20u);
          }
        }

        nextObject2 = [v123 nextObject];

        nextObject = nextObject2;
        v125 = v128;
      }

      while (nextObject2);
    }

    else
    {
      v128 = 0;
    }

    v131 = os_log_create("com.apple.amp.medialibrary", "Service");
    if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v167;
      _os_log_impl(&dword_22D2FA000, v131, OS_LOG_TYPE_DEFAULT, "[Maintenance] %{pubic}@ Marking Purgeable Artwork", buf, 0xCu);
    }

    ML3MaintenanceUtilitiesMarkArtworkPurgeable(v167);
    v132 = os_log_create("com.apple.amp.medialibrary", "Service");
    if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v167;
      _os_log_impl(&dword_22D2FA000, v132, OS_LOG_TYPE_DEFAULT, "[Maintenance] %{pubic}@ All maintenance completed.", buf, 0xCu);
    }

    if (activitya && !xpc_activity_set_state(activitya, 5))
    {
      v133 = os_log_create("com.apple.amp.medialibrary", "Service");
      if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v167;
        _os_log_impl(&dword_22D2FA000, v133, OS_LOG_TYPE_DEFAULT, "[Maintenance] %{pubic}@ Failed to set state of maintenance activity to DONE.", buf, 0xCu);
      }
    }

    v92 = v151;
  }

  else
  {
    v92 = os_log_create("com.apple.amp.medialibrary", "Service");
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *&buf[4] = self;
      *&buf[12] = 1024;
      *&buf[14] = currentDatabaseVersion;
      *&buf[18] = 1024;
      strcpy(&buf[20], "p?#");
      _os_log_impl(&dword_22D2FA000, v92, OS_LOG_TYPE_DEFAULT, "[Maintenance] %{public}@ Skipping maintenance because database is not validated, currentDatabaseVersion=%d, latestDatabaseVersion=%d ", buf, 0x18u);
    }
  }

  return currentDatabaseVersion == 2310000;
}

uint64_t __69__ML3MusicLibrary_Maintenance__performMainentanceTasksUsingActivity___block_invoke(uint64_t a1, void *a2)
{
  v115[1] = *MEMORY[0x277D85DE8];
  v76 = a2;
  v2 = os_log_create("com.apple.amp.medialibrary", "Service");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v102 = v3;
    _os_log_impl(&dword_22D2FA000, v2, OS_LOG_TYPE_DEFAULT, "[Maintenance] %{pubic}@ Cleaning up artwork for maintenance activity.", buf, 0xCu);
  }

  [*(a1 + 32) cleanupArtworkWithOptions:30 usingConnection:v76];
  v4 = os_log_create("com.apple.amp.medialibrary", "Service");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v102 = v5;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "[Maintenance] %{pubic}@ Start maintenance activity to convert existing artwork to ASTC.", buf, 0xCu);
  }

  v6 = *(a1 + 40);
  v71 = *(a1 + 32);
  activity = v6;
  LOBYTE(v6) = CFPreferencesGetAppBooleanValue(@"EnableASTCEncoding", @"com.apple.mobileipod", 0) == 0;
  v70 = [v71 valueForDatabaseProperty:@"MLArtworkShouldConvertToASTC"];
  if ((v6 & 1) == 0 && [v70 integerValue] == 1)
  {
    v68 = [v71 artworkDirectory];
    v74 = [MEMORY[0x277CBEB18] array];
    v69 = [ML3MusicLibrary pathForResourceFileOrFolder:18];
    v75 = [MEMORY[0x277CCAA00] defaultManager];
    if ([v75 fileExistsAtPath:v69])
    {
      v7 = [MEMORY[0x277CBEA60] arrayWithContentsOfFile:v69];
    }

    else
    {
      v7 = 0;
    }

    v67 = [MEMORY[0x277CBEBC0] fileURLWithPath:v68 isDirectory:1];
    v81 = *MEMORY[0x277CBE868];
    v115[0] = *MEMORY[0x277CBE868];
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v115 count:1];
    v9 = [v75 enumeratorAtURL:v67 includingPropertiesForKeys:v8 options:4 errorHandler:0];

    v95 = 0;
    v96 = &v95;
    v97 = 0x2020000000;
    v98 = 0;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v91 objects:buf count:16];
    if (v11)
    {
      v78 = 0;
      v80 = *v92;
      while (2)
      {
        v82 = v11;
        for (i = 0; i != v82; ++i)
        {
          if (*v92 != v80)
          {
            objc_enumerationMutation(v10);
          }

          v13 = *(*(&v91 + 1) + 8 * i);
          v90 = 0;
          [v13 getResourceValue:&v90 forKey:v81 error:0];
          v14 = v90;
          if (([v14 BOOLValue] & 1) == 0)
          {
            v15 = [v13 absoluteString];
            v16 = [v7 containsObject:v15];

            if (v16)
            {
              v17 = os_log_create("com.apple.amp.medialibrary", "Default");
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *v99 = 138543362;
                v100 = v13;
                _os_log_impl(&dword_22D2FA000, v17, OS_LOG_TYPE_DEFAULT, "URL %{public}@ is in known list of paths that could not be converted to ASTC .. skipping.", v99, 0xCu);
              }
            }

            else
            {
              v18 = [v13 lastPathComponent];
              v19 = [MEMORY[0x277CCAD78] UUID];
              v20 = [v19 UUIDString];
              v79 = [v20 stringByAppendingString:v18];

              v21 = [v13 URLByDeletingLastPathComponent];
              v22 = [v21 URLByAppendingPathComponent:v79];

              v23 = v10;
              v24 = v7;
              v25 = [objc_alloc(MEMORY[0x277D27EE0]) initWithSourceURL:v13 destinationURL:v22 destinationFormat:2];
              v26 = dispatch_semaphore_create(0);
              v27 = [MEMORY[0x277D27ED0] sharedService];
              v83[0] = MEMORY[0x277D85DD0];
              v83[1] = 3221225472;
              v83[2] = __ML3MaintenanceUtilitiesConvertExistingArtworkToASTC_block_invoke;
              v83[3] = &unk_2787620E8;
              v84 = v74;
              v85 = v13;
              v89 = &v95;
              v86 = v75;
              v28 = v22;
              v87 = v28;
              v29 = v26;
              v88 = v29;
              [v27 sendRequest:v25 completionHandler:v83];

              v7 = v24;
              v10 = v23;
              dispatch_semaphore_wait(v29, 0xFFFFFFFFFFFFFFFFLL);

              v30 = v78 + 1;
              v31 = v78 != 4 || activity == 0;
              if (v78 == 4)
              {
                v30 = 0;
              }

              if (v31)
              {
                v78 = v30;
              }

              else
              {
                if (xpc_activity_should_defer(activity))
                {
                  if (!xpc_activity_set_state(activity, 3))
                  {
                    v35 = os_log_create("com.apple.amp.medialibrary", "Default");
                    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                    {
                      *v99 = 0;
                      _os_log_impl(&dword_22D2FA000, v35, OS_LOG_TYPE_DEFAULT, "Error deferring artwork conversion activity as the conditions have changed.", v99, 2u);
                    }
                  }

                  goto LABEL_47;
                }

                v78 = 0;
              }
            }
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v91 objects:buf count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    if (v96[3])
    {
LABEL_47:
      if ([v74 count])
      {
        v36 = [v69 stringByDeletingLastPathComponent];
        v37 = [v75 createDirectoryAtPath:v36 withIntermediateDirectories:1 attributes:0 error:0];

        if (v37)
        {
          if (v7)
          {
            [v74 addObjectsFromArray:v7];
          }

          [v74 writeToFile:v69 atomically:1];
        }
      }
    }

    else
    {
      v32 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *v99 = 0;
        _os_log_impl(&dword_22D2FA000, v32, OS_LOG_TYPE_DEFAULT, "All artwork are converted to ASTC", v99, 2u);
      }

      if (([v71 deleteDatabaseProperty:@"MLArtworkShouldConvertToASTC"] & 1) == 0)
      {
        v33 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *v99 = 0;
          _os_log_impl(&dword_22D2FA000, v33, OS_LOG_TYPE_DEFAULT, "Error removing MLArtworkShouldConvertToASTC key.", v99, 2u);
        }
      }

      if (([v75 removeItemAtPath:v69 error:0] & 1) == 0)
      {
        v34 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *v99 = 138543362;
          v100 = v69;
          _os_log_impl(&dword_22D2FA000, v34, OS_LOG_TYPE_DEFAULT, "Error removing failed assets plist at %{public}@.", v99, 0xCu);
        }
      }
    }

    _Block_object_dispose(&v95, 8);
  }

  v38 = [v76 executeQuery:@"SELECT COUNT() FROM album"];
  v39 = [v38 int64ValueForFirstRowAndColumn];

  v40 = [v76 executeQuery:@"SELECT COUNT(DISTINCT(album_pid)) FROM item"];
  v41 = [v40 int64ValueForFirstRowAndColumn];

  v42 = [v76 executeQuery:@"SELECT COUNT() FROM album_artist"];
  v43 = [v42 int64ValueForFirstRowAndColumn];

  v44 = [v76 executeQuery:@"SELECT COUNT(DISTINCT(album_artist_pid)) FROM item"];
  v45 = [v44 int64ValueForFirstRowAndColumn];

  v46 = [v76 executeQuery:@"SELECT COUNT() FROM item_artist"];
  v47 = [v46 int64ValueForFirstRowAndColumn];

  v48 = [v76 executeQuery:@"SELECT COUNT(DISTINCT(item_artist_pid)) FROM item"];
  v49 = [v48 int64ValueForFirstRowAndColumn];

  if (v41 >= v39 / 2 && v45 >= v43 / 2 && v49 >= v47 / 2)
  {
    goto LABEL_81;
  }

  v50 = os_log_create("com.apple.amp.medialibrary", "Service");
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    v51 = *(a1 + 32);
    *buf = 138413826;
    v102 = v51;
    v103 = 2048;
    v104 = v41;
    v105 = 2048;
    v106 = v39;
    v107 = 2048;
    v108 = v45;
    v109 = 2048;
    v110 = v43;
    v111 = 2048;
    v112 = v49;
    v113 = 2048;
    v114 = v47;
    _os_log_impl(&dword_22D2FA000, v50, OS_LOG_TYPE_DEFAULT, "[Maintenance] %{pubic}@ Rebuilding collections (itemAlbumCount=%lld, totalAlbumCount=%lld, itemAlbumArtistCount=%lld, totalAlbumArtistCount=%lld, itemItemArtistCount=%lld, totalItemArtistCount=%lld)", buf, 0x48u);
  }

  if ([ML3Collection removeOrphanedCollectionsInLibrary:*(a1 + 32) usingConnection:v76])
  {
LABEL_81:
    v52 = [v76 executeQuery:@"SELECT COUNT() FROM sort_map"];
    v53 = [v52 int64ValueForFirstRowAndColumn];

    v54 = [v76 executeQuery:@"SELECT COUNT() FROM sort_map WHERE name_order IN (SELECT title_order FROM item) OR name_order IN (SELECT item_artist_order FROM item) OR name_order IN (SELECT series_name_order FROM item) OR name_order IN (SELECT album_order FROM item) OR name_order IN (SELECT album_artist_order FROM item) OR name_order IN (SELECT genre_order FROM item) OR name_order IN (SELECT composer_order FROM item) OR name_order IN (SELECT name_order FROM container) OR name_order IN (SELECT search_title FROM item_search) OR name_order IN (SELECT search_album FROM item_search) OR name_order IN (SELECT search_artist FROM item_search) OR name_order in (SELECT search_composer FROM item_search) OR name_order IN (SELECT search_album_artist FROM item_search)"];
    v55 = [v54 int64ValueForFirstRowAndColumn];

    if (v55 >= v53 / 2)
    {
      goto LABEL_64;
    }

    v56 = os_log_create("com.apple.amp.medialibrary", "Service");
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = *(a1 + 32);
      *buf = 138412802;
      v102 = v57;
      v103 = 2048;
      v104 = v55;
      v105 = 2048;
      v106 = v53;
      _os_log_impl(&dword_22D2FA000, v56, OS_LOG_TYPE_DEFAULT, "[Maintenance] %{pubic}@ Rebuilding sort map (usedSortMapEntryCount=%lld, totalSortMapEntryCount=%lld)", buf, 0x20u);
    }

    if ([*(a1 + 32) inTransactionUpdateSortMapOnConnection:v76 forceRebuild:1 forceUpdateOriginals:1])
    {
      if ([*(a1 + 32) inTransactionUpdateSearchMapOnConnection:v76])
      {
LABEL_64:
        [*(a1 + 32) performColorAnalysisForArtworkWithConnection:v76 shouldRegenerateColorAnalysis:0];
        if ([*(a1 + 32) validateItemTablesEntriesUsingConnection:v76])
        {
LABEL_77:
          v60 = 1;
          goto LABEL_78;
        }

        v58 = MSVCopySystemBuildVersion();
        v59 = [*(a1 + 32) valueForDatabaseProperty:@"ML3DatabaseKeyMaintenanceTaskOperationSanitizeClientBuildVersion"];
        if (v59)
        {
          if (_NSIsNSString())
          {
            if ([v58 isEqualToString:v59])
            {
LABEL_76:

              goto LABEL_77;
            }
          }

          else
          {

            [*(a1 + 32) deleteDatabaseProperty:@"ML3DatabaseKeyMaintenanceTaskOperationSanitizeClientBuildVersion"];
            v61 = os_log_create("com.apple.amp.medialibrary", "Service");
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              v62 = *(a1 + 32);
              *buf = 138412290;
              v102 = v62;
              _os_log_impl(&dword_22D2FA000, v61, OS_LOG_TYPE_DEFAULT, "[Maintenance] %{pubic}@ Clearing sanitizeClientBuildVersion as it's invalid", buf, 0xCu);
            }

            v59 = 0;
          }
        }

        v63 = os_log_create("com.apple.amp.medialibrary", "Service");
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          v64 = *(a1 + 32);
          *buf = 138412802;
          v102 = v64;
          v103 = 2114;
          v104 = v59;
          v105 = 2114;
          v106 = v58;
          _os_log_impl(&dword_22D2FA000, v63, OS_LOG_TYPE_DEFAULT, "[Maintenance] %{pubic}@ Item tables are not in sync - will perform a client initiated reset lastClientInitiatedResetClientBuildVersion=%{public}@, currentDeviceBuildVersion=%{public}@", buf, 0x20u);
        }

        buf[0] = 0;
        LOBYTE(v83[0]) = 0;
        v65 = *(a1 + 32);
        v73 = (a1 + 32);
        [v65 setValue:v58 forDatabaseProperty:@"ML3DatabaseKeyMaintenanceTaskOperationSanitizeClientBuildVersion"];
        [*v73 sanitizeDatabaseContentsUsingConnection:v76 removeOrphanedAssets:buf];
        [*v73 sanitizeSortMapContentsUsingConnection:v76 didSortMapEntries:v83];
        goto LABEL_76;
      }
    }
  }

  v60 = 0;
LABEL_78:

  return v60;
}

- (void)updateJaliscoExcludedMediaKindsWith:(id)with excludingMediaKindsInSet:(BOOL)set
{
  setCopy = set;
  withCopy = with;
  jaliscoLastExcludedMediaKinds = [(ML3MusicLibrary *)self jaliscoLastExcludedMediaKinds];
  if (!jaliscoLastExcludedMediaKinds)
  {
    if (!setCopy)
    {
      goto LABEL_14;
    }

    allObjects = [withCopy allObjects];
    v9 = [ML3MusicLibrary jaliscoGetSortedMediaKinds:allObjects];
    goto LABEL_10;
  }

  allObjects = [MEMORY[0x277CBEB58] setWithArray:jaliscoLastExcludedMediaKinds];
  v8 = [allObjects count];
  if (setCopy)
  {
    [allObjects unionSet:withCopy];
  }

  else
  {
    [allObjects minusSet:withCopy];
  }

  if (v8 != [allObjects count])
  {
    v7AllObjects = [allObjects allObjects];
    v9 = [ML3MusicLibrary jaliscoGetSortedMediaKinds:v7AllObjects];

LABEL_10:
    if ([v9 count])
    {
      v11 = [v9 componentsJoinedByString:{@", "}];
      [(ML3MusicLibrary *)self setValue:v11 forDatabaseProperty:@"MLJaliscoLastExcludedMediaKinds"];
    }

    else
    {
      [(ML3MusicLibrary *)self clearJaliscoLastExcludedMediaKinds];
    }

    goto LABEL_13;
  }

  v9 = allObjects;
LABEL_13:

LABEL_14:
}

- (void)sortJaliscoLastSupportedMediaKinds
{
  jaliscoLastSupportedMediaKinds = [(ML3MusicLibrary *)self jaliscoLastSupportedMediaKinds];
  v3 = [jaliscoLastSupportedMediaKinds componentsSeparatedByString:{@", "}];
  v4 = NSStringFromSelector(sel_longLongValue);
  v5 = [v3 valueForKey:v4];

  v6 = [ML3MusicLibrary jaliscoGetSortedMediaKinds:v5];

  v7 = [v6 componentsJoinedByString:{@", "}];
  [(ML3MusicLibrary *)self setJaliscoLastSupportedMediaKinds:v7];
}

- (void)setJaliscoLastLibraryUpdateTime:(id)time
{
  [time timeIntervalSinceReferenceDate];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [(ML3MusicLibrary *)self setValue:v4 forDatabaseProperty:@"MLJaliscoLastLibraryUpdate"];
}

- (NSDate)jaliscoLastLibraryUpdateTime
{
  v2 = MEMORY[0x277CBEAA8];
  v3 = [(ML3MusicLibrary *)self valueForDatabaseProperty:@"MLJaliscoLastLibraryUpdate"];
  [v3 doubleValue];
  v4 = [v2 dateWithTimeIntervalSinceReferenceDate:?];

  return v4;
}

- (void)setJaliscoOnDiskDatabaseRevision:(int64_t)revision
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:revision];
  [(ML3MusicLibrary *)self setValue:v4 forDatabaseProperty:@"MLJaliscoDatabaseRevision"];
}

- (void)setJaliscoNeedsUpdateForTokens:(BOOL)tokens
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:tokens];
  [(ML3MusicLibrary *)self setValue:v4 forDatabaseProperty:@"MLJaliscoNeedsUpdateForTokens"];
}

- (void)setJaliscoIsMusicGeniusUserEnabled:(BOOL)enabled
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:enabled];

  CFPreferencesSetAppValue(@"GeniusUserEnabled", v3, @"com.apple.mobileipod");
}

- (BOOL)jaliscoIsMusicGeniusUserEnabled
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"GeniusUserEnabled", @"com.apple.mobileipod", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

- (void)setJaliscoHasCloudGeniusData:(BOOL)data
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:data];
  [(ML3MusicLibrary *)self setValue:v4 forDatabaseProperty:@"MLJaliscoHasCloudGeniusData"];
}

- (BOOL)jaliscoHasCloudGeniusData
{
  v2 = [(ML3MusicLibrary *)self valueForDatabaseProperty:@"MLJaliscoHasCloudGeniusData"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setJaliscoLastGeniusUpdateDate:(id)date
{
  [date timeIntervalSinceReferenceDate];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [(ML3MusicLibrary *)self setValue:v4 forDatabaseProperty:@"MLJaliscoLastGeniusUpdate"];
}

- (NSDate)jaliscoLastGeniusUpdateDate
{
  v2 = MEMORY[0x277CBEAA8];
  v3 = [(ML3MusicLibrary *)self valueForDatabaseProperty:@"MLJaliscoLastGeniusUpdate"];
  [v3 doubleValue];
  v4 = [v2 dateWithTimeIntervalSinceReferenceDate:?];

  return v4;
}

- (NSNumber)jaliscoAccountID
{
  v2 = [(ML3MusicLibrary *)self valueForDatabaseProperty:@"MLJaliscoAccountID"];
  v3 = v2;
  if (v2)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v2, "longLongValue")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end