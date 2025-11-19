@interface MSReauthorizationProtocol
- (MSReauthorizationProtocol)initWithPersonID:(id)a3 baseURL:(id)a4;
- (id)delegate;
- (void)_coreProtocolDidFailAuthenticationError:(id)a3;
- (void)_coreProtocolDidFinishResponse:(id)a3 error:(id)a4;
- (void)abort;
- (void)dealloc;
- (void)requestReauthorizationForAssets:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation MSReauthorizationProtocol

- (void)_coreProtocolDidFailAuthenticationError:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = [(MSStreamsProtocol *)self personID];
    v11 = [v4 MSVerboseDescription];
    v12 = 138543874;
    v13 = v8;
    v14 = 2112;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Failed authentication. Error: %{public}@", &v12, 0x20u);
  }

  assetsInFlight = self->_assetsInFlight;
  self->_assetsInFlight = 0;

  v6 = [(MSReauthorizationProtocol *)self delegate];
  [v6 reauthorizationProtocol:self didReceiveAuthenticationError:v4];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_coreProtocolDidFinishResponse:(id)a3 error:(id)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v31 = objc_opt_class();
      v32 = v31;
      v33 = [(MSStreamsProtocol *)self personID];
      v34 = [v7 MSVerboseDescription];
      *buf = 138543874;
      v53 = v31;
      v54 = 2112;
      v55 = v33;
      v56 = 2114;
      v57 = v34;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Reauthorization has failed. Error: %{public}@", buf, 0x20u);
    }

    assetsInFlight = self->_assetsInFlight;
    self->_assetsInFlight = 0;
    v9 = assetsInFlight;

    v10 = [(MSReauthorizationProtocol *)self delegate];
    [v10 reauthorizationProtocol:self reauthorizedAssets:0 rejectedAssets:v9 error:v7];
  }

  else
  {
    v10 = [(NSArray *)self->_assetsInFlight mutableCopy];
    v11 = self->_assetsInFlight;
    self->_assetsInFlight = 0;

    v37 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v35 = self;
    v12 = [(MSStreamsProtocol *)self personID];
    v36 = v6;
    v13 = [v6 objectForKey:v12];

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v14 = v13;
    v41 = [v14 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v41)
    {
      v39 = v10;
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
        v17 = [v16 MSHexData];
        if (!v17)
        {
          break;
        }

        v18 = v17;
        v19 = [v14 objectForKey:v16];
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v20 = v10;
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
            v26 = [v25 fileHash];
            v27 = [v26 isEqualToData:v18];

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
              v10 = v39;
              goto LABEL_22;
            }
          }

          v28 = v25;

          v14 = v38;
          v10 = v39;
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

    v29 = [(MSReauthorizationProtocol *)v35 delegate];
    v9 = v37;
    [v29 reauthorizationProtocol:v35 reauthorizedAssets:v37 rejectedAssets:v10 error:0];

    v7 = 0;
    v6 = v36;
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)abort
{
  MSSPCCancelHTTPTransaction(&self->_context);
  assetsInFlight = self->_assetsInFlight;
  self->_assetsInFlight = 0;
}

- (void)requestReauthorizationForAssets:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = [(MSStreamsProtocol *)self personID];
    *buf = 138543874;
    v28 = v5;
    v29 = 2112;
    v30 = v7;
    v31 = 2048;
    v32 = [v4 count];
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ Reauthorizing %ld items", buf, 0x20u);
  }

  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v4;
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
        v15 = [v14 fileHash];

        if (v15)
        {
          v16 = [v14 fileHash];
          v17 = [v16 MSHexString];
          [v8 addObject:v17];
        }
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  assetsInFlight = self->_assetsInFlight;
  self->_assetsInFlight = v9;

  [(MSStreamsProtocol *)self _refreshAuthTokenForContext:&self->_context];
  v19 = [(MSStreamsProtocol *)self reauthorizeURL];
  v20 = MSPURLConnectionProperties();
  MSRPCReauthorizeAsync(&self->_context._super.owner, v19, v20, [(MSStreamsProtocol *)self personID], v8);

  v21 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  p_context = &self->_context;

  v4.receiver = self;
  v4.super_class = MSReauthorizationProtocol;
  [(MSReauthorizationProtocol *)&v4 dealloc];
}

- (MSReauthorizationProtocol)initWithPersonID:(id)a3 baseURL:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = MSReauthorizationProtocol;
  v7 = [(MSStreamsProtocol *)&v10 initWithPersonID:v6 baseURL:a4];
  v8 = v7;
  if (v7)
  {
    v7->_context._super.owner = v7;
    v7->_context._super.personID = v6;
    v8->_context._super.deviceInfo = [(MSStreamsProtocol *)v8 deviceInfoDict];
    v8->_context._super.connectionTimeout = 0.0;
    v8->_context.finishedCallback = _protocolDidFinish_2707;
    v8->_context.authFailedCallback = _protocolDidFailAuthentication_2706;
    v8->_context.didReceiveRetryAfterCallback = _protocolDidReceiveRetryAfterDate_2705;
    v8->_context.didReceiveServerSideConfigurationVersionCallback = _protocolDidReceiveServerSideConfigurationVersion_2704;
  }

  return v8;
}

- (void)setDelegate:(id)a3
{
  v3.receiver = self;
  v3.super_class = MSReauthorizationProtocol;
  [(MSStreamsProtocol *)&v3 setDelegate:a3];
}

- (id)delegate
{
  v4.receiver = self;
  v4.super_class = MSReauthorizationProtocol;
  v2 = [(MSStreamsProtocol *)&v4 delegate];

  return v2;
}

@end