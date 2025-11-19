@interface CAMFirstUnlockProtection
+ (id)sharedInstance;
- (BOOL)checkFirstUnlock;
- (CAMFirstUnlockProtection)init;
- (void)_performPendingBlocksAfterFirstUnlock;
- (void)performAfterFirstUnlock:(id)a3;
@end

@implementation CAMFirstUnlockProtection

+ (id)sharedInstance
{
  if (qword_10000C4C8 != -1)
  {
    sub_100002750();
  }

  v3 = qword_10000C4D0;

  return v3;
}

- (CAMFirstUnlockProtection)init
{
  v7.receiver = self;
  v7.super_class = CAMFirstUnlockProtection;
  v2 = [(CAMFirstUnlockProtection *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_isLocked = 1;
    v4 = objc_alloc_init(NSMutableArray);
    pendingBlocks = v3->_pendingBlocks;
    v3->_pendingBlocks = v4;
  }

  return v3;
}

- (void)_performPendingBlocksAfterFirstUnlock
{
  if (self->_isLocked && MKBDeviceUnlockedSinceBoot() == 1)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = self->_pendingBlocks;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          (*(*(*(&v8 + 1) + 8 * v7) + 16))(*(*(&v8 + 1) + 8 * v7));
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    [(NSMutableArray *)self->_pendingBlocks removeAllObjects];
    self->_isLocked = 0;
  }
}

- (void)performAfterFirstUnlock:(id)a3
{
  v4 = a3;
  if (MKBDeviceUnlockedSinceBoot() == 1 || ([(CAMFirstUnlockProtection *)self _performPendingBlocksAfterFirstUnlock], !self->_isLocked))
  {
    v4[2](v4);
  }

  else if (self->_isWatchingForUnlock)
  {
    v5 = [v4 copy];
    [(NSMutableArray *)self->_pendingBlocks addObject:v5];
  }

  else
  {
    NSLog(@"Waiting for first unlock to start assetsd");
    self->_isWatchingForUnlock = 1;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000022C8;
    v18[3] = &unk_100008260;
    v18[4] = self;
    v18[5] = &v19;
    v6 = objc_retainBlock(v18);
    v7 = kMobileKeyBagLockStatusNotifyToken;
    v8 = v20;
    v9 = &_dispatch_main_q;
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100002330;
    v15 = &unk_100008368;
    v17 = &v19;
    v10 = v6;
    v16 = v10;
    LODWORD(v7) = notify_register_dispatch(v7, v8 + 6, &_dispatch_main_q, &v12);

    if (v7)
    {
      NSLog(@"Unable to wait for first unlock", v12, v13, v14, v15);
      self->_isLocked = 0;
      v4[2](v4);
    }

    else
    {
      v11 = [v4 copy];
      [(NSMutableArray *)self->_pendingBlocks addObject:v11];
    }

    _Block_object_dispose(&v19, 8);
  }
}

- (BOOL)checkFirstUnlock
{
  if (self->_isLocked)
  {
    if (+[NSThread isMainThread])
    {
      [(CAMFirstUnlockProtection *)self _performPendingBlocksAfterFirstUnlock];
      v3 = !self->_isLocked;
    }

    else
    {
      v10 = 0;
      v11 = &v10;
      v12 = 0x2020000000;
      v13 = 0;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000248C;
      block[3] = &unk_100008390;
      block[4] = self;
      v9 = &v10;
      v4 = dispatch_semaphore_create(0);
      v8 = v4;
      dispatch_async(&_dispatch_main_q, block);
      v5 = dispatch_time(0, 10000000000);
      v3 = 0;
      if (!dispatch_semaphore_wait(v4, v5))
      {
        v3 = *(v11 + 24);
      }

      _Block_object_dispose(&v10, 8);
    }
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

@end