@interface MSReauthorizationProtocol
- (MSReauthorizationProtocol)initWithPersonID:(id)d baseURL:(id)l;
- (id)delegate;
- (void)_coreProtocolDidFailAuthenticationError:(id)error;
- (void)_coreProtocolDidFinishResponse:(id)response error:(id)error;
- (void)abort;
- (void)dealloc;
- (void)requestReauthorizationForAssets:(id)assets;
- (void)setDelegate:(id)delegate;
@end

@implementation MSReauthorizationProtocol

- (void)_coreProtocolDidFailAuthenticationError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = objc_opt_class();
    v9 = v8;
    personID = [(MSStreamsProtocol *)self personID];
    mSVerboseDescription = [errorCopy MSVerboseDescription];
    v12 = 138543874;
    v13 = v8;
    v14 = 2112;
    v15 = personID;
    v16 = 2114;
    v17 = mSVerboseDescription;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Failed authentication. Error: %{public}@", &v12, 0x20u);
  }

  assetsInFlight = self->_assetsInFlight;
  self->_assetsInFlight = 0;

  delegate = [(MSReauthorizationProtocol *)self delegate];
  [delegate reauthorizationProtocol:self didReceiveAuthenticationError:errorCopy];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_coreProtocolDidFinishResponse:(id)response error:(id)error
{
  v58 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  errorCopy = error;
  if (errorCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v31 = objc_opt_class();
      v32 = v31;
      personID = [(MSStreamsProtocol *)self personID];
      mSVerboseDescription = [errorCopy MSVerboseDescription];
      *buf = 138543874;
      v53 = v31;
      v54 = 2112;
      v55 = personID;
      v56 = 2114;
      v57 = mSVerboseDescription;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Reauthorization has failed. Error: %{public}@", buf, 0x20u);
    }

    assetsInFlight = self->_assetsInFlight;
    self->_assetsInFlight = 0;
    v9 = assetsInFlight;

    delegate = [(MSReauthorizationProtocol *)self delegate];
    [delegate reauthorizationProtocol:self reauthorizedAssets:0 rejectedAssets:v9 error:errorCopy];
  }

  else
  {
    delegate = [(NSArray *)self->_assetsInFlight mutableCopy];
    v11 = self->_assetsInFlight;
    self->_assetsInFlight = 0;

    v37 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(responseCopy, "count")}];
    selfCopy = self;
    personID2 = [(MSStreamsProtocol *)self personID];
    v36 = responseCopy;
    v13 = [responseCopy objectForKey:personID2];

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v14 = v13;
    v41 = [v14 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v41)
    {
      v39 = delegate;
      v40 = *v47;
      v38 = v14;
LABEL_7:
      v15 = 0;
      while (1)
      {
        if (*v47 != v40)
        {
          objc_enumerationMutation(v14);
        }

        v16 = *(*(&v46 + 1) + 8 * v15);
        mSHexData = [v16 MSHexData];
        if (!mSHexData)
        {
          break;
        }

        v18 = mSHexData;
        v19 = [v14 objectForKey:v16];
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v20 = delegate;
        v21 = [v20 countByEnumeratingWithState:&v42 objects:v50 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v43;
LABEL_13:
          v24 = 0;
          while (1)
          {
            if (*v43 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v42 + 1) + 8 * v24);
            fileHash = [v25 fileHash];
            v27 = [fileHash isEqualToData:v18];

            if (v27)
            {
              break;
            }

            if (v22 == ++v24)
            {
              v22 = [v20 countByEnumeratingWithState:&v42 objects:v50 count:16];
              if (v22)
              {
                goto LABEL_13;
              }

              v14 = v38;
              delegate = v39;
              goto LABEL_22;
            }
          }

          v28 = v25;

          v14 = v38;
          delegate = v39;
          if (!v28)
          {
            goto LABEL_23;
          }

          [v28 setMMCSAccessHeader:v19];
          [(NSArray *)v37 addObject:v28];
          [v20 MSRemoveOneObject:v28];
          v20 = v28;
        }

LABEL_22:

LABEL_23:
        if (++v15 == v41)
        {
          v41 = [v14 countByEnumeratingWithState:&v46 objects:v51 count:16];
          if (v41)
          {
            goto LABEL_7;
          }

          break;
        }
      }
    }

    delegate2 = [(MSReauthorizationProtocol *)selfCopy delegate];
    v9 = v37;
    [delegate2 reauthorizationProtocol:selfCopy reauthorizedAssets:v37 rejectedAssets:delegate error:0];

    errorCopy = 0;
    responseCopy = v36;
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)abort
{
  MSSPCCancelHTTPTransaction(&self->_context);
  assetsInFlight = self->_assetsInFlight;
  self->_assetsInFlight = 0;
}

- (void)requestReauthorizationForAssets:(id)assets
{
  v33 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = v5;
    personID = [(MSStreamsProtocol *)self personID];
    *buf = 138543874;
    v28 = v5;
    v29 = 2112;
    v30 = personID;
    v31 = 2048;
    v32 = [assetsCopy count];
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ Reauthorizing %ld items", buf, 0x20u);
  }

  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(assetsCopy, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = assetsCopy;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        fileHash = [v14 fileHash];

        if (fileHash)
        {
          fileHash2 = [v14 fileHash];
          mSHexString = [fileHash2 MSHexString];
          [v8 addObject:mSHexString];
        }
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  assetsInFlight = self->_assetsInFlight;
  self->_assetsInFlight = v9;

  [(MSStreamsProtocol *)self _refreshAuthTokenForContext:&self->_context];
  reauthorizeURL = [(MSStreamsProtocol *)self reauthorizeURL];
  v20 = MSPURLConnectionProperties();
  MSRPCReauthorizeAsync(&self->_context._super.owner, reauthorizeURL, v20, [(MSStreamsProtocol *)self personID], v8);

  v21 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  p_context = &self->_context;

  v4.receiver = self;
  v4.super_class = MSReauthorizationProtocol;
  [(MSReauthorizationProtocol *)&v4 dealloc];
}

- (MSReauthorizationProtocol)initWithPersonID:(id)d baseURL:(id)l
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = MSReauthorizationProtocol;
  v7 = [(MSStreamsProtocol *)&v10 initWithPersonID:dCopy baseURL:l];
  v8 = v7;
  if (v7)
  {
    v7->_context._super.owner = v7;
    v7->_context._super.personID = dCopy;
    v8->_context._super.deviceInfo = [(MSStreamsProtocol *)v8 deviceInfoDict];
    v8->_context._super.connectionTimeout = 0.0;
    v8->_context.finishedCallback = _protocolDidFinish_2707;
    v8->_context.authFailedCallback = _protocolDidFailAuthentication_2706;
    v8->_context.didReceiveRetryAfterCallback = _protocolDidReceiveRetryAfterDate_2705;
    v8->_context.didReceiveServerSideConfigurationVersionCallback = _protocolDidReceiveServerSideConfigurationVersion_2704;
  }

  return v8;
}

- (void)setDelegate:(id)delegate
{
  v3.receiver = self;
  v3.super_class = MSReauthorizationProtocol;
  [(MSStreamsProtocol *)&v3 setDelegate:delegate];
}

- (id)delegate
{
  v4.receiver = self;
  v4.super_class = MSReauthorizationProtocol;
  delegate = [(MSStreamsProtocol *)&v4 delegate];

  return delegate;
}

@end