@interface HDHealthStoreEndpoint
+ (id)endpointWithClient:(id)a3 healthDaemon:(id)a4;
- (HDDaemon)daemon;
- (HDHealthStoreEndpoint)initWithClient:(id)a3 daemon:(id)a4;
- (HKProfileIdentifier)profileIdentifier;
- (void)connectionConfigured;
- (void)invalidate;
- (void)profileDidBecomeReady:(id)a3;
- (void)remote_serverForConfiguration:(id)a3 completion:(id)a4;
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
  v5 = [(HDXPCClient *)self->_client connection];

  [v5 invalidate];
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  v6 = [WeakRetained connectionManager];
  [v6 endpointInvalidated:self];
}

+ (id)endpointWithClient:(id)a3 healthDaemon:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 behavior];
  objc_opt_self();
  v8 = [v7 isDeviceSupported];

  if ((v8 & 1) == 0)
  {
    v18 = [MEMORY[0x277CCA9B8] hk_healthDataUnavailableError];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    v21 = v19;
    goto LABEL_15;
  }

  [v6 behavior];
  v9 = v30 = 0;
  v10 = v5;
  objc_opt_self();
  v11 = [v10 process];

  v12 = *MEMORY[0x277CCC1B8];
  if ([v11 hasEntitlement:*MEMORY[0x277CCC1B8]] & 1) != 0 || (objc_msgSend(v11, "hasEntitlement:", *MEMORY[0x277CCC8B0]))
  {
    v13 = [v9 additionalEntitlementForConnection];
    if (!v13 || (v14 = v13, [v9 additionalEntitlementForConnection], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v11, "hasEntitlement:", v15), v15, v14, (v16 & 1) != 0))
    {
      v17 = 1;
      goto LABEL_13;
    }

    v22 = [MEMORY[0x277CCA9B8] hk_healthDataUnavailableError];
    v23 = MEMORY[0x277CCA9B8];
    v24 = [v22 code];
    v25 = [v22 description];
    [v23 hk_assignError:&v30 code:v24 description:v25];
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
    v26 = [[HDHealthStoreEndpoint alloc] initWithClient:v10 daemon:v6];
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
    v28 = objc_msgSendSuper2(&v31, sel_initWithClient_daemon_, v5, v6);
    v26 = v28;
    if (v28)
    {
      objc_storeStrong(v28 + 7, v27);
    }
  }

LABEL_21:

  return v26;
}

- (HDHealthStoreEndpoint)initWithClient:(id)a3 daemon:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = HDHealthStoreEndpoint;
  v9 = [(HDHealthStoreEndpoint *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_client, a3);
    v11 = [v7 process];
    v12 = MEMORY[0x277CCACA8];
    v13 = [v11 bundleIdentifier];
    v14 = [v12 stringWithFormat:@"connection.%@.%d", v13, objc_msgSend(v11, "processIdentifier")];

    v15 = HKCreateSerialDispatchQueue();
    connectionQueue = v10->_connectionQueue;
    v10->_connectionQueue = v15;

    objc_storeWeak(&v10->_daemon, v8);
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    serverCompletionsAwaitingProfileReady = v10->_serverCompletionsAwaitingProfileReady;
    v10->_serverCompletionsAwaitingProfileReady = v17;
  }

  return v10;
}

- (void)remote_serverForConfiguration:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_daemon);
    v10 = [WeakRetained profileManager];
    v11 = [v7 profileIdentifier];
    v12 = [v10 profileForIdentifier:v11];

    if (!v12)
    {
      v15 = [MEMORY[0x277CCA9B8] hk_healthStoreUnavailableError];
      goto LABEL_7;
    }

    v13 = [MEMORY[0x277CCDD30] sharedBehavior];
    if ([v13 isiPad])
    {
      [v7 applicationSDKVersionToken];
      v14 = dyld_version_token_at_least();

      if ((v14 & 1) == 0)
      {
        v15 = [MEMORY[0x277CCA9B8] hk_healthDataUnavailableError];
LABEL_7:
        v16 = v15;
        v8[2](v8, 0, v15);

LABEL_40:
        goto LABEL_41;
      }
    }

    else
    {
    }

    v17 = [[HDHealthStoreClient alloc] initWithXPCClient:self->_client configuration:v7 profile:v12 databaseAccessibilityAssertions:0];
    [v7 sourceBundleIdentifier];
    v18 = v42 = 0;
    v19 = v17;
    v20 = v19;
    if (!v18 || (-[HDHealthStoreClient defaultSourceBundleIdentifier](v19, "defaultSourceBundleIdentifier"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v18 isEqualToString:v21], v21, (v22 & 1) != 0))
    {
      v23 = 1;
      goto LABEL_23;
    }

    v24 = [(HDXPCClient *)self->_client process];
    if ([v24 hasEntitlement:*MEMORY[0x277CCBBA0]])
    {
      goto LABEL_21;
    }

    v25 = *MEMORY[0x277CCCDE0];
    if ([v24 hasArrayEntitlement:*MEMORY[0x277CCCDE0] containing:*MEMORY[0x277CCB808]])
    {
      if ([MEMORY[0x277CCDA00] isAppleDeviceBundleIdentifier:v18])
      {
        goto LABEL_21;
      }
    }

    if ([v24 hasEntitlement:*MEMORY[0x277CCCDE8]])
    {
      v26 = [(HDXPCClient *)self->_client process];
      v38 = [v26 applicationIdentifier];

      if ([v38 length] && objc_msgSend(v18, "hasPrefix:", v38))
      {

        goto LABEL_21;
      }
    }

    if (([v24 hasArrayEntitlement:v25 containing:v18] & 1) == 0)
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
          v30 = [(HDHealthStoreServer *)v29 configuration];
          v31 = [v30 isEqual:v7];

          if ((v31 & 1) == 0)
          {
            v32 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Requested server configuration does not match existing server configuration."];
            v8[2](v8, 0, v32);

LABEL_38:
            goto LABEL_39;
          }
        }

        else
        {
          v29 = [[HDHealthStoreServer alloc] initWithClient:v20 profile:v12 configuration:v7 connectionQueue:self->_connectionQueue];
          server = self->_server;
          self->_server = v29;

          [v12 registerProfileReadyObserver:self queue:0];
          os_unfair_lock_unlock(&self->_lock);
          if (!v29)
          {
            v29 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Requested server configuration is invalid."];
            v8[2](v8, 0, v29);
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
          v41 = v8;
          v40 = v29;
          v36 = [v39 copy];
          v37 = _Block_copy(v36);
          [(NSMutableArray *)serverCompletionsAwaitingProfileReady addObject:v37];
        }

        else
        {
          (v8)[2](v8, v29, 0);
        }

        os_unfair_lock_unlock(&self->_lock);
        goto LABEL_38;
      }

      v33 = [MEMORY[0x277CCA9B8] hk_healthStoreUnavailableError];
      v8[2](v8, 0, v33);
    }

    else
    {
      v8[2](v8, 0, v27);
    }

LABEL_39:

    goto LABEL_40;
  }

LABEL_41:
}

- (HKProfileIdentifier)profileIdentifier
{
  v2 = [(HDHealthStoreServer *)self->_server profile];
  v3 = [v2 profileIdentifier];

  return v3;
}

- (void)connectionConfigured
{
  v3 = [(HDXPCClient *)self->_client connection];
  [v3 _setQueue:self->_connectionQueue];
}

- (void)profileDidBecomeReady:(id)a3
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