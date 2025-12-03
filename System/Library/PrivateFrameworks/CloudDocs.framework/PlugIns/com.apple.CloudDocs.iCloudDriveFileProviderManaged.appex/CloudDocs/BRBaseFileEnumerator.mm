@interface BRBaseFileEnumerator
- (BRBaseFileEnumerator)initWithFileObjectID:(id)d itemIdentifier:(id)identifier recursive:(BOOL)recursive fileProviderManager:(id)manager;
- (NSString)description;
- (void)_accountTokenDidChange;
- (void)_handleNotificationError:(id)error;
- (void)_invalidate;
- (void)_setupNotificationReceivingIfNeededWithCompletion:(id)completion;
- (void)_signalChange;
- (void)_startObservingAccountChangesIfNeeded;
- (void)_stopObservingAccountChanges;
- (void)containerListDidChange;
- (void)currentSyncAnchorWithCompletionHandler:(id)handler;
- (void)enumerateChangesForObserver:(id)observer fromSyncAnchor:(id)anchor;
- (void)enumerateItemsForObserver:(id)observer startingAtPage:(id)page;
- (void)enumerateNextGatherBatchWithObserver:(id)observer fromPage:(id)page;
- (void)invalidate;
- (void)invalidateChangeToken;
- (void)receiveProgressUpdates:(id)updates reply:(id)reply;
- (void)receiveUpdates:(id)updates reply:(id)reply;
- (void)setupNotificationReceivingIfNeededWithCompletion:(id)completion;
- (void)watchItemWithUpdateSender:(id)sender options:(unsigned __int16)options errorHandler:(id)handler gatherReply:(id)reply;
@end

@implementation BRBaseFileEnumerator

- (BRBaseFileEnumerator)initWithFileObjectID:(id)d itemIdentifier:(id)identifier recursive:(BOOL)recursive fileProviderManager:(id)manager
{
  dCopy = d;
  identifierCopy = identifier;
  managerCopy = manager;
  v28.receiver = self;
  v28.super_class = BRBaseFileEnumerator;
  v14 = [(BRBaseFileEnumerator *)&v28 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_itemIdentifier, identifier);
    objc_storeStrong(&v15->_fileObjectID, d);
    v16 = objc_opt_new();
    updatedItemsByIDs = v15->_updatedItemsByIDs;
    v15->_updatedItemsByIDs = v16;

    v18 = objc_opt_new();
    deletedItemsIdentifiers = v15->_deletedItemsIdentifiers;
    v15->_deletedItemsIdentifiers = v18;

    v15->_isRecursive = recursive;
    objc_storeStrong(&v15->_fileProviderManager, manager);
    if (brc_block_remember_persona)
    {
      v20 = +[UMUserManager sharedManager];
      br_currentPersonaID = [v20 br_currentPersonaID];
      personaID = v15->_personaID;
      v15->_personaID = br_currentPersonaID;
    }

    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_attr_make_with_autorelease_frequency(v23, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v25 = dispatch_queue_create("file-enumerator", v24);

    queue = v15->_queue;
    v15->_queue = v25;

    uuid_generate(v15->_uuid);
  }

  return v15;
}

- (void)_startObservingAccountChangesIfNeeded
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_isObservingAccountChanges && !self->_invalidated)
  {
    self->_isObservingAccountChanges = 1;
    +[BRAccount startAccountTokenChangeObserverIfNeeded];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"_accountTokenDidChange" name:BRAccountTokenDidChangeNotification object:0];
    if ([(NSString *)self->_itemIdentifier isEqualToString:NSFileProviderRootContainerItemIdentifier])
    {
      v3 = +[BRContainer allContainers];
      v4 = +[NSNotificationCenter defaultCenter];
      [v4 addObserver:self selector:"containerListDidChange" name:BRContainerListDidChangeNotification object:0];
    }
  }
}

- (void)_signalChange
{
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100028C94();
  }

  fileProviderManager = self->_fileProviderManager;
  itemIdentifier = self->_itemIdentifier;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001F7CC;
  v7[3] = &unk_100044728;
  v7[4] = self;
  [(NSFileProviderManager *)fileProviderManager signalEnumeratorForContainerItemIdentifier:itemIdentifier completionHandler:v7];
}

- (void)_handleNotificationError:(id)error
{
  errorCopy = error;
  queue = self->_queue;
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_10001FB2C;
  v20 = &unk_100045180;
  selfCopy = self;
  v6 = errorCopy;
  v22 = v6;
  dispatch_async(queue, &v17);
  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  if (selfCopy2->_gatherEnumerationObserver)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      gatherEnumerationObserver = selfCopy2->_gatherEnumerationObserver;
      fileObjectID = selfCopy2->_fileObjectID;
      *buf = 138413314;
      v24 = selfCopy2;
      v25 = 2112;
      v26 = v6;
      v27 = 2112;
      v28 = gatherEnumerationObserver;
      v29 = 2112;
      v30 = fileObjectID;
      v31 = 2112;
      v32 = v8;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - Completed gathering with error %@ observer %@ for %@%@", buf, 0x34u);
    }

    if ([v6 brc_isXPCConnectionError])
    {
      v10 = selfCopy2->_gatherEnumerationObserver;
      br_fileProviderError = [v6 br_fileProviderError];
      [(NSFileProviderEnumerationObserver *)v10 finishEnumeratingWithError:br_fileProviderError];
    }

    else
    {
      selfCopy2->_completedGather = 1;
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, 0x90u))
      {
        sub_100028D04();
      }

      [(NSFileProviderEnumerationObserver *)selfCopy2->_gatherEnumerationObserver finishEnumeratingUpToPage:0];
    }

    v14 = selfCopy2->_gatherEnumerationObserver;
    selfCopy2->_gatherEnumerationObserver = 0;
  }

  objc_sync_exit(selfCopy2);
}

- (void)watchItemWithUpdateSender:(id)sender options:(unsigned __int16)options errorHandler:(id)handler gatherReply:(id)reply
{
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: watchItemWithUpdateSender must be implemented in base class.%@", &v8, 0xCu);
  }
}

- (void)_setupNotificationReceivingIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10001FEF4;
  v16[3] = &unk_1000447C8;
  v16[4] = self;
  v5 = completionCopy;
  v17 = v5;
  v6 = objc_retainBlock(v16);
  [(BRBaseFileEnumerator *)self _startObservingAccountChangesIfNeeded];
  if (self->_isSettingUpNotificationReceiving)
  {
    sub_100028DEC();
  }

  self->_isSettingUpNotificationReceiving = 1;
  if (self->_remoteNotificationSender)
  {
    (v6[2])(v6, 0);
  }

  else
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100028EB4();
    }

    v9 = +[BRDaemonConnection defaultConnection];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10001FF0C;
    v14[3] = &unk_100044598;
    v10 = v6;
    v15 = v10;
    v11 = [v9 remoteObjectProxyWithErrorHandler:v14];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10001FF1C;
    v12[3] = &unk_1000453B0;
    v12[4] = self;
    v13 = v10;
    [v11 getItemUpdateSenderWithReceiver:self reply:v12];
  }
}

- (void)setupNotificationReceivingIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002054C;
  v7[3] = &unk_100044F08;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)enumerateNextGatherBatchWithObserver:(id)observer fromPage:(id)page
{
  observerCopy = observer;
  pageCopy = page;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_nextPage)
  {
    br_pageTokenOffset = [pageCopy br_pageTokenOffset];
    if (br_pageTokenOffset != [(NSData *)selfCopy->_nextPage br_pageTokenOffset])
    {
      v20 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        br_pageTokenOffset2 = [pageCopy br_pageTokenOffset];
        br_pageTokenOffset3 = [(NSData *)selfCopy->_nextPage br_pageTokenOffset];
        v31 = 138413058;
        v32 = selfCopy;
        v33 = 2048;
        v34 = br_pageTokenOffset2;
        v35 = 2048;
        v36 = br_pageTokenOffset3;
        v37 = 2112;
        v38 = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ - Incoming page %lld does not equal current page %lld%@", &v31, 0x2Au);
      }

      gatherEnumerationObserver = [NSError br_errorWithPOSIXCode:4];
      [observerCopy finishEnumeratingWithError:gatherEnumerationObserver];
      goto LABEL_19;
    }
  }

  if (!selfCopy->_completedGather)
  {
    v13 = +[NSData br_pageTokenFromSortOrder:gatherBatch:](NSData, "br_pageTokenFromSortOrder:gatherBatch:", [pageCopy br_pageTokenSortOrder], objc_msgSend(pageCopy, "br_pageTokenOffset") + 1);
    nextPage = selfCopy->_nextPage;
    selfCopy->_nextPage = v13;

    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      br_pageTokenOffset4 = [(NSData *)selfCopy->_nextPage br_pageTokenOffset];
      fileObjectID = selfCopy->_fileObjectID;
      v31 = 138413314;
      v32 = selfCopy;
      v33 = 2048;
      v34 = br_pageTokenOffset4;
      v35 = 2112;
      v36 = fileObjectID;
      v37 = 2112;
      v38 = observerCopy;
      v39 = 2112;
      v40 = v15;
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - Enumerating gather batch up with next offset %lld for %@ observer %@%@", &v31, 0x34u);
    }

    if ([(NSMutableDictionary *)selfCopy->_updatedItemsByIDs count])
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        updatedItemsByIDs = selfCopy->_updatedItemsByIDs;
        v31 = 138412802;
        v32 = selfCopy;
        v33 = 2112;
        v34 = updatedItemsByIDs;
        v35 = 2112;
        v36 = v17;
        _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - Returning updated items immediately %@%@", &v31, 0x20u);
      }

      allValues = [(NSMutableDictionary *)selfCopy->_updatedItemsByIDs allValues];
      [observerCopy didEnumerateItems:allValues];

      [(NSMutableDictionary *)selfCopy->_updatedItemsByIDs removeAllObjects];
      v12 = selfCopy->_nextPage;
      goto LABEL_13;
    }

    if (selfCopy->_gatherEnumerationObserver)
    {
      v29 = brc_bread_crumbs();
      v30 = brc_default_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        sub_1000290FC();
      }
    }

    v25 = observerCopy;
    gatherEnumerationObserver = selfCopy->_gatherEnumerationObserver;
    selfCopy->_gatherEnumerationObserver = v25;
LABEL_19:

    goto LABEL_20;
  }

  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100029170();
  }

  v12 = 0;
LABEL_13:
  [observerCopy finishEnumeratingUpToPage:v12];
LABEL_20:
  objc_sync_exit(selfCopy);
}

- (void)currentSyncAnchorWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [NSData br_changeTokenFromRank:0 uuid:self->_uuid];
  (*(handler + 2))(handlerCopy, v6);
}

- (void)enumerateItemsForObserver:(id)observer startingAtPage:(id)page
{
  observerCopy = observer;
  pageCopy = page;
  v8 = self->_fileObjectID;
  memset(v34, 0, sizeof(v34));
  sub_10001A20C(0, "[BRBaseFileEnumerator enumerateItemsForObserver:startingAtPage:]", 295, 0, v34);
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    selfCopy2 = v34[0];
    v37 = 2112;
    selfCopy3 = self;
    v39 = 2112;
    v40 = v8;
    v41 = 2112;
    v42 = v9;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx %@ - listing items for %@%@", buf, 0x2Au);
  }

  if (pageCopy)
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      br_pageTokenOffset = [pageCopy br_pageTokenOffset];
      br_pageTokenCompletedInitialEnumeration = [pageCopy br_pageTokenCompletedInitialEnumeration];
      v21 = "";
      *buf = 138413058;
      selfCopy2 = self;
      v37 = 2048;
      if (br_pageTokenCompletedInitialEnumeration)
      {
        v21 = " (gather batch)";
      }

      selfCopy3 = br_pageTokenOffset;
      v39 = 2080;
      v40 = v21;
      v41 = 2112;
      v42 = v11;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - from page %lu%s%@", buf, 0x2Au);
    }
  }

  v30 = 0uLL;
  v31 = 0;
  sub_10001A20C(0, "[BRBaseFileEnumerator enumerateItemsForObserver:startingAtPage:]", 300, 0, &v30);
  v13 = brc_bread_crumbs();
  v14 = brc_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    selfCopy2 = v30;
    v37 = 2112;
    selfCopy3 = self;
    v39 = 2112;
    v40 = v13;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx %@ - calling bird%@", buf, 0x20u);
  }

  v32 = v30;
  v33 = v31;
  br_pageTokenSortOrder = [pageCopy br_pageTokenSortOrder];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100020E24;
  v22[3] = &unk_100045400;
  v16 = observerCopy;
  v23 = v16;
  v17 = pageCopy;
  v24 = v17;
  selfCopy4 = self;
  v27 = v32;
  v28 = v33;
  v18 = v8;
  v26 = v18;
  v29 = br_pageTokenSortOrder;
  [(BRBaseFileEnumerator *)self setupNotificationReceivingIfNeededWithCompletion:v22];

  sub_10001A3DC(v34);
}

- (void)enumerateChangesForObserver:(id)observer fromSyncAnchor:(id)anchor
{
  observerCopy = observer;
  anchorCopy = anchor;
  memset(v27, 0, sizeof(v27));
  sub_10001A20C(0, "[BRBaseFileEnumerator enumerateChangesForObserver:fromSyncAnchor:]", 353, 0, v27);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v22 = v27[0];
    asString = [(BRFileObjectID *)self->_fileObjectID asString];
    *buf = 134218754;
    v29 = v22;
    v30 = 2112;
    selfCopy = self;
    v32 = 2112;
    v33 = asString;
    v34 = 2112;
    v35 = v8;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx %@ - listing changes for %@%@", buf, 0x2Au);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  v11 = [anchorCopy br_changeTokenRankWithUUID:selfCopy2->_uuid];
  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v29 = selfCopy2;
    v30 = 2048;
    selfCopy = v11;
    v32 = 2112;
    v33 = v12;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - requested rank: %lld%@", buf, 0x20u);
  }

  if ((v11 & 0x8000000000000000) != 0 || selfCopy2->_rank != v11)
  {
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_100029250(selfCopy2);
    }

    v21 = [NSError errorWithDomain:NSFileProviderErrorDomain code:-1002 userInfo:0];
    [observerCopy finishEnumeratingWithError:v21];
    [(BRBaseFileEnumerator *)selfCopy2 invalidateChangeToken];

    goto LABEL_15;
  }

  if (![(NSMutableDictionary *)selfCopy2->_updatedItemsByIDs count]&& ![(NSMutableArray *)selfCopy2->_deletedItemsIdentifiers count])
  {
    v24 = brc_bread_crumbs();
    v25 = brc_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      sub_1000291E0();
    }

    [observerCopy finishEnumeratingChangesUpToSyncAnchor:anchorCopy moreComing:0];
LABEL_15:
    objc_sync_exit(selfCopy2);

    v16 = 0;
    allValues = 0;
    v15 = 0;
    goto LABEL_16;
  }

  allValues = [(NSMutableDictionary *)selfCopy2->_updatedItemsByIDs allValues];
  v15 = [(NSMutableArray *)selfCopy2->_deletedItemsIdentifiers copy];
  [(NSMutableDictionary *)selfCopy2->_updatedItemsByIDs removeAllObjects];
  [(NSMutableArray *)selfCopy2->_deletedItemsIdentifiers removeAllObjects];
  ++selfCopy2->_rank;
  v16 = [NSData br_changeTokenFromRank:"br_changeTokenFromRank:uuid:" uuid:?];
  objc_sync_exit(selfCopy2);

  v17 = brc_bread_crumbs();
  v18 = brc_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    rank = selfCopy2->_rank;
    *buf = 138413314;
    v29 = selfCopy2;
    v30 = 2112;
    selfCopy = allValues;
    v32 = 2112;
    v33 = v15;
    v34 = 2048;
    v35 = rank;
    v36 = 2112;
    v37 = v17;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - Sending back items %@, deleted %@, new rank %lld%@", buf, 0x34u);
  }

  [observerCopy didUpdateItems:allValues];
  [observerCopy didDeleteItemsWithIdentifiers:v15];
  [observerCopy finishEnumeratingChangesUpToSyncAnchor:v16 moreComing:0];
LABEL_16:

  sub_10001A3DC(v27);
}

- (void)receiveUpdates:(id)updates reply:(id)reply
{
  updatesCopy = updates;
  replyCopy = reply;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = updatesCopy;
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v48 count:16];
  if (v9)
  {
    v10 = *v35;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        if ([(NSMutableDictionary *)v12 isDead])
        {
          updatedItemsByIDs = selfCopy->_updatedItemsByIDs;
          fileObjectID = [(NSMutableDictionary *)v12 fileObjectID];
          [(NSMutableDictionary *)updatedItemsByIDs setObject:0 forKeyedSubscript:fileObjectID];

          deletedItemsIdentifiers = selfCopy->_deletedItemsIdentifiers;
          fileObjectID2 = [(NSMutableDictionary *)v12 fileObjectID];
          asString = [fileObjectID2 asString];
          [(NSMutableArray *)deletedItemsIdentifiers addObject:asString];
        }

        else
        {
          asFileProviderItem = [(NSMutableDictionary *)v12 asFileProviderItem];
          v19 = asFileProviderItem == 0;

          if (!v19)
          {
            v20 = selfCopy->_deletedItemsIdentifiers;
            fileObjectID3 = [(NSMutableDictionary *)v12 fileObjectID];
            asString2 = [fileObjectID3 asString];
            [(NSMutableArray *)v20 removeObject:asString2];

            v23 = selfCopy->_updatedItemsByIDs;
            fileObjectID2 = [(NSMutableDictionary *)v12 fileObjectID];
            [(NSMutableDictionary *)v23 setObject:v12 forKeyedSubscript:fileObjectID2];
            goto LABEL_13;
          }

          fileObjectID2 = brc_bread_crumbs();
          asString = brc_default_log();
          if (os_log_type_enabled(asString, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v39 = selfCopy;
            v40 = 2112;
            v41 = v12;
            v42 = 2112;
            v43 = fileObjectID2;
            _os_log_debug_impl(&_mh_execute_header, asString, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - Ignoring un-representable item %@%@", buf, 0x20u);
          }
        }

LABEL_13:
      }

      v9 = [v8 countByEnumeratingWithState:&v34 objects:v48 count:16];
    }

    while (v9);
  }

  if (selfCopy->_gatherEnumerationObserver && [(NSMutableDictionary *)selfCopy->_updatedItemsByIDs count])
  {
    v24 = brc_bread_crumbs();
    v25 = brc_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v30 = selfCopy->_updatedItemsByIDs;
      gatherEnumerationObserver = selfCopy->_gatherEnumerationObserver;
      fileObjectID = selfCopy->_fileObjectID;
      *buf = 138413314;
      v39 = selfCopy;
      v40 = 2112;
      v41 = v30;
      v42 = 2112;
      v43 = gatherEnumerationObserver;
      v44 = 2112;
      v45 = fileObjectID;
      v46 = 2112;
      v47 = v24;
      _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - Enumerating updated items %@ directly to observer %@ because we are still gathering for %@%@", buf, 0x34u);
    }

    v26 = selfCopy->_gatherEnumerationObserver;
    allValues = [(NSMutableDictionary *)selfCopy->_updatedItemsByIDs allValues];
    [(NSFileProviderEnumerationObserver *)v26 didEnumerateItems:allValues];

    [(NSMutableDictionary *)selfCopy->_updatedItemsByIDs removeAllObjects];
    [(NSFileProviderEnumerationObserver *)selfCopy->_gatherEnumerationObserver finishEnumeratingUpToPage:selfCopy->_nextPage];
    v28 = selfCopy->_gatherEnumerationObserver;
    selfCopy->_gatherEnumerationObserver = 0;
  }

  v29 = [(NSMutableDictionary *)selfCopy->_updatedItemsByIDs count];
  if (&v29[[(NSMutableArray *)selfCopy->_deletedItemsIdentifiers count]] >= 0x1389)
  {
    [(BRBaseFileEnumerator *)selfCopy invalidateChangeToken];
  }

  objc_sync_exit(selfCopy);

  [(BRBaseFileEnumerator *)selfCopy _signalChange];
  replyCopy[2]();
}

- (void)receiveProgressUpdates:(id)updates reply:(id)reply
{
  replyCopy = reply;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1000292DC();
  }

  replyCopy[2](replyCopy);
}

- (void)containerListDidChange
{
  if ([(NSString *)self->_personaID isEqualToString:@"__defaultPersonaID__"]|| (v3 = self->_personaID) == 0)
  {
    if (qword_1000523E8 != -1)
    {
      sub_10002934C();
    }

    v4 = qword_1000523F0;
    v5 = 1;
  }

  else
  {
    v4 = v3;
    v5 = 0;
  }

  v6 = +[UMUserManager sharedManager];
  currentPersona = [v6 currentPersona];

  v25 = 0;
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];
  v9 = userPersonaUniqueString;
  if (userPersonaUniqueString == v4 || [(NSString *)userPersonaUniqueString isEqualToString:v4])
  {
    v10 = 0;
    goto LABEL_10;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v24 = 0;
    v13 = [currentPersona copyCurrentPersonaContextWithError:&v24];
    v14 = v24;
    v15 = v25;
    v25 = v13;

    if (v14)
    {
      v16 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, 0x90u))
      {
        sub_100029360();
      }
    }

    v10 = [currentPersona br_generateAndRestorePersonaContextWithPersonaUniqueString:v4];

    if (v10)
    {
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, 0x90u))
      {
        personaID = self->_personaID;
        *buf = 138412802;
        v27 = personaID;
        v28 = 2112;
        selfCopy = v10;
        v30 = 2112;
        v31 = v18;
        _os_log_error_impl(&_mh_execute_header, v19, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }

LABEL_29:
    }
  }

  else
  {
    if (v5 && ([currentPersona isDataSeparatedPersona] & 1) == 0)
    {
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_1000277B4();
      }

      v10 = 0;
      goto LABEL_29;
    }

    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_10002781C();
    }

    v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
  }

LABEL_10:
  memset(v23, 0, sizeof(v23));
  sub_10001A20C(0, "[BRBaseFileEnumerator containerListDidChange]", 448, 0, v23);
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v27 = v23[0];
    v28 = 2112;
    selfCopy = self;
    v30 = 2112;
    v31 = v11;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx %@ - container list did change, invalidating our change token%@", buf, 0x20u);
  }

  [(BRBaseFileEnumerator *)self invalidateChangeToken];
  [(BRBaseFileEnumerator *)self _signalChange];
  sub_10001A3DC(v23);

  _BRRestorePersona();
}

- (void)_accountTokenDidChange
{
  if ([(NSString *)self->_personaID isEqualToString:@"__defaultPersonaID__"]|| (v3 = self->_personaID) == 0)
  {
    if (qword_1000523F8 != -1)
    {
      sub_1000293C8();
    }

    v4 = qword_100052400;
    v5 = 1;
  }

  else
  {
    v4 = v3;
    v5 = 0;
  }

  v6 = +[UMUserManager sharedManager];
  currentPersona = [v6 currentPersona];

  v26 = 0;
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];
  v9 = userPersonaUniqueString;
  if (userPersonaUniqueString == v4 || [(NSString *)userPersonaUniqueString isEqualToString:v4])
  {
    v10 = 0;
    goto LABEL_10;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v25 = 0;
    v14 = [currentPersona copyCurrentPersonaContextWithError:&v25];
    v15 = v25;
    v16 = v26;
    v26 = v14;

    if (v15)
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, 0x90u))
      {
        sub_100029360();
      }
    }

    v10 = [currentPersona br_generateAndRestorePersonaContextWithPersonaUniqueString:v4];

    if (v10)
    {
      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, 0x90u))
      {
        personaID = self->_personaID;
        *buf = 138412802;
        selfCopy = personaID;
        v29 = 2112;
        v30 = v10;
        v31 = 2112;
        v32 = v19;
        _os_log_error_impl(&_mh_execute_header, v20, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }

LABEL_29:
    }
  }

  else
  {
    if (v5 && ([currentPersona isDataSeparatedPersona] & 1) == 0)
    {
      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        sub_1000277B4();
      }

      v10 = 0;
      goto LABEL_29;
    }

    v22 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      sub_10002781C();
    }

    v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
  }

LABEL_10:
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v29 = 2112;
    v30 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[NOTICE] %@ - received account did update notification, invalidating change token%@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000226A4;
  block[3] = &unk_1000446B0;
  block[4] = self;
  dispatch_sync(queue, block);

  _BRRestorePersona();
}

- (void)invalidateChangeToken
{
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000293DC();
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableArray *)selfCopy->_deletedItemsIdentifiers removeAllObjects];
  [(NSMutableDictionary *)selfCopy->_updatedItemsByIDs removeAllObjects];
  selfCopy->_rank = 0;
  uuid_generate(selfCopy->_uuid);
  objc_sync_exit(selfCopy);
}

- (void)_stopObservingAccountChanges
{
  dispatch_assert_queue_V2(self->_queue);
  self->_isObservingAccountChanges = 0;
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_queue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_invalidated = 1;
  [(BRItemNotificationSending *)selfCopy->_remoteNotificationSender invalidate];
  remoteNotificationSender = selfCopy->_remoteNotificationSender;
  selfCopy->_remoteNotificationSender = 0;

  objc_sync_exit(selfCopy);

  [(BRBaseFileEnumerator *)selfCopy _stopObservingAccountChanges];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022914;
  block[3] = &unk_1000446B0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = v4;
  v6 = "";
  if (self->_invalidated)
  {
    v7 = " INVALIDATED";
  }

  else
  {
    v7 = "";
  }

  if (!self->_completedGather)
  {
    v6 = " gathering";
  }

  v8 = [NSString stringWithFormat:@"<%@:0x%p foid:%@%s%s>", v4, self, self->_fileObjectID, v7, v6];

  return v8;
}

@end