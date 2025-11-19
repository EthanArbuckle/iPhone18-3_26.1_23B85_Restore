@interface DLDocumentDownloads
- (DLDocumentDownloads)init;
- (id)createDeleteOperation:(id)a3;
- (id)createErrorForCode:(int64_t)a3 description:(id)a4;
- (id)createMoveOperation:(id)a3 destinationItem:(id)a4 completionHandler:(id)a5;
- (id)createMoveOperation:(id)a3 parentItem:(id)a4 newFileName:(id)a5 completionHandler:(id)a6;
- (id)createTemporaryFolderURLAppropriateForURL:(id)a3 error:(id *)a4;
- (void)_notifyDownloadCompleted:(id)a3;
- (void)deleteItemIgnoringResult:(id)a3;
- (void)importItemAtURL:(id)a3 toLocation:(int64_t)a4 completionHandler:(id)a5;
- (void)importItemAtURLToDocuments:(id)a3 completionHandler:(id)a4;
- (void)importItemAtURLToDownloads:(id)a3 completionHandler:(id)a4;
- (void)importPlaceholderAtURLToDownloadsDirectory:(id)a3 completionHandler:(id)a4;
- (void)namedLocationExists:(int64_t)a3 completionHandler:(id)a4;
- (void)replaceContentsOfFile:(id)a3 withFile:(id)a4 completion:(id)a5;
- (void)replacePlaceholder:(id)a3 withFinalFileURL:(id)a4 completionHandler:(id)a5;
@end

@implementation DLDocumentDownloads

- (DLDocumentDownloads)init
{
  v7.receiver = self;
  v7.super_class = DLDocumentDownloads;
  v2 = [(DLDocumentDownloads *)&v7 init];
  if (v2)
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [v3 bundleIdentifier];

    v5 = +[DOCManagedPermission defaultPermission];
    [v5 setHostIdentifier:v4];
  }

  return v2;
}

- (void)importPlaceholderAtURLToDownloadsDirectory:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 url];
    v9 = [v8 startAccessingSecurityScopedResource];
    v10 = objc_opt_new();
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000010E0;
    v15[3] = &unk_100008290;
    v18 = v7;
    v15[4] = self;
    v19 = v9;
    v16 = v6;
    v17 = v8;
    v11 = v8;
    [v10 fetchDefaultDownloadsLocationItem:v15];
  }

  else
  {
    v12 = _DocumentManagerBundle();
    v13 = [v12 localizedStringForKey:@"Invalid URL wrapper" value:@"Invalid URL wrapper" table:@"Localizable"];

    v14 = [(DLDocumentDownloads *)self createErrorForCode:-1000 description:v13];
    (*(v7 + 2))(v7, 0, v14);
  }
}

- (void)replacePlaceholder:(id)a3 withFinalFileURL:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (a3 && v8)
  {
    v10 = [a3 url];
    v11 = [v8 url];
    v12 = [v10 startAccessingSecurityScopedResource];
    v13 = [v11 startAccessingSecurityScopedResource];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100001540;
    v34[3] = &unk_1000082B8;
    v39 = v12;
    v14 = v10;
    v40 = v13;
    v35 = v14;
    v36 = v11;
    v37 = self;
    v38 = v9;
    v15 = v11;
    v16 = objc_retainBlock(v34);
    v17 = +[FPItemManager defaultManager];
    v18 = [v8 url];
    v19 = [v18 lastPathComponent];

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100001634;
    v27[3] = &unk_100008358;
    v28 = v17;
    v29 = v8;
    v30 = self;
    v31 = v14;
    v32 = v19;
    v33 = v16;
    v20 = v16;
    v21 = v19;
    v22 = v14;
    v23 = v17;
    [v23 fetchItemForURL:v22 completionHandler:v27];
  }

  else
  {
    v24 = _DocumentManagerBundle();
    v25 = [v24 localizedStringForKey:@"Invalid URL wrapper" value:@"Invalid URL wrapper" table:@"Localizable"];

    v26 = [(DLDocumentDownloads *)self createErrorForCode:-1000 description:v25];
    (*(v9 + 2))(v9, 0, v26);
  }
}

- (void)_notifyDownloadCompleted:(id)a3
{
  v3 = a3;
  v4 = docDownloadServiceLogHandle;
  if (!docDownloadServiceLogHandle)
  {
    DOCInitLogging();
    v4 = docDownloadServiceLogHandle;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100004900(v3, v4);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else if (!v3)
  {
    goto LABEL_10;
  }

  v19[0] = DOCSBFolderNotificationURLKey;
  v5 = [v3 path];
  v19[1] = DOCSBFolderNotificationIsDownloadsFolderKey;
  v20[0] = v5;
  v20[1] = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];

  v7 = docDownloadServiceLogHandle;
  if (!docDownloadServiceLogHandle)
  {
    DOCInitLogging();
    v7 = docDownloadServiceLogHandle;
  }

  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  v9 = DOCSBFolderProgressCompletedDistributedNotification;
  if (v8)
  {
    v11 = 136315906;
    v12 = "[DLDocumentDownloads _notifyDownloadCompleted:]";
    v13 = 2112;
    v14 = v3;
    v15 = 2112;
    v16 = DOCSBFolderProgressCompletedDistributedNotification;
    v17 = 2112;
    v18 = v6;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s URL: %@ posting notification: %@ userInfo: %@", &v11, 0x2Au);
  }

  v10 = +[NSDistributedNotificationCenter defaultCenter];
  [v10 postNotificationName:v9 object:0 userInfo:v6 options:3];

LABEL_10:
}

- (void)replaceContentsOfFile:(id)a3 withFile:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[NSFileManager defaultManager];
  v36 = 0;
  v37[0] = &v36;
  v37[1] = 0x3032000000;
  v37[2] = sub_1000020AC;
  v37[3] = sub_1000020BC;
  v38 = 0;
  obj = 0;
  v11 = [v10 URLForDirectory:99 inDomain:1 appropriateForURL:v7 create:1 error:&obj];
  objc_storeStrong(&v38, obj);
  if (!*(v37[0] + 40))
  {
    v13 = [v8 lastPathComponent];
    v14 = [v11 URLByAppendingPathComponent:v13];

    v15 = [v8 startAccessingSecurityScopedResource];
    v16 = (v37[0] + 40);
    v34 = *(v37[0] + 40);
    v17 = [v10 copyItemAtURL:v8 toURL:v14 error:&v34];
    objc_storeStrong(v16, v34);
    if (!v17 || *(v37[0] + 40))
    {
      v18 = docDownloadServiceLogHandle;
      if (!docDownloadServiceLogHandle)
      {
        DOCInitLogging();
        v18 = docDownloadServiceLogHandle;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000049A0(v37);
      }

      v9[2](v9, v17, *(v37[0] + 40));
      if (v15)
      {
        [v8 stopAccessingSecurityScopedResource];
      }

LABEL_28:

      goto LABEL_29;
    }

    if (v15)
    {
      [v8 stopAccessingSecurityScopedResource];
    }

    v19 = [[NSFileCoordinator alloc] initWithFilePresenter:0];
    v24 = [v7 startAccessingSecurityScopedResource];
    v23 = [v14 startAccessingSecurityScopedResource];
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v20 = (v37[0] + 40);
    v29 = *(v37[0] + 40);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000020C4;
    v25[3] = &unk_100008380;
    v27 = &v30;
    v21 = v14;
    v26 = v21;
    v28 = &v36;
    [v19 coordinateWritingItemAtURL:v7 options:0 error:&v29 byAccessor:v25];
    objc_storeStrong(v20, v29);
    if (!*(v37[0] + 40))
    {
      goto LABEL_21;
    }

    v22 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v22 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100004A08(v37);
      if (!v9)
      {
        goto LABEL_23;
      }
    }

    else
    {
LABEL_21:
      if (!v9)
      {
LABEL_23:
        if (v24)
        {
          [v7 stopAccessingSecurityScopedResource];
        }

        if (v23)
        {
          [v21 stopAccessingSecurityScopedResource];
        }

        _Block_object_dispose(&v30, 8);
        goto LABEL_28;
      }
    }

    v9[2](v9, *(v31 + 24), *(v37[0] + 40));
    goto LABEL_23;
  }

  v12 = docDownloadServiceLogHandle;
  if (!docDownloadServiceLogHandle)
  {
    DOCInitLogging();
    v12 = docDownloadServiceLogHandle;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_1000049A0(v37);
    if (!v9)
    {
      goto LABEL_29;
    }

    goto LABEL_6;
  }

  if (v9)
  {
LABEL_6:
    v9[2](v9, 0, *(v37[0] + 40));
  }

LABEL_29:

  _Block_object_dispose(&v36, 8);
}

- (id)createMoveOperation:(id)a3 parentItem:(id)a4 newFileName:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [FPMoveOperation alloc];
  v29 = v10;
  v15 = [NSArray arrayWithObjects:&v29 count:1];
  v16 = [v14 initWithItems:v15 destinationFolder:v11];

  v27 = v10;
  v28 = v12;
  v17 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  [v16 setTargetFilenamesByItem:v17];

  [v16 setShouldBounceOnCollision:1];
  [v16 setLastUsageUpdatePolicy:2];
  objc_initWeak(&location, v16);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000023CC;
  v21[3] = &unk_1000083D0;
  objc_copyWeak(&v25, &location);
  v18 = v10;
  v22 = v18;
  v23 = self;
  v19 = v13;
  v24 = v19;
  [v16 setActionCompletionBlock:v21];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  return v16;
}

- (id)createMoveOperation:(id)a3 destinationItem:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 url];
  v12 = [FPMoveOperation alloc];
  v24 = v11;
  v13 = [NSArray arrayWithObjects:&v24 count:1];
  v14 = [v12 initWithURLs:v13 destinationFolder:v9];

  [v14 setLastUsageUpdatePolicy:2];
  [v14 setShouldBounceOnCollision:1];
  objc_initWeak(&location, v14);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000027A8;
  v18[3] = &unk_1000083D0;
  objc_copyWeak(&v22, &location);
  v15 = v11;
  v19 = v15;
  v20 = self;
  v16 = v10;
  v21 = v16;
  [v14 setActionCompletionBlock:v18];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);

  return v14;
}

- (id)createDeleteOperation:(id)a3
{
  v3 = a3;
  v4 = [FPDeleteOperation alloc];
  v8 = v3;
  v5 = [NSArray arrayWithObjects:&v8 count:1];

  v6 = [v4 initWithItems:v5];
  [v6 setActionCompletionBlock:&stru_100008410];

  return v6;
}

- (void)importItemAtURL:(id)a3 toLocation:(int64_t)a4 completionHandler:(id)a5
{
  v11 = a3;
  v9 = a5;
  if (a4 == 2)
  {
    [(DLDocumentDownloads *)self importItemAtURLToDocuments:v11 completionHandler:v9];
  }

  else if (a4 == 1)
  {
    [(DLDocumentDownloads *)self importItemAtURLToDownloads:v11 completionHandler:v9];
  }

  else
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"DLDocumentDownloads.m" lineNumber:344 description:{@"Unexpected _DOCFileDestination %ld", a4}];
  }
}

- (void)importItemAtURLToDownloads:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 url];
    v9 = [v8 startAccessingSecurityScopedResource];

    v10 = objc_opt_new();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100002D2C;
    v14[3] = &unk_100008460;
    v16 = v7;
    v14[4] = self;
    v15 = v6;
    v17 = v9;
    [v10 fetchDefaultDownloadsLocationItem:v14];
  }

  else
  {
    v11 = _DocumentManagerBundle();
    v12 = [v11 localizedStringForKey:@"Invalid URL wrapper" value:@"Invalid URL wrapper" table:@"Localizable"];

    v13 = [(DLDocumentDownloads *)self createErrorForCode:-1000 description:v12];
    (*(v7 + 2))(v7, 0, v13);
  }
}

- (void)importItemAtURLToDocuments:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 url];
    v9 = [v8 startAccessingSecurityScopedResource];

    v10 = +[FPItemManager defaultManager];
    v11 = FPIsCloudDocsWithFPFSEnabled();
    v12 = &DOCDocumentSourceIdentifierICloudFPFS;
    if (!v11)
    {
      v12 = &DOCDocumentSourceIdentifierICloudFPv2;
    }

    v13 = *v12;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100003144;
    v19[3] = &unk_100008488;
    v19[4] = self;
    v20 = v6;
    v25 = v9;
    v21 = v10;
    v22 = @"Documents";
    v23 = v13;
    v24 = v7;
    v14 = v13;
    v15 = v10;
    [v15 _doc_fetchFolderNamed:@"Documents" inDomain:v14 completionHandler:v19];
  }

  else
  {
    v16 = _DocumentManagerBundle();
    v17 = [v16 localizedStringForKey:@"Invalid URL wrapper" value:@"Invalid URL wrapper" table:@"Localizable"];

    v18 = [(DLDocumentDownloads *)self createErrorForCode:-1000 description:v17];
    (*(v7 + 2))(v7, 0, v18);
  }
}

- (void)namedLocationExists:(int64_t)a3 completionHandler:(id)a4
{
  v7 = a4;
  if (a3 != 2)
  {
    sub_100004BC0(a2, self);
  }

  v8 = +[FPItemManager defaultManager];
  v9 = FPIsCloudDocsWithFPFSEnabled();
  v10 = &DOCDocumentSourceIdentifierICloudFPFS;
  if (!v9)
  {
    v10 = &DOCDocumentSourceIdentifierICloudFPv2;
  }

  v11 = *v10;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100003450;
  v14[3] = &unk_1000084B0;
  v15 = @"Documents";
  v16 = v11;
  v17 = v7;
  v12 = v7;
  v13 = v11;
  [v8 _doc_folderNamed:@"Documents" existsInDomain:v13 completionHandler:v14];
}

- (void)deleteItemIgnoringResult:(id)a3
{
  v4 = [(DLDocumentDownloads *)self createDeleteOperation:a3];
  v3 = +[FPItemManager defaultManager];
  [v3 scheduleAction:v4];
}

- (id)createErrorForCode:(int64_t)a3 description:(id)a4
{
  v5 = a4;
  v6 = [NSError alloc];
  v10 = NSLocalizedDescriptionKey;
  v11 = v5;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

  v8 = [v6 initWithDomain:@"com.apple.DocumentManager.DocumentDownloads" code:a3 userInfo:v7];

  return v8;
}

- (id)createTemporaryFolderURLAppropriateForURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[NSFileManager defaultManager];
  v7 = [v6 URLForDirectory:99 inDomain:1 appropriateForURL:v5 create:1 error:a4];

  if (!v7)
  {
    v8 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v8 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100004D38(a4);
    }
  }

  return v7;
}

@end