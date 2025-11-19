@interface FPFSChangeSubscription
- (BOOL)activateWithError:(id *)a3;
- (BOOL)didProcessBarrierEventUUID:(id)a3;
- (FPFSChangeSubscription)initWithPath:(id)a3 fd:(int)a4 reader:(id)a5 sinceEventID:(unint64_t)a6 streamUUID:(id)a7 ignoreOwnEvents:(BOOL)a8 delegate:(id)a9 purpose:(id)a10;
- (FPFSChangeSubscriptionDelegate)delegate;
- (id)description;
- (id)waitableBarrier;
- (void)didProcessEventID:(unint64_t)a3;
- (void)dispose;
- (void)waitableBarrier;
@end

@implementation FPFSChangeSubscription

- (FPFSChangeSubscription)initWithPath:(id)a3 fd:(int)a4 reader:(id)a5 sinceEventID:(unint64_t)a6 streamUUID:(id)a7 ignoreOwnEvents:(BOOL)a8 delegate:(id)a9 purpose:(id)a10
{
  v15 = a3;
  v16 = a5;
  v17 = a7;
  v18 = a9;
  v19 = a10;
  v25.receiver = self;
  v25.super_class = FPFSChangeSubscription;
  v20 = [(FPFSChangeSubscription *)&v25 init];
  if (v20)
  {
    v21 = [v15 fp_realpath];
    root = v20->_root;
    v20->_root = v21;

    v20->_rootfd = a4;
    objc_storeWeak(&v20->_delegate, v18);
    v20->_lastDeliveredEventID = a6;
    objc_storeStrong(&v20->_eventStreamUUID, a7);
    v20->_state = 1;
    objc_storeWeak(&v20->_weakReader, v16);
    v20->_ignoreOwnEvents = a8;
    objc_storeStrong(&v20->_purpose, a10);
  }

  return v20;
}

- (BOOL)activateWithError:(id *)a3
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
          if ([WeakRetained activateSubscription:self error:a3])
          {
            v7 = self;
            objc_sync_enter(v7);
            self->_state = 2;
            objc_sync_exit(v7);

            v8 = 1;
LABEL_17:

            return v8;
          }

LABEL_16:
          v8 = 0;
          goto LABEL_17;
        }
      }

      if (!a3)
      {
        goto LABEL_16;
      }

      v9 = MEMORY[0x1E696ABC0];
      v10 = *__error();
      v11 = v9;
    }

    else
    {
      if (!a3)
      {
        goto LABEL_16;
      }

      v11 = MEMORY[0x1E696ABC0];
      v10 = 22;
    }

    [v11 fp_errorWithPOSIXCode:v10];
    *a3 = v8 = 0;
    goto LABEL_17;
  }

  if (!a3)
  {
    return 0;
  }

  [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:35];
  *a3 = v8 = 0;
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
    v6 = [MEMORY[0x1E696AFB0] UUID];
    v7 = self;
    objc_sync_enter(v7);
    barrierGroup = v7->_barrierGroup;
    if (!barrierGroup)
    {
      v9 = dispatch_group_create();
      v10 = v7->_barrierGroup;
      v7->_barrierGroup = v9;

      dispatch_group_enter(v7->_barrierGroup);
    }

    objc_storeStrong(&v7->_notifyStreamUUID, v6);
    v11 = v7->_barrierGroup;
    objc_sync_exit(v7);

    v12 = MEMORY[0x1E696AEC0];
    v13 = [v6 UUIDString];
    v14 = [v12 stringWithFormat:@".rendez-vous.%@.nosync", v13];

    v15 = [v4 barrierFolderURL];
    v16 = [v15 URLByAppendingPathComponent:v14];

    v17 = [v16 fileSystemRepresentation];
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __41__FPFSChangeSubscription_waitableBarrier__block_invoke;
    v30 = &__block_descriptor_40_e8_i12__0i8l;
    v31 = v17;
    fpfs_openat();
    v18 = [v4 delegationQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__FPFSChangeSubscription_waitableBarrier__block_invoke_2;
    block[3] = &unk_1E83BE068;
    v19 = v16;
    v26 = v19;
    dispatch_group_notify(v11, v18, block);

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
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
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

- (void)didProcessEventID:(unint64_t)a3
{
  if (a3)
  {
    self->_lastDeliveredEventID = a3;
  }
}

- (BOOL)didProcessBarrierEventUUID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  notifyStreamUUID = v5->_notifyStreamUUID;
  if (!notifyStreamUUID)
  {
    goto LABEL_8;
  }

  if (v4)
  {
    if ([(NSUUID *)notifyStreamUUID isEqual:v4])
    {
      notifyStreamUUID = v5->_notifyStreamUUID;
      goto LABEL_5;
    }

LABEL_8:
    objc_sync_exit(v5);

    v11 = 0;
    goto LABEL_9;
  }

LABEL_5:
  v7 = notifyStreamUUID;
  dispatch_group_leave(v5->_barrierGroup);
  barrierGroup = v5->_barrierGroup;
  v5->_barrierGroup = 0;

  v9 = v5->_notifyStreamUUID;
  v5->_notifyStreamUUID = 0;

  objc_sync_exit(v5);
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
  v2 = self;
  objc_sync_enter(v2);
  v2->_state = 4;
  objc_sync_exit(v2);

  WeakRetained = objc_loadWeakRetained(&v2->_delegate);
  [WeakRetained subscriptionHandleTermination:v2];

  v4 = objc_loadWeakRetained(&v2->_weakReader);
  [v4 disableSubscription:v2];

  obj = v2;
  objc_sync_enter(obj);
  if (obj->_ownRootFD)
  {
    close(obj->_rootfd);
    obj->_rootfd = -1;
  }

  objc_storeWeak(&v2->_delegate, 0);
  objc_storeWeak(&v2->_weakReader, 0);
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
  v4 = a1;
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