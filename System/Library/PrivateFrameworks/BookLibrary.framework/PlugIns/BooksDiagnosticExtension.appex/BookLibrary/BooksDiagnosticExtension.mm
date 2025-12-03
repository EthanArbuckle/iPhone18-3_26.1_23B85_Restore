@interface BooksDiagnosticExtension
- (id)_getApplicationSupportDirectoryWithContainer:(id)container;
- (id)_getDocumentsDirectoryWithContainer:(id)container;
- (id)_getLibraryDirectoryWithContainer:(id)container;
- (id)_getLibraryPersistentStoreDirectoryWithContainer:(id)container;
- (id)_getSeriesDatabasePersistentStoreDirectoryWithContainer:(id)container;
- (id)_getStoreFilesPersistentStoreDirectory:(id)directory withContainer:(id)container;
- (id)attachmentList;
- (id)consumeSandboxExtensionForContainer:(id)container;
- (id)getAppDataContainer;
- (void)_addBookManifestAttachmentsForBackupPlists:(BOOL)plists toArray:(id)array;
- (void)_appendBookManifestAttachmentsToArray:(id)array;
- (void)_appendCloudKitFilesToArray:(id)array;
- (void)_appendEngagementFilesToArray:(id)array;
- (void)_appendJaliscoDatabaseFileToArray:(id)array;
- (void)_appendLibraryFileToArray:(id)array;
- (void)_appendMediaLibraryAttachmentsToArray:(id)array;
- (void)_appendPriceTrackingFilesToArray:(id)array;
- (void)_appendReadingHistoryModelFilesToArray:(id)array;
- (void)_appendSeriesDatabaseFileToArray:(id)array;
- (void)_appendStoreFilesToArray:(id)array;
- (void)_downloadsDatabaseAttachmentToArray:(id)array;
@end

@implementation BooksDiagnosticExtension

- (id)attachmentList
{
  v3 = +[NSMutableArray array];
  [(BooksDiagnosticExtension *)self _appendJaliscoDatabaseFileToArray:v3];
  v4 = +[NSMutableArray array];
  [(BooksDiagnosticExtension *)self _appendMediaLibraryAttachmentsToArray:v4];
  v17 = v4;
  [v3 addObjectsFromArray:v4];
  v5 = +[NSMutableArray array];
  [(BooksDiagnosticExtension *)self _appendCloudKitFilesToArray:v5];
  v16 = v5;
  [v3 addObjectsFromArray:v5];
  v6 = +[NSMutableArray array];
  [(BooksDiagnosticExtension *)self _appendLibraryFileToArray:v6];
  [v3 addObjectsFromArray:v6];
  v7 = +[NSMutableArray array];
  [(BooksDiagnosticExtension *)self _appendSeriesDatabaseFileToArray:v7];
  [v3 addObjectsFromArray:v7];
  v8 = +[NSMutableArray array];
  [(BooksDiagnosticExtension *)self _appendStoreFilesToArray:v8];
  [v3 addObjectsFromArray:v8];
  v9 = +[NSMutableArray array];
  [(BooksDiagnosticExtension *)self _appendEngagementFilesToArray:v9];
  [v3 addObjectsFromArray:v9];
  v10 = +[NSMutableArray array];
  [(BooksDiagnosticExtension *)self _appendReadingHistoryModelFilesToArray:v10];
  [v3 addObjectsFromArray:v10];
  v11 = +[NSMutableArray array];
  [(BooksDiagnosticExtension *)self _appendPriceTrackingFilesToArray:v11];
  [v3 addObjectsFromArray:v11];
  v12 = +[NSMutableArray array];
  [(BooksDiagnosticExtension *)self _downloadsDatabaseAttachmentToArray:v12];
  [v3 addObjectsFromArray:v12];
  v13 = +[NSMutableArray array];
  [(BooksDiagnosticExtension *)self _appendBookManifestAttachmentsToArray:v13];
  [v3 addObjectsFromArray:v13];
  v14 = BLBooksDiagnosticExtensionLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v19 = [v3 count];
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Attachments contains (%lu) items: %@", buf, 0x16u);
  }

  return v3;
}

- (void)_appendMediaLibraryAttachmentsToArray:(id)array
{
  arrayCopy = array;
  v5 = MSVMobileHomeDirectory();
  v11[0] = v5;
  v11[1] = @"Media";
  v11[2] = @"iTunes_Control";
  v11[3] = @"iTunes";
  v6 = [NSArray arrayWithObjects:v11 count:4];
  v7 = [NSURL fileURLWithPathComponents:v6];

  v9 = @"MediaLibrary.sqlitedb";
  v10 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [(BLBooksDEExtensionProvider *)self appendDatabaseAttachmentsFromURLs:v8 hasSqliteSuffix:0 toArray:arrayCopy];
}

- (void)_appendJaliscoDatabaseFileToArray:(id)array
{
  arrayCopy = array;
  v5 = +[NSURL bu_booksGroupContainerDocumentsURL];
  v6 = [v5 URLByAppendingPathComponent:@"BKJaliscoServerSource"];

  v8 = @"Jalisco database";
  v9 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [(BLBooksDEExtensionProvider *)self appendDatabaseAttachmentsFromURLs:v7 hasSqliteSuffix:1 toArray:arrayCopy];
}

- (void)_appendCloudKitFilesToArray:(id)array
{
  arrayCopy = array;
  v5 = +[NSURL bu_booksGroupContainerDocumentsURL];
  v6 = [v5 URLByAppendingPathComponent:@"BCCloudData-BookDataStoreService"];

  v12[0] = @"BCAssetData";
  v7 = [v6 URLByAppendingPathComponent:?];
  v13[0] = v7;
  v12[1] = @"BCCloudCollections";
  v8 = [v6 URLByAppendingPathComponent:?];
  v13[1] = v8;
  v12[2] = @"CRDTModelSync-ReadingHistoryModel";
  v9 = [v6 URLByAppendingPathComponent:?];
  v13[2] = v9;
  v12[3] = @"BDSSecureData";
  v10 = [v6 URLByAppendingPathComponent:?];
  v13[3] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:4];

  [(BLBooksDEExtensionProvider *)self appendDatabaseAttachmentsFromURLs:v11 hasSqliteSuffix:0 toArray:arrayCopy];
}

- (void)_appendEngagementFilesToArray:(id)array
{
  arrayCopy = array;
  v5 = +[NSURL bu_booksGroupContainerURL];
  v6 = [v5 URLByAppendingPathComponent:@"EngagementCollector"];

  v8 = @"BooksMessages";
  v9 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [(BLBooksDEExtensionProvider *)self appendDatabaseAttachmentsFromURLs:v7 hasSqliteSuffix:1 toArray:arrayCopy];
}

- (void)_appendLibraryFileToArray:(id)array
{
  arrayCopy = array;
  getAppDataContainer = [(BooksDiagnosticExtension *)self getAppDataContainer];
  v6 = [(BooksDiagnosticExtension *)self _getLibraryPersistentStoreDirectoryWithContainer:getAppDataContainer];
  v7 = v6;
  if (v6)
  {
    v10 = @"BKLibrary";
    v11 = v6;
    v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v9 = [(BooksDiagnosticExtension *)self consumeSandboxExtensionForContainer:getAppDataContainer];
    if (v9)
    {
      [(BLBooksDEExtensionProvider *)self appendDatabaseAttachmentsFromURLs:v8 hasSqliteSuffix:1 toArray:arrayCopy];
      [v9 close];
    }
  }

  [getAppDataContainer close];
}

- (void)_appendSeriesDatabaseFileToArray:(id)array
{
  arrayCopy = array;
  getAppDataContainer = [(BooksDiagnosticExtension *)self getAppDataContainer];
  v6 = [(BooksDiagnosticExtension *)self _getSeriesDatabasePersistentStoreDirectoryWithContainer:getAppDataContainer];
  v7 = v6;
  if (v6)
  {
    v10 = @"BKSeriesDatabase";
    v11 = v6;
    v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v9 = [(BooksDiagnosticExtension *)self consumeSandboxExtensionForContainer:getAppDataContainer];
    if (v9)
    {
      [(BLBooksDEExtensionProvider *)self appendDatabaseAttachmentsFromURLs:v8 hasSqliteSuffix:1 toArray:arrayCopy];
      [v9 close];
    }
  }

  [getAppDataContainer close];
}

- (void)_appendStoreFilesToArray:(id)array
{
  arrayCopy = array;
  getAppDataContainer = [(BooksDiagnosticExtension *)self getAppDataContainer];
  v6 = [(BooksDiagnosticExtension *)self _getStoreFilesPersistentStoreDirectory:@"storeFiles" withContainer:getAppDataContainer];
  v7 = v6;
  if (v6)
  {
    v10 = @"storeFiles";
    v11 = v6;
    v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v9 = [(BooksDiagnosticExtension *)self consumeSandboxExtensionForContainer:getAppDataContainer];
    if (v9)
    {
      [(BLBooksDEExtensionProvider *)self appendDatabaseAttachmentsFromURLs:v8 hasSqliteSuffix:1 toArray:arrayCopy];
      [v9 close];
    }
  }

  [getAppDataContainer close];
}

- (id)_getDocumentsDirectoryWithContainer:(id)container
{
  if (container)
  {
    v3 = [container url];
    v4 = [v3 URLByAppendingPathComponent:@"Documents" isDirectory:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_getLibraryPersistentStoreDirectoryWithContainer:(id)container
{
  v3 = [(BooksDiagnosticExtension *)self _getDocumentsDirectoryWithContainer:container];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 URLByAppendingPathComponent:@"BKLibrary" isDirectory:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_getSeriesDatabasePersistentStoreDirectoryWithContainer:(id)container
{
  v3 = [(BooksDiagnosticExtension *)self _getDocumentsDirectoryWithContainer:container];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 URLByAppendingPathComponent:@"BKSeriesDatabase" isDirectory:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_getStoreFilesPersistentStoreDirectory:(id)directory withContainer:(id)container
{
  directoryCopy = directory;
  v7 = [(BooksDiagnosticExtension *)self _getDocumentsDirectoryWithContainer:container];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 URLByAppendingPathComponent:directoryCopy isDirectory:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_getLibraryDirectoryWithContainer:(id)container
{
  if (container)
  {
    v3 = [container url];
    v4 = [v3 URLByAppendingPathComponent:@"Library" isDirectory:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_getApplicationSupportDirectoryWithContainer:(id)container
{
  v3 = [(BooksDiagnosticExtension *)self _getLibraryDirectoryWithContainer:container];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 URLByAppendingPathComponent:@"Application Support" isDirectory:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)consumeSandboxExtensionForContainer:(id)container
{
  consumeSandboxToken = [container consumeSandboxToken];
  if (!consumeSandboxToken)
  {
    v4 = BLBooksDiagnosticExtensionLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *__error();
      v7 = 136446466;
      v8 = "[BooksDiagnosticExtension consumeSandboxExtensionForContainer:]";
      v9 = 1024;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s: Failed to consume container sandbox token, errno = %{darwin.errno}d", &v7, 0x12u);
    }
  }

  return consumeSandboxToken;
}

- (id)getAppDataContainer
{
  v2 = [[BUAppDataContainer alloc] initWithBundleID:@"com.apple.iBooks"];

  return v2;
}

- (void)_appendReadingHistoryModelFilesToArray:(id)array
{
  arrayCopy = array;
  v4 = [NSString stringWithFormat:@"%@.%@Context.db", @"bookdatastored", @"ReadingHistoryModel"];
  v5 = +[NSURL bu_booksGroupContainerURL];
  v6 = [v5 URLByAppendingPathComponent:@"CRDTModelContext" isDirectory:1];

  v7 = [v6 URLByAppendingPathComponent:v4];
  [(BLBooksDEExtensionProvider *)self addAttachmentFromURL:v7 withName:v4 archiveFile:0 toArray:arrayCopy];

  v8 = [@"ReadingHistoryModel" stringByAppendingString:@"-SyncInfo"];
  v9 = +[NSURL bu_booksGroupContainerURL];
  v10 = [v9 URLByAppendingPathComponent:@"CRDTModelFileSync" isDirectory:1];

  v11 = [v10 URLByAppendingPathComponent:v8];
  [(BLBooksDEExtensionProvider *)self addAttachmentFromURL:v11 withName:v8 archiveFile:0 toArray:arrayCopy];

  v12 = [NSString stringWithFormat:@"%@-%@-SyncInfoContext.db", @"bookdatastored", @"ReadingHistoryModel"];
  v13 = +[NSURL bu_booksGroupContainerURL];
  v14 = [v13 URLByAppendingPathComponent:@"CRDTModelFileSyncContext" isDirectory:1];

  v15 = [v14 URLByAppendingPathComponent:v12];
  [(BLBooksDEExtensionProvider *)self addAttachmentFromURL:v15 withName:v12 archiveFile:0 toArray:arrayCopy];

  v16 = +[NSURL bu_booksGroupContainerURL];
  v17 = [v16 URLByAppendingPathComponent:@"CRDTModelLocalFile" isDirectory:1];

  v18 = [v17 URLByAppendingPathComponent:@"ReadingHistoryModel"];
  [(BLBooksDEExtensionProvider *)self addAttachmentFromURL:v18 withName:@"ReadingHistoryModel" archiveFile:0 toArray:arrayCopy];

  getAppDataContainer = [(BooksDiagnosticExtension *)self getAppDataContainer];
  v20 = [(BooksDiagnosticExtension *)self _getApplicationSupportDirectoryWithContainer:getAppDataContainer];
  if (v20)
  {
    v21 = [(BooksDiagnosticExtension *)self consumeSandboxExtensionForContainer:getAppDataContainer];
    if (v21)
    {
      v22 = [NSString stringWithFormat:@"%@-%@-SyncInfoContext.db", @"Books", @"ReadingHistoryModel"];
      v23 = [v20 URLByAppendingPathComponent:@"CRDTModelFileSyncContext" isDirectory:1];
      v24 = [v23 URLByAppendingPathComponent:v22];
      [(BLBooksDEExtensionProvider *)self addAttachmentFromURL:v24 withName:v22 archiveFile:0 toArray:arrayCopy];

      v25 = [NSString stringWithFormat:@"%@-%@Context.db", @"Books", @"ReadingHistoryModel"];
      v26 = [v20 URLByAppendingPathComponent:@"CRDTModelLocalFileContext" isDirectory:1];
      v27 = [v26 URLByAppendingPathComponent:v25];
      [(BLBooksDEExtensionProvider *)self addAttachmentFromURL:v27 withName:v25 archiveFile:0 toArray:arrayCopy];

      [v21 close];
    }
  }

  [getAppDataContainer close];
}

- (void)_appendPriceTrackingFilesToArray:(id)array
{
  arrayCopy = array;
  v7 = +[NSURL bu_booksGroupContainerDocumentsURL];
  v5 = [v7 URLByAppendingPathComponent:@"BDSService-PriceTracking" isDirectory:1];
  v6 = [v5 URLByAppendingPathComponent:@"data.json" isDirectory:0];
  [(BLBooksDEExtensionProvider *)self addAttachmentFromURL:v6 withName:@"BDSService-PriceTracking-data.json" archiveFile:0 toArray:arrayCopy];
}

- (void)_appendBookManifestAttachmentsToArray:(id)array
{
  arrayCopy = array;
  [(BooksDiagnosticExtension *)self _addBookManifestAttachmentsForBackupPlists:0 toArray:arrayCopy];
  [(BooksDiagnosticExtension *)self _addBookManifestAttachmentsForBackupPlists:1 toArray:arrayCopy];
}

- (void)_addBookManifestAttachmentsForBackupPlists:(BOOL)plists toArray:(id)array
{
  if (plists)
  {
    v6 = @"Backup-Books.plist";
  }

  else
  {
    v6 = @"Books.plist";
  }

  if (plists)
  {
    v7 = @"Backup-Purchases.plist";
  }

  else
  {
    v7 = @"Purchases.plist";
  }

  v8 = @"Managed.plist";
  if (plists)
  {
    v8 = @"Backup-Managed.plist";
  }

  v9 = v8;
  v10 = v7;
  v11 = v6;
  arrayCopy = array;
  v13 = +[IMLibraryPlist purchasesRepositoryPath];
  v20 = [NSURL fileURLWithPath:v13];

  v14 = +[IMLibraryPlist managedRepositoryPath];
  v15 = [NSURL fileURLWithPath:v14];

  v16 = +[NSURL bu_booksRepositoryURL];
  v17 = [v16 URLByAppendingPathComponent:v11];

  [(BLBooksDEExtensionProvider *)self addAttachmentFromURL:v17 withName:v11 archiveFile:0 toArray:arrayCopy];
  v18 = [v20 URLByAppendingPathComponent:v10];
  [(BLBooksDEExtensionProvider *)self addAttachmentFromURL:v18 withName:v10 archiveFile:0 toArray:arrayCopy];

  v19 = [v15 URLByAppendingPathComponent:v9];
  [(BLBooksDEExtensionProvider *)self addAttachmentFromURL:v19 withName:v9 archiveFile:0 toArray:arrayCopy];
}

- (void)_downloadsDatabaseAttachmentToArray:(id)array
{
  arrayCopy = array;
  v5 = +[IMLibraryPlist sharedContainerURL];
  v6 = [v5 URLByAppendingPathComponent:@"Documents/BLDatabaseManager"];

  v8 = @"BLDownloads database";
  v9 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [(BLBooksDEExtensionProvider *)self appendDatabaseAttachmentsFromURLs:v7 hasSqliteSuffix:1 toArray:arrayCopy];
}

@end