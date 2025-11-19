@interface ICDSharingProxy
- (ICDSharingProxy)initWithFileProviderExtension:(id)a3 itemIdentifier:(id)a4 fileURL:(id)a5 operationQueue:(id)a6;
- (id)fetchParticipantListAndPublicPermission:(id)a3;
- (id)fetchShareURLWithCompletion:(id)a3;
- (id)fetchShareWithCompletion:(id)a3;
- (id)preflightCheckIfCurrentlyShareableWithCompletion:(id)a3;
- (id)saveShare:(id)a3 completion:(id)a4;
- (id)unshareWithCompletion:(id)a3;
- (void)fetchSharingInfo:(id)a3;
- (void)startPreparingForShareWhenForcing:(BOOL)a3;
@end

@implementation ICDSharingProxy

- (ICDSharingProxy)initWithFileProviderExtension:(id)a3 itemIdentifier:(id)a4 fileURL:(id)a5 operationQueue:(id)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = ICDSharingProxy;
  v12 = [(BaseSharingProxy *)&v15 initWithItemIdentifier:a4 fileURL:a5 operationQueue:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fileProviderExtension, a3);
  }

  return v13;
}

- (void)fetchSharingInfo:(id)a3
{
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_1000284D8();
  }
}

- (id)preflightCheckIfCurrentlyShareableWithCompletion:(id)a3
{
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_100028540();
  }

  return 0;
}

- (id)fetchParticipantListAndPublicPermission:(id)a3
{
  v4 = a3;
  memset(v14, 0, sizeof(v14));
  sub_10001A20C(1, "[ICDSharingProxy fetchParticipantListAndPublicPermission:]", 72, 0, v14);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v14[0];
    v8 = [(BaseSharingProxy *)self itemIdentifier];
    *buf = 134219010;
    v16 = v7;
    v17 = 2112;
    v18 = self;
    v19 = 2080;
    v20 = "[ICDSharingProxy fetchParticipantListAndPublicPermission:]";
    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ %s %@%@", buf, 0x34u);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001B18C;
  v12[3] = &unk_1000447A0;
  v12[4] = self;
  v9 = v4;
  v13 = v9;
  v10 = [(ICDSharingProxy *)self fetchShareWithCompletion:v12];

  sub_10001A3DC(v14);

  return v10;
}

- (void)startPreparingForShareWhenForcing:(BOOL)a3
{
  memset(v8, 0, sizeof(v8));
  sub_10001A20C(1, "[ICDSharingProxy startPreparingForShareWhenForcing:]", 80, 0, v8);
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = v8[0];
    v7 = [(BaseSharingProxy *)self itemIdentifier];
    *buf = 134219010;
    v10 = v6;
    v11 = 2112;
    v12 = self;
    v13 = 2080;
    v14 = "[ICDSharingProxy startPreparingForShareWhenForcing:]";
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ %s %@%@", buf, 0x34u);
  }

  sub_10001A3DC(v8);
}

- (id)fetchShareWithCompletion:(id)a3
{
  v4 = a3;
  memset(v29, 0, sizeof(v29));
  sub_10001A20C(1, "[ICDSharingProxy fetchShareWithCompletion:]", 89, 0, v29);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v29[0];
    v8 = [(BaseSharingProxy *)self itemIdentifier];
    *buf = 134219010;
    v31 = v7;
    v32 = 2112;
    v33 = self;
    v34 = 2080;
    v35 = "[ICDSharingProxy fetchShareWithCompletion:]";
    v36 = 2112;
    v37 = v8;
    v38 = 2112;
    v39 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ %s %@%@", buf, 0x34u);
  }

  v9 = [(BaseSharingProxy *)self cachedShare];

  if (v9)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v19 = [(BaseSharingProxy *)self cachedShare];
      *buf = 138413058;
      v31 = self;
      v32 = 2112;
      v33 = v19;
      v34 = 2112;
      v35 = 0;
      v36 = 2112;
      v37 = v10;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    v12 = [(BaseSharingProxy *)self cachedShare];
    v4[2](v4, v12, 0);

    v13 = 0;
  }

  else
  {
    v13 = [NSProgress progressWithTotalUnitCount:1];
    objc_initWeak(buf, v13);
    v14 = [BRShareCopyOperation alloc];
    v15 = [(BaseSharingProxy *)self itemIdentifier];
    v16 = [v14 initWithItemID:v15];

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10001B908;
    v26[3] = &unk_1000451A8;
    v26[4] = self;
    objc_copyWeak(&v28, buf);
    v27 = v4;
    [v16 setRootShareCopyCompletionBlock:v26];
    objc_initWeak(&location, v16);
    [v13 setCancellable:1];
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_10001BB64;
    v23 = &unk_1000446D8;
    objc_copyWeak(&v24, &location);
    [v13 setCancellationHandler:&v20];
    v17 = [(BaseSharingProxy *)self operationQueue:v20];
    [v17 addOperation:v16];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }

  sub_10001A3DC(v29);

  return v13;
}

- (id)fetchShareURLWithCompletion:(id)a3
{
  v4 = a3;
  memset(v25, 0, sizeof(v25));
  sub_10001A20C(1, "[ICDSharingProxy fetchShareURLWithCompletion:]", 127, 0, v25);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v25[0];
    v8 = [(BaseSharingProxy *)self itemIdentifier];
    *buf = 134219010;
    v27 = v7;
    v28 = 2112;
    v29 = self;
    v30 = 2080;
    v31 = "[ICDSharingProxy fetchShareURLWithCompletion:]";
    v32 = 2112;
    v33 = v8;
    v34 = 2112;
    v35 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ %s %@%@", buf, 0x34u);
  }

  v9 = [NSProgress progressWithTotalUnitCount:1];
  objc_initWeak(buf, v9);
  v10 = [BRShareCopyShareURLOperation alloc];
  v11 = [(BaseSharingProxy *)self itemIdentifier];
  v12 = [v10 initWithItemID:v11];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10001BF14;
  v22[3] = &unk_1000451D0;
  objc_copyWeak(&v24, buf);
  v22[4] = self;
  v13 = v4;
  v23 = v13;
  [v12 setCopyShareURLCompletionBlock:v22];
  [v9 setCancellable:1];
  objc_initWeak(&location, v12);
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10001C05C;
  v19 = &unk_1000446D8;
  objc_copyWeak(&v20, &location);
  [v9 setCancellationHandler:&v16];
  v14 = [(BaseSharingProxy *)self operationQueue:v16];
  [v14 addOperation:v12];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);
  sub_10001A3DC(v25);

  return v9;
}

- (id)saveShare:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  memset(v32, 0, sizeof(v32));
  sub_10001A20C(1, "[ICDSharingProxy saveShare:completion:]", 155, 0, v32);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v32[0];
    v11 = [(BaseSharingProxy *)self itemIdentifier];
    *buf = 134219010;
    v34 = v10;
    v35 = 2112;
    v36 = self;
    v37 = 2080;
    v38 = "[ICDSharingProxy saveShare:completion:]";
    v39 = 2112;
    v40 = v11;
    v41 = 2112;
    v42 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ %s %@%@", buf, 0x34u);
  }

  v12 = [v6 objectForKeyedSubscript:CKShareTypeKey];
  v13 = [v12 isEqual:_BRFolderShareType];

  if (v13)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v22 = [NSError br_errorWithPOSIXCode:45];
      *buf = 138413058;
      v34 = self;
      v35 = 2112;
      v36 = 0;
      v37 = 2112;
      v38 = v22;
      v39 = 2112;
      v40 = v14;
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    v16 = [NSError br_errorWithPOSIXCode:45];
    v7[2](v7, 0, v16);
    v17 = 0;
  }

  else
  {
    [(BaseSharingProxy *)self setCachedShare:v6];
    v18 = [BRShareSaveOperation alloc];
    v19 = [(BaseSharingProxy *)self fileURL];
    v16 = [v18 initWithShare:v6 fileURL:v19];

    v17 = [NSProgress progressWithTotalUnitCount:1];
    objc_initWeak(buf, v17);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10001C54C;
    v29[3] = &unk_1000450C0;
    objc_copyWeak(&v31, buf);
    v29[4] = self;
    v30 = v7;
    [v16 setShareSaveCompletionBlock:v29];
    [v17 setCancellable:1];
    objc_initWeak(&location, v16);
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_10001C6A0;
    v26 = &unk_1000446D8;
    objc_copyWeak(&v27, &location);
    [v17 setCancellationHandler:&v23];
    v20 = [(BaseSharingProxy *)self operationQueue:v23];
    [v20 addOperation:v16];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);

    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);
  }

  sub_10001A3DC(v32);

  return v17;
}

- (id)unshareWithCompletion:(id)a3
{
  v4 = a3;
  memset(v20, 0, sizeof(v20));
  sub_10001A20C(1, "[ICDSharingProxy unshareWithCompletion:]", 184, 0, v20);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v20[0];
    v8 = [(BaseSharingProxy *)self itemIdentifier];
    *buf = 134219010;
    v22 = v7;
    v23 = 2112;
    v24 = self;
    v25 = 2080;
    v26 = "[ICDSharingProxy unshareWithCompletion:]";
    v27 = 2112;
    v28 = v8;
    v29 = 2112;
    v30 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ %s %@%@", buf, 0x34u);
  }

  v9 = [NSProgress progressWithTotalUnitCount:2];
  [v9 setCancellable:1];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001C9A8;
  v17[3] = &unk_100045110;
  v17[4] = self;
  v10 = v4;
  v19 = v10;
  v11 = v9;
  v18 = v11;
  v12 = [(ICDSharingProxy *)self fetchShareWithCompletion:v17];
  if (![v11 completedUnitCount])
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001CF2C;
    v15[3] = &unk_1000446B0;
    v16 = v12;
    [v11 setCancellationHandler:v15];
  }

  v13 = v11;

  sub_10001A3DC(v20);

  return v13;
}

@end