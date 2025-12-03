@interface GSManager
- (BOOL)_forsakePath:(id)path;
- (BOOL)_generationForsakeRow:(id)row withCredential:(const GSCredential *)credential error:(id *)error;
- (BOOL)_pathIsStaged:(id)staged;
- (BOOL)_removeAddition:(int64_t)addition inNameSpace:(id)space named:(id)named credentials:(const GSCredential *)credentials error:(id *)error;
- (BOOL)_removeAdditionByRow:(id)row credentials:(const GSCredential *)credentials error:(id *)error;
- (BOOL)_thinningPrecompute:(BOOL)precompute error:(id *)error;
- (BOOL)dispatchSync:(id)sync;
- (BOOL)removePendingDeleteDocumentTimerForDocID:(id)d;
- (GSManager)init;
- (NSString)description;
- (id)_additionDictionary:(id)dictionary path:(id)path;
- (id)_additionDictionary:(id)dictionary url:(id)url;
- (id)_createAddition:(int64_t)addition creationInfo:(id)info isDir:(BOOL)dir stagedPath:(id)path credentials:(const GSCredential *)credentials error:(id *)error;
- (id)_getAddition:(int64_t)addition inNameSpace:(id)space named:(id)named credentials:(const GSCredential *)credentials error:(id *)error;
- (id)_listAdditions:(int64_t)additions nameSpace:(id)space withOptions:(unint64_t)options withoutOptions:(unint64_t)withoutOptions andEnumerationState:(id)state credentials:(const GSCredential *)credentials;
- (id)_setAdditionNameSpace:(int64_t)space inNameSpace:(id)nameSpace named:(id)named newNameSpace:(id)newNameSpace credentials:(const GSCredential *)credentials error:(id *)error;
- (id)makeStagingPathForCredential:(const GSCredential *)credential prefix:(id)prefix stagedName:(id)name;
- (id)pendingDeleteDocumentTimerForDocID:(id)d;
- (int64_t)_purgeAggressively:(unint64_t *)aggressively credentials:(const GSCredential *)credentials whilePredicateIsTrue:(id)true;
- (int64_t)_purgeGenerationsWithCredentials:(const GSCredential *)credentials;
- (int64_t)estimatePurgeableSpace;
- (unint64_t)computeNumberOfPruneableStorages;
- (unint64_t)computePruneableNumberOfGenerations;
- (unint64_t)computePurgeableSpace;
- (void)_actOnDocidChange:(unint64_t)change src:(unint64_t)src dst:(unint64_t)dst;
- (void)_actOnDocidDeletion:(unint64_t)deletion row:(id)row;
- (void)_fseventAtPaths:(const char *)paths flags:(const unsigned int *)flags eventIds:(const unint64_t *)ids count:(unint64_t)count;
- (void)_invalidate;
- (void)_nukeStorageID:(int64_t)d;
- (void)_purgePurgatory;
- (void)_purgeWithCredential:(const GSCredential *)credential tryingToFreeSpace:(int64_t)space highUrgency:(BOOL)urgency whilePredicateIsTrue:(id)true done:(id)done;
- (void)_removeAllAdditions:(int64_t)additions inNameSpace:(id)space credentials:(const GSCredential *)credentials;
- (void)_updateThrottlingProperty:(id)property;
- (void)_validateGenerationsStorage:(id *)storage forEntry:(_ftsent *)entry forStorageId:(int64_t)id andClientName:(id)name;
- (void)_validateGenerationsStorageTree:(const char *)tree atDepth:(int)depth;
- (void)_validateGenerationsTable;
- (void)cleanupStagingPath:(id)path withCredential:(const GSCredential *)credential;
- (void)dealloc;
- (void)extensionsForStorageID:(int64_t)d credentials:(const GSCredential *)credentials pubExt:(id *)ext privExt:(id *)privExt;
- (void)invalidate:(BOOL)invalidate;
- (void)lowDiskStatusChangedForDevice:(int)device hasEnoughSpace:(BOOL)space;
- (void)powerLevelChanged:(BOOL)changed;
- (void)purgeWithCredential:(const GSCredential *)credential whilePredicateIsTrue:(id)true done:(id)done;
- (void)resolveDocId:(unint64_t)id reply:(id)reply;
- (void)setIsInconsistent:(BOOL)inconsistent;
- (void)setPendingDeleteDocumentTimer:(id)timer forDocID:(id)d;
- (void)start;
- (void)validateLibrary;
@end

@implementation GSManager

- (void)setIsInconsistent:(BOOL)inconsistent
{
  state = self->_state;
  if (inconsistent)
  {
    v4 = 2;
  }

  else
  {
    if (state->state == 2)
    {
      return;
    }

    v4 = 0;
  }

  state->state = v4;
}

- (void)_updateThrottlingProperty:(id)property
{
  propertyCopy = property;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isThrottlingIo = [(GSManager *)selfCopy isThrottlingIo];
  propertyCopy[2](propertyCopy);
  isThrottlingIo2 = [(GSManager *)selfCopy isThrottlingIo];
  objc_sync_exit(selfCopy);

  if (isThrottlingIo != isThrottlingIo2)
  {
    v8 = sub_100003164();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (isThrottlingIo)
    {
      if (v9)
      {
        device = selfCopy->_device;
        v13 = 67109120;
        v14 = device;
        v11 = "[NOTICE] Quitting throttled mode on device %d";
LABEL_7:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v11, &v13, 8u);
      }
    }

    else if (v9)
    {
      v12 = selfCopy->_device;
      v13 = 67109120;
      v14 = v12;
      v11 = "[WARNING] Entering throttled mode on device %d";
      goto LABEL_7;
    }
  }
}

- (void)lowDiskStatusChangedForDevice:(int)device hasEnoughSpace:(BOOL)space
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001D23C;
  v5[3] = &unk_1000416C8;
  v5[4] = self;
  spaceCopy = space;
  dispatch_async(queue, v5);
}

- (void)powerLevelChanged:(BOOL)changed
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001D354;
  v4[3] = &unk_1000416C8;
  v4[4] = self;
  changedCopy = changed;
  dispatch_async(queue, v4);
}

- (id)pendingDeleteDocumentTimerForDocID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_pendingDeleteDocuments objectForKeyedSubscript:dCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)setPendingDeleteDocumentTimer:(id)timer forDocID:(id)d
{
  timerCopy = timer;
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_pendingDeleteDocuments setObject:timerCopy forKey:dCopy];
  objc_sync_exit(selfCopy);
}

- (BOOL)removePendingDeleteDocumentTimerForDocID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_pendingDeleteDocuments objectForKeyedSubscript:dCopy];

  if (v6)
  {
    [(NSMutableDictionary *)selfCopy->_pendingDeleteDocuments removeObjectForKey:dCopy];
  }

  objc_sync_exit(selfCopy);

  return v6 != 0;
}

- (void)resolveDocId:(unint64_t)id reply:(id)reply
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001D638;
  v7[3] = &unk_1000416F0;
  replyCopy = reply;
  idCopy = id;
  v7[4] = self;
  v6 = replyCopy;
  [(GSManager *)self dispatchSync:v7];
}

- (void)_actOnDocidDeletion:(unint64_t)deletion row:(id)row
{
  rowCopy = row;
  rowCopy[8] = 1001;
  *(rowCopy + 2) = 0;
  v7 = sub_100003164();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10002A938();
  }

  [rowCopy saveToDB:self->_db];
  v8 = [NSNumber numberWithUnsignedLongLong:deletion];
  v9 = [(GSManager *)self pendingDeleteDocumentTimerForDocID:v8];

  if (!v9)
  {
    v10 = dispatch_time(0, 2000000000);
    v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
    dispatch_source_set_timer(v11, v10, 0xFFFFFFFFFFFFFFFFLL, 0xBEBC200uLL);
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x3032000000;
    v24[3] = sub_10001DACC;
    v24[4] = sub_10001DADC;
    v25 = os_transaction_create();
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10001DAE4;
    handler[3] = &unk_100041718;
    handler[5] = v24;
    handler[6] = deletion;
    handler[4] = self;
    dispatch_source_set_cancel_handler(v11, handler);
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_10001DB58;
    v17 = &unk_100041740;
    v18 = rowCopy;
    selfCopy = self;
    deletionCopy = deletion;
    deletionCopy2 = deletion;
    v12 = v11;
    v20 = v12;
    dispatch_source_set_event_handler(v12, &v14);
    v13 = [NSNumber numberWithUnsignedLongLong:deletion, v14, v15, v16, v17];
    [(GSManager *)self setPendingDeleteDocumentTimer:v12 forDocID:v13];

    dispatch_resume(v12);
    _Block_object_dispose(v24, 8);
  }
}

- (void)_actOnDocidChange:(unint64_t)change src:(unint64_t)src dst:(unint64_t)dst
{
  v8 = [GSFileRow fileRow:self->_db byFileID:dst];
  v9 = v8;
  if (v8 && *(v8 + 40) != change)
  {
    v10 = sub_100003164();
    if (os_log_type_enabled(v10, 0x90u))
    {
      v17 = 134218498;
      dstCopy = dst;
      v19 = 2112;
      v20 = v9;
      v21 = 2048;
      changeCopy = change;
      _os_log_error_impl(&_mh_execute_header, v10, 0x90u, "[ERROR] FileID %lld was already tracked as %@, received %lld: simulating deletion", &v17, 0x20u);
    }

    [(GSManager *)self _actOnDocidDeletion:v9[5] row:v9];
  }

  v11 = [GSFileRow fileRow:self->_db byDocumentID:change];

  v12 = sub_100003164();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (v11)
  {
    if (v13)
    {
      sub_10002AA1C();
    }

    *(v11 + 32) = 1;
    *(v11 + 16) = dst;
    [v11 saveToDB:self->_db];
  }

  else
  {
    if (v13)
    {
      sub_10002AA90();
    }

    [GSFileRow createEntry:self->_db withDocumentID:change fileID:dst error:0];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v15 = [NSNumber numberWithUnsignedLongLong:change];
  v16 = [(NSMutableDictionary *)selfCopy->_pendingDeleteDocuments objectForKeyedSubscript:v15];
  if (v16)
  {
    [(NSMutableDictionary *)selfCopy->_pendingDeleteDocuments removeObjectForKey:v15];
    dispatch_source_cancel(v16);
  }

  objc_sync_exit(selfCopy);
}

- (void)_fseventAtPaths:(const char *)paths flags:(const unsigned int *)flags eventIds:(const unint64_t *)ids count:(unint64_t)count
{
  if (!self->_invalidated)
  {
    v9[9] = v6;
    v9[10] = v7;
    db = self->_db;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10001DEEC;
    v9[3] = &unk_100041768;
    v9[4] = self;
    v9[5] = count;
    v9[6] = paths;
    v9[7] = flags;
    v9[8] = ids;
    [(PQLConnection *)db groupInBatch:v9];
  }
}

- (GSManager)init
{
  v2 = sub_100003164();
  if (os_log_type_enabled(v2, 0x90u))
  {
    *v3 = 0;
    _os_log_error_impl(&_mh_execute_header, v2, 0x90u, "[ERROR] -init is not valid on this object\n", v3, 2u);
  }

  abort();
}

- (void)dealloc
{
  v3 = sub_100003164();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10002AECC();
  }

  if (self->_db)
  {
    sub_10002AF3C();
  }

  if (self->_isReadOnly)
  {
    stagingPath = self->_stagingPath;
    if (stagingPath)
    {
      sub_10000965C([(NSString *)stagingPath fileSystemRepresentation], 0, 0);
    }

    dbPath = self->_dbPath;
    if (dbPath)
    {
      sub_10000965C([(NSString *)dbPath fileSystemRepresentation], 0, 0);
    }
  }

  libDirfd = self->_libDirfd;
  if ((libDirfd & 0x80000000) == 0)
  {
    close(libDirfd);
  }

  volDirFd = self->_volDirFd;
  if ((volDirFd & 0x80000000) == 0)
  {
    close(volDirFd);
  }

  v8.receiver = self;
  v8.super_class = GSManager;
  [(GSManager *)&v8 dealloc];
}

- (void)start
{
  if (!self->_isEnabled)
  {
    fseStream = self->_fseStream;
    if (!fseStream)
    {
      return;
    }

    goto LABEL_5;
  }

  v4.version = 0;
  memset(&v4.retain, 0, 24);
  v4.info = self;
  fseStream = FSEventStreamCreateRelativeToDevice(0, sub_10001FE7C, &v4, self->_device, &off_100044310, self->_state->fseventID, 0.5, 0x10u);
  self->_fseStream = fseStream;
  if (fseStream)
  {
LABEL_5:
    FSEventStreamSetDispatchQueue(fseStream, self->_queue);
    FSEventStreamStart(self->_fseStream);
  }
}

- (void)_invalidate
{
  fseStream = self->_fseStream;
  if (fseStream)
  {
    FSEventStreamStop(fseStream);
    FSEventStreamInvalidate(self->_fseStream);
    FSEventStreamRelease(self->_fseStream);
    self->_fseStream = 0;
  }

  [(PQLConnection *)self->_db close:0];
  db = self->_db;
  self->_db = 0;

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = selfCopy->_pendingDeleteDocuments;
  pendingDeleteDocuments = selfCopy->_pendingDeleteDocuments;
  selfCopy->_pendingDeleteDocuments = 0;

  objc_sync_exit(selfCopy);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)v6 allValues];
  v9 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(allValues);
        }

        dispatch_source_cancel(*(*(&v13 + 1) + 8 * v12));
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  [GSStorageManager invalidateLibrary:selfCopy];
}

- (void)invalidate:(BOOL)invalidate
{
  v5 = 0;
  atomic_compare_exchange_strong(&self->_invalidated, &v5, 1u);
  if (!v5)
  {
    block[9] = v3;
    block[10] = v4;
    invalidateCopy = invalidate;
    v8 = +[GSSystemResourcesManager manager];
    v9 = sub_100003164();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10002AF68();
    }

    [v8 removePowerObserver:self];
    [v8 removeLowDiskObserver:self forDevice:self->_device];
    if (invalidateCopy)
    {
      dispatch_assert_queue_not_V2(self->_queue);
      dispatch_group_wait(self->_operationsGroup, 0xFFFFFFFFFFFFFFFFLL);
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100020194;
      block[3] = &unk_100040B00;
      block[4] = self;
      dispatch_sync(queue, block);
    }

    else
    {
      operationsGroup = self->_operationsGroup;
      v12 = self->_queue;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10002019C;
      v13[3] = &unk_100040B00;
      v13[4] = self;
      dispatch_group_notify(operationsGroup, v12, v13);
    }
  }
}

- (NSString)description
{
  if (self->_isRootFS)
  {
    v2 = "root ";
  }

  else
  {
    v2 = "";
  }

  v3 = "RW";
  if (self->_isReadOnly)
  {
    v3 = "RO";
  }

  return [NSString stringWithFormat:@"<GSLibrary dev:%x [%s%s]>", self->_device, v2, v3];
}

- (BOOL)dispatchSync:(id)sync
{
  syncCopy = sync;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000202E8;
  block[3] = &unk_1000417B0;
  v9 = syncCopy;
  v10 = &v11;
  block[4] = self;
  v6 = syncCopy;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

- (BOOL)_thinningPrecompute:(BOOL)precompute error:(id *)error
{
  precomputeCopy = precompute;
  v7 = +[GSSystemResourcesManager manager];
  v8 = [v7 deviceLowSpaceFlags:self->_device];

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v9 = time(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10001DACC;
  v23 = sub_10001DADC;
  v24 = 0;
  if (self->_isReadOnly)
  {
    v10 = [NSString stringWithFormat:@"storage is read-only"];
    v11 = sub_100003164();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_10002AB70();
    }

    if (error)
    {
      *error = sub_10000F0F8(111, v10, 0);
    }

    v12 = 0;
  }

  else
  {
    v13 = v9;
    v14 = 3600;
    if (precomputeCopy)
    {
      v14 = 60;
    }

    if (v9 - self->_lastThinningScan <= v14 && v8 == self->_lastThinningFlags)
    {
      v12 = 1;
    }

    else
    {
      v15 = sub_100003164();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_10002B084();
      }

      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100020660;
      v17[3] = &unk_1000417D8;
      v17[4] = self;
      v17[5] = &v19;
      v18 = v8;
      v17[6] = &v25;
      v17[7] = v13;
      [(GSManager *)self dispatchSync:v17];
      if (error)
      {
        *error = v20[5];
      }

      v12 = *(v26 + 24);
    }
  }

  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  return v12 & 1;
}

- (int64_t)_purgeGenerationsWithCredentials:(const GSCredential *)credentials
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = -1;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100020B44;
  v7[3] = &unk_100041828;
  v7[5] = &v8;
  v7[6] = credentials;
  v7[4] = self;
  [(GSManager *)self dispatchSync:v7];
  purgatoryPath = self->_purgatoryPath;
  if (purgatoryPath)
  {
    sub_100009AD8([(NSString *)purgatoryPath fileSystemRepresentation], 0, 0);
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (int64_t)_purgeAggressively:(unint64_t *)aggressively credentials:(const GSCredential *)credentials whilePredicateIsTrue:(id)true
{
  trueCopy = true;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  do
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100021000;
    v11[3] = &unk_100041850;
    v11[6] = credentials;
    v11[7] = aggressively;
    v11[4] = self;
    v11[5] = &v12;
    if (![(GSManager *)self dispatchSync:v11])
    {
      break;
    }

    purgatoryPath = self->_purgatoryPath;
    if (purgatoryPath)
    {
      sub_100009AD8([(NSString *)purgatoryPath fileSystemRepresentation], 0, 0);
    }
  }

  while ((v13[3] & 1) != 0);
  _Block_object_dispose(&v12, 8);

  return 0;
}

- (void)_purgeWithCredential:(const GSCredential *)credential tryingToFreeSpace:(int64_t)space highUrgency:(BOOL)urgency whilePredicateIsTrue:(id)true done:(id)done
{
  trueCopy = true;
  doneCopy = done;
  if ([(GSManager *)self isReadOnly])
  {
    v13 = sub_100003164();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_10002B27C();
    }

    doneCopy[2](doneCopy, 0);
  }

  else
  {
    v14 = *&credential->auditToken.val[1];
    v20 = *&credential->pid;
    *v21 = v14;
    *&v21[12] = *&credential->auditToken.val[4];
    operationsGroup = self->_operationsGroup;
    backgroundQueue = self->_backgroundQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100021390;
    block[3] = &unk_1000418A0;
    block[4] = self;
    urgencyCopy = urgency;
    v18 = trueCopy;
    v19 = doneCopy;
    dispatch_group_async(operationsGroup, backgroundQueue, block);
  }
}

- (int64_t)estimatePurgeableSpace
{
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - self->_lastEstimatedPurgeableCheckTime < 300.0)
  {
    return self->_lastEstimatedPurgeableSpace;
  }

  self->_lastEstimatedPurgeableCheckTime = Current;
  [(GSManager *)self _thinningPrecompute:0 error:0];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100021A24;
  v6[3] = &unk_100041910;
  v6[4] = &v7;
  [(GSManager *)self dispatchSync:v6];
  v4 = v8[3];
  self->_lastEstimatedPurgeableSpace = v4;
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (unint64_t)computePurgeableSpace
{
  [(GSManager *)self _thinningPrecompute:0 error:0];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100021B9C;
  v5[3] = &unk_100041910;
  v5[4] = &v6;
  [(GSManager *)self dispatchSync:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)computeNumberOfPruneableStorages
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100021C94;
  v4[3] = &unk_100041910;
  v4[4] = &v5;
  [(GSManager *)self dispatchSync:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (unint64_t)computePruneableNumberOfGenerations
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100021D8C;
  v4[3] = &unk_100041910;
  v4[4] = &v5;
  [(GSManager *)self dispatchSync:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)purgeWithCredential:(const GSCredential *)credential whilePredicateIsTrue:(id)true done:(id)done
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100021ED8;
  v12[3] = &unk_100041938;
  trueCopy = true;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100021EE8;
  v10[3] = &unk_100041960;
  doneCopy = done;
  v8 = doneCopy;
  v9 = trueCopy;
  [(GSManager *)self _purgeWithCredential:credential tryingToFreeSpace:20971520 highUrgency:1 whilePredicateIsTrue:v12 done:v10];
}

- (void)_purgePurgatory
{
  operationsGroup = self->_operationsGroup;
  backgroundQueue = self->_backgroundQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100021F70;
  block[3] = &unk_100040B00;
  block[4] = self;
  dispatch_group_async(operationsGroup, backgroundQueue, block);
}

- (BOOL)_forsakePath:(id)path
{
  pathCopy = path;
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 attributesOfItemAtPath:pathCopy error:0];
  fileSystemFileNumber = [v6 fileSystemFileNumber];

  if (fileSystemFileNumber && (v8 = [pathCopy fileSystemRepresentation], -[NSString stringByAppendingFormat:](self->_purgatoryPath, "stringByAppendingFormat:", @"/ino.%lld", fileSystemFileNumber), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "fileSystemRepresentation"), rename(v8, v10, v11), v13 = v12, v9, !v13))
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_10000965C([pathCopy fileSystemRepresentation], 0, 0);
  }

  stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];

  if ([stringByDeletingLastPathComponent length])
  {
    while (!rmdir([stringByDeletingLastPathComponent fileSystemRepresentation]) || *__error() == 2)
    {
      v15StringByDeletingLastPathComponent = [stringByDeletingLastPathComponent stringByDeletingLastPathComponent];

      stringByDeletingLastPathComponent = v15StringByDeletingLastPathComponent;
      if (![v15StringByDeletingLastPathComponent length])
      {
        goto LABEL_11;
      }
    }
  }

  v15StringByDeletingLastPathComponent = stringByDeletingLastPathComponent;
LABEL_11:

  return v14;
}

- (BOOL)_generationForsakeRow:(id)row withCredential:(const GSCredential *)credential error:(id *)error
{
  rowCopy = row;
  v9 = [rowCopy isAccessibleByUID:credential->uid error:error];
  if (v9)
  {
    v10 = [rowCopy fullPath:self];
    [(GSManager *)self _forsakePath:v10];
  }

  return v9;
}

- (void)_nukeStorageID:(int64_t)d
{
  v5 = sub_100003164();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10002B2B8();
  }

  v6 = +[NSFileManager defaultManager];
  v7 = [NSString stringWithFormat:@"%@/%s/%llx", self->_libraryRoot, "AllUIDs", d];
  if ([v6 fileExistsAtPath:v7] && !-[GSManager _forsakePath:](self, "_forsakePath:", v7))
  {
    v8 = sub_100003164();
    if (os_log_type_enabled(v8, 0x90u))
    {
      sub_10002B328();
    }

    [(GSManager *)self setIsInconsistent:1];
  }

  v9 = [NSString stringWithFormat:@"%@/%s", self->_libraryRoot, "PerUID"];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = [v6 contentsOfDirectoryAtPath:v9 error:0];
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    v14 = @"/%@/%llx";
    v26 = *v28;
    do
    {
      v15 = 0;
      do
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = [v9 stringByAppendingFormat:v14, *(*(&v27 + 1) + 8 * v15), d];
        if ([v6 fileExistsAtPath:v16] && !-[GSManager _forsakePath:](self, "_forsakePath:", v16))
        {
          v17 = v9;
          v18 = v14;
          v19 = v10;
          v20 = v6;
          dCopy = d;
          selfCopy = self;
          v23 = sub_100003164();
          if (os_log_type_enabled(v23, 0x90u))
          {
            *buf = 138412290;
            v32 = v16;
            _os_log_error_impl(&_mh_execute_header, v23, 0x90u, "[ERROR] Failed to forsake %@", buf, 0xCu);
          }

          self = selfCopy;
          [(GSManager *)selfCopy setIsInconsistent:1];
          d = dCopy;
          v6 = v20;
          v10 = v19;
          v14 = v18;
          v9 = v17;
          v13 = v26;
        }

        v15 = v15 + 1;
      }

      while (v12 != v15);
      v12 = [v10 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v12);
  }

  if (([(PQLConnection *)self->_db execute:@"DELETE FROM generations WHERE generation_storage_id = %lld", d]& 1) == 0)
  {
    v24 = sub_100003164();
    if (os_log_type_enabled(v24, 0x90u))
    {
      sub_10002B390();
    }

    [(GSManager *)self setIsInconsistent:1];
  }

  if (![GSFileRow deleteRow:self->_db storageID:d])
  {
    v25 = sub_100003164();
    if (os_log_type_enabled(v25, 0x90u))
    {
      sub_10002B3F8();
    }

    [(GSManager *)self setIsInconsistent:1];
  }

  [(GSManager *)self _purgePurgatory];
}

- (BOOL)_removeAdditionByRow:(id)row credentials:(const GSCredential *)credentials error:(id *)error
{
  rowCopy = row;
  if (rowCopy && [(GSManager *)self _generationForsakeRow:rowCopy withCredential:credentials error:error])
  {
    if ([GSGenerationRow deleteRow:self->_db rowID:rowCopy[1]]< 0)
    {
      v9 = sub_100003164();
      if (os_log_type_enabled(v9, 0x90u))
      {
        sub_10002B460(rowCopy);
      }

      [(GSManager *)self setIsInconsistent:1];
    }

    [(GSManager *)self _purgePurgatory];
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_removeAddition:(int64_t)addition inNameSpace:(id)space named:(id)named credentials:(const GSCredential *)credentials error:(id *)error
{
  spaceCopy = space;
  namedCopy = named;
  v14 = [GSGenerationRow generationRow:self->_db storageID:addition name:namedCopy clientID:spaceCopy error:error];
  if (v14 || (-[PQLConnection lastError](self->_db, "lastError"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 isSqliteErrorCode:12], v15, !v16))
  {
    v18 = [(GSManager *)self _removeAdditionByRow:v14 credentials:credentials error:error];
  }

  else
  {
    v17 = sub_100003164();
    if (os_log_type_enabled(v17, 0x90u))
    {
      sub_10002B4D8();
    }

    v18 = 1;
  }

  return v18;
}

- (void)_removeAllAdditions:(int64_t)additions inNameSpace:(id)space credentials:(const GSCredential *)credentials
{
  spaceCopy = space;
  v9 = objc_alloc_init(NSMutableIndexSet);
  v26 = 0;
  v25 = 0u;
  v23 = 0;
  v22 = 0u;
  additionsCopy = additions;
  uTF8String = [spaceCopy UTF8String];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [GSGenerationRow enumerate:self->_db withOptions:&additionsCopy];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        if ([(GSManager *)self _generationForsakeRow:v15 withCredential:credentials error:0])
        {
          [v9 addIndex:*(v15 + 8)];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v12);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000228EC;
  v16[3] = &unk_100041988;
  v16[4] = self;
  [v9 enumerateIndexesUsingBlock:v16];
  [(GSManager *)self _purgePurgatory];
}

- (id)makeStagingPathForCredential:(const GSCredential *)credential prefix:(id)prefix stagedName:(id)name
{
  prefixCopy = prefix;
  nameCopy = name;
  v10 = +[NSFileManager defaultManager];
  v20[0] = NSFileOwnerAccountID;
  if (credential)
  {
    v11 = [NSNumber numberWithUnsignedInt:credential->uid];
  }

  else
  {
    v11 = &off_100044280;
  }

  v20[1] = NSFilePosixPermissions;
  v21[0] = v11;
  v21[1] = &off_1000442B0;
  v12 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
  if (credential)
  {
  }

  v13 = @"tmp";
  if (prefixCopy)
  {
    v13 = prefixCopy;
  }

  v14 = [NSString stringWithFormat:@"%@.XXXXXX", v13, v20[0]];
  v15 = [v10 gs_createTemporarySubdirectoryOfItem:self->_stagingPath withTemplate:v14 error:0];

  if (v15 && [v10 setAttributes:v12 ofItemAtPath:v15 error:0])
  {
    if (nameCopy)
    {
      v16 = nameCopy;
    }

    else
    {
      v16 = @"staged";
    }

    v17 = [v15 stringByAppendingPathComponent:v16];

    v18 = [NSURL fileURLWithPath:v17];
    v15 = v17;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)_pathIsStaged:(id)staged
{
  stagedCopy = staged;
  v6 = [stagedCopy hasPrefix:self->_stagingPath] && (v5 = objc_msgSend(stagedCopy, "length"), v5 >= -[NSString length](self->_stagingPath, "length") + 2) && objc_msgSend(stagedCopy, "characterAtIndex:", -[NSString length](self->_stagingPath, "length")) == 47 && objc_msgSend(stagedCopy, "characterAtIndex:", -[NSString length](self->_stagingPath, "length") + 1) != 47;

  return v6;
}

- (void)cleanupStagingPath:(id)path withCredential:(const GSCredential *)credential
{
  pathCopy = path;
  if ([(GSManager *)self _pathIsStaged:pathCopy])
  {
    v7 = [pathCopy substringFromIndex:{-[NSString length](self->_stagingPath, "length") + 1}];
    stagingPath = self->_stagingPath;
    pathComponents = [v7 pathComponents];
    v10 = [pathComponents objectAtIndexedSubscript:0];
    v11 = [(NSString *)stagingPath stringByAppendingPathComponent:v10];

    if (!credential || [(GSManager *)self isIgnoringOwners])
    {
      goto LABEL_7;
    }

    v12 = +[NSFileManager defaultManager];
    v13 = [v12 attributesOfItemAtPath:v11 error:0];
    v14 = v13;
    if (v13)
    {
      fileOwnerAccountID = [v13 fileOwnerAccountID];
      v16 = [NSNumber numberWithUnsignedInt:credential->uid];
      v17 = [fileOwnerAccountID isEqualToNumber:v16];

      if (v17)
      {

LABEL_7:
        if (sub_10000965C([v11 fileSystemRepresentation], 0, 0))
        {
LABEL_17:

          goto LABEL_18;
        }

        v12 = sub_100003164();
        if (os_log_type_enabled(v12, 0x90u))
        {
          sub_10002B680();
        }

LABEL_16:

        goto LABEL_17;
      }

      v18 = sub_100003164();
      if (os_log_type_enabled(v18, 0x90u))
      {
        sub_10002B618();
      }
    }

    goto LABEL_16;
  }

  v7 = sub_100003164();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10002B5A8();
  }

LABEL_18:
}

- (void)extensionsForStorageID:(int64_t)d credentials:(const GSCredential *)credentials pubExt:(id *)ext privExt:(id *)privExt
{
  if (!ext)
  {
    v12 = 0;
    if (!privExt)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = [NSString stringWithFormat:@"%@/%llx", @"AllUIDs", d];
  v12 = [(NSString *)self->_libraryRoot stringByAppendingPathComponent:v11];

  v13 = *&credentials->auditToken.val[4];
  v16 = *credentials->auditToken.val;
  v17 = v13;
  *ext = [v12 gs_issueReadExtensionIfNeededForAuditToken:&v16];
  if (privExt)
  {
LABEL_3:
    v14 = [NSString stringWithFormat:@"%@/%d/%llx", @"PerUID", credentials->uid, d];

    v12 = [(NSString *)self->_libraryRoot stringByAppendingPathComponent:v14];

    v15 = *&credentials->auditToken.val[4];
    v16 = *credentials->auditToken.val;
    v17 = v15;
    *privExt = [v12 gs_issueReadExtensionIfNeededForAuditToken:&v16];
  }

LABEL_4:
}

- (id)_createAddition:(int64_t)addition creationInfo:(id)info isDir:(BOOL)dir stagedPath:(id)path credentials:(const GSCredential *)credentials error:(id *)error
{
  dirCopy = dir;
  pathCopy = path;
  infoCopy = info;
  v14 = [infoCopy objectForKeyedSubscript:@"kGSAdditionName"];
  v15 = [infoCopy objectForKeyedSubscript:@"kGSAdditionNameSpace"];
  v16 = [infoCopy objectForKeyedSubscript:@"kGSAdditionOptions"];
  v60 = [infoCopy objectForKeyedSubscript:@"kGSAdditionConflictResolved"];
  v62 = [infoCopy objectForKeyedSubscript:@"kGSAdditionOnDuplicate"];

  v64 = 0;
  isIgnoringOwners = [(GSManager *)self isIgnoringOwners];
  if ([v14 characterAtIndex:0] != 58)
  {
    goto LABEL_3;
  }

  [NSString stringWithFormat:@":%d:", credentials->uid];
  selfCopy = self;
  credentialsCopy = credentials;
  v20 = isIgnoringOwners;
  additionCopy = addition;
  v22 = v16;
  v23 = pathCopy;
  v25 = v24 = v15;
  v26 = [v14 hasPrefix:v25];

  v15 = v24;
  pathCopy = v23;
  v16 = v22;
  addition = additionCopy;
  isIgnoringOwners = v20;
  credentials = credentialsCopy;
  self = selfCopy;
  if (v26)
  {
LABEL_3:
    if ([(GSManager *)self _pathIsStaged:pathCopy])
    {
      if ([GSFileRow storageIDExists:self->_db storageID:addition])
      {
        db = self->_db;
        v63 = 0;
        additionCopy2 = addition;
        v28 = [GSGenerationRow generationRow:db storageID:addition name:v14 clientID:v15 error:&v63];
        v29 = v63;
        v30 = v29;
        if (v28)
        {
          intValue = [v62 intValue];
          if (intValue != 1)
          {
            v57 = v30;
            if (!intValue)
            {
              v32 = v28;
              v33 = [NSString stringWithFormat:@"generation already exists"];
              v34 = sub_100003164();
              v35 = v60;
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
              {
                sub_10002B898();
              }

              if (error)
              {
                *error = sub_10000F0F8(106, v33, 0);
              }

              v36 = 0;
              v37 = 0;
              v38 = v32;
              goto LABEL_56;
            }

            v44 = v15;
            errorCopy2 = error;
            if ([(GSManager *)self _removeAdditionByRow:v28 credentials:credentials error:error])
            {
LABEL_35:
              if (sub_10000B60C([pathCopy fileSystemRepresentation], isIgnoringOwners, &v64, errorCopy2))
              {
                v15 = v44;
                v50 = [(GSManager *)self makeStoragePathForGenerationNamed:v14 storageID:additionCopy2 clientID:v44 forUID:credentials->uid makePublic:isIgnoringOwners];
                if (!v50)
                {
                  v38 = v28;
                  v53 = [NSString stringWithFormat:@"Unable to make storage path"];
                  v54 = sub_100003164();
                  v35 = v60;
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
                  {
                    sub_100027C60();
                  }

                  if (errorCopy2)
                  {
                    *errorCopy2 = sub_10000F0F8(101, v53, 0);
                  }

                  v37 = 0;
                  v36 = 0;
                  goto LABEL_53;
                }

                v36 = v50;
                v35 = v60;
                if (sub_100009D60([pathCopy fileSystemRepresentation], objc_msgSend(v50, "fileSystemRepresentation"), errorCopy2))
                {
                  v38 = objc_alloc_init(GSGenerationRow);

                  v38->generation_storage_id = additionCopy2;
                  objc_storeStrong(&v38->generation_name, v14);
                  objc_storeStrong(&v38->generation_client_id, v15);
                  v51 = [v36 substringFromIndex:{-[NSString length](self->_libraryRoot, "length") + 1}];
                  generation_path = v38->generation_path;
                  v38->generation_path = v51;

                  v38->generation_options = [v16 unsignedLongLongValue];
                  v38->generation_status = 1;
                  v38->generation_add_time = time(0);
                  v38->generation_size = v64;
                  v38->generation_conflict_resolved = [v60 BOOLValue];
                  if ([(GSGenerationRow *)v38 saveToDB:self->_db])
                  {
                    v37 = [(GSManager *)self _additionDictionary:v38 path:v36 isDir:dirCopy];
LABEL_53:
                    v30 = v57;
                    if (!v37 && v38)
                    {
                      v61 = [(GSGenerationRow *)v38 fullPath:self];
                      [(GSManager *)self _forsakePath:v61];

                      [(GSManager *)self _purgePurgatory];
                    }

                    goto LABEL_56;
                  }

                  if (errorCopy2)
                  {
                    [(PQLConnection *)self->_db translatedError];
                    *errorCopy2 = v37 = 0;
                    goto LABEL_53;
                  }
                }

                else
                {
                  v38 = v28;
                }

                v37 = 0;
                goto LABEL_53;
              }

              v38 = v28;
              v37 = 0;
              v36 = 0;
              v15 = v44;
              v35 = v60;
              goto LABEL_53;
            }

            v36 = 0;
            v38 = v28;
            goto LABEL_43;
          }

          v49 = [(GSGenerationRow *)v28 fullPath:self];
          [(GSManager *)self _additionDictionary:v28 path:v49];
          v37 = v38 = v28;

          v36 = 0;
        }

        else
        {
          v57 = v29;
          v44 = v15;
          lastError = [(PQLConnection *)self->_db lastError];
          v46 = [lastError isSqliteErrorCode:12];

          errorCopy2 = error;
          if (v46)
          {
            goto LABEL_35;
          }

          if (!error)
          {
            v38 = 0;
            v36 = 0;
LABEL_43:
            v37 = 0;
            v15 = v44;
            v35 = v60;
            v30 = v57;
            goto LABEL_56;
          }

          v48 = v57;
          v38 = 0;
          v36 = 0;
          v37 = 0;
          *error = v48;
          v30 = v48;
          v15 = v44;
        }

        v35 = v60;
LABEL_56:

        goto LABEL_57;
      }

      v36 = [NSString stringWithFormat:@"Storage id doesn't exist"];
      v43 = sub_100003164();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        sub_1000256F4();
      }

      errorCopy4 = error;
      v35 = v60;
      if (error)
      {
        v41 = 102;
        goto LABEL_25;
      }
    }

    else
    {
      v36 = [NSString stringWithFormat:@"not a staged path"];
      v39 = sub_100003164();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        sub_10002B820();
      }

      errorCopy4 = error;
      v35 = v60;
      if (error)
      {
        v41 = 104;
LABEL_25:
        sub_10000F0F8(v41, v36, 0);
        *errorCopy4 = v37 = 0;
        goto LABEL_57;
      }
    }

    v37 = 0;
    goto LABEL_57;
  }

  v36 = [NSString stringWithFormat:@"Mangled name with improper uid"];
  v42 = sub_100003164();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    sub_100028B4C();
  }

  if (error)
  {
    sub_10000F0F8(105, v36, 0);
    *error = v37 = 0;
  }

  else
  {
    v37 = 0;
  }

  v35 = v60;
LABEL_57:

  return v37;
}

- (id)_additionDictionary:(id)dictionary url:(id)url
{
  v14[0] = @"o";
  v5 = *(dictionary + 6);
  urlCopy = url;
  dictionaryCopy = dictionary;
  v8 = [NSNumber numberWithUnsignedLongLong:v5];
  v15[0] = v8;
  v14[1] = @"ns";
  v15[1] = dictionaryCopy[4];
  v15[2] = urlCopy;
  v14[2] = @"u";
  v14[3] = @"sz";
  v9 = [NSNumber numberWithLongLong:dictionaryCopy[9]];
  v15[3] = v9;
  v14[4] = @"sID";
  v10 = [NSNumber numberWithLongLong:dictionaryCopy[2]];
  v15[4] = v10;
  v14[5] = @"cr";
  v11 = [NSNumber numberWithBool:*(dictionaryCopy + 80)];
  v15[5] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:6];

  return v12;
}

- (id)_additionDictionary:(id)dictionary path:(id)path
{
  dictionaryCopy = dictionary;
  v7 = [NSURL fileURLWithPath:path];
  v8 = [(GSManager *)self _additionDictionary:dictionaryCopy url:v7];

  return v8;
}

- (id)_getAddition:(int64_t)addition inNameSpace:(id)space named:(id)named credentials:(const GSCredential *)credentials error:(id *)error
{
  v10 = [GSGenerationRow generationRow:self->_db storageID:addition name:named clientID:space error:?];
  if ([v10 isAccessibleByUID:credentials->uid error:error])
  {
    v11 = [v10 fullPath:self];
    v12 = [(GSManager *)self _additionDictionary:v10 path:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_setAdditionNameSpace:(int64_t)space inNameSpace:(id)nameSpace named:(id)named newNameSpace:(id)newNameSpace credentials:(const GSCredential *)credentials error:(id *)error
{
  nameSpaceCopy = nameSpace;
  namedCopy = named;
  newNameSpaceCopy = newNameSpace;
  newNameSpaceCopy2 = newNameSpace;
  v38 = nameSpaceCopy;
  v18 = [nameSpaceCopy isEqualToString:newNameSpaceCopy2];
  if ((v18 & 1) == 0)
  {
    v19 = [GSGenerationRow generationRow:self->_db storageID:space name:namedCopy clientID:newNameSpaceCopy2 error:error];
    if (v19)
    {
      v20 = v19;
      v21 = v38;
      if (![(GSManager *)self _removeAddition:space inNameSpace:v38 named:namedCopy credentials:credentials error:error])
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  v21 = nameSpaceCopy;
  v20 = [GSGenerationRow generationRow:self->_db storageID:space name:namedCopy clientID:nameSpaceCopy error:error];
  if (![v20 isAccessibleByUID:credentials->uid error:error])
  {
LABEL_8:
    v23 = 0;
    goto LABEL_9;
  }

  if (v18)
  {
LABEL_7:
    v22 = [v20 fullPath:self];
    v23 = [(GSManager *)self _additionDictionary:v20 path:v22];

    goto LABEL_9;
  }

  v25 = [(GSManager *)self makeStoragePathForGenerationNamed:namedCopy storageID:space clientID:newNameSpaceCopy2 forUID:credentials->uid makePublic:[(GSManager *)self isIgnoringOwners]];
  if (v25)
  {
    v26 = v25;
    v27 = v20[5];
    v28 = v27;
    objc_storeStrong(v20 + 4, newNameSpaceCopy);
    v29 = [v26 substringFromIndex:{-[NSString length](self->_libraryRoot, "length") + 1}];
    v30 = v20[5];
    v20[5] = v29;

    if ([v20 saveToDB:self->_db])
    {
      obj = v27;
      if (renameat(self->_libDirfd, [v28 fileSystemRepresentation], -1, objc_msgSend(v26, "fileSystemRepresentation")))
      {
        v31 = [NSString stringWithFormat:@"rename(%@, %@s) failed", v28, v26];
        v36 = *__error();
        v32 = sub_100003164();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          sub_100026B50();
        }

        if (error)
        {
          *error = sub_10000F37C(v36, v31);
        }

        objc_storeStrong(v20 + 4, newNameSpaceCopy);
        objc_storeStrong(v20 + 5, obj);
        [v20 saveToDB:self->_db];
        v23 = 0;
        v21 = v38;
      }

      else
      {
        v23 = [(GSManager *)self _additionDictionary:v20 path:v26];
        v21 = v38;
      }
    }

    else
    {
      v21 = v38;
      if (error)
      {
        [(PQLConnection *)self->_db translatedError];
        *error = v23 = 0;
      }

      else
      {
        v23 = 0;
      }
    }
  }

  else
  {
    v33 = [NSString stringWithFormat:@"Unable to create new storage path for generation"];
    v34 = *__error();
    v35 = sub_100003164();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      sub_100026B50();
    }

    if (error)
    {
      *error = sub_10000F37C(v34, v33);
    }

    v23 = 0;
    v21 = v38;
  }

LABEL_9:

  return v23;
}

- (id)_listAdditions:(int64_t)additions nameSpace:(id)space withOptions:(unint64_t)options withoutOptions:(unint64_t)withoutOptions andEnumerationState:(id)state credentials:(const GSCredential *)credentials
{
  spaceCopy = space;
  stateCopy = state;
  v31 = objc_alloc_init(NSMutableArray);
  v36[0] = additions;
  v36[1] = options;
  v36[2] = withoutOptions;
  v36[3] = 0;
  v30 = spaceCopy;
  v36[4] = [spaceCopy UTF8String];
  v37 = 0;
  longLongValue = 0;
  longLongValue2 = 0;
  intValue = 0;
  if ([stateCopy count] >= 3)
  {
    v17 = [stateCopy objectAtIndexedSubscript:0];
    intValue = [v17 intValue];
    LODWORD(v37) = intValue;

    v18 = [stateCopy objectAtIndexedSubscript:1];
    longLongValue = [v18 longLongValue];

    v19 = [stateCopy objectAtIndexedSubscript:2];
    longLongValue2 = [v19 longLongValue];
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v20 = [GSGenerationRow enumerate:self->_db withOptions:v36];
  v21 = [v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v33;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v32 + 1) + 8 * i);
        if (intValue)
        {
          v26 = [NSNumber numberWithLongLong:v25[1] + intValue];
          [stateCopy setObject:v26 atIndexedSubscript:2];
        }

        if ([v25 isAccessibleByUID:credentials->uid error:0])
        {
          v27 = [v25 fullPath:self];
          v28 = [(GSManager *)self _additionDictionary:v25 path:v27];

          [v31 addObject:v28];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v22);
  }

  return v31;
}

- (void)_validateGenerationsStorage:(id *)storage forEntry:(_ftsent *)entry forStorageId:(int64_t)id andClientName:(id)name
{
  nameCopy = name;
  v11 = fts_children(storage, 256);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100024748;
  v21[3] = &unk_1000419B0;
  v23 = v11;
  idCopy = id;
  v12 = nameCopy;
  v22 = v12;
  [(GSManager *)self dispatchSync:v21];
  v13 = [NSString gs_stringWithFileSystemRepresentation:entry->fts_path];
  if (v11)
  {
    *&v14 = 67109890;
    v20 = v14;
    do
    {
      if (!v11->fts_pointer)
      {
        v15 = sub_100003164();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          device = self->_device;
          uTF8String = [v12 UTF8String];
          *buf = v20;
          v26 = device;
          v27 = 2048;
          idCopy2 = id;
          v29 = 2080;
          v30 = uTF8String;
          v31 = 2080;
          fts_name = v11->fts_name;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARNING] removing generation [dev:%d,id:%lld,client:%s,name:%s] not represented in the database", buf, 0x26u);
        }

        v18 = [NSString stringWithUTF8String:v11->fts_name];
        v19 = [v13 stringByAppendingPathComponent:v18];
        [(GSManager *)self _forsakePath:v19];
      }

      v11 = v11->fts_link;
    }

    while (v11);
  }

  [(GSManager *)self _purgePurgatory];
}

- (void)_validateGenerationsStorageTree:(const char *)tree atDepth:(int)depth
{
  v20[0] = tree;
  v20[1] = 0;
  if (faccessat(self->_libDirfd, tree, 0, 0))
  {
    return;
  }

  libDirfd = self->_libDirfd;
  pthread_fchdir_np();
  v7 = fts_open(v20, 92, 0);
  if (!v7)
  {
    v17 = sub_100003164();
    if (os_log_type_enabled(v17, 0x90u))
    {
      sub_10002B9D0();
    }

    goto LABEL_26;
  }

  v8 = v7;
  v9 = fts_read(v7);
  if (self->_invalidated || (v10 = v9) == 0)
  {
LABEL_22:
    fts_close(v8);
LABEL_26:
    pthread_fchdir_np();
    return;
  }

  v11 = 0;
  while (1)
  {
    fts_info = v10->fts_info;
    if (fts_info <= 5)
    {
      if (fts_info == 1)
      {
        v13 = v10->fts_level - depth;
        if (v13 == 1)
        {
          v15 = [NSString gs_stringWithFileSystemRepresentation:v10->fts_name];
          [(GSManager *)self _validateGenerationsStorage:v8 forEntry:v10 forStorageId:v11 andClientName:v15];

          fts_set(v8, v10, 4);
        }

        else if (!v13)
        {
          v11 = strtoll(v10->fts_name, 0, 16);
        }
      }

      goto LABEL_20;
    }

    if (fts_info != 6)
    {
      break;
    }

    rmdir(v10->fts_accpath);
LABEL_20:
    v16 = fts_read(v8);
    if (!self->_invalidated)
    {
      v10 = v16;
      if (v16)
      {
        continue;
      }
    }

    goto LABEL_22;
  }

  if (fts_info != 7 && fts_info != 10)
  {
    goto LABEL_20;
  }

  v18 = sub_100003164();
  if (os_log_type_enabled(v18, 0x90u))
  {
    sub_10002B910(v10, v18);
  }

  fts_close(v8);
}

- (void)_validateGenerationsTable
{
  v3 = sub_100003164();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10002BA38(self);
  }

  v4 = [GSGenerationRow deleteRowsWithoutData:self->_db atRoot:self->_libraryRoot];
  if (v4 < 0)
  {
    v6 = sub_100003164();
    if (os_log_type_enabled(v6, 0x90u))
    {
      sub_10002BAAC();
    }

    goto LABEL_9;
  }

  v5 = v4;
  if (v4)
  {
    v6 = sub_100003164();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARNING] deleted %lld generations rows without data", buf, 0xCu);
    }

LABEL_9:
  }

  operationsGroup = self->_operationsGroup;
  backgroundQueue = self->_backgroundQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024B7C;
  block[3] = &unk_100040B00;
  block[4] = self;
  dispatch_group_async(operationsGroup, backgroundQueue, block);
}

- (void)validateLibrary
{
  v3 = [(NSString *)self->_libraryRoot stringByAppendingPathComponent:@"LibraryStatus"];
  v4 = [NSDictionary dictionaryWithContentsOfFile:v3];
  if ([v4 isEqual:&off_100044328])
  {
    loadLibraryState = [(PQLConnection *)self->_db loadLibraryState];
    v6 = loadLibraryState;
    if (loadLibraryState)
    {
      v7 = loadLibraryState;
    }

    else
    {
      v7 = objc_alloc_init(GSLibraryState);
    }

    v10 = v7;

    v11 = sub_100003164();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      device = self->_device;
      *buf = 67109378;
      v17 = device;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[NOTICE] Library on device %x, loaded status %@", buf, 0x12u);
    }
  }

  else
  {
    v8 = sub_100003164();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_device;
      *buf = 67109120;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[NOTICE] Library on device %x, non Syrah+ status, do not trust the DB state", buf, 8u);
    }

    v10 = objc_alloc_init(GSLibraryState);
  }

  objc_storeStrong(&self->_state, v10);
  sub_100009AD8([(NSString *)self->_stagingPath fileSystemRepresentation], 0, 0);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100024E88;
  v14[3] = &unk_1000419D8;
  v13 = v10;
  v15 = v13;
  [(PQLConnection *)self->_db setPreFlushHook:v14];
  if (![(GSLibraryState *)v13 isClean])
  {
    self->_state->state = 1;
    [(GSManager *)self _validateGenerationsTable];
  }

  [&off_100044328 writeToFile:v3 atomically:1];
  self->_state->lastFeatureSet = 4;
  [(GSManager *)self setIsInconsistent:0];
  self->_isEnabled = 1;
}

@end