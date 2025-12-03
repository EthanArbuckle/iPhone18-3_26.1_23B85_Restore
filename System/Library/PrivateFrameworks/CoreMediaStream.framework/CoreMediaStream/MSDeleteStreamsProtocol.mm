@interface MSDeleteStreamsProtocol
- (MSDeleteStreamsProtocol)initWithPersonID:(id)d baseURL:(id)l;
- (void)_coreProtocolDidFailAuthenticationError:(id)error;
- (void)_coreProtocolDidFinishResponse:(id)response error:(id)error;
- (void)_resetConnectionVariables;
- (void)sendDeletionRequestForAssetCollections:(id)collections;
@end

@implementation MSDeleteStreamsProtocol

- (void)_resetConnectionVariables
{
  collectionsInFlight = self->_collectionsInFlight;
  self->_collectionsInFlight = 0;
  MEMORY[0x2821F96F8]();
}

- (void)_coreProtocolDidFailAuthenticationError:(id)error
{
  errorCopy = error;
  delegate = [(MSStreamsProtocol *)self delegate];
  [delegate deleteProtocol:self didReceiveAuthenticationError:errorCopy];
}

- (void)_coreProtocolDidFinishResponse:(id)response error:(id)error
{
  v72 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  errorCopy = error;
  if (errorCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v40 = objc_opt_class();
      v41 = v40;
      personID = [(MSStreamsProtocol *)self personID];
      *buf = 138543874;
      v67 = v40;
      v68 = 2112;
      v69 = personID;
      v70 = 2114;
      v71 = errorCopy;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Delete request has failed. Error: %{public}@", buf, 0x20u);
    }

    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](self->_collectionsInFlight, "count")}];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v9 = self->_collectionsInFlight;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v59 objects:v65 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v60;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v60 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [v8 addObject:*(*(&v59 + 1) + 8 * i)];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v59 objects:v65 count:16];
      }

      while (v11);
    }

    [(MSDeleteStreamsProtocol *)self _resetConnectionVariables];
    delegate = [(MSStreamsProtocol *)self delegate];
    [delegate deleteProtocol:self didFinishSuccessfulCollections:0 failedCollections:v8 error:errorCopy];
  }

  else
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](self->_collectionsInFlight, "count")}];
    array = [MEMORY[0x277CBEB18] array];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v48 = responseCopy;
    v15 = responseCopy;
    v16 = [v15 countByEnumeratingWithState:&v55 objects:v64 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v56;
      selfCopy = self;
      v49 = v15;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v56 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v55 + 1) + 8 * j);
          v21 = [(NSMutableArray *)v20 objectForKey:@"fileHash"];
          if (v21)
          {
            v22 = [(NSMutableArray *)v20 objectForKey:@"deleteResult"];
            if (v22)
            {
              v23 = [(NSMutableArray *)self->_collectionsInFlight MSDSPAssetCollectionWithMasterFileHash:v21];
              if (v23)
              {
                [v8 addObject:v23];
                [(NSMutableArray *)self->_collectionsInFlight removeObject:v23];
              }

              else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v30 = objc_opt_class();
                v31 = v30;
                personID2 = [(MSStreamsProtocol *)self personID];
                *buf = 138543874;
                v67 = v30;
                v68 = 2112;
                v69 = personID2;
                v70 = 2114;
                v71 = v21;
                _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ Delete response contains unknown file hash %{public}@", buf, 0x20u);

                self = selfCopy;
                v15 = v49;
              }
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              v27 = objc_opt_class();
              v28 = v27;
              personID3 = [(MSStreamsProtocol *)self personID];
              *buf = 138543874;
              v67 = v27;
              v15 = v49;
              v68 = 2112;
              v69 = personID3;
              v70 = 2114;
              v71 = v20;
              _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Delete response is missing the delete result. %{public}@", buf, 0x20u);

              self = selfCopy;
            }
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v24 = objc_opt_class();
            v25 = v24;
            personID4 = [(MSStreamsProtocol *)self personID];
            *buf = 138543874;
            v67 = v24;
            v15 = v49;
            v68 = 2112;
            v69 = personID4;
            v70 = 2114;
            v71 = v20;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Delete response is missing a hash: %{public}@", buf, 0x20u);

            self = selfCopy;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v55 objects:v64 count:16];
      }

      while (v17);
    }

    delegate = array;
    errorCopy = 0;
    if ([(NSMutableArray *)self->_collectionsInFlight count])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v43 = objc_opt_class();
        v44 = v43;
        personID5 = [(MSStreamsProtocol *)self personID];
        collectionsInFlight = self->_collectionsInFlight;
        *buf = 138543874;
        v67 = v43;
        v68 = 2112;
        v69 = personID5;
        v70 = 2114;
        v71 = collectionsInFlight;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ These asset collections did not receive a delete response: %{public}@", buf, 0x20u);
      }

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v33 = self->_collectionsInFlight;
      v34 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v51 objects:v63 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v52;
        do
        {
          for (k = 0; k != v35; ++k)
          {
            if (*v52 != v36)
            {
              objc_enumerationMutation(v33);
            }

            [array addObject:*(*(&v51 + 1) + 8 * k)];
          }

          v35 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v51 objects:v63 count:16];
        }

        while (v35);
      }
    }

    [(MSDeleteStreamsProtocol *)self _resetConnectionVariables];
    delegate2 = [(MSStreamsProtocol *)self delegate];
    [delegate2 deleteProtocol:self didFinishSuccessfulCollections:v8 failedCollections:array error:0];

    responseCopy = v48;
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)sendDeletionRequestForAssetCollections:(id)collections
{
  v31 = *MEMORY[0x277D85DE8];
  collectionsCopy = collections;
  if ([collectionsCopy count])
  {
    selfCopy = self;
    [(NSMutableArray *)self->_collectionsInFlight removeAllObjects];
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(collectionsCopy, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20 = collectionsCopy;
    obj = collectionsCopy;
    v7 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = v7;
    v9 = *v23;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        masterAssetHash = [v11 masterAssetHash];
        if (masterAssetHash)
        {
          [(NSMutableArray *)selfCopy->_collectionsInFlight addObject:v11];
          [dictionary setObject:masterAssetHash forKey:@"fileHash"];
          mSMakeUUID = [MEMORY[0x277CCACA8] MSMakeUUID];
          [dictionary setObject:mSMakeUUID forKey:@"UUID"];
LABEL_9:

          goto LABEL_11;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v15 = objc_opt_class();
          *buf = 138543618;
          v27 = v15;
          v28 = 2112;
          v29 = v11;
          mSMakeUUID = v15;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - Asset collection has no master file hash: %@", buf, 0x16u);
          goto LABEL_9;
        }

LABEL_11:
        [v6 addObject:dictionary];

        ++v10;
      }

      while (v8 != v10);
      v16 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
      v8 = v16;
      if (!v16)
      {
LABEL_15:

        [(MSStreamsProtocol *)selfCopy _refreshAuthTokenForContext:&selfCopy->_context];
        deleteURL = [(MSStreamsProtocol *)selfCopy deleteURL];
        v18 = MSPURLConnectionProperties();
        MSDSPCSendDeletionRequestAsync(&selfCopy->_context._super.owner, deleteURL, v18, v6);

        collectionsCopy = v20;
        break;
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (MSDeleteStreamsProtocol)initWithPersonID:(id)d baseURL:(id)l
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = MSDeleteStreamsProtocol;
  v7 = [(MSStreamsProtocol *)&v12 initWithPersonID:dCopy baseURL:l];
  v8 = v7;
  if (v7)
  {
    v7->_context._super.owner = v7;
    v7->_context._super.personID = dCopy;
    v8->_context._super.deviceInfo = [(MSStreamsProtocol *)v8 deviceInfoDict];
    v8->_context._super.connectionTimeout = 0.0;
    v8->_context.finishedCallback = _protocolDidFinish_3362;
    v8->_context.authFailedCallback = _protocolDidFailAuthentication_3361;
    v8->_context.didReceiveRetryAfterCallback = _protocolDidReceiveRetryAfterDate_3360;
    v8->_context.didReceiveServerSideConfigurationVersionCallback = _protocolDidReceiveServerSideConfigurationVersion_3359;
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    collectionsInFlight = v8->_collectionsInFlight;
    v8->_collectionsInFlight = v9;
  }

  return v8;
}

@end