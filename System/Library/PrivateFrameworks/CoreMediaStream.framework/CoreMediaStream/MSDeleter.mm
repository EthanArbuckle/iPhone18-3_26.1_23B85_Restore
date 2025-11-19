@interface MSDeleter
+ (BOOL)isInRetryState;
+ (id)_clearInstantiatedDeletersByPersonID;
+ (id)deleterForPersonID:(id)a3;
+ (id)nextActivityDate;
+ (id)nextActivityDateForPersonID:(id)a3;
+ (id)personIDsWithOutstandingActivities;
+ (void)_setMasterNextActivityDate:(id)a3 forPersonID:(id)a4;
+ (void)abortAllActivities;
+ (void)forgetPersonID:(id)a3;
+ (void)stopAllActivities;
- (BOOL)_isAllowedToDelete;
- (MSDeleter)initWithPersonID:(id)a3 baseURL:(id)a4;
- (id)_abortedError;
- (void)_abort;
- (void)_forget;
- (void)_sendDeleteRequest;
- (void)_stop;
- (void)_updateMasterManifest;
- (void)deactivate;
- (void)dealloc;
- (void)deleteAssetCollections:(id)a3;
- (void)deleteProtocol:(id)a3 didFinishSuccessfulCollections:(id)a4 failedCollections:(id)a5 error:(id)a6;
- (void)deleteProtocol:(id)a3 didReceiveAuthenticationError:(id)a4;
- (void)performOutstandingActivities;
@end

@implementation MSDeleter

- (void)_forget
{
  deleteQueue = self->_deleteQueue;
  self->_deleteQueue = 0;
  MEMORY[0x2821F96F8]();
}

- (void)_abort
{
  v19 = *MEMORY[0x277D85DE8];
  [(MSDeleter *)self _stop];
  v3 = [(MSDeleter *)self _abortedError];
  v4 = [(MSObjectQueue *)self->_deleteQueue allObjectWrappersMaxCount:5];
  while ([v4 count])
  {
    v5 = objc_autoreleasePoolPush();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
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

          delegate = self->_delegate;
          v12 = [*(*(&v14 + 1) + 8 * i) object];
          [(MSDeleterDelegate *)delegate deleter:self didFinishDeletingAssetCollection:v12 error:v3];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [(MSObjectQueue *)self->_deleteQueue removeObjectWrappersFromQueue:v6];
    objc_autoreleasePoolPop(v5);
    v4 = [(MSObjectQueue *)self->_deleteQueue allObjectWrappersMaxCount:5];
  }

  [(MSDeleter *)self _updateMasterManifest];

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_abortedError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = MSCFCopyLocalizedString(@"ERROR_DELETER_ABORTED");
  v4 = [v2 MSErrorWithDomain:@"MSDeleterErrorDomain" code:0 description:v3];

  return v4;
}

- (void)_stop
{
  state = self->_state;
  if (state == 3)
  {
    [(MSDeleteStreamsProtocol *)self->_protocol abort];
    state = self->_state;
  }

  if ((state & 0xFFFFFFFE) == 2)
  {
    [(MSDaemon *)self->_daemon releaseBusy];
  }

  [(NSMutableArray *)self->_requestedDeleteWrappers removeAllObjects];
  self->_state = 0;
}

- (void)deleteProtocol:(id)a3 didFinishSuccessfulCollections:(id)a4 failedCollections:(id)a5 error:(id)a6
{
  v91 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  state = self->_state;
  if (state == 3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v46 = objc_opt_class();
      v47 = v10;
      v48 = v46;
      v49 = [(MSCupidStateMachine *)self personID];
      *buf = 138544130;
      *v85 = v46;
      *&v85[8] = 2112;
      v86 = v49;
      v87 = 2114;
      v88 = v11;
      v89 = 2114;
      v90 = v12;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Received delete response. Successful deletes: %{public}@\n\nFailed deletes: %{public}@", buf, 0x2Au);

      v10 = v47;
    }

    v15 = 0x27EE36000;
    if (v13)
    {
      v16 = [v13 MSIsTemporaryNetworkError];
      v17 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v16)
      {
        if (v17)
        {
          v50 = objc_opt_class();
          v51 = v10;
          v52 = v50;
          v53 = [(MSCupidStateMachine *)self personID];
          *buf = 138543618;
          *v85 = v50;
          *&v85[8] = 2112;
          v86 = v53;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Encountered temporary network issues during deletion. Will retry later.", buf, 0x16u);

          v15 = 0x27EE36000;
          v10 = v51;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          *v85 = v13;
          _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "... Error: %{public}@", buf, 0xCu);
        }

        v18 = 1;
      }

      else
      {
        if (v17)
        {
          v54 = objc_opt_class();
          v62 = v54;
          v55 = [(MSCupidStateMachine *)self personID];
          [v13 MSVerboseDescription];
          v57 = v56 = v10;
          *buf = 138543874;
          *v85 = v54;
          *&v85[8] = 2112;
          v86 = v55;
          v87 = 2114;
          v88 = v57;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Error sending delete request: %{public}@", buf, 0x20u);

          v10 = v56;
          v15 = 0x27EE36000;
        }

        v23 = [MEMORY[0x277CBEB18] array];
        if ([v13 MSNeedsBackoff])
        {
          [(MSCupidStateMachine *)self _backoffStreamsBackoffTimer];
        }

        v66 = v12;
        if ([v13 MSIsCounted])
        {
          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v64 = v10;
          v24 = self->_requestedDeleteWrappers;
          v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v73 objects:v82 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v74;
            do
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v74 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                v29 = *(*(&v73 + 1) + 8 * i);
                [v29 setErrorCount:{objc_msgSend(v29, "errorCount") + 1}];
                if ([v29 errorCount] >= self->_maxErrorCount)
                {
                  [v23 addObject:v29];
                }
              }

              v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v73 objects:v82 count:16];
            }

            while (v26);
          }

          [(MSObjectQueue *)self->_deleteQueue commitErrorCountsForObjectWrappers:self->_requestedDeleteWrappers];
          v10 = v64;
          v12 = v66;
          v15 = 0x27EE36000;
        }

        if ([v23 count])
        {
          v30 = v10;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v58 = objc_opt_class();
            v59 = v58;
            v60 = [(MSCupidStateMachine *)self personID];
            v61 = [v23 count];
            *buf = 138543874;
            *v85 = v58;
            *&v85[8] = 2112;
            v86 = v60;
            v87 = 2048;
            v88 = v61;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Giving up sending %lu delete requests.", buf, 0x20u);
          }

          [(NSMutableArray *)self->_requestedDeleteWrappers removeObjectsInArray:v23];
          [(MSObjectQueue *)self->_deleteQueue removeObjectWrappersFromQueue:v23];
          [(MSDeleter *)self _updateMasterManifest];
          v31 = [MSObjectWrapper objectsFromWrappers:v23];
          v69 = 0u;
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v32 = [v31 countByEnumeratingWithState:&v69 objects:v81 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v70;
            do
            {
              for (j = 0; j != v33; ++j)
              {
                if (*v70 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                [(MSDeleterDelegate *)self->_delegate deleter:self didFinishDeletingAssetCollection:*(*(&v69 + 1) + 8 * j) error:v13];
              }

              v33 = [v31 countByEnumeratingWithState:&v69 objects:v81 count:16];
            }

            while (v33);
          }

          v10 = v30;
          v12 = v66;
          v15 = 0x27EE36000;
        }

        v18 = 0;
      }

      v36 = 0x27EE36000;
    }

    else
    {
      v63 = v10;
      v65 = v12;
      v67 = v11;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v19 = objc_opt_class();
        v20 = v19;
        v21 = [(MSCupidStateMachine *)self personID];
        v22 = [(NSMutableArray *)self->_requestedDeleteWrappers count];
        *buf = 138543874;
        *v85 = v19;
        *&v85[8] = 2112;
        v86 = v21;
        v87 = 2048;
        v88 = v22;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ Successfully sent %lu delete requests.", buf, 0x20u);
      }

      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v37 = self->_requestedDeleteWrappers;
      v38 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v77 objects:v83 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v78;
        do
        {
          for (k = 0; k != v39; ++k)
          {
            if (*v78 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = [*(*(&v77 + 1) + 8 * k) object];
            [(MSDeleterDelegate *)self->_delegate deleter:self didFinishDeletingAssetCollection:v42 error:0];
          }

          v39 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v77 objects:v83 count:16];
        }

        while (v39);
      }

      v36 = 0x27EE36000uLL;
      [(MSObjectQueue *)self->_deleteQueue removeObjectWrappersFromQueue:self->_requestedDeleteWrappers];
      [(NSMutableArray *)self->_requestedDeleteWrappers removeAllObjects];
      v15 = 0x27EE36000uLL;
      daemon = self->_daemon;
      v44 = [(MSCupidStateMachine *)self personID];
      [(MSMediaStreamDaemon *)daemon didReceiveAuthenticationSuccessForPersonID:v44];

      [(MSCupidStateMachine *)self _resetStreamsBackoffTimer];
      v18 = 0;
      v10 = v63;
      v12 = v65;
      v11 = v67;
    }

    if ([*(&self->super.super.isa + *(v36 + 620)) count])
    {
      self->_state = 1;
      if ((v18 & 1) == 0)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __83__MSDeleter_deleteProtocol_didFinishSuccessfulCollections_failedCollections_error___block_invoke;
        block[3] = &unk_278E926D8;
        block[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }

    else
    {
      self->_state = 0;
    }

    [*(&self->super.super.isa + *(v15 + 644)) releaseBusy];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109376;
    *v85 = 3;
    *&v85[4] = 1024;
    *&v85[6] = state;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Wrong state detected. Expected %d, actually %d. Not serving message.", buf, 0xEu);
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (void)deleteProtocol:(id)a3 didReceiveAuthenticationError:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = objc_opt_class();
    v10 = v9;
    v11 = [(MSCupidStateMachine *)self personID];
    v12 = 138543874;
    v13 = v9;
    v14 = 2112;
    v15 = v11;
    v16 = 2114;
    v17 = v5;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Found authentication error. Will try again later. %{public}@", &v12, 0x20u);
  }

  [(MSCupidStateMachine *)self _resetStreamsBackoffTimer];
  self->_state = 1;
  daemon = self->_daemon;
  v7 = [(MSCupidStateMachine *)self personID];
  [(MSMediaStreamDaemon *)daemon didReceiveAuthenticationFailureForPersonID:v7];

  [(MSDaemon *)self->_daemon releaseBusy];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_sendDeleteRequest
{
  v16 = *MEMORY[0x277D85DE8];
  [(NSMutableArray *)self->_requestedDeleteWrappers removeAllObjects];
  requestedDeleteWrappers = self->_requestedDeleteWrappers;
  v4 = [(MSObjectQueue *)self->_deleteQueue objectWrappersWithZeroSizeMaxCount:self->_batchSize];
  [(NSMutableArray *)requestedDeleteWrappers addObjectsFromArray:v4];

  if ([(NSMutableArray *)self->_requestedDeleteWrappers count])
  {
    self->_state = 3;
    protocol = self->_protocol;
    v11 = [MSObjectWrapper objectsFromWrappers:self->_requestedDeleteWrappers];
    [(MSDeleteStreamsProtocol *)protocol sendDeletionRequestForAssetCollections:?];
    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = v7;
      v9 = [(MSCupidStateMachine *)self personID];
      *buf = 138543618;
      v13 = v7;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ No outstanding deletes to send.", buf, 0x16u);
    }

    [(MSDeleter *)self _updateMasterManifest];
    self->_state = 0;
    [(MSDaemon *)self->_daemon releaseBusy];
    v10 = *MEMORY[0x277D85DE8];
  }
}

- (void)performOutstandingActivities
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
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Not deleting because we're shutting down.", &v7, 0x16u);
    }

LABEL_9:
    v6 = *MEMORY[0x277D85DE8];
    return;
  }

  if (self->_state > 1u || ![(MSDeleter *)self _isAllowedToDelete])
  {
    goto LABEL_9;
  }

  [(MSDaemon *)self->_daemon retainBusy];
  self->_state = 2;
  v5 = *MEMORY[0x277D85DE8];

  [(MSDeleter *)self _sendDeleteRequest];
}

- (void)deleteAssetCollections:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = [(MSCupidStateMachine *)self personID];
    *buf = 138543874;
    v23 = v5;
    v24 = 2112;
    v25 = v7;
    v26 = 2114;
    v27 = v4;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ Deleting asset collections: %{public}@", buf, 0x20u);
  }

  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [MSObjectWrapper wrapperWithObject:*(*(&v17 + 1) + 8 * v13) size:0];
        [v8 addObject:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  [(MSObjectQueue *)self->_deleteQueue appendObjectWrappers:v8];
  [(MSDeleter *)self _updateMasterManifest];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__MSDeleter_deleteAssetCollections___block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isAllowedToDelete
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = MSPlatform();
  v4 = objc_opt_respondsToSelector();

  v5 = MSPlatform();
  v6 = v5;
  if (v4)
  {
    v7 = [v5 policyMaySendDelete];

    if ((v7 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = [v5 policyMayUpload];

    if (!v8)
    {
      goto LABEL_6;
    }
  }

  v9 = [(MSCupidStateMachine *)self _latestNextActivityDate];
  v10 = [MEMORY[0x277CBEAA8] date];
  v11 = [v9 compare:v10];

  if (v11 != 1)
  {
    result = 1;
    goto LABEL_9;
  }

LABEL_6:
  v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v12)
  {
    v14 = objc_opt_class();
    v15 = v14;
    v16 = [(MSCupidStateMachine *)self personID];
    v18 = 138543618;
    v19 = v14;
    v20 = 2112;
    v21 = v16;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Not sending delete request at this time.", &v18, 0x16u);

    result = 0;
  }

LABEL_9:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_updateMasterManifest
{
  v7 = [(MSCupidStateMachine *)self _latestNextActivityDate];
  v3 = [(MSObjectQueue *)self->_deleteQueue count];
  v4 = [(MSCupidStateMachine *)self personID];
  if (v3)
  {
    v5 = v7 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v7;
  }

  [MSDeleter _setMasterNextActivityDate:v6 forPersonID:v4];

  _commitMasterManifest_3250();
}

- (void)dealloc
{
  [(MSDeleter *)self deactivate];
  v3.receiver = self;
  v3.super_class = MSDeleter;
  [(MSCupidStateMachine *)&v3 dealloc];
}

- (void)deactivate
{
  [(MSDeleter *)self stop];
  protocol = self->_protocol;
  self->_protocol = 0;

  deleteQueue = self->_deleteQueue;
  self->_deleteQueue = 0;

  requestedDeleteWrappers = self->_requestedDeleteWrappers;
  self->_requestedDeleteWrappers = 0;

  v6.receiver = self;
  v6.super_class = MSDeleter;
  [(MSCupidStateMachine *)&v6 deactivate];
}

- (MSDeleter)initWithPersonID:(id)a3 baseURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = MSDeleter;
  v8 = [(MSCupidStateMachine *)&v18 initWithPersonID:v6];
  if (v8)
  {
    v9 = [MSObjectQueue alloc];
    v10 = MSPathDeleteQueueForPersonID(v6);
    v11 = [(MSObjectQueue *)v9 initWithPath:v10];
    deleteQueue = v8->_deleteQueue;
    v8->_deleteQueue = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    requestedDeleteWrappers = v8->_requestedDeleteWrappers;
    v8->_requestedDeleteWrappers = v13;

    v15 = [[MSDeleteStreamsProtocol alloc] initWithPersonID:v6 baseURL:v7];
    protocol = v8->_protocol;
    v8->_protocol = v15;

    [(MSStreamsProtocol *)v8->_protocol setDelegate:v8];
    v8->_batchSize = 10;
    v8->_maxErrorCount = 3;
  }

  return v8;
}

+ (BOOL)isInRetryState
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [_deleterByID allValues];
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

+ (void)abortAllActivities
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [_deleterByID allValues];
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

        [*(*(&v8 + 1) + 8 * v6++) abort];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)stopAllActivities
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [_deleterByID allValues];
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
  v2 = _masterNextActivityDateByPersonID_3275();
  v3 = [v2 allKeys];

  return v3;
}

+ (id)nextActivityDateForPersonID:(id)a3
{
  v3 = a3;
  v4 = _masterNextActivityDateByPersonID_3275();
  v5 = [v4 objectForKey:v3];

  return v5;
}

+ (id)nextActivityDate
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = _masterNextActivityDateByPersonID_3275();
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
    v7 = _masterNextActivityDateByPersonID_3275();
    v8 = v7;
    if (v5)
    {
      [v7 setObject:v5 forKey:v6];
    }

    else
    {
      [v7 removeObjectForKey:v6];
    }

    _commitMasterManifest_3250();
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
  v3 = [_deleterByID objectForKey:?];
  v4 = v3;
  if (v3)
  {
    [v3 forget];
    [_deleterByID removeObjectForKey:v5];
  }
}

+ (id)_clearInstantiatedDeletersByPersonID
{
  v2 = _deleterByID;
  v3 = _deleterByID;
  v4 = _deleterByID;
  _deleterByID = 0;

  return v2;
}

+ (id)deleterForPersonID:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = _deleterByID;
    if (!_deleterByID)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v6 = _deleterByID;
      _deleterByID = v5;

      v4 = _deleterByID;
    }

    v7 = [v4 objectForKey:v3];
    if (!v7)
    {
      v8 = [MSDeleter alloc];
      v9 = MSPlatform();
      v10 = [v9 baseURLForPersonID:v3];
      v7 = [(MSDeleter *)v8 initWithPersonID:v3 baseURL:v10];

      [_deleterByID setObject:v7 forKey:v3];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end