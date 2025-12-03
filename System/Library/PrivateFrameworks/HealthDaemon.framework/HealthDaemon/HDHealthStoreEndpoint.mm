@interface HDHealthStoreEndpoint
+ (id)endpointWithClient:(id)client healthDaemon:(id)daemon;
- (HDDaemon)daemon;
- (HDHealthStoreEndpoint)initWithClient:(id)client daemon:(id)daemon;
- (HKProfileIdentifier)profileIdentifier;
- (void)connectionConfigured;
- (void)invalidate;
- (void)profileDidBecomeReady:(id)ready;
- (void)remote_serverForConfiguration:(id)configuration completion:(id)completion;
@end

@implementation HDHealthStoreEndpoint

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  server = self->_server;
  self->_server = 0;
  v4 = server;

  os_unfair_lock_unlock(&self->_lock);
  [(HDHealthStoreServer *)v4 invalidate];
  connection = [(HDXPCClient *)self->_client connection];

  [connection invalidate];
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  connectionManager = [WeakRetained connectionManager];
  [connectionManager endpointInvalidated:self];
}

+ (id)endpointWithClient:(id)client healthDaemon:(id)daemon
{
  clientCopy = client;
  daemonCopy = daemon;
  behavior = [daemonCopy behavior];
  objc_opt_self();
  isDeviceSupported = [behavior isDeviceSupported];

  if ((isDeviceSupported & 1) == 0)
  {
    hk_healthDataUnavailableError = [MEMORY[0x277CCA9B8] hk_healthDataUnavailableError];
    v19 = hk_healthDataUnavailableError;
    if (hk_healthDataUnavailableError)
    {
      v20 = hk_healthDataUnavailableError;
    }

    v21 = v19;
    goto LABEL_15;
  }

  [daemonCopy behavior];
  v9 = v30 = 0;
  v10 = clientCopy;
  objc_opt_self();
  process = [v10 process];

  v12 = *MEMORY[0x277CCC1B8];
  if ([process hasEntitlement:*MEMORY[0x277CCC1B8]] & 1) != 0 || (objc_msgSend(process, "hasEntitlement:", *MEMORY[0x277CCC8B0]))
  {
    additionalEntitlementForConnection = [v9 additionalEntitlementForConnection];
    if (!additionalEntitlementForConnection || (v14 = additionalEntitlementForConnection, [v9 additionalEntitlementForConnection], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(process, "hasEntitlement:", v15), v15, v14, (v16 & 1) != 0))
    {
      v17 = 1;
      goto LABEL_13;
    }

    hk_healthDataUnavailableError2 = [MEMORY[0x277CCA9B8] hk_healthDataUnavailableError];
    v23 = MEMORY[0x277CCA9B8];
    code = [hk_healthDataUnavailableError2 code];
    v25 = [hk_healthDataUnavailableError2 description];
    [v23 hk_assignError:&v30 code:code description:v25];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:&v30 code:4 format:{@"Missing %@ entitlement.", v12}];
  }

  v17 = 0;
LABEL_13:

  v21 = v30;
  if (v17)
  {
    v26 = [[HDHealthStoreEndpoint alloc] initWithClient:v10 daemon:daemonCopy];
    goto LABEL_21;
  }

LABEL_15:
  v27 = v21;
  if (!v21)
  {
    v27 = [MEMORY[0x277CCA9B8] hk_error:1 format:@"Health data is not available for this client."];
  }

  v26 = [HDHealthStoreErrorEndpoint alloc];
  v21 = v27;
  if (v26)
  {
    v31.receiver = v26;
    v31.super_class = HDHealthStoreErrorEndpoint;
    v28 = objc_msgSendSuper2(&v31, sel_initWithClient_daemon_, clientCopy, daemonCopy);
    v26 = v28;
    if (v28)
    {
      objc_storeStrong(v28 + 7, v27);
    }
  }

LABEL_21:

  return v26;
}

- (HDHealthStoreEndpoint)initWithClient:(id)client daemon:(id)daemon
{
  clientCopy = client;
  daemonCopy = daemon;
  v20.receiver = self;
  v20.super_class = HDHealthStoreEndpoint;
  v9 = [(HDHealthStoreEndpoint *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_client, client);
    process = [clientCopy process];
    v12 = MEMORY[0x277CCACA8];
    bundleIdentifier = [process bundleIdentifier];
    v14 = [v12 stringWithFormat:@"connection.%@.%d", bundleIdentifier, objc_msgSend(process, "processIdentifier")];

    v15 = HKCreateSerialDispatchQueue();
    connectionQueue = v10->_connectionQueue;
    v10->_connectionQueue = v15;

    objc_storeWeak(&v10->_daemon, daemonCopy);
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    serverCompletionsAwaitingProfileReady = v10->_serverCompletionsAwaitingProfileReady;
    v10->_serverCompletionsAwaitingProfileReady = v17;
  }

  return v10;
}

- (void)remote_serverForConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  if (completionCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_daemon);
    profileManager = [WeakRetained profileManager];
    profileIdentifier = [configurationCopy profileIdentifier];
    v12 = [profileManager profileForIdentifier:profileIdentifier];

    if (!v12)
    {
      hk_healthStoreUnavailableError = [MEMORY[0x277CCA9B8] hk_healthStoreUnavailableError];
      goto LABEL_7;
    }

    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    if ([mEMORY[0x277CCDD30] isiPad])
    {
      [configurationCopy applicationSDKVersionToken];
      v14 = dyld_version_token_at_least();

      if ((v14 & 1) == 0)
      {
        hk_healthStoreUnavailableError = [MEMORY[0x277CCA9B8] hk_healthDataUnavailableError];
LABEL_7:
        v16 = hk_healthStoreUnavailableError;
        completionCopy[2](completionCopy, 0, hk_healthStoreUnavailableError);

LABEL_40:
        goto LABEL_41;
      }
    }

    else
    {
    }

    v17 = [[HDHealthStoreClient alloc] initWithXPCClient:self->_client configuration:configurationCopy profile:v12 databaseAccessibilityAssertions:0];
    [configurationCopy sourceBundleIdentifier];
    v18 = v42 = 0;
    v19 = v17;
    v20 = v19;
    if (!v18 || (-[HDHealthStoreClient defaultSourceBundleIdentifier](v19, "defaultSourceBundleIdentifier"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v18 isEqualToString:v21], v21, (v22 & 1) != 0))
    {
      v23 = 1;
      goto LABEL_23;
    }

    process = [(HDXPCClient *)self->_client process];
    if ([process hasEntitlement:*MEMORY[0x277CCBBA0]])
    {
      goto LABEL_21;
    }

    v25 = *MEMORY[0x277CCCDE0];
    if ([process hasArrayEntitlement:*MEMORY[0x277CCCDE0] containing:*MEMORY[0x277CCB808]])
    {
      if ([MEMORY[0x277CCDA00] isAppleDeviceBundleIdentifier:v18])
      {
        goto LABEL_21;
      }
    }

    if ([process hasEntitlement:*MEMORY[0x277CCCDE8]])
    {
      process2 = [(HDXPCClient *)self->_client process];
      applicationIdentifier = [process2 applicationIdentifier];

      if ([applicationIdentifier length] && objc_msgSend(v18, "hasPrefix:", applicationIdentifier))
      {

        goto LABEL_21;
      }
    }

    if (([process hasArrayEntitlement:v25 containing:v18] & 1) == 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:&v42 code:4 format:{@"Unauthorized use of source bundle identifier %@", v18}];
      v23 = 0;
      goto LABEL_22;
    }

LABEL_21:
    v23 = 1;
LABEL_22:

LABEL_23:
    v27 = v42;

    if (v23)
    {
      if ([(HDHealthStoreClient *)v20 _isAuthorizedToAccessProfile:v12])
      {
        os_unfair_lock_lock(&self->_lock);
        v28 = self->_server;
        if (v28)
        {
          v29 = v28;
          os_unfair_lock_unlock(&self->_lock);
          configuration = [(HDHealthStoreServer *)v29 configuration];
          v31 = [configuration isEqual:configurationCopy];

          if ((v31 & 1) == 0)
          {
            v32 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Requested server configuration does not match existing server configuration."];
            completionCopy[2](completionCopy, 0, v32);

LABEL_38:
            goto LABEL_39;
          }
        }

        else
        {
          v29 = [[HDHealthStoreServer alloc] initWithClient:v20 profile:v12 configuration:configurationCopy connectionQueue:self->_connectionQueue];
          server = self->_server;
          self->_server = v29;

          [v12 registerProfileReadyObserver:self queue:0];
          os_unfair_lock_unlock(&self->_lock);
          if (!v29)
          {
            v29 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Requested server configuration is invalid."];
            completionCopy[2](completionCopy, 0, v29);
            goto LABEL_38;
          }

          [(HDHealthStoreServer *)v29 start];
        }

        os_unfair_lock_lock(&self->_lock);
        serverCompletionsAwaitingProfileReady = self->_serverCompletionsAwaitingProfileReady;
        if (serverCompletionsAwaitingProfileReady)
        {
          v39[0] = MEMORY[0x277D85DD0];
          v39[1] = 3221225472;
          v39[2] = __66__HDHealthStoreEndpoint_remote_serverForConfiguration_completion___block_invoke;
          v39[3] = &unk_278614008;
          v41 = completionCopy;
          v40 = v29;
          v36 = [v39 copy];
          v37 = _Block_copy(v36);
          [(NSMutableArray *)serverCompletionsAwaitingProfileReady addObject:v37];
        }

        else
        {
          (completionCopy)[2](completionCopy, v29, 0);
        }

        os_unfair_lock_unlock(&self->_lock);
        goto LABEL_38;
      }

      hk_healthStoreUnavailableError2 = [MEMORY[0x277CCA9B8] hk_healthStoreUnavailableError];
      completionCopy[2](completionCopy, 0, hk_healthStoreUnavailableError2);
    }

    else
    {
      completionCopy[2](completionCopy, 0, v27);
    }

LABEL_39:

    goto LABEL_40;
  }

LABEL_41:
}

- (HKProfileIdentifier)profileIdentifier
{
  profile = [(HDHealthStoreServer *)self->_server profile];
  profileIdentifier = [profile profileIdentifier];

  return profileIdentifier;
}

- (void)connectionConfigured
{
  connection = [(HDXPCClient *)self->_client connection];
  [connection _setQueue:self->_connectionQueue];
}

- (void)profileDidBecomeReady:(id)ready
{
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_server)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_serverCompletionsAwaitingProfileReady;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          (*(*(*(&v11 + 1) + 8 * v8) + 16))(*(*(&v11 + 1) + 8 * v8));
          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  serverCompletionsAwaitingProfileReady = self->_serverCompletionsAwaitingProfileReady;
  self->_serverCompletionsAwaitingProfileReady = 0;

  os_unfair_lock_unlock(&self->_lock);
  v10 = *MEMORY[0x277D85DE8];
}

- (HDDaemon)daemon
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);

  return WeakRetained;
}

@end