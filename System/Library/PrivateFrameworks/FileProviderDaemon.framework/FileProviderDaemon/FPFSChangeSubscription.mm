@interface FPFSChangeSubscription
- (BOOL)activateWithError:(id *)error;
- (BOOL)didProcessBarrierEventUUID:(id)d;
- (FPFSChangeSubscription)initWithPath:(id)path fd:(int)fd reader:(id)reader sinceEventID:(unint64_t)d streamUUID:(id)iD ignoreOwnEvents:(BOOL)events delegate:(id)delegate purpose:(id)self0;
- (FPFSChangeSubscriptionDelegate)delegate;
- (id)description;
- (id)waitableBarrier;
- (void)didProcessEventID:(unint64_t)d;
- (void)dispose;
- (void)waitableBarrier;
@end

@implementation FPFSChangeSubscription

- (FPFSChangeSubscription)initWithPath:(id)path fd:(int)fd reader:(id)reader sinceEventID:(unint64_t)d streamUUID:(id)iD ignoreOwnEvents:(BOOL)events delegate:(id)delegate purpose:(id)self0
{
  pathCopy = path;
  readerCopy = reader;
  iDCopy = iD;
  delegateCopy = delegate;
  purposeCopy = purpose;
  v25.receiver = self;
  v25.super_class = FPFSChangeSubscription;
  v20 = [(FPFSChangeSubscription *)&v25 init];
  if (v20)
  {
    fp_realpath = [pathCopy fp_realpath];
    root = v20->_root;
    v20->_root = fp_realpath;

    v20->_rootfd = fd;
    objc_storeWeak(&v20->_delegate, delegateCopy);
    v20->_lastDeliveredEventID = d;
    objc_storeStrong(&v20->_eventStreamUUID, iD);
    v20->_state = 1;
    objc_storeWeak(&v20->_weakReader, readerCopy);
    v20->_ignoreOwnEvents = events;
    objc_storeStrong(&v20->_purpose, purpose);
  }

  return v20;
}

- (BOOL)activateWithError:(id *)error
{
  if (self->_state == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_weakReader);
    if (WeakRetained)
    {
      rootfd = self->_rootfd;
      if ((rootfd & 0x80000000) == 0 || (self->_ownRootFD = 1, rootfd = open([(NSString *)self->_root fileSystemRepresentation], 1048836), self->_rootfd = rootfd, (rootfd & 0x80000000) == 0))
      {
        memset(&v13, 0, sizeof(v13));
        if ((fstat(rootfd, &v13) & 0x80000000) == 0 && (v13.st_mode & 0xF000) == 0x4000)
        {
          self->_rootFileID = v13.st_ino;
          if ([WeakRetained activateSubscription:self error:error])
          {
            selfCopy = self;
            objc_sync_enter(selfCopy);
            self->_state = 2;
            objc_sync_exit(selfCopy);

            v8 = 1;
LABEL_17:

            return v8;
          }

LABEL_16:
          v8 = 0;
          goto LABEL_17;
        }
      }

      if (!error)
      {
        goto LABEL_16;
      }

      v9 = MEMORY[0x1E696ABC0];
      v10 = *__error();
      v11 = v9;
    }

    else
    {
      if (!error)
      {
        goto LABEL_16;
      }

      v11 = MEMORY[0x1E696ABC0];
      v10 = 22;
    }

    [v11 fp_errorWithPOSIXCode:v10];
    *error = v8 = 0;
    goto LABEL_17;
  }

  if (!error)
  {
    return 0;
  }

  [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:35];
  *error = v8 = 0;
  return v8;
}

- (id)description
{
  if (self->_state == 2)
  {
    v2 = @"<subscription %@: observing>";
  }

  else
  {
    v2 = @"<subscription %@: (inactive)>";
  }

  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:v2, self->_purpose];

  return v3;
}

- (id)waitableBarrier
{
  WeakRetained = objc_loadWeakRetained(&self->_weakReader);
  v4 = WeakRetained;
  if (WeakRetained && ([WeakRetained barrierFolderURL], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    barrierGroup = selfCopy->_barrierGroup;
    if (!barrierGroup)
    {
      v9 = dispatch_group_create();
      v10 = selfCopy->_barrierGroup;
      selfCopy->_barrierGroup = v9;

      dispatch_group_enter(selfCopy->_barrierGroup);
    }

    objc_storeStrong(&selfCopy->_notifyStreamUUID, uUID);
    v11 = selfCopy->_barrierGroup;
    objc_sync_exit(selfCopy);

    v12 = MEMORY[0x1E696AEC0];
    uUIDString = [uUID UUIDString];
    v14 = [v12 stringWithFormat:@".rendez-vous.%@.nosync", uUIDString];

    barrierFolderURL = [v4 barrierFolderURL];
    v16 = [barrierFolderURL URLByAppendingPathComponent:v14];

    fileSystemRepresentation = [v16 fileSystemRepresentation];
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __41__FPFSChangeSubscription_waitableBarrier__block_invoke;
    v30 = &__block_descriptor_40_e8_i12__0i8l;
    v31 = fileSystemRepresentation;
    fpfs_openat();
    delegationQueue = [v4 delegationQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__FPFSChangeSubscription_waitableBarrier__block_invoke_2;
    block[3] = &unk_1E83BE068;
    v19 = v16;
    v26 = v19;
    dispatch_group_notify(v11, delegationQueue, block);

    v20 = fp_current_or_default_log();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
    if (barrierGroup)
    {
      if (v21)
      {
        [(FPFSChangeSubscription *)v19 waitableBarrier];
      }
    }

    else if (v21)
    {
      [(FPFSChangeSubscription *)v19 waitableBarrier];
    }

    v23 = v26;
    v22 = v11;
  }

  else
  {
    uUID = fp_current_or_default_log();
    if (os_log_type_enabled(uUID, OS_LOG_TYPE_DEBUG))
    {
      [(FPFSChangeSubscription *)v4 waitableBarrier];
    }

    v22 = 0;
  }

  return v22;
}

uint64_t __41__FPFSChangeSubscription_waitableBarrier__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) fileSystemRepresentation];

  return unlink(v1);
}

- (void)didProcessEventID:(unint64_t)d
{
  if (d)
  {
    self->_lastDeliveredEventID = d;
  }
}

- (BOOL)didProcessBarrierEventUUID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  notifyStreamUUID = selfCopy->_notifyStreamUUID;
  if (!notifyStreamUUID)
  {
    goto LABEL_8;
  }

  if (dCopy)
  {
    if ([(NSUUID *)notifyStreamUUID isEqual:dCopy])
    {
      notifyStreamUUID = selfCopy->_notifyStreamUUID;
      goto LABEL_5;
    }

LABEL_8:
    objc_sync_exit(selfCopy);

    v11 = 0;
    goto LABEL_9;
  }

LABEL_5:
  v7 = notifyStreamUUID;
  dispatch_group_leave(selfCopy->_barrierGroup);
  barrierGroup = selfCopy->_barrierGroup;
  selfCopy->_barrierGroup = 0;

  v9 = selfCopy->_notifyStreamUUID;
  selfCopy->_notifyStreamUUID = 0;

  objc_sync_exit(selfCopy);
  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(FPFSChangeSubscription *)v7 didProcessBarrierEventUUID:v10];
  }

  v11 = 1;
LABEL_9:

  return v11;
}

- (void)dispose
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_state = 4;
  objc_sync_exit(selfCopy);

  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  [WeakRetained subscriptionHandleTermination:selfCopy];

  v4 = objc_loadWeakRetained(&selfCopy->_weakReader);
  [v4 disableSubscription:selfCopy];

  obj = selfCopy;
  objc_sync_enter(obj);
  if (obj->_ownRootFD)
  {
    close(obj->_rootfd);
    obj->_rootfd = -1;
  }

  objc_storeWeak(&selfCopy->_delegate, 0);
  objc_storeWeak(&selfCopy->_weakReader, 0);
  objc_sync_exit(obj);
}

- (FPFSChangeSubscriptionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)waitableBarrier
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] 🚧  no reader (%@) or associated barrier folder URL", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)didProcessBarrierEventUUID:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] 🚧  handle event on barrier %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end