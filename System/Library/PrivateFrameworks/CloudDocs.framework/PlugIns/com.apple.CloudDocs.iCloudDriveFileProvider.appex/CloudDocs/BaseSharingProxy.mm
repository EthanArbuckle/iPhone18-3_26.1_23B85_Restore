@interface BaseSharingProxy
- (BaseSharingProxy)initWithItemIdentifier:(id)identifier fileURL:(id)l operationQueue:(id)queue;
- (id)fetchParticipantListAndPublicPermission:(id)permission;
- (id)fetchShareURLWithCompletion:(id)completion;
- (id)fetchShareWithCompletion:(id)completion;
- (id)preflightCheckIfCurrentlyShareableWithCompletion:(id)completion;
- (id)saveShare:(id)share completion:(id)completion;
- (id)unshareWithCompletion:(id)completion;
- (void)fetchSharingInfo:(id)info;
- (void)startPreparingForShareWhenForcing:(BOOL)forcing;
@end

@implementation BaseSharingProxy

- (BaseSharingProxy)initWithItemIdentifier:(id)identifier fileURL:(id)l operationQueue:(id)queue
{
  identifierCopy = identifier;
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = BaseSharingProxy;
  v10 = [(BaseSharingProxy *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_itemIdentifier, identifier);
    objc_storeStrong(&v11->_operationQueue, queue);
  }

  return v11;
}

- (void)fetchSharingInfo:(id)info
{
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_100026A54();
  }
}

- (id)preflightCheckIfCurrentlyShareableWithCompletion:(id)completion
{
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_100026A54();
  }

  return 0;
}

- (id)fetchParticipantListAndPublicPermission:(id)permission
{
  permissionCopy = permission;
  memset(v13, 0, sizeof(v13));
  sub_100001C50(1, "[BaseSharingProxy fetchParticipantListAndPublicPermission:]", 67, 0, v13);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    itemIdentifier = self->_itemIdentifier;
    *buf = 134219010;
    v15 = v13[0];
    v16 = 2112;
    selfCopy = self;
    v18 = 2080;
    v19 = "[BaseSharingProxy fetchParticipantListAndPublicPermission:]";
    v20 = 2112;
    v21 = itemIdentifier;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ %s %@%@", buf, 0x34u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000516C;
  v11[3] = &unk_1000447B8;
  v11[4] = self;
  v8 = permissionCopy;
  v12 = v8;
  v9 = [(BaseSharingProxy *)self fetchShareWithCompletion:v11];

  sub_100001DE4(v13);

  return v9;
}

- (void)startPreparingForShareWhenForcing:(BOOL)forcing
{
  memset(v7, 0, sizeof(v7));
  sub_100001C50(1, "[BaseSharingProxy startPreparingForShareWhenForcing:]", 75, 0, v7);
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    itemIdentifier = self->_itemIdentifier;
    *buf = 134219010;
    v9 = v7[0];
    v10 = 2112;
    selfCopy = self;
    v12 = 2080;
    v13 = "[BaseSharingProxy startPreparingForShareWhenForcing:]";
    v14 = 2112;
    v15 = itemIdentifier;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ %s %@%@", buf, 0x34u);
  }

  sub_100001DE4(v7);
}

- (id)fetchShareWithCompletion:(id)completion
{
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_100026A54();
  }

  return 0;
}

- (id)fetchShareURLWithCompletion:(id)completion
{
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_100026A54();
  }

  return 0;
}

- (id)saveShare:(id)share completion:(id)completion
{
  shareCopy = share;
  completionCopy = completion;
  memset(v29, 0, sizeof(v29));
  sub_100001C50(1, "[BaseSharingProxy saveShare:completion:]", 97, 0, v29);
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    itemIdentifier = self->_itemIdentifier;
    *buf = 134219010;
    selfCopy2 = v29[0];
    v32 = 2112;
    selfCopy = self;
    v34 = 2080;
    v35 = "[BaseSharingProxy saveShare:completion:]";
    v36 = 2112;
    v37 = itemIdentifier;
    v38 = 2112;
    v39 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ %s %@%@", buf, 0x34u);
  }

  v12 = [shareCopy objectForKeyedSubscript:CKShareTypeKey];
  v13 = [v12 isEqual:_BRFolderShareType];

  if (v13)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v19 = [NSError br_errorWithPOSIXCode:45];
      *buf = 138413058;
      selfCopy2 = self;
      v32 = 2112;
      selfCopy = 0;
      v34 = 2112;
      v35 = v19;
      v36 = 2112;
      v37 = v14;
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    v16 = [NSError br_errorWithPOSIXCode:45];
    completionCopy[2](completionCopy, 0, v16);
    v17 = 0;
  }

  else
  {
    objc_storeStrong(&self->_cachedShare, share);
    v16 = [[BRShareSaveOperation alloc] initWithShare:shareCopy fileURL:self->_fileURL];
    v17 = [NSProgress progressWithTotalUnitCount:1];
    objc_initWeak(buf, v17);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10000599C;
    v26[3] = &unk_1000447E0;
    objc_copyWeak(&v28, buf);
    v26[4] = self;
    v27 = completionCopy;
    [v16 setShareSaveCompletionBlock:v26];
    [v17 setCancellable:1];
    objc_initWeak(&location, v16);
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_100005AF8;
    v23 = &unk_1000446D8;
    objc_copyWeak(&v24, &location);
    [v17 setCancellationHandler:&v20];
    [(NSOperationQueue *)self->_operationQueue addOperation:v16, v20, v21, v22, v23];
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }

  sub_100001DE4(v29);

  return v17;
}

- (id)unshareWithCompletion:(id)completion
{
  completionCopy = completion;
  memset(v19, 0, sizeof(v19));
  sub_100001C50(1, "[BaseSharingProxy unshareWithCompletion:]", 126, 0, v19);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    itemIdentifier = self->_itemIdentifier;
    *buf = 134219010;
    v21 = v19[0];
    v22 = 2112;
    selfCopy = self;
    v24 = 2080;
    v25 = "[BaseSharingProxy unshareWithCompletion:]";
    v26 = 2112;
    v27 = itemIdentifier;
    v28 = 2112;
    v29 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ %s %@%@", buf, 0x34u);
  }

  v8 = [NSProgress progressWithTotalUnitCount:2];
  [v8 setCancellable:1];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100005DE4;
  v16[3] = &unk_100044830;
  v16[4] = self;
  v9 = completionCopy;
  v18 = v9;
  v10 = v8;
  v17 = v10;
  v11 = [(BaseSharingProxy *)self fetchShareWithCompletion:v16];
  if (![v10 completedUnitCount])
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100006330;
    v14[3] = &unk_1000446B0;
    v15 = v11;
    [v10 setCancellationHandler:v14];
  }

  v12 = v10;

  sub_100001DE4(v19);

  return v12;
}

@end