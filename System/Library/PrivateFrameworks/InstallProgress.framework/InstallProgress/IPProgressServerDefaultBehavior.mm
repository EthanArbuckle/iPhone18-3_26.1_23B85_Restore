@interface IPProgressServerDefaultBehavior
- (BOOL)transport:(id)transport shouldAcceptConnection:(id)connection;
- (IPProgressServerBehaviorDelegate)delegate;
- (IPProgressServerDefaultBehavior)initWithTransport:(id)transport stateUpdateSink:(id)sink;
- (id)activeInstallationsForClient:(id)client;
- (id)allInstallableStatesForClient:(id)client;
- (id)progressForIdentity:(id)identity forClient:(id)client error:(id *)error;
- (void)identityWasUninstalled:(id)uninstalled;
- (void)progressForIdentity:(id)identity finishedWithState:(unint64_t)state;
- (void)progressForIdentityInitiated:(id)initiated;
- (void)resume;
- (void)transport:(id)transport acceptedClient:(id)client;
@end

@implementation IPProgressServerDefaultBehavior

- (IPProgressServerDefaultBehavior)initWithTransport:(id)transport stateUpdateSink:(id)sink
{
  transportCopy = transport;
  sinkCopy = sink;
  v12.receiver = self;
  v12.super_class = IPProgressServerDefaultBehavior;
  v9 = [(IPProgressServerDefaultBehavior *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_transport, transport);
    [(IPServerXPCTransport *)v10->_transport setDelegate:v10];
    objc_storeStrong(&v10->_stateSink, sink);
  }

  return v10;
}

- (void)resume
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _IPServerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    transport = self->_transport;
    v6 = 138412290;
    v7 = transport;
    _os_log_impl(&dword_254C69000, v3, OS_LOG_TYPE_DEFAULT, "resuming transport %@", &v6, 0xCu);
  }

  [(IPServerXPCTransport *)self->_transport resume];
  [(IPStateUpdateStreamSink *)self->_stateSink resume];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)progressForIdentity:(id)identity finishedWithState:(unint64_t)state
{
  v26 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  v7 = identityCopy;
  if (state <= 2)
  {
    if (state < 3)
    {
      v8 = _IPServerLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 138412546;
        *&v23[4] = v7;
        v24 = 2048;
        stateCopy = state;
        _os_log_impl(&dword_254C69000, v8, OS_LOG_TYPE_DEFAULT, "Progress for %@ finished with strange install state %llu", v23, 0x16u);
      }
    }

    v9 = 0;
    goto LABEL_26;
  }

  if (state == 3)
  {
    v9 = 2;
  }

  else
  {
    if (state != 4)
    {
      v9 = state == 5;
      goto LABEL_26;
    }

    v9 = 3;
  }

  v10 = identityCopy;
  *v23 = 0;
  v11 = [v10 findApplicationRecordWithError:v23];
  v12 = *v23;
  v13 = v12;
  if (v11)
  {
    identities = [v11 identities];
    v15 = [identities containsObject:v10];

    if (v15)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  domain = [v12 domain];
  if (![domain isEqual:*MEMORY[0x277CCA590]])
  {

    goto LABEL_19;
  }

  code = [v13 code];

  if (code != -10814)
  {
LABEL_19:
    v18 = _IPDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(IPProgressServerDefaultBehavior *)v10 progressForIdentity:v13 finishedWithState:v18];
    }
  }

LABEL_23:
  v19 = _IPServerLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 138412546;
    *&v23[4] = v10;
    v24 = 1024;
    LODWORD(stateCopy) = v9;
    _os_log_impl(&dword_254C69000, v19, OS_LOG_TYPE_DEFAULT, "Progress ended for identity %@ with reason %u and identity no longer exists; synthesizing identity unavailable event", v23, 0x12u);
  }

  [(IPProgressServerDefaultBehavior *)self identityWasUninstalled:v10];
LABEL_26:
  [(IPServerXPCTransport *)self->_transport disseminateProgressEndForIdenitty:v7 reason:v9];
  stateSink = self->_stateSink;
  v21 = [[IPStateUpdateMessage alloc] initWithType:2 identity:v7];
  [(IPStateUpdateStreamSink *)stateSink sendUpdateMessage:v21];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)progressForIdentityInitiated:(id)initiated
{
  stateSink = self->_stateSink;
  initiatedCopy = initiated;
  v5 = [[IPStateUpdateMessage alloc] initWithType:1 identity:initiatedCopy];

  [(IPStateUpdateStreamSink *)stateSink sendUpdateMessage:v5];
}

- (void)identityWasUninstalled:(id)uninstalled
{
  stateSink = self->_stateSink;
  uninstalledCopy = uninstalled;
  v5 = [[IPStateUpdateMessage alloc] initWithType:4 identity:uninstalledCopy];

  [(IPStateUpdateStreamSink *)stateSink sendUpdateMessage:v5];
}

- (id)activeInstallationsForClient:(id)client
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained activeInstallationsForBehavior:self];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v8 = v7;

  return v7;
}

- (id)progressForIdentity:(id)identity forClient:(id)client error:(id *)error
{
  identityCopy = identity;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained serverBehavior:self progressForIdentity:identityCopy error:error];

  return v9;
}

- (id)allInstallableStatesForClient:(id)client
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained activeInstallationsForBehavior:self];

  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        identity = [v11 identity];
        [v4 setObject:v11 forKey:identity];
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  mEMORY[0x277CC1EB0] = [MEMORY[0x277CC1EB0] sharedDatabaseContext];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__IPProgressServerDefaultBehavior_allInstallableStatesForClient___block_invoke;
  v18[3] = &unk_2797B22C8;
  v19 = v4;
  v14 = v4;
  [mEMORY[0x277CC1EB0] accessUsingBlock:v18];

  allValues = [v14 allValues];

  v16 = *MEMORY[0x277D85DE8];

  return allValues;
}

void __65__IPProgressServerDefaultBehavior_allInstallableStatesForClient___block_invoke(uint64_t a1, char a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = [MEMORY[0x277CC1E58] enumeratorWithOptions:0];
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v19 = v5;
      v9 = *v22;
      while (1)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          v12 = [*(a1 + 32) objectForKey:v11];

          if (!v12)
          {
            v20 = 0;
            v13 = [v11 findApplicationRecordWithError:&v20];
            v14 = v20;
            if (v13)
            {
              v15 = v13;
              if ([v15 isDeletable])
              {

                goto LABEL_14;
              }

              v17 = [v15 isDeletableSystemApplication];

              if (v17)
              {
LABEL_14:
                v16 = [[IPInstallableStateData alloc] initWithIdentity:v11 isInstalling:0];
                [*(a1 + 32) setObject:v16 forKey:v11];
                goto LABEL_15;
              }
            }

            else
            {
              v16 = _IPDefaultLog();
              if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v26 = v11;
                v27 = 2112;
                v28 = v14;
                _os_log_error_impl(&dword_254C69000, &v16->super, OS_LOG_TYPE_ERROR, "could not load record for identity %@: %@", buf, 0x16u);
              }

LABEL_15:
            }

            continue;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (!v8)
        {
          v5 = v19;
          break;
        }
      }
    }
  }

  else
  {
    v6 = _IPDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v5;
      _os_log_impl(&dword_254C69000, v6, OS_LOG_TYPE_DEFAULT, "Couldn't access database: %@", buf, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)transport:(id)transport shouldAcceptConnection:(id)connection
{
  connectionCopy = connection;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(self) = [WeakRetained serverBehavior:self shouldAcceptConnection:connectionCopy];

  return self;
}

- (void)transport:(id)transport acceptedClient:(id)client
{
  clientCopy = client;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained serverBehavior:self acceptedClient:clientCopy];
}

- (IPProgressServerBehaviorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)progressForIdentity:(os_log_t)log finishedWithState:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_254C69000, log, OS_LOG_TYPE_ERROR, "unexpected error loading record for %@: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end