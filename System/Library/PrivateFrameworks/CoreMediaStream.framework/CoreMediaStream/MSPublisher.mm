@interface MSPublisher
+ (BOOL)isInRetryState;
+ (id)_clearInstantiatedPublishersByPersonID;
+ (id)nextActivityDate;
+ (id)nextActivityDateForPersonID:(id)a3;
+ (id)personIDsWithOutstandingActivities;
+ (id)publisherForPersonID:(id)a3;
+ (void)_setMasterNextActivityDate:(id)a3 forPersonID:(id)a4;
+ (void)forgetPersonID:(id)a3;
+ (void)stopAllActivities;
- (BOOL)_isAllowedToUpload;
- (BOOL)_verifyAssetFile:(id)a3;
- (BOOL)dequeueAssetCollectionWithGUIDs:(id)a3 outError:(id *)a4;
- (BOOL)enqueueAssetCollections:(id)a3 outError:(id *)a4;
- (MSPublisher)initWithPersonID:(id)a3 baseURL:(id)a4;
- (id)_abortedError;
- (id)_checkAssetCollectionFiles:(id)a3;
- (id)_checkObjectWrappers:(id)a3;
- (id)_collectionWithNoDerivatives:(id)a3;
- (id)_invalidStreamsResponseErrorUnderlyingError:(id)a3;
- (int)_stop;
- (int)publishStorageProtocol:(id)a3 didRequestFDForAsset:(id)a4;
- (void)_abort;
- (void)_addAssetToFileHashMap:(id)a3;
- (void)_categorizeError:(id)a3 setOutIsIgnorable:(BOOL *)a4 setOutIsCounted:(BOOL *)a5 setOutIsFatal:(BOOL *)a6 setOutNeedsBackoff:(BOOL *)a7 setOutIsTemporary:(BOOL *)a8 setOutIsTokenAuth:(BOOL *)a9 setOutIsAuthError:(BOOL *)a10;
- (void)_didFinishUsingAssetCollections:(id)a3;
- (void)_forget;
- (void)_quarantineOrDiscardWrappers:(id)a3 withError:(id)a4;
- (void)_refreshServerSideConfiguredParameters;
- (void)_registerAllAssetsForWrapper:(id)a3;
- (void)_registerAsset:(id)a3;
- (void)_removeAssetFromFileHashMap:(id)a3;
- (void)_removeAssetsInAssetCollectionWrappersFromAssetMap:(id)a3;
- (void)_requestDerivatives;
- (void)_sendFilesToMMCS;
- (void)_sendMetadataToStreams;
- (void)_sendUploadComplete;
- (void)_serverSideConfigurationDidChange:(id)a3;
- (void)_updateMasterManifest;
- (void)deactivate;
- (void)dealloc;
- (void)publish;
- (void)publishStorageProtocol:(id)a3 didFinishUploadingAsset:(id)a4 error:(id)a5;
- (void)publishStorageProtocolDidFinishPublishingAllAssets:(id)a3;
- (void)publishStreamsProtocol:(id)a3 didFinishSendingUploadCompleteError:(id)a4;
- (void)publishStreamsProtocol:(id)a3 didFinishUploadingMetadataResponse:(id)a4 error:(id)a5;
- (void)publishStreamsProtocol:(id)a3 didReceiveAuthenticationError:(id)a4;
- (void)reenqueueQuarantinedAssetCollections;
- (void)submitAssetCollectionsForPublication:(id)a3 skipAssetCollections:(id)a4;
@end

@implementation MSPublisher

- (void)_forget
{
  uploadQueue = self->_uploadQueue;
  self->_uploadQueue = 0;

  storageProtocol = self->_storageProtocol;
  self->_storageProtocol = 0;
}

- (void)_abort
{
  [(MSPublisher *)self _stop];
  v15 = [(MSPublisher *)self _abortedError];
  v3 = [(MSObjectQueue *)self->_uploadQueue allObjectWrappersMaxCount:5];
  if ([v3 count])
  {
    do
    {
      v4 = objc_autoreleasePoolPush();
      delegate = self->_delegate;
      if (objc_opt_respondsToSelector())
      {
        v6 = self->_delegate;
        v7 = [MSObjectWrapper objectsFromWrappers:v3];
        [(MSPublisherDelegate *)v6 publisher:self didEncounterError:v15 publishingAssetCollections:v7];
      }

      [(MSObjectQueue *)self->_uploadQueue removeObjectWrappersFromQueue:v3];
      v8 = [(MSObjectQueue *)self->_uploadQueue allObjectWrappersMaxCount:5];

      objc_autoreleasePoolPop(v4);
      v3 = v8;
    }

    while ([v8 count]);
  }

  else
  {
    v8 = v3;
  }

  v9 = [(MSObjectQueue *)self->_quarantinedQueue allObjectWrappersMaxCount:5];

  if ([v9 count])
  {
    do
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self->_delegate;
      if (objc_opt_respondsToSelector())
      {
        v12 = self->_delegate;
        v13 = [MSObjectWrapper objectsFromWrappers:v9];
        [(MSPublisherDelegate *)v12 publisher:self didEncounterError:v15 publishingAssetCollections:v13];
      }

      [(MSObjectQueue *)self->_quarantinedQueue removeObjectWrappersFromQueue:v9];
      v14 = [(MSObjectQueue *)self->_quarantinedQueue allObjectWrappersMaxCount:5];

      objc_autoreleasePoolPop(v10);
      v9 = v14;
    }

    while ([v14 count]);
  }

  else
  {
    v14 = v9;
  }

  [(MSPublisher *)self _updateMasterManifest];
}

- (id)_abortedError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = MSCFCopyLocalizedString(@"ERROR_PUBLISHER_ABORTED");
  v4 = [v2 MSErrorWithDomain:@"MSPublisherErrorDomain" code:7 description:v3];

  return v4;
}

- (int)_stop
{
  state = self->_state;
  if (state == 6 || state == 12)
  {
    v5 = &OBJC_IVAR___MSPublisher__protocol;
  }

  else
  {
    if (state != 9)
    {
      goto LABEL_10;
    }

    v5 = &OBJC_IVAR___MSPublisher__storageProtocol;
  }

  [*(&self->super.super.isa + *v5) abort];
  state = self->_state;
LABEL_10:
  v6 = state > 0xC;
  v7 = (1 << state) & 0x1B6C;
  if (!v6 && v7 != 0)
  {
    [(MSDaemon *)self->_daemon releaseBusy];
  }

  [(NSMutableArray *)self->_requestAuthQueue removeAllObjects];
  [(NSMutableArray *)self->_sendingQueue removeAllObjects];
  [(NSMutableDictionary *)self->_fileHashToAssetMap removeAllObjects];
  result = self->_state;
  self->_state = 0;
  return result;
}

- (void)publishStreamsProtocol:(id)a3 didFinishSendingUploadCompleteError:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  state = self->_state;
  if (state == 12)
  {
    v10 = 0x27EE36000uLL;
    if (v7)
    {
      if ([v7 MSIsTemporaryNetworkError])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v11 = objc_opt_class();
          v12 = v11;
          v13 = [(MSCupidStateMachine *)self personID];
          *buf = 138543618;
          *v46 = v11;
          *&v46[8] = 2112;
          v47 = v13;
          _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Encountered temporary error. Will try again later...", buf, 0x16u);
        }

        self->_state = 10;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v29 = objc_opt_class();
          v30 = v29;
          v31 = [(MSCupidStateMachine *)self personID];
          v32 = [v8 MSVerboseDescription];
          *buf = 138543874;
          *v46 = v29;
          *&v46[8] = 2112;
          v47 = v31;
          v48 = 2114;
          v49 = v32;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Error sending upload complete: %{public}@", buf, 0x20u);

          v10 = 0x27EE36000uLL;
        }

        if ([v8 MSNeedsBackoff])
        {
          [(MSCupidStateMachine *)self _backoffStreamsBackoffTimer];
        }

        if ([v8 MSIsCounted])
        {
          v38 = v6;
          v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](self->_sendingQueue, "count")}];
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v22 = self->_sendingQueue;
          v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v41 objects:v52 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v42;
            do
            {
              for (i = 0; i != v24; ++i)
              {
                if (*v42 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = *(*(&v41 + 1) + 8 * i);
                [v27 setErrorCount:{objc_msgSend(v27, "errorCount") + 1}];
                if ([v27 errorCount] >= self->_maxErrorCount)
                {
                  [v21 addObject:v27];
                }
              }

              v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v41 objects:v52 count:16];
            }

            while (v24);
          }

          [(MSObjectQueue *)self->_uploadQueue commitErrorCountsForObjectWrappers:self->_sendingQueue];
          v6 = v38;
          v10 = 0x27EE36000uLL;
          if ([v21 count])
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              v33 = objc_opt_class();
              v37 = v33;
              v34 = [(MSCupidStateMachine *)self personID];
              v36 = [v21 count];
              v35 = [v8 MSVerboseDescription];
              *buf = 138544130;
              *v46 = v33;
              *&v46[8] = 2112;
              v47 = v34;
              v48 = 2048;
              v49 = v36;
              v50 = 2114;
              v51 = v35;
              _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Failed to send upload complete for %lu asset collections. Error: %{public}@", buf, 0x2Au);

              v10 = 0x27EE36000;
            }

            [(MSObjectQueue *)self->_uploadQueue removeObjectWrappersFromQueue:v21];
            [(MSPublisher *)self _updateMasterManifest];
            [(MSPublisher *)self _quarantineOrDiscardWrappers:v21 withError:v8];
          }
        }

        [(NSMutableArray *)self->_sendingQueue removeAllObjects];
        self->_state = 4;
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __74__MSPublisher_publishStreamsProtocol_didFinishSendingUploadCompleteError___block_invoke;
        v40[3] = &unk_278E926D8;
        v40[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], v40);
      }
    }

    else
    {
      daemon = self->_daemon;
      v15 = [(MSCupidStateMachine *)self personID];
      [(MSMediaStreamDaemon *)daemon didReceiveAuthenticationSuccessForPersonID:v15];

      [(MSCupidStateMachine *)self _resetStreamsBackoffTimer];
      v16 = [MSObjectWrapper objectsFromWrappers:self->_sendingQueue];
      delegate = self->_delegate;
      if (objc_opt_respondsToSelector())
      {
        [(MSPublisherDelegate *)self->_delegate publisher:self didFinishPublishingAssetCollections:v16];
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v18 = objc_opt_class();
        v19 = v18;
        v20 = [(MSCupidStateMachine *)self personID];
        *buf = 138543618;
        *v46 = v18;
        *&v46[8] = 2112;
        v47 = v20;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ Finished sending upload complete.", buf, 0x16u);

        v10 = 0x27EE36000uLL;
      }

      [(MSPublisher *)self _didFinishUsingAssetCollections:v16];
      [(MSObjectQueue *)self->_uploadQueue removeObjectWrappersFromQueue:self->_sendingQueue];
      [(MSPublisher *)self _updateMasterManifest];
      [(NSMutableArray *)self->_sendingQueue removeAllObjects];
      self->_state = 4;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __74__MSPublisher_publishStreamsProtocol_didFinishSendingUploadCompleteError___block_invoke_115;
      block[3] = &unk_278E926D8;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    [*(&self->super.super.isa + *(v10 + 132)) releaseBusy];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109376;
    *v46 = 12;
    *&v46[4] = 1024;
    *&v46[6] = state;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Wrong state detected. Expected %d, actually %d. Not serving message.", buf, 0xEu);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_sendUploadComplete
{
  self->_state = 12;
  protocol = self->_protocol;
  v3 = [MSObjectWrapper objectsFromWrappers:self->_sendingQueue];
  [(MSPublishStreamsProtocol *)protocol sendUploadCompleteForAssetCollections:v3];
}

- (void)publishStorageProtocolDidFinishPublishingAllAssets:(id)a3
{
  v157 = *MEMORY[0x277D85DE8];
  v141 = 0;
  v140 = 0;
  v139 = 0;
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  obj = self->_sendingQueue;
  v108 = [(NSMutableArray *)obj countByEnumeratingWithState:&v135 objects:v156 count:16];
  v4 = 0;
  v5 = 0;
  if (v108)
  {
    v106 = *v136;
    do
    {
      v6 = 0;
      do
      {
        if (*v136 != v106)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [*(*(&v135 + 1) + 8 * v6) object];
        v8 = [v7 masterAsset];
        v9 = [v8 error];

        [(MSPublisher *)self _categorizeError:v9 setOutIsIgnorable:&v141 + 1 setOutIsCounted:&v141 setOutIsFatal:&v140 + 1 setOutNeedsBackoff:&v140 setOutIsTemporary:&v139 + 1 setOutIsTokenAuth:0 setOutIsAuthError:&v139];
        v10 = [v9 MSMMCSRetryAfterDate];
        if (v10)
        {
          [(MSCupidStateMachine *)self _didReceiveMMCSRetryAfterDate:v10];
        }

        v110 = v10;
        v113 = v7;
        v115 = v6;
        v4 |= v9 != 0;
        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v11 = [v7 derivedAssets];
        v12 = [v11 countByEnumeratingWithState:&v131 objects:v155 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v132;
          v5 = v9;
          do
          {
            v15 = 0;
            v16 = v5;
            do
            {
              if (*v132 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v5 = [*(*(&v131 + 1) + 8 * v15) error];

              [(MSPublisher *)self _categorizeError:v5 setOutIsIgnorable:&v141 + 1 setOutIsCounted:&v141 setOutIsFatal:&v140 + 1 setOutNeedsBackoff:&v140 setOutIsTemporary:&v139 + 1 setOutIsTokenAuth:0 setOutIsAuthError:&v139];
              v17 = [v5 MSMMCSRetryAfterDate];
              if (v17)
              {
                [(MSCupidStateMachine *)self _didReceiveMMCSRetryAfterDate:v17];
              }

              v4 |= v5 != 0;

              ++v15;
              v16 = v5;
            }

            while (v13 != v15);
            v13 = [v11 countByEnumeratingWithState:&v131 objects:v155 count:16];
          }

          while (v13);
        }

        else
        {
          v5 = v9;
        }

        v6 = v115 + 1;
      }

      while (v115 + 1 != v108);
      v108 = [(NSMutableArray *)obj countByEnumeratingWithState:&v135 objects:v156 count:16];
    }

    while (v108);
  }

  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v18 = self->_tempFiles;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v127 objects:v154 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v128;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v128 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v127 + 1) + 8 * i);
        v24 = [MEMORY[0x277CCAA00] defaultManager];
        [v24 removeItemAtPath:v23 error:0];
      }

      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v127 objects:v154 count:16];
    }

    while (v20);
  }

  [(NSMutableArray *)self->_tempFiles removeAllObjects];
  [(NSMutableDictionary *)self->_fileHashToAssetMap removeAllObjects];
  v25 = [(NSMutableArray *)self->_sendingQueue count];
  sendingQueueCount = self->_sendingQueueCount;
  if (v25 == sendingQueueCount)
  {
    if ((v4 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v68 = objc_opt_class();
        v69 = v68;
        v70 = [(MSCupidStateMachine *)self personID];
        v71 = [(NSMutableArray *)self->_sendingQueue count];
        *buf = 138543874;
        v144 = v68;
        v145 = 2112;
        v146 = v70;
        v147 = 2048;
        v148 = v71;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ Successfully uploaded %lu asset collections.", buf, 0x20u);
      }

      daemon = self->_daemon;
      v73 = [(MSCupidStateMachine *)self personID];
      [(MSMediaStreamDaemon *)daemon didReceiveAuthenticationSuccessForPersonID:v73];

      [(MSCupidStateMachine *)self _resetMMCSBackoffTimer];
      self->_state = 10;
      [(MSDaemon *)self->_daemon releaseBusy];
      goto LABEL_91;
    }

    if ((v141 & 0x100) != 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v27 = objc_opt_class();
        v28 = v27;
        v29 = [(MSCupidStateMachine *)self personID];
        v30 = [(NSMutableArray *)self->_sendingQueue count];
        *buf = 138543874;
        v144 = v27;
        v145 = 2112;
        v146 = v29;
        v147 = 2048;
        v148 = v30;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Ignoring errors for %lu asset collections.", buf, 0x20u);
      }

      goto LABEL_92;
    }

    if ((v139 & 0x100) != 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v100 = objc_opt_class();
        v101 = v100;
        v102 = [(MSCupidStateMachine *)self personID];
        *buf = 138543618;
        v144 = v100;
        v145 = 2112;
        v146 = v102;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Encountered temporary network issues during upload. Will try again later...", buf, 0x16u);
      }

      self->_state = 7;
      [(MSDaemon *)self->_daemon releaseBusy];
      goto LABEL_92;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v75 = objc_opt_class();
      v76 = v75;
      v77 = [(MSCupidStateMachine *)self personID];
      v78 = self->_sendingQueueCount;
      v79 = [(NSMutableArray *)self->_sendingQueue count];
      *buf = 138544130;
      v144 = v75;
      v145 = 2112;
      v146 = v77;
      v147 = 2048;
      v148 = v78;
      v149 = 2048;
      v150 = v79;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Found mismatch between expecting sending queue count and actual count. Expected %lu, actually %lu.", buf, 0x2Au);
    }

    v31 = MEMORY[0x277CCA9B8];
    v32 = MSCFCopyLocalizedString(@"ERROR_PUBLISHER_SEND_QUEUE_MISMATCH");
    v33 = [v31 MSErrorWithDomain:@"MSPublisherErrorDomain" code:8 description:v32];

    v139 = 0;
    LOBYTE(v140) = 0;
    v5 = v33;
    v141 = 1;
  }

  if (v139 != 1)
  {
    if (v140 == 1)
    {
      [(MSCupidStateMachine *)self _backoffMMCSBackoffTimer];
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v84 = objc_opt_class();
      v85 = v84;
      v86 = [(MSCupidStateMachine *)self personID];
      v87 = [(NSMutableArray *)self->_sendingQueue count];
      *buf = 138543874;
      v144 = v84;
      v145 = 2112;
      v146 = v86;
      v147 = 2048;
      v148 = v87;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Error uploading %lu asset collections.", buf, 0x20u);
    }

    if (v141 != 1)
    {
LABEL_80:
      self->_state = 4;
      [(NSMutableArray *)self->_sendingQueue removeAllObjects];
      v36 = 0;
      goto LABEL_81;
    }

    v103 = sendingQueueCount;
    v104 = v25;
    v37 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](self->_sendingQueue, "count")}];
    v114 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](self->_sendingQueue, "count")}];
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v116 = self->_sendingQueue;
    v38 = [(NSMutableArray *)v116 countByEnumeratingWithState:&v123 objects:v153 count:16];
    v107 = v37;
    if (!v38)
    {
      goto LABEL_62;
    }

    v39 = v38;
    v40 = *v124;
LABEL_47:
    v41 = 0;
    while (1)
    {
      if (*v124 != v40)
      {
        objc_enumerationMutation(v116);
      }

      v42 = *(*(&v123 + 1) + 8 * v41);
      v43 = [v42 object];
      v44 = [v43 masterAsset];
      v45 = [v44 error];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v48 = objc_opt_class();
        v111 = v48;
        v49 = [(MSCupidStateMachine *)self personID];
        v109 = [v45 domain];
        v50 = [v45 code];
        *buf = 138544386;
        v144 = v48;
        v145 = 2112;
        v146 = v49;
        v51 = v49;
        v147 = 2114;
        v148 = v43;
        v149 = 2114;
        v150 = v109;
        v151 = 2048;
        v152 = v50;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ error uploading %{public}@: %{public}@ %ld.", buf, 0x34u);

        v37 = v107;
      }

      if (HIBYTE(v140) == 1)
      {
        break;
      }

      [v42 setErrorCount:{objc_msgSend(v42, "errorCount") + 1}];
      v47 = [v42 errorCount];
      v46 = v37;
      if (v47 >= self->_maxErrorCount)
      {
        goto LABEL_59;
      }

      if ([v45 MSIsRegistrationError])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v52 = objc_opt_class();
          v112 = v52;
          v53 = [(MSCupidStateMachine *)self personID];
          *buf = 138543874;
          v144 = v52;
          v145 = 2112;
          v146 = v53;
          v147 = 2114;
          v148 = v43;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ needs to re-register %{public}@.", buf, 0x20u);

          v37 = v107;
        }

        [(MSPublisher *)self _registerAllAssetsForWrapper:v42];
        v46 = v114;
        goto LABEL_59;
      }

LABEL_60:

      if (v39 == ++v41)
      {
        v39 = [(NSMutableArray *)v116 countByEnumeratingWithState:&v123 objects:v153 count:16];
        if (!v39)
        {
LABEL_62:

          v54 = v114;
          if ([v114 count])
          {
            [(MSObjectQueue *)self->_uploadQueue commitObjectsWrappers:v114];
          }

          [(MSObjectQueue *)self->_uploadQueue commitErrorCountsForObjectWrappers:self->_sendingQueue];
          if ([v37 count])
          {
            [(MSObjectQueue *)self->_uploadQueue removeObjectWrappersFromQueue:v37];
            [(MSPublisher *)self _updateMasterManifest];
            v121 = 0u;
            v122 = 0u;
            v119 = 0u;
            v120 = 0u;
            v117 = v37;
            v55 = [v117 countByEnumeratingWithState:&v119 objects:v142 count:16];
            if (v55)
            {
              v56 = v55;
              v57 = *v120;
              do
              {
                for (j = 0; j != v56; ++j)
                {
                  if (*v120 != v57)
                  {
                    objc_enumerationMutation(v117);
                  }

                  v59 = *(*(&v119 + 1) + 8 * j);
                  v60 = [v59 object];
                  v61 = [v60 masterAsset];
                  v62 = [v61 error];

                  v63 = [MEMORY[0x277CBEA60] arrayWithObject:v59];
                  [(MSPublisher *)self _quarantineOrDiscardWrappers:v63 withError:v62];
                }

                v56 = [v117 countByEnumeratingWithState:&v119 objects:v142 count:16];
              }

              while (v56);
            }

            v37 = v107;
            v54 = v114;
          }

          if ([v37 count] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v91 = objc_opt_class();
            v92 = v91;
            v93 = [(MSCupidStateMachine *)self personID];
            v94 = [v37 count];
            *buf = 138543874;
            v144 = v91;
            v145 = 2112;
            v146 = v93;
            v147 = 2048;
            v148 = v94;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Gave up uploading %lu asset collections.", buf, 0x20u);
          }

          v64 = [(NSMutableArray *)self->_sendingQueue count];
          sendingQueueCount = v103;
          v25 = v104;
          if (v64 != [v37 count] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v95 = objc_opt_class();
            v96 = v95;
            v97 = [(MSCupidStateMachine *)self personID];
            v98 = [(NSMutableArray *)self->_sendingQueue count];
            v99 = v98 - [v107 count];
            v37 = v107;
            *buf = 138543874;
            v144 = v95;
            v145 = 2112;
            v146 = v97;
            v147 = 2048;
            v148 = v99;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Will retry uploading %ld asset collections.", buf, 0x20u);
          }

          goto LABEL_80;
        }

        goto LABEL_47;
      }
    }

    [v42 setErrorCount:self->_maxErrorCount];
    v46 = v37;
LABEL_59:
    [v46 addObject:v42];
    goto LABEL_60;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v80 = objc_opt_class();
    v81 = v80;
    v82 = [(MSCupidStateMachine *)self personID];
    v83 = [(NSMutableArray *)self->_sendingQueue count];
    *buf = 138543874;
    v144 = v80;
    v145 = 2112;
    v146 = v82;
    v147 = 2048;
    v148 = v83;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Received auth error. Resending metadata for %lu asset collections.", buf, 0x20u);
  }

  [(NSMutableArray *)self->_sendingQueue removeAllObjects];
  self->_state = 4;
  v34 = self->_daemon;
  v35 = [(MSCupidStateMachine *)self personID];
  [(MSMediaStreamDaemon *)v34 didReceiveAuthenticationFailureForPersonID:v35];

  v36 = 1;
LABEL_81:
  if (v25 != sendingQueueCount)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v88 = objc_opt_class();
      v89 = v88;
      v90 = [(MSCupidStateMachine *)self personID];
      *buf = 138543618;
      v144 = v88;
      v145 = 2112;
      v146 = v90;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Detected an inconsistent state.", buf, 0x16u);
    }

    v65 = MSPlatform();
    v66 = objc_opt_respondsToSelector();

    if (v66)
    {
      v67 = MSPlatform();
      [v67 didDetectUnrecoverableCondition];
    }
  }

  [(MSDaemon *)self->_daemon releaseBusy];
  if ((v36 & 1) == 0)
  {
LABEL_91:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__MSPublisher_publishStorageProtocolDidFinishPublishingAllAssets___block_invoke;
    block[3] = &unk_278E926D8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

LABEL_92:

  v74 = *MEMORY[0x277D85DE8];
}

- (void)_categorizeError:(id)a3 setOutIsIgnorable:(BOOL *)a4 setOutIsCounted:(BOOL *)a5 setOutIsFatal:(BOOL *)a6 setOutNeedsBackoff:(BOOL *)a7 setOutIsTemporary:(BOOL *)a8 setOutIsTokenAuth:(BOOL *)a9 setOutIsAuthError:(BOOL *)a10
{
  v15 = a3;
  if (v15)
  {
    v29 = a8;
    v30 = v15;
    v16 = [v15 MSCanBeIgnored];
    v17 = [v30 MSIsCounted];
    v18 = [v30 MSIsFatal];
    v19 = [v30 MSNeedsBackoff];
    v20 = [v30 MSIsTemporaryNetworkError];
    v21 = [v30 MSIsBadTokenError];
    v22 = [v30 MSIsAuthError];
    if (a4 && v16)
    {
      *a4 = 1;
    }

    v23 = v17 ^ 1;
    if (!a5)
    {
      v23 = 1;
    }

    if ((v23 & 1) == 0)
    {
      *a5 = 1;
    }

    v24 = v18 ^ 1;
    if (!a6)
    {
      v24 = 1;
    }

    if ((v24 & 1) == 0)
    {
      *a6 = 1;
    }

    v25 = v19 ^ 1;
    if (!a7)
    {
      v25 = 1;
    }

    if ((v25 & 1) == 0)
    {
      *a7 = 1;
    }

    v26 = v20 ^ 1;
    if (!v29)
    {
      v26 = 1;
    }

    if ((v26 & 1) == 0)
    {
      *v29 = 1;
    }

    v27 = v21 ^ 1;
    if (!a9)
    {
      v27 = 1;
    }

    if ((v27 & 1) == 0)
    {
      *a9 = 1;
    }

    v28 = v22 ^ 1;
    if (!a10)
    {
      v28 = 1;
    }

    v15 = v30;
    if ((v28 & 1) == 0)
    {
      *a10 = 1;
    }
  }
}

- (int)publishStorageProtocol:(id)a3 didRequestFDForAsset:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 fileData];

  if (v8)
  {
    v9 = [v7 fileData];
    v36 = 0;
    v10 = [MEMORY[0x277CCACA8] MSTempFileOutFileName:&v36];
    v11 = v36;
    if (v10 == -1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        v16 = v15;
        v17 = [(MSCupidStateMachine *)self personID];
        *buf = 138543618;
        v38 = v15;
        v39 = 2112;
        v40 = v17;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Failed to create temp file.", buf, 0x16u);
      }
    }

    else
    {
      v12 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v10 closeOnDealloc:0];
      v13 = v12;
      if (v12)
      {
        [v12 writeData:v9];
        [(NSMutableArray *)self->_tempFiles addObject:v11];
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v24 = objc_opt_class();
        v25 = v24;
        v26 = [(MSCupidStateMachine *)self personID];
        *buf = 138543874;
        v38 = v24;
        v39 = 2112;
        v40 = v26;
        v41 = 2112;
        v42 = v11;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Failed to write temp file at path %@.", buf, 0x20u);
      }
    }
  }

  else
  {
    delegate = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      LODWORD(v10) = [(MSPublisherDelegate *)self->_delegate publisher:self didRequestOpenFileDescriptorForAsset:v7];
    }

    else
    {
      v18 = [v7 path];

      if (v18)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v29 = objc_opt_class();
          v30 = v29;
          v31 = [(MSCupidStateMachine *)self personID];
          v32 = [v7 path];
          *buf = 138543874;
          v38 = v29;
          v39 = 2112;
          v40 = v31;
          v41 = 2112;
          v42 = v32;
          _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Opening asset file at path %@...", buf, 0x20u);
        }

        v19 = [v7 path];
        v20 = v19;
        LODWORD(v10) = open([v19 fileSystemRepresentation], 0);

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v21 = objc_opt_class();
          v22 = v21;
          v23 = [(MSCupidStateMachine *)self personID];
          *buf = 138543874;
          v38 = v21;
          v39 = 2112;
          v40 = v23;
          v41 = 1024;
          LODWORD(v42) = v10;
          _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ ... got FD %d.", buf, 0x1Cu);
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v33 = objc_opt_class();
          v34 = v33;
          v35 = [(MSCupidStateMachine *)self personID];
          *buf = 138543874;
          v38 = v33;
          v39 = 2112;
          v40 = v35;
          v41 = 2114;
          v42 = v7;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Cannot retrieve file descriptor for asset: %{public}@", buf, 0x20u);
        }

        LODWORD(v10) = -1;
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)publishStorageProtocol:(id)a3 didFinishUploadingAsset:(id)a4 error:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    [v9 setError:v10];
  }

  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    [(MSPublisherDelegate *)self->_delegate publisher:self didRequestCloseFileDescriptor:0xFFFFFFFFLL forAsset:v9];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v13 = objc_opt_class();
    v14 = v13;
    v15 = [(MSCupidStateMachine *)self personID];
    v16 = [v10 MSVerboseDescription];
    v17 = 138543874;
    v18 = v13;
    v19 = 2112;
    v20 = v15;
    v21 = 2114;
    v22 = v16;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Finished uploading asset. Error: %{public}@", &v17, 0x20u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_sendFilesToMMCS
{
  v53 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = v3;
    v5 = [(MSCupidStateMachine *)self personID];
    v6 = [(NSMutableArray *)self->_sendingQueue count];
    *buf = 138543874;
    *v49 = v3;
    *&v49[8] = 2112;
    v50 = v5;
    v51 = 2048;
    v52 = v6;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ uploading %ld assets...", buf, 0x20u);
  }

  state = self->_state;
  if (state == 8)
  {
    delegate = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      v9 = self->_delegate;
      v10 = [MSObjectWrapper objectsFromWrappers:self->_sendingQueue];
      [(MSPublisherDelegate *)v9 publisher:self willPublishAssetCollections:v10];
    }

    self->_sendingQueueCount = [(NSMutableArray *)self->_sendingQueue count];
    [(NSMutableDictionary *)self->_fileHashToAssetMap removeAllObjects];
    v11 = [MEMORY[0x277CBEB18] array];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = self->_sendingQueue;
    v34 = [(NSMutableArray *)obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v34)
    {
      v33 = *v43;
      do
      {
        v12 = 0;
        do
        {
          if (*v43 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v37 = v12;
          v13 = [*(*(&v42 + 1) + 8 * v12) object];
          v14 = [v13 masterAsset];
          v15 = [MEMORY[0x277CCACA8] MSMakeUUID];
          [v14 addMetadataValue:v15 forKey:@"MSAssetMetadataAssetFileTransferUUID"];

          [v11 addObject:v14];
          v35 = v14;
          [(MSPublisher *)self _addAssetToFileHashMap:v14];
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = v13;
          v16 = [v13 derivedAssets];
          v17 = [v16 countByEnumeratingWithState:&v38 objects:v46 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v39;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v39 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v38 + 1) + 8 * i);
                v22 = [MEMORY[0x277CCACA8] MSMakeUUID];
                [v21 addMetadataValue:v22 forKey:@"MSAssetMetadataAssetFileTransferUUID"];

                [v11 addObject:v21];
                [(MSPublisher *)self _addAssetToFileHashMap:v21];
              }

              v18 = [v16 countByEnumeratingWithState:&v38 objects:v46 count:16];
            }

            while (v18);
          }

          v12 = v37 + 1;
        }

        while (v37 + 1 != v34);
        v34 = [(NSMutableArray *)obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v34);
    }

    self->_state = 9;
    v23 = MSPlatform();
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      v25 = MSPlatform();
      v26 = [(MSCupidStateMachine *)self personID];
      v27 = [v25 contentURLForPersonID:v26];

      if (v27)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v28 = objc_opt_class();
          v29 = v28;
          v30 = [(MSCupidStateMachine *)self personID];
          *buf = 138543874;
          *v49 = v28;
          *&v49[8] = 2112;
          v50 = v30;
          v51 = 2114;
          v52 = v27;
          _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Using contentURL %{public}@ from MSPlatform for upload.", buf, 0x20u);
        }

        goto LABEL_29;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to get contentURL from MSPlatform. Using URL from metadata for upload", buf, 2u);
      }
    }

    v27 = self->_storageProtocolURL;
LABEL_29:
    [(MSPublishStorageProtocol *)self->_storageProtocol publishAssets:v11 URL:v27];

    goto LABEL_30;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109376;
    *v49 = 8;
    *&v49[4] = 1024;
    *&v49[6] = state;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Wrong state detected. Expected %d, actually %d. Not serving message.", buf, 0xEu);
  }

LABEL_30:
  v31 = *MEMORY[0x277D85DE8];
}

- (void)publishStreamsProtocol:(id)a3 didReceiveAuthenticationError:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = [(MSCupidStateMachine *)self personID];
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v10;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Found authentication error. Will try again later...", &v11, 0x16u);
  }

  [(MSCupidStateMachine *)self _resetStreamsBackoffTimer];
  self->_state = 4;
  daemon = self->_daemon;
  v6 = [(MSCupidStateMachine *)self personID];
  [(MSMediaStreamDaemon *)daemon didReceiveAuthenticationFailureForPersonID:v6];

  [(MSDaemon *)self->_daemon releaseBusy];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)publishStreamsProtocol:(id)a3 didFinishUploadingMetadataResponse:(id)a4 error:(id)a5
{
  v211 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  state = self->_state;
  if (state != 6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *v207 = 6;
      *&v207[4] = 1024;
      *&v207[6] = state;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Wrong state detected. Expected %d, actually %d. Not serving message.", buf, 0xEu);
    }

    goto LABEL_150;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v61 = objc_opt_class();
    v62 = v61;
    v63 = [(MSCupidStateMachine *)self personID];
    *buf = 138543874;
    *v207 = v61;
    *&v207[8] = 2112;
    v208 = v63;
    v209 = 2114;
    v210 = v9;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ received metadata upload response: %{public}@", buf, 0x20u);
  }

  v148 = self;
  if (v10)
  {
    goto LABEL_55;
  }

  v12 = [v9 objectForKey:@"assets"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v60 = MEMORY[0x277CCA9B8];
    v32 = MSCFCopyLocalizedString(@"ERROR_PUT_CONNECTION_INVALID_ASSET_HASH");
    v35 = [v60 MSErrorWithDomain:@"MSStreamsPutConnectionErrorDomain" code:3 description:v32];
    v10 = [(MSPublisher *)self _invalidStreamsResponseErrorUnderlyingError:v35];
    goto LABEL_54;
  }

  v145 = v12;
  v140 = v9;
  v142 = v8;
  v195 = 0u;
  v196 = 0u;
  v193 = 0u;
  v194 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v193 objects:v205 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v194;
    v17 = 0x277CCA000uLL;
    v18 = MEMORY[0x277D86220];
    v149 = v13;
    v147 = *v194;
    do
    {
      v19 = 0;
      v152 = v15;
      do
      {
        if (*v194 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v155 = v19;
        v20 = *(*(&v193 + 1) + 8 * v19);
        v21 = [v13 objectForKey:v20];
        v22 = *(v17 + 3240);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          fileHashToAssetMap = v148->_fileHashToAssetMap;
          v24 = [v20 MSHexData];
          v25 = [(NSMutableDictionary *)fileHashToAssetMap objectForKey:v24];

          v191 = 0u;
          v192 = 0u;
          v189 = 0u;
          v190 = 0u;
          v26 = v25;
          v27 = [v26 countByEnumeratingWithState:&v189 objects:v204 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v190;
            do
            {
              for (i = 0; i != v28; ++i)
              {
                if (*v190 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v189 + 1) + 8 * i);
                [v31 setMMCSAccessHeader:v21];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138543362;
                  *v207 = v31;
                  _os_log_debug_impl(&dword_245B99000, v18, OS_LOG_TYPE_DEBUG, "Setting MMCS header in asset %{public}@", buf, 0xCu);
                }
              }

              v28 = [v26 countByEnumeratingWithState:&v189 objects:v204 count:16];
            }

            while (v28);
          }

          v13 = v149;
          v15 = v152;
          v16 = v147;
          v17 = 0x277CCA000;
        }

        v19 = v155 + 1;
      }

      while (v155 + 1 != v15);
      v15 = [v13 countByEnumeratingWithState:&v193 objects:v205 count:16];
    }

    while (v15);
  }

  v9 = v140;
  v32 = [v140 objectForKey:@"mmcsurl"];
  self = v148;
  if (v32)
  {
    v33 = [MEMORY[0x277CBEBC0] URLWithString:v32];
    if (!v33)
    {
      v64 = MEMORY[0x277CCA9B8];
      v153 = MSCFCopyLocalizedString(@"ERROR_PUT_CONNECTION_INVALID_STORAGE_URL");
      v55 = [v64 MSErrorWithDomain:@"MSStreamsPutConnectionErrorDomain" code:4 description:?];
      v10 = [(MSPublisher *)v148 _invalidStreamsResponseErrorUnderlyingError:v55];
LABEL_53:

      v12 = v145;
      v35 = v153;
      goto LABEL_54;
    }

    v34 = v33;
    [(MSPublisher *)v148 setStorageProtocolURL:v33];
  }

  v150 = v32;
  v35 = [MEMORY[0x277CBEB18] array];
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  obj = v148->_requestAuthQueue;
  v36 = [(NSMutableArray *)obj countByEnumeratingWithState:&v185 objects:v203 count:16];
  v153 = v35;
  if (!v36)
  {
    goto LABEL_46;
  }

  v37 = v36;
  v38 = *v186;
  do
  {
    v39 = 0;
    v156 = v37;
    do
    {
      if (*v186 != v38)
      {
        objc_enumerationMutation(obj);
      }

      v40 = *(*(&v185 + 1) + 8 * v39);
      v41 = [v40 object];
      v42 = [v41 masterAsset];
      v43 = [v42 MMCSAccessHeader];

      sendingQueue = v35;
      if (v43)
      {
        v45 = [v41 derivedAssets];
        v181 = 0u;
        v182 = 0u;
        v183 = 0u;
        v184 = 0u;
        v46 = [v45 countByEnumeratingWithState:&v181 objects:v202 count:16];
        if (!v46)
        {

LABEL_43:
          sendingQueue = v148->_sendingQueue;
          goto LABEL_44;
        }

        v47 = v46;
        v48 = v38;
        v49 = *v182;
        v50 = 1;
        do
        {
          for (j = 0; j != v47; ++j)
          {
            if (*v182 != v49)
            {
              objc_enumerationMutation(v45);
            }

            v52 = [*(*(&v181 + 1) + 8 * j) MMCSAccessHeader];
            v53 = v52 != 0;

            v50 &= v53;
          }

          v47 = [v45 countByEnumeratingWithState:&v181 objects:v202 count:16];
        }

        while (v47);

        v35 = v153;
        sendingQueue = v153;
        v38 = v48;
        v37 = v156;
        if (v50)
        {
          goto LABEL_43;
        }
      }

LABEL_44:
      [sendingQueue addObject:v40];

      ++v39;
    }

    while (v39 != v37);
    v37 = [(NSMutableArray *)obj countByEnumeratingWithState:&v185 objects:v203 count:16];
  }

  while (v37);
LABEL_46:

  if ([(__CFString *)v35 count])
  {
    self = v148;
    [(MSPublisher *)v148 _removeAssetsInAssetCollectionWrappersFromAssetMap:v35];
    [MSObjectWrapper objectsFromWrappers:v35];
    v55 = v54 = v35;
    [(MSPublisher *)v148 _didFinishUsingAssetCollections:v55];
    delegate = v148->_delegate;
    v57 = MEMORY[0x277CCA9B8];
    v58 = MSCFCopyLocalizedString(@"ERROR_PUBLISHER_ASSET_REJECTED");
    v59 = [v57 MSErrorWithDomain:@"MSPublisherErrorDomain" code:1 description:v58];
    [(MSPublisherDelegate *)delegate publisher:v148 didEncounterError:v59 publishingAssetCollections:v55];

    [(MSObjectQueue *)v148->_uploadQueue removeObjectWrappersFromQueue:v54];
    [(MSPublisher *)v148 _updateMasterManifest];
    v10 = 0;
    v8 = v142;
    v9 = v140;
    v32 = v150;
    goto LABEL_53;
  }

  v10 = 0;
  v8 = v142;
  v9 = v140;
  self = v148;
  v32 = v150;
  v12 = v145;
LABEL_54:

  if (!v10)
  {
    daemon = self->_daemon;
    v78 = [(MSCupidStateMachine *)self personID];
    [(MSMediaStreamDaemon *)daemon didReceiveAuthenticationSuccessForPersonID:v78];

    [(MSCupidStateMachine *)self _resetStreamsBackoffTimer];
    [(MSPublisher *)self _removeAssetsInAssetCollectionWrappersFromAssetMap:self->_requestAuthQueue];
    if ([(NSMutableArray *)self->_sendingQueue count])
    {
      v79 = 7;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v132 = objc_opt_class();
        v133 = v132;
        v134 = [(MSCupidStateMachine *)self personID];
        *buf = 138543618;
        *v207 = v132;
        *&v207[8] = 2112;
        v208 = v134;
        _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Nothing to upload.", buf, 0x16u);
      }

      v79 = 0;
    }

    self->_state = v79;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__MSPublisher_publishStreamsProtocol_didFinishUploadingMetadataResponse_error___block_invoke;
    block[3] = &unk_278E926D8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v10 = 0;
    goto LABEL_149;
  }

LABEL_55:
  if ([v10 MSIsTemporaryNetworkError])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v80 = objc_opt_class();
      v81 = v80;
      v82 = [(MSCupidStateMachine *)self personID];
      *buf = 138543618;
      *v207 = v80;
      *&v207[8] = 2112;
      v208 = v82;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Encountered network issues during upload. Will try again later...", buf, 0x16u);
    }

    self->_state = 4;
    goto LABEL_149;
  }

  v65 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](self->_requestAuthQueue, "count")}];
  v66 = [v10 MSIsQuotaError];
  v67 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if (!v66)
  {
    if (v67)
    {
      v86 = objc_opt_class();
      v87 = v86;
      v88 = [(MSCupidStateMachine *)self personID];
      v89 = [v10 MSVerboseDescription];
      *buf = 138543874;
      *v207 = v86;
      *&v207[8] = 2112;
      v208 = v88;
      v209 = 2114;
      v210 = v89;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Error uploading metadata to Streams server: %{public}@", buf, 0x20u);
    }

    if ([v10 MSNeedsBackoff])
    {
      [(MSCupidStateMachine *)self _backoffStreamsBackoffTimer];
    }

    if ([v10 MSIsCounted])
    {
      v163 = 0u;
      v164 = 0u;
      v161 = 0u;
      v162 = 0u;
      v71 = self->_requestAuthQueue;
      v72 = [(NSMutableArray *)v71 countByEnumeratingWithState:&v161 objects:v197 count:16];
      if (v72)
      {
        v73 = v72;
        v74 = *v162;
        do
        {
          for (k = 0; k != v73; ++k)
          {
            if (*v162 != v74)
            {
              objc_enumerationMutation(v71);
            }

            v76 = *(*(&v161 + 1) + 8 * k);
            [v76 setErrorCount:{objc_msgSend(v76, "errorCount") + 1}];
            if ([v76 errorCount] >= self->_maxErrorCount)
            {
              [v65 addObject:v76];
            }
          }

          v73 = [(NSMutableArray *)v71 countByEnumeratingWithState:&v161 objects:v197 count:16];
        }

        while (v73);
      }

      [(MSObjectQueue *)self->_uploadQueue commitErrorCountsForObjectWrappers:self->_requestAuthQueue];
    }

    goto LABEL_141;
  }

  if (v67)
  {
    v83 = objc_opt_class();
    v84 = v83;
    v85 = [(MSCupidStateMachine *)self personID];
    *buf = 138543618;
    *v207 = v83;
    *&v207[8] = 2112;
    v208 = v85;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Received a quota error.", buf, 0x16u);
  }

  v139 = [v9 objectForKey:@"code"];
  if (!v139 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_128:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v126 = objc_opt_class();
      v127 = v126;
      v128 = [(MSCupidStateMachine *)self personID];
      *buf = 138543618;
      *v207 = v126;
      *&v207[8] = 2112;
      v208 = v128;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Could not parse the server's response.", buf, 0x16u);
    }

    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    v114 = self->_requestAuthQueue;
    v115 = [(NSMutableArray *)v114 countByEnumeratingWithState:&v165 objects:v198 count:16];
    if (v115)
    {
      v116 = v115;
      v117 = *v166;
      do
      {
        for (m = 0; m != v116; ++m)
        {
          if (*v166 != v117)
          {
            objc_enumerationMutation(v114);
          }

          v119 = *(*(&v165 + 1) + 8 * m);
          [v119 setErrorCount:{objc_msgSend(v119, "errorCount") + 1}];
          if ([v119 errorCount] >= self->_maxErrorCount)
          {
            [v65 addObject:v119];
          }
        }

        v116 = [(NSMutableArray *)v114 countByEnumeratingWithState:&v165 objects:v198 count:16];
      }

      while (v116);
    }

    [(MSCupidStateMachine *)self _backoffStreamsBackoffTimer];
    goto LABEL_140;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v129 = objc_opt_class();
    v130 = v129;
    v131 = [(MSCupidStateMachine *)self personID];
    *buf = 138543874;
    *v207 = v129;
    *&v207[8] = 2112;
    v208 = v131;
    v209 = 2114;
    v210 = v139;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Quota error code: %{public}@", buf, 0x20u);
  }

  v68 = [v9 objectForKey:@"retryafter"];
  objc_opt_class();
  v135 = v68;
  if (objc_opt_isKindOfClass())
  {
    v69 = [v68 intValue];
    if (v69 < 1)
    {
      [(MSCupidStateMachine *)self _backoffStreamsBackoffTimer];
    }

    else
    {
      v70 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v69];
      [(MSCupidStateMachine *)self _didReceiveStreamsRetryAfterDate:v70];
    }

    v90 = self->_daemon;
    v91 = [(MSCupidStateMachine *)self personID];
    v92 = [(MSCupidStateMachine *)self personID];
    v93 = [MSPublisher nextActivityDateForPersonID:v92];
    [(MSMediaStreamDaemon *)v90 didExceedPublishQuotaForPersonID:v91 retryDate:v93];
  }

  if (![v139 isEqualToString:@"4034"])
  {

    goto LABEL_140;
  }

  v94 = [v9 objectForKey:@"assets"];
  if (v94)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_127:

      goto LABEL_128;
    }
  }

  v141 = v9;
  v179 = 0u;
  v180 = 0u;
  v177 = 0u;
  v178 = 0u;
  v136 = v94;
  v138 = [v136 countByEnumeratingWithState:&v177 objects:v201 count:16];
  if (v138)
  {
    v137 = *v178;
    v143 = v8;
    v146 = v10;
    v151 = v65;
    while (2)
    {
      v95 = 0;
      do
      {
        if (*v178 != v137)
        {
          objc_enumerationMutation(v136);
        }

        v144 = v95;
        v96 = *(*(&v177 + 1) + 8 * v95);
        objc_opt_class();
        self = v148;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v94 = v136;

          v9 = v141;
          goto LABEL_127;
        }

        v97 = [v96 MSHexData];
        v173 = 0u;
        v174 = 0u;
        v175 = 0u;
        v176 = 0u;
        v154 = v148->_requestAuthQueue;
        obja = [(NSMutableArray *)v154 countByEnumeratingWithState:&v173 objects:v200 count:16];
        if (obja)
        {
          v157 = *v174;
          do
          {
            for (n = 0; n != obja; ++n)
            {
              if (*v174 != v157)
              {
                objc_enumerationMutation(v154);
              }

              v99 = *(*(&v173 + 1) + 8 * n);
              v100 = [v99 object];
              v101 = [v100 masterAsset];
              v102 = [v101 fileHash];
              v103 = [v102 isEqualToData:v97];

              if (v103)
              {
                [v65 addObject:v99];
LABEL_118:
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  v111 = objc_opt_class();
                  v112 = v111;
                  v113 = [(MSCupidStateMachine *)v148 personID];
                  *buf = 138543874;
                  *v207 = v111;
                  *&v207[8] = 2112;
                  v208 = v113;
                  v209 = 2114;
                  v210 = v100;
                  _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Server reject asset collection because it is too large: %{public}@", buf, 0x20u);
                }
              }

              else
              {
                v171 = 0u;
                v172 = 0u;
                v169 = 0u;
                v170 = 0u;
                v104 = [v100 derivedAssets];
                v105 = [v104 countByEnumeratingWithState:&v169 objects:v199 count:16];
                if (v105)
                {
                  v106 = v105;
                  v107 = *v170;
                  while (2)
                  {
                    for (ii = 0; ii != v106; ++ii)
                    {
                      if (*v170 != v107)
                      {
                        objc_enumerationMutation(v104);
                      }

                      v109 = [*(*(&v169 + 1) + 8 * ii) fileHash];
                      v110 = [v109 isEqualToData:v97];

                      if (v110)
                      {
                        v65 = v151;
                        [v151 addObject:v99];

                        goto LABEL_118;
                      }
                    }

                    v106 = [v104 countByEnumeratingWithState:&v169 objects:v199 count:16];
                    if (v106)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v65 = v151;
              }
            }

            obja = [(NSMutableArray *)v154 countByEnumeratingWithState:&v173 objects:v200 count:16];
          }

          while (obja);
        }

        v8 = v143;
        v95 = v144 + 1;
        v10 = v146;
      }

      while (v144 + 1 != v138);
      v138 = [v136 countByEnumeratingWithState:&v177 objects:v201 count:16];
      if (v138)
      {
        continue;
      }

      break;
    }
  }

  v9 = v141;
  self = v148;
LABEL_140:

LABEL_141:
  if ([v65 count])
  {
    [(NSMutableArray *)self->_requestAuthQueue removeObjectsInArray:v65];
    [(MSObjectQueue *)self->_uploadQueue removeObjectWrappersFromQueue:v65];
    [(MSObjectQueue *)self->_uploadQueue commitErrorCountsForObjectWrappers:self->_requestAuthQueue];
    [(MSPublisher *)self _updateMasterManifest];
    [(MSPublisher *)self _removeAssetsInAssetCollectionWrappersFromAssetMap:v65];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v122 = objc_opt_class();
      v123 = v122;
      v124 = [(MSCupidStateMachine *)self personID];
      v125 = [v65 count];
      *buf = 138543874;
      *v207 = v122;
      *&v207[8] = 2112;
      v208 = v124;
      v209 = 2048;
      v210 = v125;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Too many errors encountered while uploading %ld asset collections. Aborting.", buf, 0x20u);
    }

    [(MSPublisher *)self _quarantineOrDiscardWrappers:v65 withError:v10];
  }

  if ([(NSMutableArray *)self->_requestAuthQueue count])
  {
    v120 = 4;
  }

  else
  {
    v120 = 1;
  }

  self->_state = v120;

LABEL_149:
  [(MSDaemon *)self->_daemon releaseBusy];
LABEL_150:

  v121 = *MEMORY[0x277D85DE8];
}

- (id)_invalidStreamsResponseErrorUnderlyingError:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277CCA9B8];
  v5 = MSCFCopyLocalizedString(@"ERROR_PUT_CONNECTION_INVALID_STREAMS_RESPONSE");
  if (v3)
  {
    [v4 MSErrorWithDomain:@"MSStreamsPutConnectionErrorDomain" code:1 description:v5 underlyingError:v3];
  }

  else
  {
    [v4 MSErrorWithDomain:@"MSStreamsPutConnectionErrorDomain" code:1 description:v5];
  }
  v6 = ;

  return v6;
}

- (void)_sendMetadataToStreams
{
  v73 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = v3;
    v5 = [(MSCupidStateMachine *)self personID];
    *buf = 138543618;
    *v64 = v3;
    *&v64[8] = 2112;
    v65 = v5;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Sending metadata...", buf, 0x16u);
  }

  state = self->_state;
  if (state == 5)
  {
    [(MSPublisher *)self _removeAssetsInAssetCollectionWrappersFromAssetMap:self->_requestAuthQueue];
    [(NSMutableArray *)self->_requestAuthQueue removeAllObjects];
    v7 = [(MSObjectQueue *)self->_uploadQueue smallestObjectWrappersTargetTotalSize:self->_publishTargetByteCount maxCount:self->_publishBatchSize];
    v8 = [(MSPublisher *)self _checkObjectWrappers:v7];
    if (v8 == v7)
    {
      [(NSMutableArray *)self->_requestAuthQueue addObjectsFromArray:v7];
      if ([(NSMutableArray *)self->_requestAuthQueue count])
      {
        v46 = v8;
        [(NSMutableDictionary *)self->_fileHashToAssetMap removeAllObjects];
        v18 = [MSObjectWrapper objectsFromWrappers:self->_requestAuthQueue];
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v19 = [v18 countByEnumeratingWithState:&v52 objects:v62 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v53;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v53 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v52 + 1) + 8 * i);
              v24 = [v23 masterAsset];
              [(MSPublisher *)self _addAssetToFileHashMap:v24];

              v50 = 0u;
              v51 = 0u;
              v48 = 0u;
              v49 = 0u;
              v25 = [v23 derivedAssets];
              v26 = [v25 countByEnumeratingWithState:&v48 objects:v61 count:16];
              if (v26)
              {
                v27 = v26;
                v28 = *v49;
                do
                {
                  for (j = 0; j != v27; ++j)
                  {
                    if (*v49 != v28)
                    {
                      objc_enumerationMutation(v25);
                    }

                    [(MSPublisher *)self _addAssetToFileHashMap:*(*(&v48 + 1) + 8 * j)];
                  }

                  v27 = [v25 countByEnumeratingWithState:&v48 objects:v61 count:16];
                }

                while (v27);
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v52 objects:v62 count:16];
          }

          while (v20);
        }

        self->_state = 6;
        [(MSPublishStreamsProtocol *)self->_protocol sendMetadataForAssetCollections:v18];

        v8 = v46;
        goto LABEL_48;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v35 = objc_opt_class();
        v36 = v35;
        v37 = [(MSCupidStateMachine *)self personID];
        *buf = 138543618;
        *v64 = v35;
        *&v64[8] = 2112;
        v65 = v37;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ nothing to send.", buf, 0x16u);
      }

      self->_state = 0;
      [(MSDaemon *)self->_daemon releaseBusy];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __37__MSPublisher__sendMetadataToStreams__block_invoke_75;
      v47[3] = &unk_278E926D8;
      v47[4] = self;
      v38 = MEMORY[0x277D85CD0];
      v39 = v47;
    }

    else
    {
      v9 = [(MSObjectQueue *)self->_uploadQueue count];
      [(MSObjectQueue *)self->_uploadQueue removeObjectWrappersFromQueue:v7];
      if ([v8 count])
      {
        [(MSObjectQueue *)self->_uploadQueue appendObjectWrappers:v8];
      }

      v10 = [(MSObjectQueue *)self->_uploadQueue count];
      v11 = [v7 count] + v10;
      if (v11 <= [v8 count] + v9)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v30 = objc_opt_class();
          v45 = v30;
          v44 = [v7 count];
          v31 = [v8 count];
          v32 = [v7 count];
          v33 = v32 - [v8 count];
          v34 = [(MSObjectQueue *)self->_uploadQueue count];
          *buf = 138544386;
          *v64 = v30;
          *&v64[8] = 2048;
          v65 = v44;
          v66 = 2048;
          v67 = v31;
          v68 = 2048;
          v69 = v33;
          v70 = 2048;
          v71 = v34;
          _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %lu collections changed (kept %lu / lost %ld - total collections in queue after cleaning: %lld).", buf, 0x34u);
        }
      }

      else
      {
        v43 = v10;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v12 = v7;
        v13 = [v12 countByEnumeratingWithState:&v57 objects:v72 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = 0;
          v16 = *v58;
          do
          {
            for (k = 0; k != v14; ++k)
            {
              if (*v58 != v16)
              {
                objc_enumerationMutation(v12);
              }

              if (v15)
              {
                [v15 appendFormat:@", %lld", objc_msgSend(*(*(&v57 + 1) + 8 * k), "uniqueID")];
              }

              else
              {
                v15 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"%lld", objc_msgSend(*(*(&v57 + 1) + 8 * k), "uniqueID")];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v57 objects:v72 count:16];
          }

          while (v14);
        }

        else
        {
          v15 = 0;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v41 = objc_opt_class();
          *buf = 138544130;
          *v64 = v41;
          *&v64[8] = 2048;
          v65 = v9;
          v66 = 2048;
          v67 = v43;
          v68 = 2114;
          v69 = v15;
          v42 = v41;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - failed to properly clean up wrappers from queue (before/after count: %lld/%lld). Wrapper ids that were supposed to be removed: (%{public}@)", buf, 0x2Au);
        }
      }

      self->_state = 0;
      [(MSDaemon *)self->_daemon releaseBusy];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __37__MSPublisher__sendMetadataToStreams__block_invoke;
      block[3] = &unk_278E926D8;
      block[4] = self;
      v38 = MEMORY[0x277D85CD0];
      v39 = block;
    }

    dispatch_async(v38, v39);
LABEL_48:

    goto LABEL_49;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109376;
    *v64 = 5;
    *&v64[4] = 1024;
    *&v64[6] = state;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Wrong state detected. Expected %d, actually %d. Not serving message.", buf, 0xEu);
  }

LABEL_49:
  v40 = *MEMORY[0x277D85DE8];
}

- (void)submitAssetCollectionsForPublication:(id)a3 skipAssetCollections:(id)a4
{
  v124 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v91 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [(MSCupidStateMachine *)self personID];
    *buf = 138543874;
    v114 = v7;
    v115 = 2112;
    v116 = v9;
    v117 = 2048;
    v118 = [v6 count];
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Submitting %ld asset collections for publication.", buf, 0x20u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v87 = objc_opt_class();
    v88 = v87;
    v89 = [(MSCupidStateMachine *)self personID];
    v90 = [v91 count];
    *buf = 138543874;
    v114 = v87;
    v115 = 2112;
    v116 = v89;
    v117 = 2048;
    v118 = v90;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ ...skipping %ld asset collections.", buf, 0x20u);
  }

  [(MSPublisher *)self _didFinishUsingAssetCollections:v91];
  v94 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  obj = v6;
  v101 = [obj countByEnumeratingWithState:&v108 objects:v123 count:16];
  if (v101)
  {
    v10 = MEMORY[0x277D86220];
    v100 = *v109;
    v99 = self;
    do
    {
      v11 = 0;
      do
      {
        if (*v109 != v100)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v108 + 1) + 8 * v11);
        v13 = [v12 masterAsset];
        v14 = [v13 type];
        v102 = v12;
        if (!v14 || ([(NSMutableDictionary *)self->_maxSizeByUTI objectForKey:v14], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v56 = objc_opt_class();
            v57 = v56;
            v58 = [(MSCupidStateMachine *)self personID];
            *buf = 138544130;
            v114 = v56;
            v115 = 2112;
            v116 = v58;
            v117 = 2114;
            v118 = v14;
            v119 = 2114;
            v120 = v12;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ The UTI for “%{public}@” is not accepted by the server. Asset collection: %{public}@", buf, 0x2Au);

            v10 = MEMORY[0x277D86220];
          }

          v25 = MEMORY[0x277CCA9B8];
          v26 = MEMORY[0x277CCACA8];
          v22 = MSCFCopyLocalizedString(@"ERROR_PUBLISHER_UTI_REJECTED_P_UTI");
          v27 = [v26 stringWithFormat:v22, v14];
          v28 = [v25 MSErrorWithDomain:@"MSPublisherErrorDomain" code:4 description:v27];

          goto LABEL_24;
        }

        v16 = [(NSMutableDictionary *)self->_maxSizeByUTI objectForKey:v14];
        v17 = [v16 longLongValue];

        v18 = [v13 _fileSize];
        v19 = [(MSPublisher *)self publishStorageProtocol:0 didRequestFDForAsset:v13];
        v20 = [v13 _fileSizeOnDisk];
        [(MSPublisher *)self publishStorageProtocol:0 didFinishUsingFD:v19 forAsset:v13];
        if (!v20)
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v61 = objc_opt_class();
            v62 = v61;
            v63 = [(MSCupidStateMachine *)self personID];
            *buf = 138543618;
            v114 = v61;
            v115 = 2112;
            v116 = v63;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ The master asset has zero size. Rejecting upload.", buf, 0x16u);

            v10 = MEMORY[0x277D86220];
          }

          v29 = MEMORY[0x277CCA9B8];
          v22 = MSCFCopyLocalizedString(@"ERROR_PUBLISHER_ASSET_ZERO_SIZE");
          v23 = v29;
          v24 = 5;
          goto LABEL_23;
        }

        if (v18 > v17)
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v64 = objc_opt_class();
            v65 = v64;
            v66 = [(MSCupidStateMachine *)self personID];
            v67 = [v12 masterAsset];
            *buf = 138544386;
            v114 = v64;
            v115 = 2112;
            v116 = v66;
            v117 = 2048;
            v118 = v18;
            v119 = 2048;
            v120 = v17;
            v121 = 2114;
            v122 = v67;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ The master asset has size %lld, which is larger than the maximum allowed %lld. %{public}@", buf, 0x34u);

            self = v99;
            v10 = MEMORY[0x277D86220];
          }

          v21 = MEMORY[0x277CCA9B8];
          v22 = MSCFCopyLocalizedString(@"ERROR_PUBLISHER_ASSET_TOO_LARGE");
          v23 = v21;
          v24 = 6;
LABEL_23:
          v28 = [v23 MSErrorWithDomain:@"MSPublisherErrorDomain" code:v24 description:v22];
LABEL_24:
          v30 = 0;
          goto LABEL_25;
        }

        v34 = [v13 fileHash];
        if (!v34)
        {
          goto LABEL_49;
        }

        v35 = v34;
        v36 = [v13 metadata];
        v37 = [v36 objectForKey:@"MSAssetMetadataSHA1HashKey"];

        if (v37)
        {
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v22 = [v12 derivedAssets];
          v96 = [v22 countByEnumeratingWithState:&v104 objects:v112 count:16];
          if (v96)
          {
            v95 = *v105;
            v92 = v18;
            v30 = v18;
            v93 = v17;
            while (2)
            {
              for (i = 0; i != v96; ++i)
              {
                if (*v105 != v95)
                {
                  objc_enumerationMutation(v22);
                }

                v39 = *(*(&v104 + 1) + 8 * i);
                v40 = [v39 fileHash];
                if (!v40)
                {
                  goto LABEL_41;
                }

                v41 = v40;
                v42 = [v39 metadata];
                v43 = [v42 objectForKey:@"MSAssetMetadataSHA1HashKey"];

                if (!v43)
                {
LABEL_41:
                  v44 = v99;
                  [(MSPublishStorageProtocol *)v99->_storageProtocol computeHashForAsset:v39];
                  v45 = [v39 fileHash];
                  if (!v45)
                  {
                    goto LABEL_69;
                  }

                  v46 = v45;
                  v47 = [v39 metadata];
                  v48 = [v47 objectForKey:@"MSAssetMetadataSHA1HashKey"];

                  v44 = v99;
                  if (!v48)
                  {
LABEL_69:
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      v73 = objc_opt_class();
                      v74 = v73;
                      v75 = v44;
                      v76 = v74;
                      v77 = [(MSCupidStateMachine *)v75 personID];
                      *buf = 138543874;
                      v114 = v73;
                      v115 = 2112;
                      v116 = v77;
                      v117 = 2114;
                      v118 = v39;
                      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Could not compute hash for derived asset %{public}@. Rejecting asset from publication.", buf, 0x20u);
                    }

                    v59 = @"ERROR_PUBLISHER_CANNOT_COMPUTE_HASH";
                    v60 = 3;
                    goto LABEL_62;
                  }

                  v49 = [v39 _fileSize];
                  v97 = [(MSPublisher *)v99 publishStorageProtocol:0 didRequestFDForAsset:v39];
                  v50 = [v39 _fileSizeOnDisk];
                  [(MSPublisher *)v99 publishStorageProtocol:0 didFinishUsingFD:v97 forAsset:v39];
                  if (!v50)
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      v78 = objc_opt_class();
                      v79 = v78;
                      v80 = [(MSCupidStateMachine *)v99 personID];
                      *buf = 138543618;
                      v114 = v78;
                      v115 = 2112;
                      v116 = v80;
                      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ The asset has zero size. Rejecting upload.", buf, 0x16u);
                    }

                    v59 = @"ERROR_PUBLISHER_ASSET_ZERO_SIZE";
                    v60 = 5;
                    goto LABEL_62;
                  }

                  if (v49 > v93)
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      v81 = objc_opt_class();
                      v82 = v81;
                      v83 = [(MSCupidStateMachine *)v99 personID];
                      *buf = 138544386;
                      v114 = v81;
                      v115 = 2112;
                      v116 = v83;
                      v117 = 2048;
                      v118 = v92;
                      v119 = 2048;
                      v120 = v93;
                      v121 = 2114;
                      v122 = v39;
                      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ The asset has size %lld, which is larger than the maximum allowed %lld. %{public}@", buf, 0x34u);
                    }

                    v59 = @"ERROR_PUBLISHER_ASSET_TOO_LARGE";
                    v60 = 6;
LABEL_62:
                    v68 = MEMORY[0x277CCA9B8];
                    v69 = MSCFCopyLocalizedString(v59);
                    v28 = [v68 MSErrorWithDomain:@"MSPublisherErrorDomain" code:v60 description:v69];

                    goto LABEL_63;
                  }

                  v30 += [v39 _fileSize];
                }
              }

              v96 = [v22 countByEnumeratingWithState:&v104 objects:v112 count:16];
              if (v96)
              {
                continue;
              }

              break;
            }

            v28 = 0;
LABEL_63:
            self = v99;
          }

          else
          {
            v28 = 0;
            v30 = v18;
          }

          v10 = MEMORY[0x277D86220];
        }

        else
        {
LABEL_49:
          v10 = MEMORY[0x277D86220];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v70 = objc_opt_class();
            v71 = v70;
            v72 = [(MSCupidStateMachine *)self personID];
            *buf = 138543874;
            v114 = v70;
            v115 = 2112;
            v116 = v72;
            v117 = 2114;
            v118 = v13;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ The master asset in the collection does not have a hash. Rejecting from publication: %{public}@", buf, 0x20u);

            v10 = MEMORY[0x277D86220];
          }

          v51 = MEMORY[0x277CCA9B8];
          v22 = MSCFCopyLocalizedString(@"ERROR_PUBLISHER_MISSING_HASH");
          v28 = [v51 MSErrorWithDomain:@"MSPublisherErrorDomain" code:2 description:v22];
          v30 = v18;
        }

LABEL_25:

        if (v28)
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v52 = objc_opt_class();
            v53 = v52;
            v54 = [(MSCupidStateMachine *)self personID];
            v55 = [v28 MSVerboseDescription];
            *buf = 138544130;
            v114 = v52;
            v115 = 2112;
            v116 = v54;
            v117 = 2114;
            v118 = v102;
            v119 = 2114;
            v120 = v55;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Rejecting asset collection %{public}@\nError: %{public}@", buf, 0x2Au);

            self = v99;
            v10 = MEMORY[0x277D86220];
          }

          v31 = [MEMORY[0x277CBEA60] arrayWithObject:v102];
          [(MSPublisher *)self _didFinishUsingAssetCollections:v31];

          delegate = self->_delegate;
          v33 = [MEMORY[0x277CBEA60] arrayWithObject:v102];
          [(MSPublisherDelegate *)delegate publisher:self didEncounterError:v28 publishingAssetCollections:v33];
        }

        else
        {
          v33 = [MSObjectWrapper wrapperWithObject:v102 size:v30];
          [v94 addObject:v33];
        }

        ++v11;
      }

      while (v11 != v101);
      v84 = [obj countByEnumeratingWithState:&v108 objects:v123 count:16];
      v101 = v84;
    }

    while (v84);
  }

  [(MSObjectQueue *)self->_uploadQueue appendObjectWrappers:v94];
  [(MSObjectQueue *)self->_derivativesQueue removeObjectWrappersFromQueue:self->_pendingDerivativesQueue];
  pendingDerivativesQueue = self->_pendingDerivativesQueue;
  self->_pendingDerivativesQueue = 0;

  [(MSPublisher *)self _updateMasterManifest];
  self->_state = 4;
  [(MSDaemon *)self->_daemon releaseBusy];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__MSPublisher_submitAssetCollectionsForPublication_skipAssetCollections___block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v86 = *MEMORY[0x277D85DE8];
}

- (void)_didFinishUsingAssetCollections:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 masterAsset];
        [v5 addObject:v12];

        v13 = [v11 derivedAssets];
        [v5 addObjectsFromArray:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(MSPublishStorageProtocol *)self->_storageProtocol didFinishUsingAssets:v5];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_removeAssetsInAssetCollectionWrappersFromAssetMap:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = a3;
  v17 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v17)
  {
    v16 = *v23;
    do
    {
      v4 = 0;
      do
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v5 = [*(*(&v22 + 1) + 8 * v4) object];
        v6 = [v5 masterAsset];
        v7 = [v6 fileHash];

        if (v7)
        {
          [(NSMutableDictionary *)self->_fileHashToAssetMap removeObjectForKey:v7];
        }

        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v8 = [v5 derivedAssets];
        v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v19;
          do
          {
            v12 = 0;
            do
            {
              if (*v19 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [*(*(&v18 + 1) + 8 * v12) fileHash];
              if (v13)
              {
                [(NSMutableDictionary *)self->_fileHashToAssetMap removeObjectForKey:v13];
              }

              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v10);
        }

        ++v4;
      }

      while (v4 != v17);
      v17 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v17);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_removeAssetFromFileHashMap:(id)a3
{
  v4 = a3;
  fileHashToAssetMap = self->_fileHashToAssetMap;
  v10 = v4;
  v6 = [v4 fileHash];
  v7 = [(NSMutableDictionary *)fileHashToAssetMap objectForKey:v6];

  if (v7)
  {
    [v7 MSRemoveOneObjectByPointerComparison:v10];
    if (![v7 count])
    {
      v8 = self->_fileHashToAssetMap;
      v9 = [v10 fileHash];
      [(NSMutableDictionary *)v8 removeObjectForKey:v9];
    }
  }
}

- (void)_addAssetToFileHashMap:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 fileHash];

  if (v5)
  {
    fileHashToAssetMap = self->_fileHashToAssetMap;
    v7 = [v4 fileHash];
    v8 = [(NSMutableDictionary *)fileHashToAssetMap objectForKey:v7];

    if (!v8)
    {
      v8 = [MEMORY[0x277CBEB18] array];
      v9 = self->_fileHashToAssetMap;
      v10 = [v4 fileHash];
      [(NSMutableDictionary *)v9 setObject:v8 forKey:v10];
    }

    [v8 addObject:v4];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v12 = objc_opt_class();
    v13 = v12;
    v14 = [(MSCupidStateMachine *)self personID];
    v15 = 138543874;
    v16 = v12;
    v17 = 2112;
    v18 = v14;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ No file hash for asset %{public}@", &v15, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_requestDerivatives
{
  v2 = self;
  v60 = *MEMORY[0x277D85DE8];
  v3 = [(MSObjectQueue *)self->_uploadQueue smallestObjectWrappersTargetTotalSize:1 maxCount:1];
  v4 = [v3 count];

  if (v4)
  {
    v2->_state = 4;
    [(MSDaemon *)v2->_daemon releaseBusy];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__MSPublisher__requestDerivatives__block_invoke;
    block[3] = &unk_278E926D8;
    block[4] = v2;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v5 = [(MSObjectQueue *)v2->_uploadQueue objectWrappersWithZeroSizeMaxCount:v2->_publishBatchSize];
    v6 = [MSObjectWrapper objectsFromWrappers:v5];
    if ([v6 count])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v7 = objc_opt_class();
        v8 = v7;
        v9 = [(MSCupidStateMachine *)v2 personID];
        *buf = 138543874;
        v55 = v7;
        v56 = 2112;
        v57 = v9;
        v58 = 2048;
        v59 = [v5 count];
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Requesting derivatives for %ld files.", buf, 0x20u);
      }

      v10 = [MEMORY[0x277CCAB58] indexSet];
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __34__MSPublisher__requestDerivatives__block_invoke_50;
      v49[3] = &unk_278E90560;
      v11 = v10;
      v50 = v11;
      v51 = v2;
      [v6 enumerateObjectsUsingBlock:v49];
      [(MSObjectQueue *)v2->_uploadQueue removeObjectWrappersFromQueue:v5];
      if ([v11 count])
      {
        v12 = [v5 mutableCopy];
        [v12 removeObjectsAtIndexes:v11];

        v13 = [v6 mutableCopy];
        [v13 removeObjectsAtIndexes:v11];

        v6 = v13;
        v5 = v12;
      }

      [(MSObjectQueue *)v2->_derivativesQueue appendObjectWrappers:v5];
      objc_storeStrong(&v2->_pendingDerivativesQueue, v5);

      v14 = v5;
    }

    else
    {
      v43 = v6;
      v14 = [(MSObjectQueue *)v2->_derivativesQueue allObjectWrappersOrderedByDescendingErrorCountMaxCount:5];

      if ([v14 count])
      {
        v15 = MEMORY[0x277D86220];
        v44 = v2;
        while (1)
        {
          v16 = [MEMORY[0x277CBEB18] array];
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v17 = v14;
          v18 = [v17 countByEnumeratingWithState:&v45 objects:v53 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v46;
            while (2)
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v46 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v45 + 1) + 8 * i);
                v23 = [v22 errorCount];
                if (v23 <= 2)
                {
                  v28 = v23;
                  [v22 setErrorCount:(v23 + 1)];
                  v2 = v44;
                  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                  {
                    v29 = objc_opt_class();
                    v30 = v29;
                    v31 = [v22 object];
                    *buf = 138543874;
                    v55 = v29;
                    v56 = 2114;
                    v57 = v31;
                    v58 = 1024;
                    LODWORD(v59) = v28;
                    _os_log_impl(&dword_245B99000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ - Retrying to get derivative for %{public}@ (error count: %i)", buf, 0x1Cu);
                  }

                  derivativesQueue = v44->_derivativesQueue;
                  v33 = [MEMORY[0x277CBEA60] arrayWithObject:v22];
                  [(MSObjectQueue *)derivativesQueue commitErrorCountsForObjectWrappers:v33];

                  v27 = v22;
                  goto LABEL_26;
                }

                if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                {
                  v24 = objc_opt_class();
                  v25 = v24;
                  v26 = [v22 object];
                  *buf = 138543618;
                  v55 = v24;
                  v56 = 2114;
                  v57 = v26;
                  _os_log_error_impl(&dword_245B99000, v15, OS_LOG_TYPE_ERROR, "%{public}@ - unable to generate derivatives for %{public}@ safely.", buf, 0x16u);
                }

                [v16 addObject:v22];
              }

              v19 = [v17 countByEnumeratingWithState:&v45 objects:v53 count:16];
              if (v19)
              {
                continue;
              }

              break;
            }

            v27 = 0;
            v2 = v44;
          }

          else
          {
            v27 = 0;
          }

LABEL_26:

          if ([v16 count])
          {
            [(MSObjectQueue *)v2->_derivativesQueue removeObjectWrappersFromQueue:v16];
          }

          if (v27)
          {
            break;
          }

          v14 = [(MSObjectQueue *)v2->_derivativesQueue allObjectWrappersOrderedByDescendingErrorCountMaxCount:5];

          if (![v14 count])
          {
            goto LABEL_30;
          }
        }

        v37 = MEMORY[0x277CBEA60];
        v38 = [v27 object];
        v39 = [v37 arrayWithObject:v38];

        v40 = [MEMORY[0x277CBEA60] arrayWithObject:v27];
        pendingDerivativesQueue = v2->_pendingDerivativesQueue;
        v2->_pendingDerivativesQueue = v40;

        v6 = v39;
        v14 = v17;
      }

      else
      {
LABEL_30:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v34 = objc_opt_class();
          v35 = v34;
          v36 = [(MSCupidStateMachine *)v2 personID];
          *buf = 138543618;
          v55 = v34;
          v56 = 2112;
          v57 = v36;
          _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ No more derivatives to request.", buf, 0x16u);
        }

        v6 = v43;
      }
    }

    [(MSPublisher *)v2 _updateMasterManifest];
    if ([v6 count])
    {
      v2->_state = 3;
      [(MSPublisherDelegate *)v2->_delegate publisher:v2 didRequestSubmissionOfAssetCollections:v6];
    }

    else
    {
      v2->_state = 0;
      [(MSDaemon *)v2->_daemon releaseBusy];
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

void __34__MSPublisher__requestDerivatives__block_invoke_50(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 masterAsset];
  if (v6)
  {
    v7 = [v5 masterAssetHash];
    if (!v7)
    {
      goto LABEL_4;
    }

    v8 = v7;
    v9 = [v6 metadata];
    v10 = [v9 objectForKey:@"MSAssetMetadataSHA1HashKey"];

    if (!v10)
    {
LABEL_4:
      [*(*(a1 + 40) + 152) computeHashForAsset:v6];
    }
  }

  else
  {
    [*(a1 + 32) addIndex:a3];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "masterAsset unavailable for asset collection %@, unable to request derivatives", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)publish
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(MSCupidStateMachine *)self hasDeactivated])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = objc_opt_class();
      v4 = [(MSCupidStateMachine *)self personID];
      v13 = 138543618;
      v14 = v3;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Not publishing because we're shutting down.", &v13, 0x16u);
    }

    goto LABEL_4;
  }

  state = self->_state;
  if (state > 6)
  {
    if (state > 9)
    {
      if (state == 10)
      {
        if ([(MSPublisher *)self _isAllowedToUpload])
        {
          [(MSDaemon *)self->_daemon retainBusy];
          v7 = 11;
          goto LABEL_36;
        }

        goto LABEL_4;
      }

      if (state != 11)
      {
        goto LABEL_4;
      }

      v9 = *MEMORY[0x277D85DE8];

      [(MSPublisher *)self _sendUploadComplete];
    }

    else
    {
      if (state == 7)
      {
        if ([(MSPublisher *)self _isAllowedToUpload])
        {
          [(MSDaemon *)self->_daemon retainBusy];
          v7 = 8;
          goto LABEL_36;
        }

LABEL_4:
        v5 = *MEMORY[0x277D85DE8];
        return;
      }

      if (state != 8)
      {
        goto LABEL_4;
      }

      v8 = *MEMORY[0x277D85DE8];

      [(MSPublisher *)self _sendFilesToMMCS];
    }
  }

  else if (state > 3)
  {
    if (state == 4)
    {
      if ([(MSPublisher *)self _isAllowedToUpload])
      {
        [(MSDaemon *)self->_daemon retainBusy];
        v7 = 5;
        goto LABEL_36;
      }

      goto LABEL_4;
    }

    if (state != 5)
    {
      goto LABEL_4;
    }

    v10 = *MEMORY[0x277D85DE8];

    [(MSPublisher *)self _sendMetadataToStreams];
  }

  else
  {
    if (state < 2)
    {
      if ([(MSPublisher *)self _isAllowedToUpload])
      {
        [(MSDaemon *)self->_daemon retainBusy];
        v7 = 2;
LABEL_36:
        self->_state = v7;
        v12 = *MEMORY[0x277D85DE8];

        [(MSPublisher *)self publish];
        return;
      }

      goto LABEL_4;
    }

    if (state != 2)
    {
      goto LABEL_4;
    }

    v11 = *MEMORY[0x277D85DE8];

    [(MSPublisher *)self _requestDerivatives];
  }
}

- (BOOL)_isAllowedToUpload
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = MSPlatform();
  if ([v3 policyMayUpload])
  {
    v4 = [(MSCupidStateMachine *)self _latestNextActivityDate];
    v5 = [MEMORY[0x277CBEAA8] date];
    v6 = [v4 compare:v5];

    if (v6 != 1)
    {
      result = 1;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v8)
  {
    v9 = objc_opt_class();
    v10 = v9;
    v11 = [(MSCupidStateMachine *)self personID];
    v13 = 138543618;
    v14 = v9;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Not uploading at this time.", &v13, 0x16u);

    result = 0;
  }

LABEL_7:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)reenqueueQuarantinedAssetCollections
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [(MSObjectQueue *)self->_quarantinedQueue allObjectWrappersMaxCount:10];
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if ([v3 count])
  {
    v21 = 0;
    v5 = MEMORY[0x277D86220];
    v23 = self;
    do
    {
      context = objc_autoreleasePoolPush();
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v7 = v3;
      v8 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v25;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v25 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v24 + 1) + 8 * i);
            v13 = [v12 object];
            v14 = [v13 assetCollectionID];
            if (v14)
            {
              if ([v4 containsObject:v14])
              {
                if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
                {
                  v15 = objc_opt_class();
                  *buf = 138543618;
                  v29 = v15;
                  v30 = 2114;
                  v31 = v14;
                  v16 = v15;
                  _os_log_error_impl(&dword_245B99000, v5, OS_LOG_TYPE_ERROR, "%{public}@ - discarding a collection with identifier %{public}@ that was quarantined too many times.", buf, 0x16u);
                }
              }

              else
              {
                [v4 addObject:v14];
                [v6 addObject:v12];
              }
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v9);
      }

      [(MSObjectQueue *)v23->_quarantinedQueue removeObjectWrappersFromQueue:v7];
      if ([v6 count])
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v17 = objc_opt_class();
          v18 = v17;
          v19 = [v6 count];
          *buf = 138543618;
          v29 = v17;
          v30 = 2048;
          v31 = v19;
          _os_log_impl(&dword_245B99000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - reenqueuing %ld quarantined collections.", buf, 0x16u);
        }

        [(MSObjectQueue *)v23->_uploadQueue appendObjectWrappers:v6];
        v21 = 1;
      }

      v3 = [(MSObjectQueue *)v23->_quarantinedQueue allObjectWrappersMaxCount:10];

      objc_autoreleasePoolPop(context);
    }

    while ([v3 count]);
    if (v21)
    {
      [(MSPublisher *)v23 _updateMasterManifest];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)_checkObjectWrappers:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v22;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [v12 object];
        if ([v12 size])
        {
          v14 = [(MSPublisher *)self _checkAssetCollectionFiles:v13];
        }

        else
        {
          v14 = v13;
        }

        v15 = v14;
        if (!v14)
        {
          goto LABEL_12;
        }

        if (v14 != v13)
        {
          v16 = [MSObjectWrapper wrapperWithObject:v14 size:0];
          [v5 addObject:v16];

LABEL_12:
          v9 = 1;
          goto LABEL_14;
        }

        [v5 addObject:v12];
LABEL_14:
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (!v8)
      {

        v17 = v5;
        if (v9)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }
  }

LABEL_19:
  v17 = v6;
LABEL_20:
  v18 = v17;

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)_checkAssetCollectionFiles:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 masterAsset];
  if (![(MSPublisher *)self _verifyAssetFile:v5])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v24 = objc_opt_class();
      v25 = 2114;
      v26 = v4;
      v14 = v24;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %{public}@ has disappeared.", buf, 0x16u);
    }

    v13 = 0;
LABEL_21:
    v7 = v4;
    goto LABEL_22;
  }

  v6 = [v4 assetCollectionID];

  if (!v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v24 = objc_opt_class();
      v25 = 2114;
      v26 = v4;
      v7 = v24;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %{public}@ has lost his collection ID.", buf, 0x16u);
LABEL_19:
    }

    v13 = [(MSPublisher *)self _collectionWithNoDerivatives:v4];
    goto LABEL_21;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v4 derivedAssets];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if (![(MSPublisher *)self _verifyAssetFile:v12])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v15 = objc_opt_class();
            *buf = 138543874;
            v24 = v15;
            v25 = 2114;
            v26 = v12;
            v27 = 2114;
            v28 = v4;
            v16 = v15;
            _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %{public}@ for %{public}@ has disappeared. Will have to recompute derivatives.", buf, 0x20u);
          }

          goto LABEL_19;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v29 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = v4;
LABEL_22:

  v17 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_collectionWithNoDerivatives:(id)a3
{
  v3 = a3;
  v4 = [v3 masterAsset];
  v5 = [v3 fileName];
  v6 = [MSAssetCollection collectionWithMasterAsset:v4 fileName:v5];

  v7 = [v3 assetCollectionID];

  if (!v7)
  {
    v7 = [MEMORY[0x277CCACA8] MSMakeUUID];
  }

  [v6 setAssetCollectionID:v7];

  return v6;
}

- (BOOL)_verifyAssetFile:(id)a3
{
  v4 = a3;
  v5 = [v4 path];
  v6 = [v4 fileData];

  if (v6)
  {
    goto LABEL_4;
  }

  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    v6 = 0;
LABEL_4:
    v8 = 1;
    goto LABEL_5;
  }

  if (!v5)
  {
    v8 = 1;
    goto LABEL_6;
  }

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v6 fileExistsAtPath:v5 isDirectory:0];
LABEL_5:

LABEL_6:
  return v8;
}

- (void)_quarantineOrDiscardWrappers:(id)a3 withError:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v26 = a4;
  Current = CFAbsoluteTimeGetCurrent();
  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    v11 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        v14 = [v13 object];
        v15 = [v14 initialFailureDate];
        if (v15 >= 1 && (Current - v15) >= 0x93A81)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v23 = objc_opt_class();
            *buf = 138543618;
            v35 = v23;
            v36 = 2114;
            v37 = v14;
            v24 = v23;
            _os_log_error_impl(&dword_245B99000, v11, OS_LOG_TYPE_ERROR, "%{public}@ - quarantine for %{public}@ has been there for too long. Better to just abandon", buf, 0x16u);
          }

          v21 = v28;
          v22 = v14;
        }

        else
        {
          v17 = v15;
          if (!v15)
          {
            [v14 setInitialFailureDate:Current];
          }

          [v13 setErrorCount:0];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v18 = objc_opt_class();
            *buf = 138543874;
            v19 = ", again";
            if (!v17)
            {
              v19 = " for the first time";
            }

            v35 = v18;
            v36 = 2114;
            v37 = v14;
            v38 = 2082;
            v39 = v19;
            v20 = v18;
            _os_log_impl(&dword_245B99000, v11, OS_LOG_TYPE_INFO, "%{public}@ - putting %{public}@ in quarantine%{public}s.", buf, 0x20u);
          }

          v21 = v7;
          v22 = v13;
        }

        [v21 addObject:v22];
      }

      v9 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v9);
  }

  if ([v7 count])
  {
    [(MSObjectQueue *)self->_quarantinedQueue appendObjectWrappers:v7];
  }

  if ([v28 count])
  {
    [(MSPublisher *)self _didFinishUsingAssetCollections:v28];
    [(MSPublisherDelegate *)self->_delegate publisher:self didEncounterError:v26 publishingAssetCollections:v28];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_registerAllAssetsForWrapper:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [a3 object];
  v5 = [MEMORY[0x277CBEA60] arrayWithObject:v4];
  [(MSPublisher *)self _didFinishUsingAssetCollections:v5];

  v6 = [v4 masterAsset];
  [(MSPublisher *)self _registerAsset:v6];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v4 derivedAssets];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(MSPublisher *)self _registerAsset:*(*(&v13 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_registerAsset:(id)a3
{
  v4 = a3;
  [v4 setFileHash:0];
  [v4 setProtocolFileSize:0];
  [(MSPublishStorageProtocol *)self->_storageProtocol computeHashForAsset:v4];
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

      [(MSPublisher *)self _refreshServerSideConfiguredParameters];
    }

    v15 = *MEMORY[0x277D85DE8];
  }

  else
  {
    [(MSPublisher *)self performSelectorOnMainThread:sel__serverSideConfigurationDidChange_ withObject:v16 waitUntilDone:0];
    v7 = *MEMORY[0x277D85DE8];
  }
}

- (void)_refreshServerSideConfiguredParameters
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = [(MSCupidStateMachine *)self personID];
  self->_publishTargetByteCount = [MSServerSideConfigManager longLongValueForParameter:@"mme.streams.client.pubUploadBatchTargetSize" forPersonID:v3 defaultValue:5242880];

  v4 = [(MSCupidStateMachine *)self personID];
  self->_publishBatchSize = [MSServerSideConfigManager intValueForParameter:@"mme.streams.client.pubMaxUploadBatchCount" forPersonID:v4 defaultValue:1];

  v5 = [(MSCupidStateMachine *)self personID];
  v30 = self;
  self->_maxErrorCount = [MSServerSideConfigManager intValueForParameter:@"mme.streams.client.pubMaxErrorRetryCount" forPersonID:v5 defaultValue:3];

  if (_refreshServerSideConfiguredParameters_once != -1)
  {
    dispatch_once(&_refreshServerSideConfiguredParameters_once, &__block_literal_global);
  }

  v6 = [(MSCupidStateMachine *)self personID];
  v7 = [MSServerSideConfigManager objectForKey:@"supportedAssets" forPersonID:v6 defaultValue:_refreshServerSideConfiguredParameters_defaultSupportedAssetTypes];

  [(NSMutableDictionary *)v30->_maxSizeByUTI removeAllObjects];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v29 = v7;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v34;
      v11 = @"assetType";
      v12 = 0x277CCA000uLL;
      do
      {
        v13 = 0;
        v31 = v9;
        do
        {
          if (*v34 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v33 + 1) + 8 * v13);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [v14 objectForKey:v11];
            v16 = *(v12 + 3240);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [v14 objectForKey:@"maxFileSizeMB"];
              if (objc_opt_respondsToSelector())
              {
                v18 = [v17 longLongValue];
                maxSizeByUTI = v30->_maxSizeByUTI;
                [MEMORY[0x277CCABB0] numberWithLongLong:v18 << 20];
                v20 = v12;
                v22 = v21 = v11;
                v23 = maxSizeByUTI;
                v9 = v31;
                [(NSMutableDictionary *)v23 setObject:v22 forKey:v15];

                v11 = v21;
                v12 = v20;
              }

              else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v38 = @"maxFileSizeMB";
                _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Server-side configuration key %{public}@ cannot be parsed as a number.", buf, 0xCu);
              }
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v38 = v11;
              _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Server-side configuration key %{public}@ is not a string.", buf, 0xCu);
            }
          }

          ++v13;
        }

        while (v9 != v13);
        v9 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
      }

      while (v9);
    }

    v7 = v29;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v38 = @"supportedAssets";
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Server-side configuration key %{public}@ does not contain an array.", buf, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v25 = objc_opt_class();
    v26 = v25;
    v27 = [(MSCupidStateMachine *)v30 personID];
    v28 = v30->_maxSizeByUTI;
    *buf = 138543874;
    v38 = v25;
    v39 = 2112;
    v40 = v27;
    v41 = 2114;
    v42 = v28;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ _maxSizeByUTI: %{public}@", buf, 0x20u);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __53__MSPublisher__refreshServerSideConfiguredParameters__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEA60]);
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"public.tiff", @"assetType", @"100", @"maxFileSizeMB", 0}];
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"public.jpeg", @"assetType", @"50", @"maxFileSizeMB", 0}];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"public.camera-raw-image", @"assetType", @"100", @"maxFileSizeMB", 0}];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"public.png", @"assetType", @"50", @"maxFileSizeMB", 0}];
  v4 = [v0 initWithObjects:{v6, v1, v2, v3, 0}];
  v5 = _refreshServerSideConfiguredParameters_defaultSupportedAssetTypes;
  _refreshServerSideConfiguredParameters_defaultSupportedAssetTypes = v4;
}

- (BOOL)dequeueAssetCollectionWithGUIDs:(id)a3 outError:(id *)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [(MSCupidStateMachine *)self personID];
    *buf = 138543874;
    v33 = v6;
    v34 = 2112;
    v35 = v8;
    v36 = 2114;
    v37 = v5;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ dequeuing asset collections: %{public}@", buf, 0x20u);
  }

  v9 = [MEMORY[0x277CBEB58] setWithArray:v5];
  v26 = v5;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v25 = self;
  [(MSObjectQueue *)self->_uploadQueue allObjectWrappersMaxCount:0x7FFFFFFFFFFFFFFFLL];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = v30 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        v17 = [v16 object];
        v18 = [v17 assetCollectionID];
        if (v18)
        {
          if ([v9 containsObject:v18])
          {
            [v10 addObject:v16];
            [v9 removeObject:v18];
            if (![v9 count])
            {

              goto LABEL_15;
            }
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  if ([v10 count])
  {
    [(MSObjectQueue *)v25->_uploadQueue removeObjectWrappersFromQueue:v10];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v19 = objc_opt_class();
      v20 = v19;
      v21 = [(MSCupidStateMachine *)v25 personID];
      v22 = [v10 count];
      *buf = 138543874;
      v33 = v19;
      v34 = 2112;
      v35 = v21;
      v36 = 2048;
      v37 = v22;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ removed %lu asset collections from upload queue", buf, 0x20u);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)enqueueAssetCollections:(id)a3 outError:(id *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [(MSCupidStateMachine *)self personID];
    *buf = 138543874;
    v28 = v6;
    v29 = 2112;
    v30 = v8;
    v31 = 2114;
    v32 = v5;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ enqueuing asset collections: %{public}@", buf, 0x20u);
  }

  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = [v15 assetCollectionID];

        if (!v16)
        {
          v17 = [MEMORY[0x277CCACA8] MSMakeUUID];
          [v15 setAssetCollectionID:v17];
        }

        v18 = [MSObjectWrapper wrapperWithObject:v15 size:0];
        [v9 addObject:v18];
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  [(MSObjectQueue *)self->_uploadQueue appendObjectWrappers:v9];
  [(MSPublisher *)self _updateMasterManifest];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__MSPublisher_enqueueAssetCollections_outError___block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v19 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_updateMasterManifest
{
  v7 = [(MSCupidStateMachine *)self _latestNextActivityDate];
  if ([(MSObjectQueue *)self->_uploadQueue count])
  {
    if (v7)
    {
LABEL_3:
      v3 = [(MSCupidStateMachine *)self personID];
      v4 = v7;
      goto LABEL_12;
    }
  }

  else
  {
    if ([(MSObjectQueue *)self->_derivativesQueue count])
    {
      v5 = v7 == 0;
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

  if ([(MSObjectQueue *)self->_quarantinedQueue count])
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:604800.0];
    v6 = [(MSCupidStateMachine *)self personID];
    [MSPublisher _setMasterNextActivityDate:v3 forPersonID:v6];

    goto LABEL_13;
  }

  v3 = [(MSCupidStateMachine *)self personID];
  v4 = 0;
LABEL_12:
  [MSPublisher _setMasterNextActivityDate:v4 forPersonID:v3];
LABEL_13:

  _commitMasterManifest();
}

- (void)dealloc
{
  [(MSPublisher *)self deactivate];
  v3.receiver = self;
  v3.super_class = MSPublisher;
  [(MSCupidStateMachine *)&v3 dealloc];
}

- (void)deactivate
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [(MSPublisher *)self stop];
  tempFiles = self->_tempFiles;
  self->_tempFiles = 0;

  storageProtocolURL = self->_storageProtocolURL;
  self->_storageProtocolURL = 0;

  [(MSPublishStorageProtocol *)self->_storageProtocol deactivateRemoveAllFiles:[(MSObjectQueue *)self->_uploadQueue count]== 0];
  storageProtocol = self->_storageProtocol;
  self->_storageProtocol = 0;

  protocol = self->_protocol;
  self->_protocol = 0;

  fileHashToAssetMap = self->_fileHashToAssetMap;
  self->_fileHashToAssetMap = 0;

  sendingQueue = self->_sendingQueue;
  self->_sendingQueue = 0;

  requestAuthQueue = self->_requestAuthQueue;
  self->_requestAuthQueue = 0;

  pendingDerivativesQueue = self->_pendingDerivativesQueue;
  self->_pendingDerivativesQueue = 0;

  uploadQueue = self->_uploadQueue;
  self->_uploadQueue = 0;

  derivativesQueue = self->_derivativesQueue;
  self->_derivativesQueue = 0;

  quarantinedQueue = self->_quarantinedQueue;
  self->_quarantinedQueue = 0;

  maxSizeByUTI = self->_maxSizeByUTI;
  self->_maxSizeByUTI = 0;

  v16.receiver = self;
  v16.super_class = MSPublisher;
  [(MSCupidStateMachine *)&v16 deactivate];
}

- (MSPublisher)initWithPersonID:(id)a3 baseURL:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v44.receiver = self;
  v44.super_class = MSPublisher;
  v8 = [(MSCupidStateMachine *)&v44 initWithPersonID:v6];
  if (v8)
  {
    v9 = [MSObjectQueue alloc];
    v10 = [(MSCupidStateMachine *)v8 personID];
    v11 = MSPathPublishQueueForPersonID(v10);
    v12 = [(MSObjectQueue *)v9 initWithPath:v11];
    uploadQueue = v8->_uploadQueue;
    v8->_uploadQueue = v12;

    v14 = [MSObjectQueue alloc];
    v15 = [(MSCupidStateMachine *)v8 personID];
    v16 = MSPathPublishDerivativesQueueForPersonID(v15);
    v17 = [(MSObjectQueue *)v14 initWithPath:v16];
    derivativesQueue = v8->_derivativesQueue;
    v8->_derivativesQueue = v17;

    v19 = [MSObjectQueue alloc];
    v20 = [(MSCupidStateMachine *)v8 personID];
    v21 = MSPathPublishDiscardedQueueForPersonID(v20);
    v22 = [(MSObjectQueue *)v19 initWithPath:v21];
    quarantinedQueue = v8->_quarantinedQueue;
    v8->_quarantinedQueue = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sendingQueue = v8->_sendingQueue;
    v8->_sendingQueue = v24;

    v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
    requestAuthQueue = v8->_requestAuthQueue;
    v8->_requestAuthQueue = v26;

    v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
    fileHashToAssetMap = v8->_fileHashToAssetMap;
    v8->_fileHashToAssetMap = v28;

    v30 = [[MSPublishStreamsProtocol alloc] initWithPersonID:v6 baseURL:v7];
    protocol = v8->_protocol;
    v8->_protocol = v30;

    v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
    tempFiles = v8->_tempFiles;
    v8->_tempFiles = v32;

    [(MSPublishStreamsProtocol *)v8->_protocol setDelegate:v8];
    v34 = [[MSPublishMMCSProtocol alloc] initWithPersonID:v6];
    storageProtocol = v8->_storageProtocol;
    v8->_storageProtocol = v34;

    [(MSPublishStorageProtocol *)v8->_storageProtocol setDelegate:v8];
    v36 = [MEMORY[0x277CCAB98] defaultCenter];
    [v36 addObserver:v8 selector:sel__serverSideConfigurationDidChange_ name:@"MSServerSideConfigChanged" object:0];

    v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
    maxSizeByUTI = v8->_maxSizeByUTI;
    v8->_maxSizeByUTI = v37;

    [(MSPublisher *)v8 _refreshServerSideConfiguredParameters];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v39 = objc_opt_class();
      v40 = v39;
      v41 = [objc_opt_class() nextActivityDateForPersonID:v6];
      *buf = 138543618;
      v46 = v39;
      v47 = 2114;
      v48 = v41;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: next activity date is %{public}@", buf, 0x16u);
    }
  }

  v42 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (BOOL)isInRetryState
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [_publisherByID allValues];
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
  v2 = [_publisherByID allValues];
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
  v2 = _masterNextActivityDateByPersonID();
  v3 = [v2 allKeys];

  return v3;
}

+ (id)nextActivityDateForPersonID:(id)a3
{
  v3 = a3;
  v4 = _masterNextActivityDateByPersonID();
  v5 = [v4 objectForKey:v3];

  return v5;
}

+ (id)nextActivityDate
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = _masterNextActivityDateByPersonID();
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
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = _masterNextActivityDateByPersonID();
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v11 = 138543874;
        *&v11[4] = objc_opt_class();
        *&v11[12] = 2112;
        *&v11[14] = v6;
        *&v11[22] = 2114;
        v12 = v5;
        v9 = *&v11[4];
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - setting next activity date for %@ to %{public}@.", v11, 0x20u);
      }

      [v8 setObject:v5 forKey:{v6, *v11, *&v11[16], v12}];
    }

    else
    {
      [v7 removeObjectForKey:v6];
    }

    _commitMasterManifest();
    goto LABEL_10;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v11 = 138543362;
    *&v11[4] = objc_opt_class();
    v8 = *&v11[4];
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - Found empty person ID.", v11, 0xCu);
LABEL_10:
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)forgetPersonID:(id)a3
{
  v5 = a3;
  v3 = [_publisherByID objectForKey:?];
  v4 = v3;
  if (v3)
  {
    [v3 forget];
    [_publisherByID removeObjectForKey:v5];
  }
}

+ (id)_clearInstantiatedPublishersByPersonID
{
  v2 = _publisherByID;
  v3 = _publisherByID;
  v4 = _publisherByID;
  _publisherByID = 0;

  return v2;
}

+ (id)publisherForPersonID:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = _publisherByID;
    if (!_publisherByID)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v6 = _publisherByID;
      _publisherByID = v5;

      v4 = _publisherByID;
    }

    v7 = [v4 objectForKey:v3];
    if (!v7)
    {
      v8 = [MSPublisher alloc];
      v9 = MSPlatform();
      v10 = [v9 baseURLForPersonID:v3];
      v7 = [(MSPublisher *)v8 initWithPersonID:v3 baseURL:v10];

      [_publisherByID setObject:v7 forKey:v3];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end