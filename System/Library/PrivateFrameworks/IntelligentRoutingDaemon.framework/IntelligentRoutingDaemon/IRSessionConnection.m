@interface IRSessionConnection
- (IRServiceHandling)serviceHandler;
- (IRSessionConnection)initWithServer:(id)a3 client:(id)a4;
- (IRSessionServer)server;
- (void)_addEvent:(id)a3 forCandidate:(id)a4;
- (void)_createServiceWithParameters:(id)a3 reply:(id)a4;
- (void)_databaseExportwithReply:(id)a3;
- (void)_deleteCandidate:(id)a3;
- (void)_deleteDatabaseWithReply:(id)a3;
- (void)_deleteService:(id)a3;
- (void)_getServiceTokensWithReply:(id)a3;
- (void)_invalidate;
- (void)_requestCurrentContextWithBundleID:(id)a3;
- (void)_requestCurrentContextWithReply:(id)a3;
- (void)_runWithConfiguration:(id)a3;
- (void)_setSpotOnLocationWithParameters:(id)a3;
- (void)_updateCandidates:(id)a3;
- (void)didSpotOnLocationComplete:(id)a3;
- (void)didUpdateBundlesWithSignificantInteractionPattern:(id)a3;
- (void)didUpdateContexts:(id)a3 withReason:(id)a4;
- (void)xpcInvalidationHandler;
@end

@implementation IRSessionConnection

- (IRServiceHandling)serviceHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceHandler);

  return WeakRetained;
}

- (IRSessionServer)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

- (IRSessionConnection)initWithServer:(id)a3 client:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = IRSessionConnection;
  v8 = [(IRSessionConnection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(IRSessionConnection *)v8 setServer:v6];
    [(IRSessionConnection *)v9 setClient:v7];
  }

  return v9;
}

- (void)xpcInvalidationHandler
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D21260];
  v4 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [(IRSessionConnection *)self client];
    v7 = [v6 clientIdentifier];
    v8 = MEMORY[0x277CCABB0];
    v9 = [(IRSessionConnection *)self client];
    v10 = [v9 connection];
    v11 = [v8 numberWithInt:{objc_msgSend(v10, "processIdentifier")}];
    v18 = 138412546;
    v19 = v7;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_25543D000, v5, OS_LOG_TYPE_DEFAULT, "#session-connection, Disconnection for: %@, with pid: %@", &v18, 0x16u);
  }

  v12 = [(IRSessionConnection *)self serviceIdentifier];

  if (v12)
  {
    v13 = [(IRSessionConnection *)self server];
    v14 = [(IRSessionConnection *)self serviceIdentifier];
    v15 = [v13 unregisterWithServiceIdentifier:v14 withConnection:self];

    if ((v15 & 1) == 0)
    {
      v16 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        [(IRSessionConnection *)v16 xpcInvalidationHandler];
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_createServiceWithParameters:(id)a3 reply:(id)a4
{
  v6 = MEMORY[0x277D212E0];
  v7 = a4;
  v10 = [(IRSessionConnection *)self client];
  v8 = [v10 clientIdentifier];
  v9 = [v6 serviceTokenForServiceIdentifier:v8];
  (*(a4 + 2))(v7, v9, 0);
}

- (void)_deleteService:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&serviceCreationAndDeletionlock);
  v4 = [(IRSessionConnection *)self server];
  v5 = [v4 persistenceManager];
  [IRServiceContainer deleteServiceWithToken:v6 persistenceManager:v5];

  os_unfair_lock_unlock(&serviceCreationAndDeletionlock);
}

- (void)_databaseExportwithReply:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IRSessionConnection *)self server];
  v6 = [v5 persistenceManager];
  v7 = [IRServiceContainer exportDatabaseWithPersistenceManager:v6];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277D21258];
    v13 = *MEMORY[0x277CCA470];
    v14[0] = @"Could not export DB";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v8 = [v9 errorWithDomain:v10 code:-12895 userInfo:v11];
  }

  v4[2](v4, v7, v8);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_deleteDatabaseWithReply:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&serviceCreationAndDeletionlock);
  v5 = [(IRSessionConnection *)self server];
  v6 = [v5 persistenceManager];
  v7 = [IRServiceContainer deleteDatabaseWithPersistenceManager:v6];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA470];
    v13[0] = @"Couldn't delete DB";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v8 = [v9 errorWithDomain:*MEMORY[0x277D21258] code:-12896 userInfo:v10];
  }

  v4[2](v4, v8);

  os_unfair_lock_unlock(&serviceCreationAndDeletionlock);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_getServiceTokensWithReply:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&serviceCreationAndDeletionlock);
  v5 = [(IRSessionConnection *)self client];
  v6 = [v5 clientIdentifier];
  v7 = [(IRSessionConnection *)self server];
  v8 = [v7 persistenceManager];
  v9 = [IRServiceContainer getServiceTokensForClientIdentifier:v6 persistenceManager:v8];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA470];
    v15[0] = @"Could not get service tokens";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v10 = [v11 errorWithDomain:*MEMORY[0x277D21258] code:-12897 userInfo:v12];
  }

  v4[2](v4, v9, v10);

  os_unfair_lock_unlock(&serviceCreationAndDeletionlock);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_runWithConfiguration:(id)a3
{
  v73[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IRSessionConnection *)self server];
  if (v5)
  {
    v6 = MEMORY[0x277D212E0];
    v7 = [v4 serviceToken];
    v8 = [(IRSessionConnection *)self client];
    v9 = [v8 clientIdentifier];
    LODWORD(v6) = [v6 isServiceTokenValid:v7 forClientIdentifier:v9];

    if (v6)
    {
      v10 = [v4 serviceToken];
      v11 = [v10 copy];
    }

    else
    {
      v12 = MEMORY[0x277D212E0];
      v10 = [(IRSessionConnection *)self client];
      v13 = [v10 clientIdentifier];
      v11 = [v12 serviceTokenForServiceIdentifier:v13];
    }

    if (v11)
    {
      v14 = [v4 mode];
      v15 = [objc_alloc(MEMORY[0x277D212A0]) initWithServiceToken:v11];

      [v15 setMode:v14];
      v16 = [(IRSessionConnection *)self serviceIdentifier];

      if (v16)
      {
LABEL_17:
        v43 = [(IRSessionConnection *)self mode];
        if (v43 != [v15 mode])
        {
          -[IRSessionConnection setMode:](self, "setMode:", [v15 mode]);
          v44 = [(IRSessionConnection *)self serviceIdentifier];
          [v5 refreshUpdateModeForServiceIdentifier:v44];
        }

        v45 = [(IRSessionConnection *)self serviceHandler];
        [v45 run];
        v4 = v15;
        goto LABEL_21;
      }

      os_unfair_lock_lock(&serviceCreationAndDeletionlock);
      v17 = [v5 persistenceManager];
      v18 = [IRServiceContainer getServicesWithPersistenceManager:v17];

      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __45__IRSessionConnection__runWithConfiguration___block_invoke;
      v60[3] = &unk_2797E2590;
      v4 = v15;
      v61 = v4;
      v58 = v18;
      v59 = [v18 firstWhere:v60];
      v19 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v56 = [(IRSessionConnection *)self client];
        v54 = [v56 clientIdentifier];
        v20 = [v4 serviceToken];
        v21 = [v20 serviceIdentifier];
        v22 = [v4 serviceToken];
        [v22 servicePackage];
        v23 = IRServicePackageString();
        *buf = 138413058;
        v65 = v54;
        v66 = 2112;
        v67 = v21;
        v68 = 2112;
        v69 = v23;
        v70 = 2112;
        v71 = v59;
        _os_log_impl(&dword_25543D000, v19, OS_LOG_TYPE_INFO, "#session-connection, Client:%@ running Service Token:%@ with Service Package:%@\n Service found in database:%@", buf, 0x2Au);
      }

      v24 = v59;
      if (!v59)
      {
        v57 = [v4 serviceToken];
        v55 = [v57 serviceIdentifier];
        v25 = [v4 serviceToken];
        v26 = [v25 serviceIdentifier];
        v27 = objc_alloc(MEMORY[0x277D212D8]);
        v28 = [v4 serviceToken];
        v29 = [v27 initWithServicePackage:{objc_msgSend(v28, "servicePackage")}];
        v30 = [v5 persistenceManager];
        v53 = [IRServiceContainer createServiceWithClientIdentifier:v55 serviceIdentifier:v26 parameters:v29 persistenceManager:v30];

        v31 = *MEMORY[0x277D21260];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = [v4 serviceToken];
          v33 = [v32 serviceIdentifier];
          v34 = [(IRSessionConnection *)self client];
          v35 = [v34 clientIdentifier];
          v36 = v35;
          v37 = @"YES";
          *buf = 138412802;
          v65 = v33;
          v66 = 2112;
          if (!v53)
          {
            v37 = @"NO";
          }

          v67 = v35;
          v68 = 2112;
          v69 = v37;
          _os_log_impl(&dword_25543D000, v31, OS_LOG_TYPE_INFO, "#session-connection, Creating service: %@, for client: %@, success: %@", buf, 0x20u);
        }

        v24 = 0;
      }

      os_unfair_lock_unlock(&serviceCreationAndDeletionlock);
      v38 = [v4 serviceToken];
      v39 = [v38 serviceIdentifier];
      v40 = [v5 registerWithServiceIdentifier:v39 withConnection:self];

      if (v40)
      {
        v41 = [v4 serviceToken];
        v42 = [v41 serviceIdentifier];
        [(IRSessionConnection *)self setServiceIdentifier:v42];

        [(IRSessionConnection *)self setServiceHandler:v40];
        goto LABEL_17;
      }

      v50 = MEMORY[0x277CCA9B8];
      v62 = *MEMORY[0x277CCA470];
      v63 = @"Could not run service";
      v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
      v45 = [v50 errorWithDomain:*MEMORY[0x277D21258] code:-12889 userInfo:v51];

      v52 = [(IRSessionConnection *)self client];
      [v52 _sessionDidFailWithError:v45];
    }

    else
    {
      v46 = MEMORY[0x277CCA9B8];
      v72 = *MEMORY[0x277CCA470];
      v73[0] = @"Could not run service, unknown client";
      v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:&v72 count:1];
      v45 = [v46 errorWithDomain:*MEMORY[0x277D21258] code:-12889 userInfo:v47];

      v48 = [(IRSessionConnection *)self client];
      [v48 _sessionDidFailWithError:v45];
    }

LABEL_21:
  }

  v49 = *MEMORY[0x277D85DE8];
}

uint64_t __45__IRSessionConnection__runWithConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 serviceToken];
  v5 = [v4 serviceIdentifier];
  v6 = [v3 serviceIdentifier];

  v7 = [v5 isEqual:v6];
  return v7;
}

- (void)_updateCandidates:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__IRSessionConnection__updateCandidates___block_invoke;
  v8[3] = &unk_2797E25B8;
  v9 = v5;
  v6 = v5;
  [v4 enumerateObjectsUsingBlock:v8];

  v7 = [(IRSessionConnection *)self serviceHandler];
  [v7 updateCandidates:v6];
}

void __41__IRSessionConnection__updateCandidates___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [IRCandidateDO candidateDOFromCandidate:a2];
  [v2 addObject:v3];
}

- (void)_deleteCandidate:(id)a3
{
  v4 = a3;
  v6 = [(IRSessionConnection *)self serviceHandler];
  v5 = [IRCandidateDO candidateDOFromCandidate:v4];

  [v6 deleteCandidate:v5];
}

- (void)_addEvent:(id)a3 forCandidate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(IRSessionConnection *)self serviceHandler];
  v8 = [v7 eventDO];

  v9 = [IRCandidateDO candidateDOFromCandidate:v6];

  [v10 addEvent:v8 forCandidate:v9];
}

- (void)_requestCurrentContextWithBundleID:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IRSessionConnection *)self serviceHandler];
  v6 = [v5 requestCurrentContextWithBundleID:v4];

  v7 = [(IRSessionConnection *)self client];
  [v7 _didUpdateContext:v6];

  v8 = *MEMORY[0x277D21270];
  if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
  {
    log = v8;
    v20 = [(IRSessionConnection *)self client];
    v18 = [v20 clientIdentifier];
    v9 = [v6 allKeys];
    v10 = [v9 firstObject];
    v11 = [v6 allValues];
    v12 = [v11 firstObject];
    v13 = [v12 bundleIdentifier];
    v14 = [v6 allValues];
    v15 = [v14 firstObject];
    v16 = [IRLogQEUtility getContextAsString:v15];
    *buf = 138413314;
    v22 = v18;
    v23 = 2112;
    v24 = @"Request";
    v25 = 2112;
    v26 = v10;
    v27 = 2112;
    v28 = v13;
    v29 = 2112;
    v30 = v16;
    _os_log_impl(&dword_25543D000, log, OS_LOG_TYPE_DEFAULT, "#session-connection, [%@]:[%@]: didUpdateContexts: [%@][%@]:\n%@", buf, 0x34u);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_requestCurrentContextWithReply:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IRSessionConnection *)self serviceHandler];
  v6 = [v5 requestCurrentContextWithBundleID:0];

  v7 = *MEMORY[0x277D21270];
  if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
  {
    log = v7;
    v21 = [(IRSessionConnection *)self client];
    v18 = [v21 clientIdentifier];
    v20 = [v6 allKeys];
    v8 = [v20 firstObject];
    v9 = [v6 allValues];
    v10 = [v9 firstObject];
    v11 = [v10 bundleIdentifier];
    v12 = [v6 allValues];
    v13 = [v12 firstObject];
    v14 = [IRLogQEUtility getContextAsString:v13];
    *buf = 138413314;
    v23 = v18;
    v24 = 2112;
    v25 = @"RequestWithReply";
    v26 = 2112;
    v27 = v8;
    v28 = 2112;
    v29 = v11;
    v30 = 2112;
    v31 = v14;
    _os_log_impl(&dword_25543D000, log, OS_LOG_TYPE_DEFAULT, "#session-connection, [%@]:[%@]: didUpdateContexts: [%@][%@]:\n%@", buf, 0x34u);
  }

  v15 = [v6 allValues];
  v16 = [v15 firstObject];
  v4[2](v4, v16, 0);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_invalidate
{
  v2 = [(IRSessionConnection *)self client];
  [v2 invalidateXPCConnection];
}

- (void)didUpdateContexts:(id)a3 withReason:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(IRSessionConnection *)self mode]== 1)
  {
    v8 = [(IRSessionConnection *)self client];
    [v8 _didUpdateContext:v6];

    v9 = *MEMORY[0x277D21270];
    if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
    {
      log = v9;
      v21 = [(IRSessionConnection *)self client];
      v18 = [v21 clientIdentifier];
      v20 = [v6 allKeys];
      v10 = [v20 firstObject];
      v11 = [v6 allValues];
      v12 = [v11 firstObject];
      v13 = [v12 bundleIdentifier];
      v14 = [v6 allValues];
      v15 = [v14 firstObject];
      v16 = [IRLogQEUtility getContextAsString:v15];
      *buf = 138413314;
      v23 = v18;
      v24 = 2112;
      v25 = v7;
      v26 = 2112;
      v27 = v10;
      v28 = 2112;
      v29 = v13;
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&dword_25543D000, log, OS_LOG_TYPE_DEFAULT, "#session-connection, [%@]:[%@]: didUpdateContexts: [%@][%@]:\n%@", buf, 0x34u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)didUpdateBundlesWithSignificantInteractionPattern:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IRSessionConnection *)self client];
  [v5 _didUpdateBundlesWithSignificantInteractionPattern:v4];

  v6 = *MEMORY[0x277D21270];
  if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(IRSessionConnection *)self client];
    v9 = [v8 clientIdentifier];
    v11 = 138412546;
    v12 = v9;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_25543D000, v7, OS_LOG_TYPE_DEFAULT, "#session-connection, [%@]: Did update bundles: [%@]", &v11, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_setSpotOnLocationWithParameters:(id)a3
{
  v4 = a3;
  v7 = [(IRSessionConnection *)self serviceHandler];
  v5 = [(IRSessionConnection *)self client];
  v6 = [v5 clientIdentifier];
  [v7 setSpotOnLocationWithParameters:v4 andClientID:v6];
}

- (void)didSpotOnLocationComplete:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IRSessionConnection *)self client];
  [v5 _didSpotOnLocationComplete:v4];

  v6 = *MEMORY[0x277D21270];
  if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(IRSessionConnection *)self client];
    v9 = [v8 clientIdentifier];
    v10 = [v4 localizedDescription];
    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_25543D000, v7, OS_LOG_TYPE_DEFAULT, "#session-connection, [%@]: Did Spot On Location Complete with error: [%@]", &v12, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end