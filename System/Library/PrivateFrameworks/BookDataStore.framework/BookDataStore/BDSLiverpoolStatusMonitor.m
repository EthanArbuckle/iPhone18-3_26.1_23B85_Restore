@interface BDSLiverpoolStatusMonitor
- (BCICloudIdentityToken)iCloudIdentityToken;
- (BDSLiverpoolStatusChangeObserving)coordinatingObserver;
- (BDSLiverpoolStatusMonitor)init;
- (BOOL)dq_isCloudKitEnabled;
- (BOOL)isCloudKitEnabled;
- (id)description;
- (void)_notifyObserversWithCurrentToken:(id)a3 lastToken:(id)a4;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)dq_archiveCurrentICloudIdentityToken;
- (void)dq_refreshICloudAvailabilityStatus;
- (void)p_iCloudIdentityDidChange:(id)a3;
- (void)refreshICloudTokensAndUpdateWithOptedIn:(BOOL)a3;
- (void)registerCoordinatingObserver:(id)a3;
- (void)removeObserver:(id)a3;
- (void)restartObserving;
- (void)setOptedIn:(BOOL)a3;
- (void)updateWithOptedIn:(BOOL)a3;
@end

@implementation BDSLiverpoolStatusMonitor

- (BDSLiverpoolStatusMonitor)init
{
  v28.receiver = self;
  v28.super_class = BDSLiverpoolStatusMonitor;
  v2 = [(BDSLiverpoolStatusMonitor *)&v28 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = dispatch_queue_create("com.apple.iBooks.BDSLiverpoolStatusMonitor.dispatchQueue", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v5;

    v7 = dispatch_queue_create("com.apple.iBooks.BDSLiverpoolStatusMonitor.notifyQueue", 0);
    notifyQueue = v2->_notifyQueue;
    v2->_notifyQueue = v7;

    v9 = [MEMORY[0x1E698F538] sharedProvider];
    v2->_optedIn = [v9 isPrimaryAccountManagedAppleID];

    v10 = [MEMORY[0x1E695E000] standardUserDefaults];
    v11 = [v10 valueForKey:@"nonNilLiverpoolIdentityToken"];
    v2->_lastArchivedNonNilICloudIdentityTokenWasNonNilAtColdLaunch = v11 != 0;

    v12 = v2->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E45E2104;
    block[3] = &unk_1E875A008;
    v13 = v2;
    v27 = v13;
    dispatch_async(v12, block);
    out_token = -1;
    objc_initWeak(&location, v13);
    v14 = [@"com.apple.tcc.access.changed" UTF8String];
    v15 = MEMORY[0x1E69E96A0];
    v16 = MEMORY[0x1E69E96A0];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = sub_1E462A0D0;
    v22 = &unk_1E87597D0;
    objc_copyWeak(&v23, &location);
    LODWORD(v14) = notify_register_dispatch(v14, &out_token, v15, &v19);

    if (v14)
    {
      v17 = 0xFFFFFFFFLL;
    }

    else
    {
      v17 = out_token;
    }

    [(BDSLiverpoolStatusMonitor *)v13 setTccNotifyToken:v17, v19, v20, v21, v22];
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dq_refreshICloudAvailabilityStatus
{
  v3 = +[BDSICloudIdentityToken tokenForCurrentIdentityIfCloudKitEnabled];
  currentICloudIdentityToken = self->_currentICloudIdentityToken;
  self->_currentICloudIdentityToken = v3;

  v5 = [BDSICloudIdentityToken alloc];
  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  v7 = [v6 valueForKey:@"liverpoolIdentityToken"];
  v8 = [(BDSICloudIdentityToken *)v5 initFromArchive:v7];
  lastArchivedICloudIdentityToken = self->_lastArchivedICloudIdentityToken;
  self->_lastArchivedICloudIdentityToken = v8;

  v10 = [BDSICloudIdentityToken alloc];
  v14 = [MEMORY[0x1E695E000] standardUserDefaults];
  v11 = [v14 valueForKey:@"nonNilLiverpoolIdentityToken"];
  v12 = [(BDSICloudIdentityToken *)v10 initFromArchive:v11];
  lastArchivedNonNilICloudIdentityToken = self->_lastArchivedNonNilICloudIdentityToken;
  self->_lastArchivedNonNilICloudIdentityToken = v12;
}

- (BOOL)isCloudKitEnabled
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(BDSLiverpoolStatusMonitor *)self dispatchQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E45E249C;
  v5[3] = &unk_1E8759688;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (BOOL)dq_isCloudKitEnabled
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = +[BDSSyncUserDefaults isSignedIntoICloud];
  v4 = +[BDSSyncUserDefaults isCloudKitSyncOptedIn];
  v5 = BDSCloudKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    if (v3)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    if (v4)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v11 = 138412802;
    if ([(BDSLiverpoolStatusMonitor *)self optedIn])
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    _os_log_debug_impl(&dword_1E45E0000, v5, OS_LOG_TYPE_DEBUG, "BDSLiverpoolStatusMonitor: dq_isCloudKitEnabled: signedIn = %@, cloudKit = %@, optedIn = %@", &v11, 0x20u);
  }

  result = v3 && v4 && [(BDSLiverpoolStatusMonitor *)self optedIn];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dq_archiveCurrentICloudIdentityToken
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [(BDSLiverpoolStatusMonitor *)self currentICloudIdentityToken];
  v5 = [v4 token];
  [v3 setObject:v5 forKey:@"liverpoolIdentityToken"];

  v6 = [(BDSLiverpoolStatusMonitor *)self currentICloudIdentityToken];
  if (v6)
  {
    v7 = v6;
    v8 = [(BDSLiverpoolStatusMonitor *)self optedInKnown];

    if (v8)
    {
      v9 = [MEMORY[0x1E695E000] standardUserDefaults];
      v10 = [(BDSLiverpoolStatusMonitor *)self currentICloudIdentityToken];
      v11 = [v10 token];
      [v9 setObject:v11 forKey:@"nonNilLiverpoolIdentityToken"];
    }
  }

  v12 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v12 synchronize];
}

- (void)updateWithOptedIn:(BOOL)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [(BDSLiverpoolStatusMonitor *)self isCloudKitEnabled];
  v6 = [(BDSLiverpoolStatusMonitor *)self optedInKnown];
  if (a3)
  {
    v7 = 1;
  }

  else
  {
    v8 = [MEMORY[0x1E698F538] sharedProvider];
    v7 = [v8 isPrimaryAccountManagedAppleID];
  }

  [(BDSLiverpoolStatusMonitor *)self setOptedIn:v7];
  if (((v5 ^ [(BDSLiverpoolStatusMonitor *)self isCloudKitEnabled]) & v6) == 1)
  {
    [(BDSLiverpoolStatusMonitor *)self p_iCloudIdentityDidChange:0];
  }

  [(BDSLiverpoolStatusMonitor *)self refreshICloudTokensAndUpdateWithOptedIn:v7];
  v9 = BDSCloudKitLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    if ([(BDSLiverpoolStatusMonitor *)self isCloudKitEnabled])
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    if ([(BDSLiverpoolStatusMonitor *)self optedIn])
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v13 = 138543618;
    v14 = v10;
    v15 = 2114;
    v16 = v11;
    _os_log_impl(&dword_1E45E0000, v9, OS_LOG_TYPE_INFO, "BCLiverpoolStatusMonitor CloudKit=%{public}@ optedIn=%{public}@", &v13, 0x16u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)refreshICloudTokensAndUpdateWithOptedIn:(BOOL)a3
{
  [(BDSLiverpoolStatusMonitor *)self setOptedIn:?];
  v5 = [(BDSLiverpoolStatusMonitor *)self dispatchQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1E462A324;
  v6[3] = &unk_1E875AB90;
  v7 = a3;
  v6[4] = self;
  dispatch_async(v5, v6);
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  if ([(BDSLiverpoolStatusMonitor *)self tccNotifyToken]!= -1)
  {
    notify_cancel([(BDSLiverpoolStatusMonitor *)self tccNotifyToken]);
  }

  v4.receiver = self;
  v4.super_class = BDSLiverpoolStatusMonitor;
  [(BDSLiverpoolStatusMonitor *)&v4 dealloc];
}

- (BCICloudIdentityToken)iCloudIdentityToken
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1E462A588;
  v11 = sub_1E462A598;
  v12 = 0;
  v3 = [(BDSLiverpoolStatusMonitor *)self dispatchQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1E462A5A0;
  v6[3] = &unk_1E8759688;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setOptedIn:(BOOL)a3
{
  if (self->_optedIn != a3)
  {
    self->_optedIn = a3;
    self->_optedInKnown = 1;
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(BDSLiverpoolStatusMonitor *)self dispatchQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1E462A6C0;
    v6[3] = &unk_1E875A030;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(BDSLiverpoolStatusMonitor *)self dispatchQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1E462A808;
    v6[3] = &unk_1E875A030;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (void)registerCoordinatingObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(BDSLiverpoolStatusMonitor *)self dispatchQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1E462A954;
    v6[3] = &unk_1E875A030;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (void)restartObserving
{
  v3 = [(BDSLiverpoolStatusMonitor *)self dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E462A9E4;
  block[3] = &unk_1E875A008;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)p_iCloudIdentityDidChange:(id)a3
{
  v4 = [(BDSLiverpoolStatusMonitor *)self dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E462AC2C;
  block[3] = &unk_1E875A008;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)_notifyObserversWithCurrentToken:(id)a3 lastToken:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v6 = a4;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = [(BDSLiverpoolStatusMonitor *)self observers];
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          v13 = [(BDSLiverpoolStatusMonitor *)self notifyQueue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_1E462AFE4;
          block[3] = &unk_1E8759FE0;
          block[4] = v12;
          v23 = v17;
          v24 = v6;
          dispatch_async(v13, block);
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  v14 = [(BDSLiverpoolStatusMonitor *)self coordinatingObserver];
  if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v15 = [(BDSLiverpoolStatusMonitor *)self notifyQueue];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1E462AFF4;
    v18[3] = &unk_1E8759FE0;
    v19 = v14;
    v20 = v17;
    v21 = v6;
    dispatch_async(v15, v18);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if ([(BDSLiverpoolStatusMonitor *)self isCloudKitEnabled])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(BDSLiverpoolStatusMonitor *)self optedIn])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v3 stringWithFormat:@"<%@(%p) CloudKit=%@ optedIn=%@", v5, self, v6, v7];

  return v8;
}

- (BDSLiverpoolStatusChangeObserving)coordinatingObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinatingObserver);

  return WeakRetained;
}

@end