@interface HFMediaValueManager
- (BOOL)hasPendingWritesForRouteID:(id)a3;
- (HFMediaProfileContainer)mediaProfileContainer;
- (HFMediaValueManager)init;
- (HFMediaValueManager)initWithMediaProfileContainer:(id)a3;
- (id)cachedPlaybackStateWriteErrorForRouteID:(id)a3;
- (id)mediaProfileContainerForRouteID:(id)a3;
- (id)writePlaybackState:(int64_t)a3 playbackArchive:(id)a4 forRouteID:(id)a5;
- (int64_t)lastPlaybackStateForProfileForRouteID:(id)a3;
- (void)_notifyDelegatesDidUpdatePlaybackState:(int64_t)a3 mediaSession:(id)a4;
- (void)_notifyDelegatesFailedToUpdatePlaybackStateWithError:(id)a3 mediaSession:(id)a4;
- (void)_notifyDelegatesWillUpdatePlaybackState:(int64_t)a3 mediaSession:(id)a4;
- (void)_updateCachedPlaybackStateWriteError:(id)a3 operationType:(id)a4 notifyDelegates:(BOOL)a5;
- (void)_updateLastPlaybackState:(int64_t)a3 sender:(SEL)a4 notifyWillUpdate:(BOOL)a5 notifyDidUpdate:(BOOL)a6;
- (void)clearCachedPlaybackStateWriteErrorWithReason:(id)a3 notifyDelegates:(BOOL)a4;
- (void)mediaObject:(id)a3 didUpdateMediaSession:(id)a4;
- (void)mediaSession:(id)a3 didUpdatePlaybackState:(int64_t)a4;
@end

@implementation HFMediaValueManager

- (HFMediaValueManager)initWithMediaProfileContainer:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"HFMediaValueManager.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"mediaProfileContainer"}];
  }

  v14.receiver = self;
  v14.super_class = HFMediaValueManager;
  v6 = [(HFMediaValueManager *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_mediaProfileContainer, v5);
    v8 = objc_opt_new();
    transactionStack = v7->_transactionStack;
    v7->_transactionStack = v8;

    v10 = +[HFHomeKitDispatcher sharedDispatcher];
    [v10 addMediaSessionObserver:v7];

    v11 = +[HFHomeKitDispatcher sharedDispatcher];
    [v11 addMediaObjectObserver:v7];
  }

  return v7;
}

- (HFMediaValueManager)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithMediaProfileContainer_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFMediaValueManager.m" lineNumber:79 description:{@"%s is unavailable; use %@ instead", "-[HFMediaValueManager init]", v5}];

  return 0;
}

- (BOOL)hasPendingWritesForRouteID:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(HFMediaValueManager *)self mediaProfileContainer];
  v6 = [v5 hf_mediaRouteIdentifier];
  v7 = [v6 isEqualToString:v4];

  if (v7)
  {
    if ([v5 isContainedWithinItemGroup])
    {
      v8 = [v5 hf_home];
      v9 = [v5 hf_backingAccessory];
      v10 = [v8 hf_mediaSystemForAccessory:v9];

      v11 = [v10 hf_mediaValueSource];
      v12 = [v10 hf_mediaRouteIdentifier];
      v13 = [v11 hasPendingWritesForRouteID:v12];
    }

    else
    {
      v10 = [(HFMediaValueManager *)self transactionStack];
      v13 = [v10 count] != 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (int64_t)lastPlaybackStateForProfileForRouteID:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = a3;
    v5 = [(HFMediaValueManager *)self mediaProfileContainer];
    v6 = [v5 hf_mediaRouteIdentifier];
    v7 = [v6 isEqualToString:v4];

    if (v7)
    {
      if ([v5 isContainedWithinItemGroup])
      {
        v8 = [v5 hf_home];
        v9 = [v5 hf_backingAccessory];
        v10 = [v8 hf_mediaSystemForAccessory:v9];

        v11 = [v10 hf_mediaValueSource];
        v12 = [v10 hf_mediaRouteIdentifier];
        v13 = [v11 lastPlaybackStateForProfileForRouteID:v12];
      }

      else
      {
        v14 = [v5 mediaSession];
        v13 = [v14 playbackState];
        v15 = HFLogForCategory(0x3EuLL);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = NSStringFromHMMediaPlaybackState(v13);
          v19 = 138412802;
          v20 = v5;
          v21 = 2112;
          v22 = v14;
          v23 = 2112;
          v24 = v16;
          _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "--> Reading Last Known Media Playback Value for %@/%@ (%@)", &v19, 0x20u);
        }
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)writePlaybackState:(int64_t)a3 playbackArchive:(id)a4 forRouteID:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v39 = a4;
  v9 = a5;
  if (v9)
  {
    v36 = a2;
    v10 = [(HFMediaValueManager *)self mediaProfileContainer];
    v37 = [v10 mediaSession];
    v11 = HFOperationMediaAccessoryPlay;
    if (a3 != 1)
    {
      v11 = HFOperationMediaAccessoryPause;
    }

    v38 = *v11;
    if (v10)
    {
      v12 = [v10 hf_mediaRouteIdentifier];
      v13 = [v12 isEqualToString:v9];

      if (v13)
      {
        if (v37)
        {
          v14 = [(HFMediaValueManager *)self mediaProfileContainer];
          v15 = [v14 accessories];

          if ([v15 na_any:&__block_literal_global_70])
          {
            v16 = HFLogForCategory(0x3EuLL);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *location = 0;
              _os_log_error_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_ERROR, "isUpdatingSoftware is true", location, 2u);
            }

            v17 = [MEMORY[0x277CCA9B8] hf_errorWithCode:23 operation:v38 options:0];
          }

          else
          {
            v17 = 0;
          }

          goto LABEL_22;
        }

        v22 = HFLogForCategory(0x3EuLL);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *location = 0;
          _os_log_error_impl(&dword_20D9BF000, v22, OS_LOG_TYPE_ERROR, "mediaSession is nil", location, 2u);
        }

        v20 = [MEMORY[0x277CCA9B8] hf_errorWithCode:24 operation:v38 options:0];
      }

      else
      {
        v21 = HFLogForCategory(0x3EuLL);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v35 = [v10 hf_mediaRouteIdentifier];
          *location = 138412546;
          *&location[4] = v35;
          v45 = 2112;
          v46 = v9;
          _os_log_error_impl(&dword_20D9BF000, v21, OS_LOG_TYPE_ERROR, "route identifier mismatch: mediaProfileContainer.hf_mediaRouteIdentifier: %@ routeID: %@", location, 0x16u);
        }

        v20 = [MEMORY[0x277CCA9B8] hf_errorWithCode:23 operation:v38 options:0];
      }
    }

    else
    {
      v19 = HFLogForCategory(0x3EuLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *location = 0;
        _os_log_error_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_ERROR, "mediaProfileContainer is nil", location, 2u);
      }

      v20 = [MEMORY[0x277CCA9B8] hf_errorWithCode:23 operation:v38 options:0];
    }

    v17 = v20;
LABEL_22:
    if (v17)
    {
      [(HFMediaValueManager *)self _updateCachedPlaybackStateWriteError:v17 operationType:@"HFMediaValueManager.writePlaybackState.preflight" notifyDelegates:1];
      v18 = [MEMORY[0x277D2C900] futureWithError:v17];
    }

    else
    {
      v23 = objc_opt_new();
      [v23 setPlaybackState:a3];
      v24 = [(HFMediaValueManager *)self transactionStack];
      [v24 addObject:v23];

      v25 = [(HFMediaValueManager *)self lastPlaybackStateForProfileForRouteID:v9];
      [(HFMediaValueManager *)self _notifyDelegatesWillUpdatePlaybackState:v25 mediaSession:v37];
      objc_initWeak(location, self);
      v26 = [(HFMediaValueManager *)self mediaProfileContainer];
      v27 = [v26 hf_home];
      v28 = [v27 hf_characteristicValueManager];

      v29 = MEMORY[0x277D2C900];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __69__HFMediaValueManager_writePlaybackState_playbackArchive_forRouteID___block_invoke_55;
      v40[3] = &unk_277DF88A0;
      v40[4] = self;
      v43[1] = a3;
      v43[2] = v25;
      v30 = v23;
      v41 = v30;
      v31 = v28;
      v42 = v31;
      objc_copyWeak(v43, location);
      v43[3] = v36;
      v32 = [v29 futureWithBlock:v40];
      [v30 setWriteFuture:v32];

      v18 = [v30 writeFuture];
      objc_destroyWeak(v43);

      objc_destroyWeak(location);
    }

    goto LABEL_26;
  }

  v18 = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_26:

  v33 = *MEMORY[0x277D85DE8];

  return v18;
}

void __69__HFMediaValueManager_writePlaybackState_playbackArchive_forRouteID___block_invoke_55(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277CD1BD0]);
  v5 = [*(a1 + 32) mediaProfileContainer];
  v6 = [v5 mediaProfiles];
  v7 = [v4 initWithMediaProfiles:v6 playbackState:*(a1 + 64) volume:0 playbackArchive:0];

  v8 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) mediaProfileContainer];
    v10 = NSStringFromHMMediaPlaybackState(*(a1 + 72));
    v11 = NSStringFromHMMediaPlaybackState(*(a1 + 64));
    v12 = [*(a1 + 40) transactionNumber];
    *buf = 138413058;
    v31 = v9;
    v32 = 2112;
    v33 = v10;
    v34 = 2112;
    v35 = v11;
    v36 = 2112;
    v37 = v12;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "--> Starting media value write transaction session %@: from %@ -> %@  (Transaction ID %@)", buf, 0x2Au);
  }

  [*(a1 + 48) beginTransactionWithReason:@"HFMediaValueManagerTransactionReasonActionExecution"];
  v13 = *(a1 + 48);
  v14 = [MEMORY[0x277CBEB98] setWithObject:v7];
  v15 = [v13 executeActions:v14];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __69__HFMediaValueManager_writePlaybackState_playbackArchive_forRouteID___block_invoke_58;
  v24 = &unk_277DF8878;
  objc_copyWeak(&v27, (a1 + 56));
  v28 = vextq_s8(*(a1 + 64), *(a1 + 64), 8uLL);
  v16 = *(a1 + 40);
  v17 = *(a1 + 80);
  v25 = v16;
  v29 = v17;
  v18 = v3;
  v26 = v18;
  v19 = [v15 addCompletionBlock:&v21];

  [*(a1 + 48) commitTransactionWithReason:{@"HFMediaValueManagerTransactionReasonActionExecution", v21, v22, v23, v24}];
  objc_destroyWeak(&v27);

  v20 = *MEMORY[0x277D85DE8];
}

void __69__HFMediaValueManager_writePlaybackState_playbackArchive_forRouteID___block_invoke_58(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (v5)
  {
    v9 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 mediaProfileContainer];
      v11 = NSStringFromHMMediaPlaybackState(*(a1 + 56));
      v12 = NSStringFromHMMediaPlaybackState(*(a1 + 64));
      v13 = [*(a1 + 32) transactionNumber];
      v21 = 138413058;
      v22 = v10;
      v23 = 2112;
      v24 = v11;
      v25 = 2112;
      v26 = v12;
      v27 = 2112;
      v28 = v13;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "--> Failed media write transaction for session %@: %@ -> %@  (Transaction ID %@)", &v21, 0x2Au);
    }

    [v8 _updateCachedPlaybackStateWriteError:v5 operationType:@"HFMediaValueManager.writePlaybackState" notifyDelegates:1];
  }

  else
  {
    [WeakRetained clearCachedPlaybackStateWriteErrorWithReason:@"Successfully changed playback state" notifyDelegates:0];
    [v8 _updateLastPlaybackState:*(a1 + 64) sender:*(a1 + 72) notifyWillUpdate:0 notifyDidUpdate:1];
  }

  v14 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v8 mediaProfileContainer];
    v16 = NSStringFromHMMediaPlaybackState(*(a1 + 56));
    v17 = NSStringFromHMMediaPlaybackState(*(a1 + 64));
    v18 = [*(a1 + 32) transactionNumber];
    v21 = 138413058;
    v22 = v15;
    v23 = 2112;
    v24 = v16;
    v25 = 2112;
    v26 = v17;
    v27 = 2112;
    v28 = v18;
    _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "--> Finished media write transaction for session %@: %@ -> %@  (Transaction ID %@)", &v21, 0x2Au);
  }

  v19 = [v8 transactionStack];
  [v19 removeObject:*(a1 + 32)];

  [*(a1 + 40) finishWithResult:v6 error:v5];
  v20 = *MEMORY[0x277D85DE8];
}

- (id)cachedPlaybackStateWriteErrorForRouteID:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(HFMediaValueManager *)self mediaProfileContainer];
    v6 = [v5 hf_mediaRouteIdentifier];
    v7 = [v6 isEqualToString:v4];

    if (v7)
    {
      v8 = [(HFMediaValueManager *)self cachedPlaybackStateWriteError];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)mediaProfileContainerForRouteID:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(HFMediaValueManager *)self mediaProfileContainer];
    v6 = [v5 hf_mediaRouteIdentifier];
    v7 = [v6 isEqualToString:v4];

    if (v7)
    {
      v8 = v5;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)clearCachedPlaybackStateWriteErrorWithReason:(id)a3 notifyDelegates:(BOOL)a4
{
  v4 = a4;
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (self->_cachedPlaybackStateWriteError)
  {
    v7 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(HFMediaValueManager *)self mediaProfileContainer];
      v16 = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Clearing cachedPlaybackStateWriteError for profile '%@'; Reason: '%@'", &v16, 0x16u);
    }

    cachedPlaybackStateWriteError = self->_cachedPlaybackStateWriteError;
    self->_cachedPlaybackStateWriteError = 0;

    if (v4)
    {
      v10 = [(HFMediaValueManager *)self mediaProfileContainer];
      v11 = [v10 hf_mediaRouteIdentifier];
      v12 = [(HFMediaValueManager *)self lastPlaybackStateForProfileForRouteID:v11];

      v13 = [(HFMediaValueManager *)self mediaProfileContainer];
      v14 = [v13 mediaSession];
      [(HFMediaValueManager *)self _notifyDelegatesDidUpdatePlaybackState:v12 mediaSession:v14];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)mediaSession:(id)a3 didUpdatePlaybackState:(int64_t)a4
{
  v7 = a3;
  v8 = [(HFMediaValueManager *)self mediaProfileContainer];
  v9 = [v8 mediaSession];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    [(HFMediaValueManager *)self _updateLastPlaybackState:a4 sender:a2 notifyWillUpdate:0 notifyDidUpdate:0];

    [(HFMediaValueManager *)self clearCachedPlaybackStateWriteErrorWithReason:@"Playback State update" notifyDelegates:1];
  }
}

- (void)mediaObject:(id)a3 didUpdateMediaSession:(id)a4
{
  v9 = a3;
  v6 = [(HFMediaValueManager *)self mediaProfileContainer];
  v7 = [v9 isEqual:v6];

  if (v7)
  {
    v8 = [v9 mediaSession];
    -[HFMediaValueManager _updateLastPlaybackState:sender:notifyWillUpdate:notifyDidUpdate:](self, "_updateLastPlaybackState:sender:notifyWillUpdate:notifyDidUpdate:", [v8 playbackState], a2, 0, 0);

    [(HFMediaValueManager *)self clearCachedPlaybackStateWriteErrorWithReason:@"Media Session update" notifyDelegates:1];
  }
}

- (void)_updateCachedPlaybackStateWriteError:(id)a3 operationType:(id)a4 notifyDelegates:(BOOL)a5
{
  v5 = a5;
  v13 = a3;
  objc_storeStrong(&self->_cachedPlaybackStateWriteError, a3);
  v9 = a4;
  v10 = +[HFErrorHandler sharedHandler];
  [v10 logError:v13 operationDescription:v9];

  if (v5)
  {
    v11 = [(HFMediaValueManager *)self mediaProfileContainer];
    v12 = [v11 mediaSession];
    [(HFMediaValueManager *)self _notifyDelegatesFailedToUpdatePlaybackStateWithError:v13 mediaSession:v12];
  }
}

- (void)_updateLastPlaybackState:(int64_t)a3 sender:(SEL)a4 notifyWillUpdate:(BOOL)a5 notifyDidUpdate:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v24 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (![(HFMediaValueManager *)self hasPendingWrites])
  {
    v11 = [(HFMediaValueManager *)self mediaProfileContainer];
    v12 = [v11 mediaSession];
    if (v7)
    {
      [(HFMediaValueManager *)self _notifyDelegatesWillUpdatePlaybackState:a3 mediaSession:v12];
    }

    v13 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(HFMediaValueManager *)self mediaProfileContainer];
      v15 = NSStringFromHMMediaPlaybackState(a3);
      v16 = NSStringFromSelector(a4);
      v18 = 138412802;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      v22 = 2112;
      v23 = v16;
      _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "--> Updating last playback state for profile %@ --> %@ (Update sent from %@)", &v18, 0x20u);
    }

    if (v6)
    {
      [(HFMediaValueManager *)self _notifyDelegatesDidUpdatePlaybackState:a3 mediaSession:v12];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_notifyDelegatesDidUpdatePlaybackState:(int64_t)a3 mediaSession:(id)a4
{
  v6 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v7 = +[HFHomeKitDispatcher sharedDispatcher];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__HFMediaValueManager__notifyDelegatesDidUpdatePlaybackState_mediaSession___block_invoke;
  v9[3] = &unk_277DF88C8;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [v7 dispatchMediaSessionObserverMessage:v9 sender:self];
}

void __75__HFMediaValueManager__notifyDelegatesDidUpdatePlaybackState_mediaSession___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 mediaSession:*(a1 + 32) didUpdatePlaybackState:*(a1 + 40)];
  }
}

- (void)_notifyDelegatesWillUpdatePlaybackState:(int64_t)a3 mediaSession:(id)a4
{
  v6 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v7 = +[HFHomeKitDispatcher sharedDispatcher];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__HFMediaValueManager__notifyDelegatesWillUpdatePlaybackState_mediaSession___block_invoke;
  v9[3] = &unk_277DF88C8;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [v7 dispatchMediaSessionObserverMessage:v9 sender:self];
}

void __76__HFMediaValueManager__notifyDelegatesWillUpdatePlaybackState_mediaSession___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 mediaSession:*(a1 + 32) willUpdatePlaybackState:*(a1 + 40)];
  }
}

- (void)_notifyDelegatesFailedToUpdatePlaybackStateWithError:(id)a3 mediaSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v8 = +[HFHomeKitDispatcher sharedDispatcher];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __89__HFMediaValueManager__notifyDelegatesFailedToUpdatePlaybackStateWithError_mediaSession___block_invoke;
  v11[3] = &unk_277DF88F0;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  [v8 dispatchMediaSessionObserverMessage:v11 sender:self];
}

void __89__HFMediaValueManager__notifyDelegatesFailedToUpdatePlaybackStateWithError_mediaSession___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 mediaSession:*(a1 + 32) failedToUpdatePlaybackStateWithError:*(a1 + 40)];
  }
}

- (HFMediaProfileContainer)mediaProfileContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaProfileContainer);

  return WeakRetained;
}

@end