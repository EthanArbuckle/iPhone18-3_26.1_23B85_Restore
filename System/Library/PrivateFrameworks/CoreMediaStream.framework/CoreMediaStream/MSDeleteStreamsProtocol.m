@interface MSDeleteStreamsProtocol
- (MSDeleteStreamsProtocol)initWithPersonID:(id)a3 baseURL:(id)a4;
- (void)_coreProtocolDidFailAuthenticationError:(id)a3;
- (void)_coreProtocolDidFinishResponse:(id)a3 error:(id)a4;
- (void)_resetConnectionVariables;
- (void)sendDeletionRequestForAssetCollections:(id)a3;
@end

@implementation MSDeleteStreamsProtocol

- (void)_resetConnectionVariables
{
  collectionsInFlight = self->_collectionsInFlight;
  self->_collectionsInFlight = 0;
  MEMORY[0x2821F96F8]();
}

- (void)_coreProtocolDidFailAuthenticationError:(id)a3
{
  v4 = a3;
  v5 = [(MSStreamsProtocol *)self delegate];
  [v5 deleteProtocol:self didReceiveAuthenticationError:v4];
}

- (void)_coreProtocolDidFinishResponse:(id)a3 error:(id)a4
{
  v72 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v40 = objc_opt_class();
      v41 = v40;
      v42 = [(MSStreamsProtocol *)self personID];
      *buf = 138543874;
      v67 = v40;
      v68 = 2112;
      v69 = v42;
      v70 = 2114;
      v71 = v7;
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
    v14 = [(MSStreamsProtocol *)self delegate];
    [v14 deleteProtocol:self didFinishSuccessfulCollections:0 failedCollections:v8 error:v7];
  }

  else
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](self->_collectionsInFlight, "count")}];
    v47 = [MEMORY[0x277CBEB18] array];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v48 = v6;
    v15 = v6;
    v16 = [v15 countByEnumeratingWithState:&v55 objects:v64 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v56;
      v50 = self;
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
                v32 = [(MSStreamsProtocol *)self personID];
                *buf = 138543874;
                v67 = v30;
                v68 = 2112;
                v69 = v32;
                v70 = 2114;
                v71 = v21;
                _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ Delete response contains unknown file hash %{public}@", buf, 0x20u);

                self = v50;
                v15 = v49;
              }
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              v27 = objc_opt_class();
              v28 = v27;
              v29 = [(MSStreamsProtocol *)self personID];
              *buf = 138543874;
              v67 = v27;
              v15 = v49;
              v68 = 2112;
              v69 = v29;
              v70 = 2114;
              v71 = v20;
              _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Delete response is missing the delete result. %{public}@", buf, 0x20u);

              self = v50;
            }
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v24 = objc_opt_class();
            v25 = v24;
            v26 = [(MSStreamsProtocol *)self personID];
            *buf = 138543874;
            v67 = v24;
            v15 = v49;
            v68 = 2112;
            v69 = v26;
            v70 = 2114;
            v71 = v20;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Delete response is missing a hash: %{public}@", buf, 0x20u);

            self = v50;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v55 objects:v64 count:16];
      }

      while (v17);
    }

    v14 = v47;
    v7 = 0;
    if ([(NSMutableArray *)self->_collectionsInFlight count])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v43 = objc_opt_class();
        v44 = v43;
        v45 = [(MSStreamsProtocol *)self personID];
        collectionsInFlight = self->_collectionsInFlight;
        *buf = 138543874;
        v67 = v43;
        v68 = 2112;
        v69 = v45;
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

            [v47 addObject:*(*(&v51 + 1) + 8 * k)];
          }

          v35 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v51 objects:v63 count:16];
        }

        while (v35);
      }
    }

    [(MSDeleteStreamsProtocol *)self _resetConnectionVariables];
    v38 = [(MSStreamsProtocol *)self delegate];
    [v38 deleteProtocol:self didFinishSuccessfulCollections:v8 failedCollections:v47 error:0];

    v6 = v48;
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)sendDeletionRequestForAssetCollections:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = self;
    [(NSMutableArray *)self->_collectionsInFlight removeAllObjects];
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20 = v4;
    obj = v4;
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
        v12 = [MEMORY[0x277CBEB38] dictionary];
        v13 = [v11 masterAssetHash];
        if (v13)
        {
          [(NSMutableArray *)v5->_collectionsInFlight addObject:v11];
          [v12 setObject:v13 forKey:@"fileHash"];
          v14 = [MEMORY[0x277CCACA8] MSMakeUUID];
          [v12 setObject:v14 forKey:@"UUID"];
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
          v14 = v15;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - Asset collection has no master file hash: %@", buf, 0x16u);
          goto LABEL_9;
        }

LABEL_11:
        [v6 addObject:v12];

        ++v10;
      }

      while (v8 != v10);
      v16 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
      v8 = v16;
      if (!v16)
      {
LABEL_15:

        [(MSStreamsProtocol *)v5 _refreshAuthTokenForContext:&v5->_context];
        v17 = [(MSStreamsProtocol *)v5 deleteURL];
        v18 = MSPURLConnectionProperties();
        MSDSPCSendDeletionRequestAsync(&v5->_context._super.owner, v17, v18, v6);

        v4 = v20;
        break;
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (MSDeleteStreamsProtocol)initWithPersonID:(id)a3 baseURL:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = MSDeleteStreamsProtocol;
  v7 = [(MSStreamsProtocol *)&v12 initWithPersonID:v6 baseURL:a4];
  v8 = v7;
  if (v7)
  {
    v7->_context._super.owner = v7;
    v7->_context._super.personID = v6;
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