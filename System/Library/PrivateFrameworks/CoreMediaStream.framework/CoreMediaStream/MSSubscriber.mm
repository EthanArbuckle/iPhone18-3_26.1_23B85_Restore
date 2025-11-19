@interface MSSubscriber
+ (BOOL)isInRetryState;
+ (id)_clearInstantiatedSubscribersByPersonID;
+ (id)_descriptionForRetrievalState:(int)a3;
+ (id)_descriptionForState:(int)a3;
+ (id)nextActivityDate;
+ (id)nextActivityDateForPersonID:(id)a3;
+ (id)personIDsWithOutstandingActivities;
+ (id)subscriberForPersonID:(id)a3;
+ (void)_setMasterNextActivityDate:(id)a3 forPersonID:(id)a4;
+ (void)forgetPersonID:(id)a3;
+ (void)stopAllActivities;
- (BOOL)_hasOutstandingPoll;
- (BOOL)_isAllowedToDownload;
- (MSSubscriber)initWithPersonID:(id)a3 baseURL:(id)a4;
- (id)_subscriptionsByStreamID;
- (id)ownSubscribedStream;
- (id)subscribedStreams;
- (void)_abort;
- (void)_checkForNewAssetCollections;
- (void)_didFinishRetrievingSubscriptionUpdate;
- (void)_didReceiveAuthenticationError:(id)a3;
- (void)_finishedRetrievingAsset:(id)a3;
- (void)_forget;
- (void)_reauthorizeAssets;
- (void)_refreshServerSideConfigurationParameters;
- (void)_retrieveAssets;
- (void)_retrieveNextAssets;
- (void)_serverSideConfigurationDidChange:(id)a3;
- (void)_setSubscriptionsByStreamID:(id)a3;
- (void)_stopOutSubscriberState:(int *)a3 outRetrievalState:(int *)a4;
- (void)_updateMasterManifest;
- (void)checkForNewAssetCollections;
- (void)checkForNewAssetCollectionsIfMissingCtag;
- (void)checkForOutstandingActivities;
- (void)deactivate;
- (void)dealloc;
- (void)reauthorizationProtocol:(id)a3 didReceiveAuthenticationError:(id)a4;
- (void)reauthorizationProtocol:(id)a3 reauthorizedAssets:(id)a4 rejectedAssets:(id)a5 error:(id)a6;
- (void)resetSync;
- (void)retrieveAssets:(id)a3;
- (void)subscribeStorageProtocol:(id)a3 didFinishRetrievingAsset:(id)a4 error:(id)a5;
- (void)subscribeStorageProtocolDidFinishRetrievingAllAssets:(id)a3;
- (void)subscribeStreamsProtocol:(id)a3 didFindDisappearedSubscriptionForPersonID:(id)a4;
- (void)subscribeStreamsProtocol:(id)a3 didFindTemporarilyUnavailableSubscriptionForPersonID:(id)a4;
- (void)subscribeStreamsProtocol:(id)a3 didFinishError:(id)a4;
- (void)subscribeStreamsProtocol:(id)a3 didFinishReceivingUpdatesForPersonID:(id)a4 ctag:(id)a5;
- (void)subscribeStreamsProtocol:(id)a3 didReceiveAssetCollections:(id)a4 forPersonID:(id)a5;
- (void)subscribeStreamsProtocol:(id)a3 willReceiveUpdatesForPersonID:(id)a4 wasReset:(BOOL)a5 metadata:(id)a6;
@end

@implementation MSSubscriber

- (void)reauthorizationProtocol:(id)a3 reauthorizedAssets:(id)a4 rejectedAssets:(id)a5 error:(id)a6
{
  v62 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [v10 count];
  if (!v11 && v12)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = MSCFCopyLocalizedString(@"ERROR_SUBSCRIBER_NOT_AUTH");
    v11 = [v13 MSErrorWithDomain:@"MSSubscriberErrorDomain" code:3 description:v14];
  }

  if (!v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = v17;
      v19 = [(MSCupidStateMachine *)self personID];
      *buf = 138543874;
      v55 = v17;
      v56 = 2112;
      v57 = v19;
      v58 = 2048;
      v59 = [v9 count];
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Successfully reauthorized %lu assets.", buf, 0x20u);
    }

    daemon = self->_daemon;
    v21 = [(MSCupidStateMachine *)self personID];
    [(MSMediaStreamDaemon *)daemon didReceiveAuthenticationSuccessForPersonID:v21];

LABEL_28:
    [(MSObjectQueue *)self->_retrievalQueue commitObjectsWrappers:self->_assetsBeingRetrieved];
    [(MSSubscriber *)self _retrieveNextAssets];
    goto LABEL_29;
  }

  v15 = [v11 MSIsTemporaryNetworkError];
  v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  v48 = v11;
  if (!v15)
  {
    v45 = v9;
    if (v16)
    {
      v39 = objc_opt_class();
      v40 = v39;
      v41 = [(MSCupidStateMachine *)self personID];
      v42 = [v10 count];
      v43 = [v48 MSVerboseDescription];
      *buf = 138544130;
      v55 = v39;
      v56 = 2112;
      v57 = v41;
      v58 = 2048;
      v59 = v42;
      v11 = v48;
      v60 = 2114;
      v61 = v43;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Reauthorization resulted in %lu rejected assets. Error: %{public}@", buf, 0x2Au);
    }

    v46 = [MEMORY[0x277CBEB18] array];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v44 = v10;
    obj = v10;
    v22 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v50;
      do
      {
        v25 = 0;
        do
        {
          if (*v50 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v49 + 1) + 8 * v25);
          if ([(NSMutableArray *)self->_assetsBeingRetrieved count])
          {
            v27 = 0;
            while (1)
            {
              v28 = [(NSMutableArray *)self->_assetsBeingRetrieved objectAtIndex:v27];
              v29 = [v28 object];
              v30 = [v29 isEqual:v26];

              if (v30)
              {
                break;
              }

              if (++v27 >= [(NSMutableArray *)self->_assetsBeingRetrieved count])
              {
                goto LABEL_25;
              }
            }

            [v46 addObject:v28];
            [(NSMutableArray *)self->_assetsBeingRetrieved removeObjectAtIndex:v27];
          }

LABEL_25:
          [(MSSubscriber *)self _finishedRetrievingAsset:v26];
          v31 = v26;
          v11 = v48;
          [(MSSubscriberDelegate *)self->_delegate subscriber:self didFinishRetrievingAsset:v31 error:v48];
          ++v25;
        }

        while (v25 != v23);
        v23 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v23);
    }

    storageProtocol = self->_storageProtocol;
    v33 = [MSObjectWrapper objectsFromWrappers:v46];
    [(MSSubscribeStorageProtocol *)storageProtocol didFinishUsingAssets:v33];

    [(MSObjectQueue *)self->_retrievalQueue removeObjectWrappersFromQueue:v46];
    [(MSSubscriber *)self _updateMasterManifest];

    v10 = v44;
    v9 = v45;
    goto LABEL_28;
  }

  if (v16)
  {
    v35 = objc_opt_class();
    v36 = v35;
    v37 = [(MSCupidStateMachine *)self personID];
    v38 = [v11 MSVerboseDescription];
    *buf = 138543874;
    v55 = v35;
    v56 = 2112;
    v57 = v37;
    v58 = 2114;
    v59 = v38;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Encountered temporary network error during subscription update. Trying again later. Error :%{public}@", buf, 0x20u);

    v11 = v48;
  }

  [(MSObjectQueue *)self->_retrievalQueue commitObjectsWrappers:self->_assetsBeingRetrieved];
  [(MSSubscriber *)self _changeRetrievalStateTo:1];
  [(MSDaemon *)self->_daemon releaseBusy];
LABEL_29:

  v34 = *MEMORY[0x277D85DE8];
}

- (void)reauthorizationProtocol:(id)a3 didReceiveAuthenticationError:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = a4;
    v10 = objc_opt_class();
    v11 = v10;
    v12 = [(MSCupidStateMachine *)self personID];
    v13 = [v9 MSVerboseDescription];

    v14 = 138543874;
    v15 = v10;
    v16 = 2112;
    v17 = v12;
    v18 = 2114;
    v19 = v13;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Reauthorization protocol received authentication error: %{public}@", &v14, 0x20u);
  }

  daemon = self->_daemon;
  v7 = [(MSCupidStateMachine *)self personID];
  [(MSMediaStreamDaemon *)daemon didReceiveAuthenticationFailureForPersonID:v7];

  [(MSSubscriber *)self _changeRetrievalStateTo:3];
  [(MSDaemon *)self->_daemon releaseBusy];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)subscribeStorageProtocolDidFinishRetrievingAllAssets:(id)a3
{
  v86 = *MEMORY[0x277D85DE8];
  v63 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = v4;
    v6 = [(MSCupidStateMachine *)self personID];
    v7 = [(NSMutableArray *)self->_assetsBeingRetrieved count];
    *buf = 138543874;
    v81 = v4;
    v82 = 2112;
    v83 = v6;
    v84 = 2048;
    v85 = v7;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Finished retrieving assets. Checking for errors on %lu assets...", buf, 0x20u);
  }

  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[MSObjectQueue count](self->_retrievalQueue, "count", 120)}];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = self->_assetsBeingRetrieved;
  v9 = [(NSMutableArray *)obj countByEnumeratingWithState:&v74 objects:v79 count:16];
  v65 = v8;
  if (v9)
  {
    v10 = v9;
    v67 = 0;
    v64 = 0;
    v66 = 0;
    v11 = MEMORY[0x277D86220];
    v12 = *v75;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v75 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v74 + 1) + 8 * i);
        v15 = [v14 object];
        v16 = [v15 error];
        v17 = v16;
        if (v16)
        {
          if ([v16 MSCanBeIgnored])
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v42 = objc_opt_class();
              v43 = v42;
              v44 = [(MSCupidStateMachine *)self personID];
              v45 = [v17 MSVerboseDescription];
              *buf = 138543874;
              v81 = v42;
              v82 = 2112;
              v83 = v44;
              v84 = 2114;
              v85 = v45;
              _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Ignoring error: %{public}@", buf, 0x20u);
            }

            goto LABEL_65;
          }

          if ([v17 MSIsTemporaryNetworkError])
          {
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v18 = objc_opt_class();
              v19 = v18;
              v20 = [(MSCupidStateMachine *)self personID];
              *buf = 138543618;
              v81 = v18;
              v82 = 2112;
              v83 = v20;
              _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Encountered temporary network error.", buf, 0x16u);

              v11 = MEMORY[0x277D86220];
            }

            v67 = 1;
          }

          else if ([v17 MSIsAuthError])
          {
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v21 = objc_opt_class();
              v22 = v21;
              v23 = [(MSCupidStateMachine *)self personID];
              *buf = 138543618;
              v81 = v21;
              v11 = MEMORY[0x277D86220];
              v82 = 2112;
              v83 = v23;
              _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Encountered authentication error.", buf, 0x16u);
            }

            v66 = 1;
          }

          else if ([v17 MSIsBadTokenError])
          {
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v24 = objc_opt_class();
              v25 = v24;
              v26 = [(MSCupidStateMachine *)self personID];
              *buf = 138543618;
              v81 = v24;
              v11 = MEMORY[0x277D86220];
              v82 = 2112;
              v83 = v26;
              _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Encountered bad asset retrieval token.", buf, 0x16u);

              v8 = v65;
            }

            [v14 setErrorCount:{objc_msgSend(v14, "errorCount") + 1}];
            if (self->_maxErrorCount <= [v14 errorCount])
            {
              if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
              {
                v39 = objc_opt_class();
                v40 = v39;
                v41 = [(MSCupidStateMachine *)self personID];
                *buf = 138543874;
                v81 = v39;
                v82 = 2112;
                v83 = v41;
                v84 = 2114;
                v85 = v15;
                _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Too many errors encountered for asset. Aborting download. %{public}@", buf, 0x20u);
              }

              delegate = self->_delegate;
              v28 = MEMORY[0x277CCA9B8];
              v29 = MSCFCopyLocalizedString(@"ERROR_SUBSCRIBER_CANNOT_RETRIEVE");
              v30 = [v28 MSErrorWithDomain:@"MSSubscriberErrorDomain" code:5 description:v29];
              [(MSSubscriberDelegate *)delegate subscriber:self didFinishRetrievingAsset:v15 error:v30];

              v8 = v65;
              [v65 addObject:v15];
              v64 = 1;
              v11 = MEMORY[0x277D86220];
            }

            else
            {
              v64 = 1;
            }
          }

          else
          {
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              v35 = objc_opt_class();
              v36 = v35;
              v37 = [(MSCupidStateMachine *)self personID];
              v38 = [v17 MSVerboseDescription];
              *buf = 138543874;
              v81 = v35;
              v8 = v65;
              v82 = 2112;
              v83 = v37;
              v84 = 2114;
              v85 = v38;
              _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Asset retrieval failed with error: %{public}@", buf, 0x20u);

              v11 = MEMORY[0x277D86220];
            }

            [v8 addObject:v15];
            [(MSSubscriberDelegate *)self->_delegate subscriber:self didFinishRetrievingAsset:v15 error:v17];
          }

          if ([v17 MSNeedsBackoff])
          {
            [(MSCupidStateMachine *)self _backoffMMCSBackoffTimer];
          }

          v31 = [v17 MSMMCSRetryAfterDate];
          if (v31)
          {
            [(MSCupidStateMachine *)self _didReceiveMMCSRetryAfterDate:v31];
          }
        }

        else
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v32 = objc_opt_class();
            v33 = v32;
            v34 = [(MSCupidStateMachine *)self personID];
            *buf = 138543874;
            v81 = v32;
            v8 = v65;
            v82 = 2112;
            v83 = v34;
            v84 = 2114;
            v85 = v15;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Found orphaned asset. Ignoring. %{public}@", buf, 0x20u);

            v11 = MEMORY[0x277D86220];
          }

          [v8 addObject:v15];
        }
      }

      v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v74 objects:v79 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v67 = 0;
    v64 = 0;
    v66 = 0;
  }

  [*(&self->super.super.isa + v62) commitErrorCountsForObjectWrappers:self->_assetsBeingRetrieved];
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v46 = v8;
  v47 = [v46 countByEnumeratingWithState:&v70 objects:v78 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v71;
    do
    {
      for (j = 0; j != v48; ++j)
      {
        if (*v71 != v49)
        {
          objc_enumerationMutation(v46);
        }

        [(MSSubscriber *)self _finishedRetrievingAsset:*(*(&v70 + 1) + 8 * j)];
      }

      v48 = [v46 countByEnumeratingWithState:&v70 objects:v78 count:16];
    }

    while (v48);
  }

  if (((v64 | v66) & 1) == 0)
  {
    [(MSCupidStateMachine *)self _resetMMCSBackoffTimer];
  }

  daemon = self->_daemon;
  v52 = [(MSCupidStateMachine *)self personID];
  if (v66)
  {
    [(MSMediaStreamDaemon *)daemon didReceiveAuthenticationFailureForPersonID:v52];
  }

  else
  {
    [(MSMediaStreamDaemon *)daemon didReceiveAuthenticationSuccessForPersonID:v52];
  }

  v8 = v65;
  if (v64)
  {
    v53 = 3;
  }

  else
  {
    [(NSMutableArray *)self->_assetsBeingRetrieved removeAllObjects];
    v53 = 1;
  }

  [(MSSubscriber *)self _changeRetrievalStateTo:v53];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v54 = objc_opt_class();
    v55 = v54;
    v56 = [(MSCupidStateMachine *)self personID];
    *buf = 138543618;
    v81 = v54;
    v82 = 2112;
    v83 = v56;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ ...Finished handling errors.", buf, 0x16u);

    v8 = v65;
  }

  [(MSDaemon *)self->_daemon releaseBusy];
  if (v67)
  {
    v57 = v63;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v58 = objc_opt_class();
      v59 = v58;
      v60 = [(MSCupidStateMachine *)self personID];
      *buf = 138543618;
      v81 = v58;
      v82 = 2112;
      v83 = v60;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Found temporary network errors during asset downloading. Trying again later.", buf, 0x16u);

      v8 = v65;
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__MSSubscriber_subscribeStorageProtocolDidFinishRetrievingAllAssets___block_invoke;
    block[3] = &unk_278E926D8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
LABEL_65:
    v57 = v63;
  }

  v61 = *MEMORY[0x277D85DE8];
}

- (void)subscribeStorageProtocol:(id)a3 didFinishRetrievingAsset:(id)a4 error:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    [v9 setError:v10];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = v11;
      v13 = [(MSCupidStateMachine *)self personID];
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ Finished retrieving asset.", &v17, 0x16u);
    }

    v14 = [v9 path];
    [(MSSubscriber *)self _finishedRetrievingAsset:v9];
    [(MSSubscriberDelegate *)self->_delegate subscriber:self didFinishRetrievingAsset:v9 error:0];
    v15 = [MEMORY[0x277CCAA00] defaultManager];
    [v15 removeItemAtPath:v14 error:0];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_finishedRetrievingAsset:(id)a3
{
  v4 = [MSObjectWrapper indexOfObject:a3 inWrapperArray:self->_assetsBeingRetrieved];
  if (v4 != -1)
  {
    v5 = v4;
    v11 = [(NSMutableArray *)self->_assetsBeingRetrieved objectAtIndex:v4];
    v6 = [v11 object];
    storageProtocol = self->_storageProtocol;
    v8 = [MEMORY[0x277CBEA60] arrayWithObject:v6];
    [(MSSubscribeStorageProtocol *)storageProtocol didFinishUsingAssets:v8];

    retrievalQueue = self->_retrievalQueue;
    v10 = [MEMORY[0x277CBEA60] arrayWithObject:v11];
    [(MSObjectQueue *)retrievalQueue removeObjectWrappersFromQueue:v10];

    [(NSMutableArray *)self->_assetsBeingRetrieved removeObjectAtIndex:v5];
    [(MSSubscriber *)self _updateMasterManifest];
  }
}

- (void)_forget
{
  retrievalQueue = self->_retrievalQueue;
  self->_retrievalQueue = 0;

  storageProtocol = self->_storageProtocol;
  self->_storageProtocol = 0;

  reauthProtocol = self->_reauthProtocol;
  self->_reauthProtocol = 0;
}

- (void)_abort
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = 0;
  [(MSSubscriber *)self _stopOutSubscriberState:&v22 + 4 outRetrievalState:&v22];
  [(MSSubscriber *)self _setHasOutstandingPoll:0];
  self->_checkOneMoreTime = 0;
  v3 = MEMORY[0x277CCA9B8];
  v4 = MSCFCopyLocalizedString(@"ERROR_SUBSCRIBER_ABORTED");
  v5 = [v3 MSErrorWithDomain:@"MSSubscriberErrorDomain" code:4 description:v4];

  if (HIDWORD(v22))
  {
    [(MSSubscriberDelegate *)self->_delegate subscriber:self didFailToRetriveSubscriptionUpdateWithError:v5];
    delegate = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      [(MSSubscriberDelegate *)self->_delegate subscriberDidCompleteCheckForNewAssetCollections:self];
    }
  }

  [(NSMutableArray *)self->_assetsBeingRetrieved removeAllObjects];
  v7 = [(MSObjectQueue *)self->_retrievalQueue allObjectWrappersMaxCount:5];
  v8 = v7;
  while ([v7 count])
  {
    v9 = objc_autoreleasePoolPush();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = self->_delegate;
          v16 = [*(*(&v18 + 1) + 8 * i) object];
          [(MSSubscriberDelegate *)v15 subscriber:self didFinishRetrievingAsset:v16 error:v5];
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v12);
    }

    [(MSObjectQueue *)self->_retrievalQueue removeObjectWrappersFromQueue:v10];
    v8 = [(MSObjectQueue *)self->_retrievalQueue allObjectWrappersMaxCount:5];

    objc_autoreleasePoolPop(v9);
    v7 = v8;
  }

  [(MSSubscriber *)self _updateMasterManifest];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_stopOutSubscriberState:(int *)a3 outRetrievalState:(int *)a4
{
  if (self->_state == 2)
  {
    [(MSSubscribeStreamsProtocol *)self->_protocol abort];
  }

  retrievalState = self->_retrievalState;
  if (retrievalState == 2)
  {
    v8 = &OBJC_IVAR___MSSubscriber__storageProtocol;
  }

  else
  {
    if (retrievalState != 4)
    {
      goto LABEL_8;
    }

    v8 = &OBJC_IVAR___MSSubscriber__reauthProtocol;
  }

  [*(&self->super.super.isa + *v8) abort];
LABEL_8:
  if (self->_state == 2)
  {
    [(MSDaemon *)self->_daemon releaseBusy];
  }

  v9 = self->_retrievalState;
  if (v9 == 4 || v9 == 2)
  {
    [(MSDaemon *)self->_daemon releaseBusy];
  }

  if (self->_checkOneMoreTime)
  {
    [(MSSubscriber *)self _setHasOutstandingPoll:1];
    self->_checkOneMoreTime = 0;
  }

  if (a3)
  {
    *a3 = self->_state;
  }

  if (a4)
  {
    *a4 = self->_retrievalState;
  }

  [(MSSubscriber *)self _changeStateTo:0];
  [(MSSubscriber *)self _changeRetrievalStateTo:0];
  assetsBeingRetrieved = self->_assetsBeingRetrieved;

  [(NSMutableArray *)assetsBeingRetrieved removeAllObjects];
}

- (void)_reauthorizeAssets
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_assetsBeingRetrieved count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = objc_opt_class();
      v4 = v3;
      v5 = [(MSCupidStateMachine *)self personID];
      v6 = [(NSMutableArray *)self->_assetsBeingRetrieved count];
      v11 = 138543874;
      v12 = v3;
      v13 = 2112;
      v14 = v5;
      v15 = 2048;
      v16 = v6;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Reauthorizing retrieval of %lu assets...", &v11, 0x20u);
    }

    reauthProtocol = self->_reauthProtocol;
    v8 = [MSObjectWrapper objectsFromWrappers:self->_assetsBeingRetrieved];
    [(MSReauthorizationProtocol *)reauthProtocol requestReauthorizationForAssets:v8];

    [(MSSubscriber *)self _changeRetrievalStateTo:4];
    v9 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v10 = *MEMORY[0x277D85DE8];

    [(MSSubscriber *)self _retrieveNextAssets];
  }
}

- (void)_retrieveNextAssets
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [(MSObjectQueue *)self->_retrievalQueue smallestObjectWrappersTargetTotalSize:self->_targetRetrievalByteCount maxCount:self->_retrievalBatchSize];
  if ([v3 count])
  {
    [(NSMutableArray *)self->_assetsBeingRetrieved removeAllObjects];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v23 objects:v33 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v24;
      do
      {
        v9 = 0;
        v10 = v7;
        do
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v7 = *(*(&v23 + 1) + 8 * v9);

          v11 = [v7 object];
          v12 = [v11 MMCSAccessHeader];

          if (v12)
          {
            [(NSMutableArray *)self->_assetsBeingRetrieved addObject:v7];
          }

          ++v9;
          v10 = v7;
        }

        while (v6 != v9);
        v6 = [v4 countByEnumeratingWithState:&v23 objects:v33 count:16];
      }

      while (v6);
    }

    if ([(NSMutableArray *)self->_assetsBeingRetrieved count])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = v13;
        v15 = [(MSCupidStateMachine *)self personID];
        v16 = [(NSMutableArray *)self->_assetsBeingRetrieved count];
        *buf = 138543874;
        v28 = v13;
        v29 = 2112;
        v30 = v15;
        v31 = 2048;
        v32 = v16;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Retrieving %lu assets...", buf, 0x20u);
      }

      [(MSSubscriber *)self _changeRetrievalStateTo:2, v23];
      storageProtocol = self->_storageProtocol;
      v18 = [MSObjectWrapper objectsFromWrappers:self->_assetsBeingRetrieved];
      [(MSSubscribeStorageProtocol *)storageProtocol retrieveAssets:v18];
    }

    else
    {
      [(NSMutableArray *)self->_assetsBeingRetrieved addObjectsFromArray:v4];
      [(MSSubscriber *)self _reauthorizeAssets];
    }
  }

  else
  {
    [(MSDaemon *)self->_daemon releaseBusy];
    [(MSSubscriber *)self _changeRetrievalStateTo:0];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v19 = objc_opt_class();
      v20 = v19;
      v21 = [(MSCupidStateMachine *)self personID];
      *buf = 138543618;
      v28 = v19;
      v29 = 2112;
      v30 = v21;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ No more assets to retrieve.", buf, 0x16u);
    }

    if ([(MSSubscriber *)self _hasOutstandingPoll])
    {
      [(MSSubscriber *)self checkForNewAssetCollections];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_retrieveAssets
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(MSCupidStateMachine *)self hasDeactivated])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = objc_opt_class();
      v4 = [(MSCupidStateMachine *)self personID];
      v11 = 138543618;
      v12 = v3;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Not retrieving assets because we're shutting down.", &v11, 0x16u);
    }

    goto LABEL_17;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [(MSCupidStateMachine *)self personID];
    retrievalState = self->_retrievalState;
    v11 = 138543874;
    v12 = v7;
    v13 = 2112;
    v14 = v9;
    v15 = 1024;
    v16 = retrievalState;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Retrieval state: %d", &v11, 0x1Cu);
  }

  v5 = self->_retrievalState;
  if (v5 <= 2)
  {
    if (v5 < 2)
    {
      if ([(MSSubscriber *)self _isAllowedToDownload])
      {
        [(MSDaemon *)self->_daemon retainBusy];
        [(MSSubscriber *)self _changeRetrievalStateTo:2];
        [(MSSubscriber *)self _retrieveNextAssets];
      }

      goto LABEL_17;
    }

    if (v5 == 2)
    {
      goto LABEL_17;
    }

LABEL_14:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE730] format:@"Unexpected state"];
    goto LABEL_17;
  }

  if (v5 != 3)
  {
    if (v5 == 4)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if ([(MSSubscriber *)self _isAllowedToDownload])
  {
    [(MSDaemon *)self->_daemon retainBusy];
    [(MSSubscriber *)self _changeRetrievalStateTo:4];
    [(MSSubscriber *)self _reauthorizeAssets];
  }

LABEL_17:
  v6 = *MEMORY[0x277D85DE8];
}

- (void)checkForOutstandingActivities
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(MSCupidStateMachine *)self hasDeactivated])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = objc_opt_class();
      v4 = [(MSCupidStateMachine *)self personID];
      v7 = 138543618;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Not checking for outstanding activities because we're shutting down.", &v7, 0x16u);
    }

LABEL_10:
    v6 = *MEMORY[0x277D85DE8];
    return;
  }

  if ([(MSObjectQueue *)self->_retrievalQueue count])
  {
    [(MSSubscriber *)self _retrieveAssets];
  }

  [(MSSubscriber *)self _updateMasterManifest];
  if (![(MSSubscriber *)self _hasOutstandingPoll])
  {
    goto LABEL_10;
  }

  v5 = *MEMORY[0x277D85DE8];

  [(MSSubscriber *)self checkForNewAssetCollections];
}

- (void)retrieveAssets:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v36 objects:v47 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v37;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v37 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v36 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            __assert_rtn("[MSSubscriber retrieveAssets:]", "MSSubscriber.m", 554, "[asset isKindOfClass:[MSAsset class]]");
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v36 objects:v47 count:16];
      }

      while (v7);
    }

    v31 = v4;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = v11;
      v13 = [(MSCupidStateMachine *)self personID];
      v14 = [v5 count];
      *buf = 138543874;
      v42 = v11;
      v43 = 2112;
      v44 = v13;
      v45 = 2048;
      v46 = v14;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Scheduling retrieval of %ld assets.", buf, 0x20u);
    }

    v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v16 = v5;
    v17 = [v16 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v33;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v33 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v32 + 1) + 8 * j);
          if ([v21 _fileSize])
          {
            v22 = [MEMORY[0x277CCACA8] MSMakeUUID];
            [v21 addMetadataValue:v22 forKey:@"MSAssetMetadataAssetFileTransferUUID"];

            v23 = +[MSObjectWrapper wrapperWithObject:size:](MSObjectWrapper, "wrapperWithObject:size:", v21, [v21 _fileSize]);
            [v15 addObject:v23];
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              v27 = objc_opt_class();
              v28 = v27;
              v29 = [(MSCupidStateMachine *)self personID];
              *buf = 138543874;
              v42 = v27;
              v43 = 2112;
              v44 = v29;
              v45 = 2114;
              v46 = v21;
              _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Rejected invalid asset %{public}@.", buf, 0x20u);
            }

            delegate = self->_delegate;
            v25 = MEMORY[0x277CCA9B8];
            v23 = MSCFCopyLocalizedString(@"ERROR_SUBSCRIBER_ASSET_INVALID");
            v26 = [v25 MSErrorWithDomain:@"MSSubscriberErrorDomain" code:1 description:v23];
            [(MSSubscriberDelegate *)delegate subscriber:self didFinishRetrievingAsset:v21 error:v26];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v18);
    }

    [(MSObjectQueue *)self->_retrievalQueue appendObjectWrappers:v15];
    [(MSSubscriber *)self _updateMasterManifest];
    [(MSSubscriber *)self _retrieveAssets];

    v4 = v31;
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)subscribeStreamsProtocol:(id)a3 didFindTemporarilyUnavailableSubscriptionForPersonID:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = a4;
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [(MSCupidStateMachine *)self personID];

    v11 = 138543874;
    v12 = v7;
    v13 = 2112;
    v14 = v9;
    v15 = 2114;
    v16 = v6;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Subscription stream for person ID %{public}@ is temporarily unavailable.", &v11, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_didReceiveAuthenticationError:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = a3;
    v9 = objc_opt_class();
    v10 = v9;
    v11 = [(MSCupidStateMachine *)self personID];
    v12 = [v8 MSVerboseDescription];

    v13 = 138543874;
    v14 = v9;
    v15 = 2112;
    v16 = v11;
    v17 = 2114;
    v18 = v12;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Received authentication error: %{public}@", &v13, 0x20u);
  }

  daemon = self->_daemon;
  v6 = [(MSCupidStateMachine *)self personID];
  [(MSMediaStreamDaemon *)daemon didReceiveAuthenticationFailureForPersonID:v6];

  [(MSSubscriber *)self _changeStateTo:1];
  [(MSDaemon *)self->_daemon releaseBusy];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)subscribeStreamsProtocol:(id)a3 didFinishError:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    daemon = self->_daemon;
    v12 = [(MSCupidStateMachine *)self personID];
    [(MSMediaStreamDaemon *)daemon didReceiveAuthenticationSuccessForPersonID:v12];

    [(MSCupidStateMachine *)self _resetStreamsBackoffTimer];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = v13;
      v15 = [(MSCupidStateMachine *)self personID];
      v24 = 138543618;
      v25 = v13;
      v26 = 2112;
      v27 = v15;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ Finished retrieving subscription updates.", &v24, 0x16u);
    }

    goto LABEL_13;
  }

  v9 = [v7 MSIsTemporaryNetworkError];
  v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if (!v9)
  {
    if (v10)
    {
      v21 = objc_opt_class();
      v22 = v21;
      v23 = [(MSCupidStateMachine *)self personID];
      v24 = 138543874;
      v25 = v21;
      v26 = 2112;
      v27 = v23;
      v28 = 2114;
      v29 = v8;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Found error when retrieving subscription updates: %{public}@", &v24, 0x20u);
    }

    if ([v8 MSNeedsBackoff])
    {
      [(MSCupidStateMachine *)self _backoffStreamsBackoffTimer];
    }

    [(MSSubscriberDelegate *)self->_delegate subscriber:self didFailToRetriveSubscriptionUpdateWithError:v8];
LABEL_13:
    [(MSSubscriber *)self _didFinishRetrievingSubscriptionUpdate];
    goto LABEL_14;
  }

  if (v10)
  {
    v17 = objc_opt_class();
    v18 = v17;
    v19 = [(MSCupidStateMachine *)self personID];
    v20 = [v8 MSVerboseDescription];
    v24 = 138543874;
    v25 = v17;
    v26 = 2112;
    v27 = v19;
    v28 = 2114;
    v29 = v20;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Found temporary network error. Trying again later. Error: %{public}@", &v24, 0x20u);
  }

  [(MSSubscriber *)self _changeStateTo:1];
  [(MSDaemon *)self->_daemon releaseBusy];
LABEL_14:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)subscribeStreamsProtocol:(id)a3 didFindDisappearedSubscriptionForPersonID:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = [(MSCupidStateMachine *)self personID];
    v13 = 138543874;
    v14 = v8;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Subscription for personID %@ is no longer available.", &v13, 0x20u);
  }

  [(NSMutableDictionary *)self->_newSubscriptionsByStreamID removeObjectForKey:v7];
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    [(MSSubscriberDelegate *)self->_delegate subscriber:self didFindDisappearedSubscriptionforStreamID:v7];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)subscribeStreamsProtocol:(id)a3 didFinishReceivingUpdatesForPersonID:(id)a4 ctag:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = objc_opt_class();
    v12 = v11;
    v13 = [(MSCupidStateMachine *)self personID];
    v25 = 138543874;
    v26 = v11;
    v27 = 2112;
    v28 = v13;
    v29 = 2112;
    v30 = v9;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ Finished receiving updates for personID: %@.", &v25, 0x20u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v22 = objc_opt_class();
    v23 = v22;
    v24 = [(MSCupidStateMachine *)self personID];
    v25 = 138543874;
    v26 = v22;
    v27 = 2112;
    v28 = v24;
    v29 = 2114;
    v30 = v10;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ New ctag: %{public}@", &v25, 0x20u);
  }

  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    [(MSSubscriberDelegate *)self->_delegate subscriber:self didFinishRequestingAssetRetrievalForStreamID:v9];
  }

  v15 = [(NSMutableDictionary *)self->_newSubscriptionsByStreamID objectForKey:v9];
  v16 = v15;
  if (v15)
  {
    [v15 setCtag:v10];
  }

  else if (v10)
  {
    v17 = [MSSubscribedStream subscribedStreamWithStreamID:v9];
    [v17 setCtag:v10];
    [(NSMutableDictionary *)self->_newSubscriptionsByStreamID setObject:v17 forKey:v9];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v18 = objc_opt_class();
      v19 = v18;
      v20 = [(MSCupidStateMachine *)self personID];
      v25 = 138543874;
      v26 = v18;
      v27 = 2112;
      v28 = v20;
      v29 = 2112;
      v30 = v9;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ Received CTAG for new person ID %@.", &v25, 0x20u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)subscribeStreamsProtocol:(id)a3 didReceiveAssetCollections:(id)a4 forPersonID:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v24 = a3;
  v8 = a4;
  v9 = a5;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = [(MSCupidStateMachine *)self personID];
    *buf = 138543874;
    v31 = v10;
    v32 = 2112;
    v33 = v12;
    v34 = 2048;
    v35 = [v8 count];
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Found %ld new asset collections.", buf, 0x20u);
  }

  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v14 = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = v8;
  v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v25 + 1) + 8 * i);
        if ([v20 wasDeleted])
        {
          v21 = v14;
        }

        else
        {
          v21 = v13;
        }

        [v21 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v17);
  }

  if ([v13 count] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v31 = v13;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "New Collections: %{public}@", buf, 0xCu);
  }

  if ([v14 count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v31 = v14;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Deleted asset collections: %{public}@", buf, 0xCu);
    }

    delegate = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      [(MSSubscriberDelegate *)self->_delegate subscriber:self didReceiveDeleteForAssetCollections:v14 streamID:v9];
    }
  }

  [(MSSubscriberDelegate *)self->_delegate subscriber:self didRequestAssetRetrievalForAssetCollections:v13 streamID:v9];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)subscribeStreamsProtocol:(id)a3 willReceiveUpdatesForPersonID:(id)a4 wasReset:(BOOL)a5 metadata:(id)a6
{
  v7 = a5;
  v37 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = objc_opt_class();
    v14 = v13;
    v15 = [(MSCupidStateMachine *)self personID];
    v27 = 138543618;
    v28 = v13;
    v29 = 2112;
    v30 = v15;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ Checking for subscription updates...", &v27, 0x16u);
  }

  if (v7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v17 = v16;
    v18 = [(MSCupidStateMachine *)self personID];
    v27 = 138543618;
    v28 = v16;
    v29 = 2112;
    v30 = v18;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Subscriber state was reset by the server.", &v27, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v24 = objc_opt_class();
    v25 = v24;
    v26 = [(MSCupidStateMachine *)self personID];
    v27 = 138544386;
    v28 = v24;
    v29 = 2112;
    v30 = v26;
    v31 = 2112;
    v32 = v11;
    v33 = 1024;
    v34 = v7;
    v35 = 2114;
    v36 = v12;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Beginning subscriber updates for personID: %@ wasReset: %d\nMetadata: %{public}@", &v27, 0x30u);
  }

  v19 = [(NSMutableDictionary *)self->_newSubscriptionsByStreamID objectForKey:v11];
  if (v19)
  {
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v19 = [MSSubscribedStream subscribedStreamWithStreamID:v11];
    [(NSMutableDictionary *)self->_newSubscriptionsByStreamID setObject:v19 forKey:v11];
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  v20 = [(MSSubscriber *)self daemon];
  [v20 didReceiveGlobalResetSyncForPersonID:v11];

  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    [(MSSubscriberDelegate *)self->_delegate subscriber:self didResetSyncForStreamID:v11];
  }

LABEL_13:
  v22 = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    [(MSSubscriberDelegate *)self->_delegate subscriber:self willBeginRequestingAssetRetrievalForStreamID:v11];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_didFinishRetrievingSubscriptionUpdate
{
  [(MSSubscriber *)self _setSubscriptionsByStreamID:self->_newSubscriptionsByStreamID];
  newSubscriptionsByStreamID = self->_newSubscriptionsByStreamID;
  self->_newSubscriptionsByStreamID = 0;

  if (self->_checkOneMoreTime)
  {
    self->_checkOneMoreTime = 0;
    [(MSSubscriber *)self _changeStateTo:1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__MSSubscriber__didFinishRetrievingSubscriptionUpdate__block_invoke;
    block[3] = &unk_278E926D8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    [(MSSubscriber *)self _setHasOutstandingPoll:0];
    [(MSSubscriber *)self _changeStateTo:0];
    delegate = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      [(MSSubscriberDelegate *)self->_delegate subscriberDidCompleteCheckForNewAssetCollections:self];
    }
  }

  [(MSDaemon *)self->_daemon releaseBusy];
}

- (void)_checkForNewAssetCollections
{
  v23 = *MEMORY[0x277D85DE8];
  [(MSSubscriber *)self _changeStateTo:2];
  v3 = [(MSSubscriber *)self _subscriptionsByStreamID];
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v5 objectForKey:{*(*(&v18 + 1) + 8 * v9), v18}];
        v11 = [v10 ctag];

        if (v11)
        {
          v12 = [v10 ctag];
          v13 = [v10 streamID];
          [v4 setObject:v12 forKey:v13];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v14 = [(MSSubscriber *)self _subscriptionsByStreamID];
  v15 = [v14 mutableCopy];
  newSubscriptionsByStreamID = self->_newSubscriptionsByStreamID;
  self->_newSubscriptionsByStreamID = v15;

  [(MSSubscribeStreamsProtocol *)self->_protocol pollForSubscriptionUpdatesWithAccountAnchors:v4];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)checkForNewAssetCollections
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(MSCupidStateMachine *)self hasDeactivated])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = objc_opt_class();
      v4 = [(MSCupidStateMachine *)self personID];
      v8 = 138543618;
      v9 = v3;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Not checking for new asset collections because we're shutting down.", &v8, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      state = self->_state;
      v8 = 67109120;
      LODWORD(v9) = state;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "checkForNewAssetCollections called, state: %d", &v8, 8u);
    }

    v5 = self->_state;
    if (v5 == 1)
    {
      [(MSDaemon *)self->_daemon retainBusy];
      [(MSSubscriber *)self _checkForNewAssetCollections];
    }

    else if (v5)
    {
      [(MSSubscriber *)self _setHasOutstandingPoll:1];
      self->_checkOneMoreTime = 1;
    }

    else
    {
      [(MSSubscriber *)self _setHasOutstandingPoll:1];
      if ([(MSSubscriber *)self _isAllowedToDownload]&& ![(MSObjectQueue *)self->_retrievalQueue count])
      {
        [(MSSubscriber *)self _changeStateTo:1];
        self->_checkOneMoreTime = 0;
        [(MSSubscriber *)self checkForNewAssetCollections];
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)checkForNewAssetCollectionsIfMissingCtag
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(MSSubscriber *)self _subscriptionsByStreamID];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v14 = self;
    v6 = 0;
    v7 = *v16;
    v8 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v3 objectForKey:v10];
        v12 = [v11 ctag];

        if (!v12)
        {
          v6 = 1;
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v20 = v10;
            _os_log_impl(&dword_245B99000, v8, OS_LOG_TYPE_INFO, "will check for new asset collections due to missing ctag for %@", buf, 0xCu);
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v5);
    if (v6)
    {
      [(MSSubscriber *)v14 checkForNewAssetCollections];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isAllowedToDownload
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(MSSubscriber *)self daemon];
  v4 = [(MSCupidStateMachine *)self personID];
  if (![v3 mayDownloadPersonID:v4])
  {
    goto LABEL_6;
  }

  v5 = MSPlatform();
  if (([v5 policyMayDownload] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v6 = [(MSCupidStateMachine *)self _latestNextActivityDate];
  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [v6 compare:v7];

  if (v8 != 1)
  {
    result = 1;
    goto LABEL_9;
  }

LABEL_7:
  v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v10)
  {
    v11 = objc_opt_class();
    v12 = v11;
    v13 = [(MSCupidStateMachine *)self personID];
    v15 = 138543618;
    v16 = v11;
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Not downloading at this time.", &v15, 0x16u);

    result = 0;
  }

LABEL_9:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)resetSync
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = v3;
    v5 = [(MSCupidStateMachine *)self personID];
    v8 = 138543618;
    v9 = v3;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Subscriber sync state was reset locally.", &v8, 0x16u);
  }

  [(MSSubscriber *)self _stopOutSubscriberState:0 outRetrievalState:0];
  v6 = [(MSSubscriber *)self _subscriptionsByStreamID];
  [v6 removeAllObjects];

  [(MSCupidStateMachine *)self _commitUserManifest];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_setSubscriptionsByStreamID:(id)a3
{
  v4 = a3;
  v5 = [(MSCupidStateMachine *)self _userManifest];
  [v5 setObject:v4 forKey:@"subs"];

  [(MSCupidStateMachine *)self _commitUserManifest];
}

- (id)_subscriptionsByStreamID
{
  v3 = [(MSCupidStateMachine *)self _userManifest];
  v4 = [v3 objectForKey:@"subs"];
  if (!v4)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    [v3 setObject:v4 forKey:@"subs"];
    [(MSCupidStateMachine *)self _commitUserManifest];
  }

  return v4;
}

- (BOOL)_hasOutstandingPoll
{
  v2 = [(MSCupidStateMachine *)self _userManifest];
  v3 = [v2 objectForKey:@"poll"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)_updateMasterManifest
{
  v6 = [(MSCupidStateMachine *)self _latestNextActivityDate];
  if ([(MSSubscriber *)self _hasOutstandingPoll])
  {
    if (v6)
    {
LABEL_3:
      v3 = [(MSCupidStateMachine *)self personID];
      v4 = v6;
      goto LABEL_10;
    }
  }

  else
  {
    if ([(MSObjectQueue *)self->_retrievalQueue count])
    {
      v5 = v6 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      goto LABEL_3;
    }
  }

  v3 = [(MSCupidStateMachine *)self personID];
  v4 = 0;
LABEL_10:
  [MSSubscriber _setMasterNextActivityDate:v4 forPersonID:v3];

  _commitMasterManifest_269();
}

- (void)_serverSideConfigurationDidChange:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACC8];
  v16 = a3;
  v5 = [v4 currentThread];
  v6 = [MEMORY[0x277CCACC8] mainThread];

  if (v5 == v6)
  {
    v8 = [v16 userInfo];

    v9 = [v8 objectForKey:@"personID"];
    v10 = [(MSCupidStateMachine *)self personID];
    v11 = [v9 isEqualToString:v10];

    if (v11)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        v13 = v12;
        v14 = [(MSCupidStateMachine *)self personID];
        *buf = 138543618;
        v18 = v12;
        v19 = 2112;
        v20 = v14;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Server-side configuration has changed. Reading new values.", buf, 0x16u);
      }

      [(MSSubscriber *)self _refreshServerSideConfigurationParameters];
    }

    v15 = *MEMORY[0x277D85DE8];
  }

  else
  {
    [(MSSubscriber *)self performSelectorOnMainThread:sel__serverSideConfigurationDidChange_ withObject:v16 waitUntilDone:0];
    v7 = *MEMORY[0x277D85DE8];
  }
}

- (void)_refreshServerSideConfigurationParameters
{
  v3 = [(MSCupidStateMachine *)self personID];
  self->_targetRetrievalByteCount = [MSServerSideConfigManager longLongValueForParameter:@"mme.streams.client.subDownloadBatchTargetSize" forPersonID:v3 defaultValue:10485760];

  v4 = [(MSCupidStateMachine *)self personID];
  self->_retrievalBatchSize = [MSServerSideConfigManager intValueForParameter:@"mme.streams.client.subMaxDownloadBatchCount" forPersonID:v4 defaultValue:10];

  v5 = [(MSCupidStateMachine *)self personID];
  self->_maxErrorCount = [MSServerSideConfigManager intValueForParameter:@"mme.streams.client.subMaxErrorRetryCount" forPersonID:v5 defaultValue:3];
}

- (void)dealloc
{
  [(MSSubscriber *)self deactivate];
  v3.receiver = self;
  v3.super_class = MSSubscriber;
  [(MSCupidStateMachine *)&v3 dealloc];
}

- (void)deactivate
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [(MSSubscriber *)self stop];
  assetsBeingRetrieved = self->_assetsBeingRetrieved;
  self->_assetsBeingRetrieved = 0;

  reauthProtocol = self->_reauthProtocol;
  self->_reauthProtocol = 0;

  protocol = self->_protocol;
  self->_protocol = 0;

  [(MSSubscribeStorageProtocol *)self->_storageProtocol deactivateRemoveAllFiles:[(MSObjectQueue *)self->_retrievalQueue count]== 0];
  retrievalQueue = self->_retrievalQueue;
  self->_retrievalQueue = 0;

  storageProtocol = self->_storageProtocol;
  self->_storageProtocol = 0;

  newSubscriptionsByStreamID = self->_newSubscriptionsByStreamID;
  self->_newSubscriptionsByStreamID = 0;

  v10.receiver = self;
  v10.super_class = MSSubscriber;
  [(MSCupidStateMachine *)&v10 deactivate];
}

- (MSSubscriber)initWithPersonID:(id)a3 baseURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = MSSubscriber;
  v8 = [(MSCupidStateMachine *)&v23 initWithPersonID:v6];
  if (v8)
  {
    v9 = [[MSSubscribeStreamsProtocol alloc] initWithPersonID:v6 baseURL:v7];
    protocol = v8->_protocol;
    v8->_protocol = v9;

    [(MSSubscribeStreamsProtocol *)v8->_protocol setDelegate:v8];
    v11 = [[MSSubscribeMMCSProtocol alloc] initWithPersonID:v6];
    storageProtocol = v8->_storageProtocol;
    v8->_storageProtocol = v11;

    [(MSSubscribeStorageProtocol *)v8->_storageProtocol setDelegate:v8];
    v13 = [[MSReauthorizationProtocol alloc] initWithPersonID:v6 baseURL:v7];
    reauthProtocol = v8->_reauthProtocol;
    v8->_reauthProtocol = v13;

    [(MSReauthorizationProtocol *)v8->_reauthProtocol setDelegate:v8];
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    assetsBeingRetrieved = v8->_assetsBeingRetrieved;
    v8->_assetsBeingRetrieved = v15;

    v17 = [MSObjectQueue alloc];
    v18 = MSPathSubscriberRetrievalQueueForPersonID(v6);
    v19 = [(MSObjectQueue *)v17 initWithPath:v18];
    retrievalQueue = v8->_retrievalQueue;
    v8->_retrievalQueue = v19;

    v21 = [MEMORY[0x277CCAB98] defaultCenter];
    [v21 addObserver:v8 selector:sel__serverSideConfigurationDidChange_ name:@"MSServerSideConfigChanged" object:0];

    [(MSSubscriber *)v8 _refreshServerSideConfigurationParameters];
  }

  return v8;
}

- (id)ownSubscribedStream
{
  v3 = [(MSSubscriber *)self _subscriptionsByStreamID];
  v4 = [(MSCupidStateMachine *)self personID];
  v5 = [v3 objectForKey:v4];

  return v5;
}

- (id)subscribedStreams
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v4 = [(MSSubscriber *)self _subscriptionsByStreamID];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v6 = [(MSSubscriber *)self _subscriptionsByStreamID];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [v6 objectForKey:*(*(&v14 + 1) + 8 * i)];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)_descriptionForRetrievalState:(int)a3
{
  if (a3 > 4)
  {
    return @"???";
  }

  else
  {
    return off_278E90598[a3];
  }
}

+ (id)_descriptionForState:(int)a3
{
  if (a3 > 2)
  {
    return @"???";
  }

  else
  {
    return off_278E90580[a3];
  }
}

+ (BOOL)isInRetryState
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [_subscriberByID allValues];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) _isInRetryState])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

+ (void)stopAllActivities
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [_subscriberByID allValues];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) stop];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (id)personIDsWithOutstandingActivities
{
  v2 = _masterNextActivityDateByPersonID_296();
  v3 = [v2 allKeys];

  return v3;
}

+ (id)nextActivityDateForPersonID:(id)a3
{
  v3 = a3;
  v4 = _masterNextActivityDateByPersonID_296();
  v5 = [v4 objectForKey:v3];

  return v5;
}

+ (id)nextActivityDate
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = _masterNextActivityDateByPersonID_296();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [v2 objectForKey:*(*(&v13 + 1) + 8 * i)];
        v9 = v8;
        if (!v5 || [v8 compare:v5] == -1)
        {
          v10 = v9;

          v5 = v10;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (void)_setMasterNextActivityDate:(id)a3 forPersonID:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = _masterNextActivityDateByPersonID_296();
    v8 = v7;
    if (v5)
    {
      [v7 setObject:v5 forKey:v6];
    }

    else
    {
      [v7 removeObjectForKey:v6];
    }

    _commitMasterManifest_269();
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v10 = 138543362;
    v11 = objc_opt_class();
    v8 = v11;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - Found empty person ID.", &v10, 0xCu);
LABEL_8:
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)forgetPersonID:(id)a3
{
  v5 = a3;
  v3 = [_subscriberByID objectForKey:?];
  v4 = v3;
  if (v3)
  {
    [v3 forget];
    [_subscriberByID removeObjectForKey:v5];
  }
}

+ (id)_clearInstantiatedSubscribersByPersonID
{
  v2 = _subscriberByID;
  v3 = _subscriberByID;
  v4 = _subscriberByID;
  _subscriberByID = 0;

  return v2;
}

+ (id)subscriberForPersonID:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = _subscriberByID;
    if (!_subscriberByID)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v6 = _subscriberByID;
      _subscriberByID = v5;

      v4 = _subscriberByID;
    }

    v7 = [v4 objectForKey:v3];
    if (!v7)
    {
      v8 = [MSSubscriber alloc];
      v9 = MSPlatform();
      v10 = [v9 baseURLForPersonID:v3];
      v7 = [(MSSubscriber *)v8 initWithPersonID:v3 baseURL:v10];

      [_subscriberByID setObject:v7 forKey:v3];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end