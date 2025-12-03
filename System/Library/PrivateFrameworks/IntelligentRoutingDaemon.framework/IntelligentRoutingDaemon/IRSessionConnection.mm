@interface IRSessionConnection
- (IRServiceHandling)serviceHandler;
- (IRSessionConnection)initWithServer:(id)server client:(id)client;
- (IRSessionServer)server;
- (void)_addEvent:(id)event forCandidate:(id)candidate;
- (void)_createServiceWithParameters:(id)parameters reply:(id)reply;
- (void)_databaseExportwithReply:(id)reply;
- (void)_deleteCandidate:(id)candidate;
- (void)_deleteDatabaseWithReply:(id)reply;
- (void)_deleteService:(id)service;
- (void)_getServiceTokensWithReply:(id)reply;
- (void)_invalidate;
- (void)_requestCurrentContextWithBundleID:(id)d;
- (void)_requestCurrentContextWithReply:(id)reply;
- (void)_runWithConfiguration:(id)configuration;
- (void)_setSpotOnLocationWithParameters:(id)parameters;
- (void)_updateCandidates:(id)candidates;
- (void)didSpotOnLocationComplete:(id)complete;
- (void)didUpdateBundlesWithSignificantInteractionPattern:(id)pattern;
- (void)didUpdateContexts:(id)contexts withReason:(id)reason;
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

- (IRSessionConnection)initWithServer:(id)server client:(id)client
{
  serverCopy = server;
  clientCopy = client;
  v11.receiver = self;
  v11.super_class = IRSessionConnection;
  v8 = [(IRSessionConnection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(IRSessionConnection *)v8 setServer:serverCopy];
    [(IRSessionConnection *)v9 setClient:clientCopy];
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
    client = [(IRSessionConnection *)self client];
    clientIdentifier = [client clientIdentifier];
    v8 = MEMORY[0x277CCABB0];
    client2 = [(IRSessionConnection *)self client];
    connection = [client2 connection];
    v11 = [v8 numberWithInt:{objc_msgSend(connection, "processIdentifier")}];
    v18 = 138412546;
    v19 = clientIdentifier;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_25543D000, v5, OS_LOG_TYPE_DEFAULT, "#session-connection, Disconnection for: %@, with pid: %@", &v18, 0x16u);
  }

  serviceIdentifier = [(IRSessionConnection *)self serviceIdentifier];

  if (serviceIdentifier)
  {
    server = [(IRSessionConnection *)self server];
    serviceIdentifier2 = [(IRSessionConnection *)self serviceIdentifier];
    v15 = [server unregisterWithServiceIdentifier:serviceIdentifier2 withConnection:self];

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

- (void)_createServiceWithParameters:(id)parameters reply:(id)reply
{
  v6 = MEMORY[0x277D212E0];
  replyCopy = reply;
  client = [(IRSessionConnection *)self client];
  clientIdentifier = [client clientIdentifier];
  v9 = [v6 serviceTokenForServiceIdentifier:clientIdentifier];
  (*(reply + 2))(replyCopy, v9, 0);
}

- (void)_deleteService:(id)service
{
  serviceCopy = service;
  os_unfair_lock_lock(&serviceCreationAndDeletionlock);
  server = [(IRSessionConnection *)self server];
  persistenceManager = [server persistenceManager];
  [IRServiceContainer deleteServiceWithToken:serviceCopy persistenceManager:persistenceManager];

  os_unfair_lock_unlock(&serviceCreationAndDeletionlock);
}

- (void)_databaseExportwithReply:(id)reply
{
  v14[1] = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  server = [(IRSessionConnection *)self server];
  persistenceManager = [server persistenceManager];
  v7 = [IRServiceContainer exportDatabaseWithPersistenceManager:persistenceManager];

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

  replyCopy[2](replyCopy, v7, v8);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_deleteDatabaseWithReply:(id)reply
{
  v13[1] = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  os_unfair_lock_lock(&serviceCreationAndDeletionlock);
  server = [(IRSessionConnection *)self server];
  persistenceManager = [server persistenceManager];
  v7 = [IRServiceContainer deleteDatabaseWithPersistenceManager:persistenceManager];

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

  replyCopy[2](replyCopy, v8);

  os_unfair_lock_unlock(&serviceCreationAndDeletionlock);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_getServiceTokensWithReply:(id)reply
{
  v15[1] = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  os_unfair_lock_lock(&serviceCreationAndDeletionlock);
  client = [(IRSessionConnection *)self client];
  clientIdentifier = [client clientIdentifier];
  server = [(IRSessionConnection *)self server];
  persistenceManager = [server persistenceManager];
  v9 = [IRServiceContainer getServiceTokensForClientIdentifier:clientIdentifier persistenceManager:persistenceManager];

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

  replyCopy[2](replyCopy, v9, v10);

  os_unfair_lock_unlock(&serviceCreationAndDeletionlock);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_runWithConfiguration:(id)configuration
{
  v73[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  server = [(IRSessionConnection *)self server];
  if (server)
  {
    v6 = MEMORY[0x277D212E0];
    serviceToken = [configurationCopy serviceToken];
    client = [(IRSessionConnection *)self client];
    clientIdentifier = [client clientIdentifier];
    LODWORD(v6) = [v6 isServiceTokenValid:serviceToken forClientIdentifier:clientIdentifier];

    if (v6)
    {
      serviceToken2 = [configurationCopy serviceToken];
      v11 = [serviceToken2 copy];
    }

    else
    {
      v12 = MEMORY[0x277D212E0];
      serviceToken2 = [(IRSessionConnection *)self client];
      clientIdentifier2 = [serviceToken2 clientIdentifier];
      v11 = [v12 serviceTokenForServiceIdentifier:clientIdentifier2];
    }

    if (v11)
    {
      mode = [configurationCopy mode];
      v15 = [objc_alloc(MEMORY[0x277D212A0]) initWithServiceToken:v11];

      [v15 setMode:mode];
      serviceIdentifier = [(IRSessionConnection *)self serviceIdentifier];

      if (serviceIdentifier)
      {
LABEL_17:
        mode2 = [(IRSessionConnection *)self mode];
        if (mode2 != [v15 mode])
        {
          -[IRSessionConnection setMode:](self, "setMode:", [v15 mode]);
          serviceIdentifier2 = [(IRSessionConnection *)self serviceIdentifier];
          [server refreshUpdateModeForServiceIdentifier:serviceIdentifier2];
        }

        serviceHandler = [(IRSessionConnection *)self serviceHandler];
        [serviceHandler run];
        configurationCopy = v15;
        goto LABEL_21;
      }

      os_unfair_lock_lock(&serviceCreationAndDeletionlock);
      persistenceManager = [server persistenceManager];
      v18 = [IRServiceContainer getServicesWithPersistenceManager:persistenceManager];

      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __45__IRSessionConnection__runWithConfiguration___block_invoke;
      v60[3] = &unk_2797E2590;
      configurationCopy = v15;
      v61 = configurationCopy;
      v58 = v18;
      v59 = [v18 firstWhere:v60];
      v19 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        client2 = [(IRSessionConnection *)self client];
        clientIdentifier3 = [client2 clientIdentifier];
        serviceToken3 = [configurationCopy serviceToken];
        serviceIdentifier3 = [serviceToken3 serviceIdentifier];
        serviceToken4 = [configurationCopy serviceToken];
        [serviceToken4 servicePackage];
        v23 = IRServicePackageString();
        *buf = 138413058;
        v65 = clientIdentifier3;
        v66 = 2112;
        v67 = serviceIdentifier3;
        v68 = 2112;
        v69 = v23;
        v70 = 2112;
        v71 = v59;
        _os_log_impl(&dword_25543D000, v19, OS_LOG_TYPE_INFO, "#session-connection, Client:%@ running Service Token:%@ with Service Package:%@\n Service found in database:%@", buf, 0x2Au);
      }

      v24 = v59;
      if (!v59)
      {
        serviceToken5 = [configurationCopy serviceToken];
        serviceIdentifier4 = [serviceToken5 serviceIdentifier];
        serviceToken6 = [configurationCopy serviceToken];
        serviceIdentifier5 = [serviceToken6 serviceIdentifier];
        v27 = objc_alloc(MEMORY[0x277D212D8]);
        serviceToken7 = [configurationCopy serviceToken];
        v29 = [v27 initWithServicePackage:{objc_msgSend(serviceToken7, "servicePackage")}];
        persistenceManager2 = [server persistenceManager];
        v53 = [IRServiceContainer createServiceWithClientIdentifier:serviceIdentifier4 serviceIdentifier:serviceIdentifier5 parameters:v29 persistenceManager:persistenceManager2];

        v31 = *MEMORY[0x277D21260];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          serviceToken8 = [configurationCopy serviceToken];
          serviceIdentifier6 = [serviceToken8 serviceIdentifier];
          client3 = [(IRSessionConnection *)self client];
          clientIdentifier4 = [client3 clientIdentifier];
          v36 = clientIdentifier4;
          v37 = @"YES";
          *buf = 138412802;
          v65 = serviceIdentifier6;
          v66 = 2112;
          if (!v53)
          {
            v37 = @"NO";
          }

          v67 = clientIdentifier4;
          v68 = 2112;
          v69 = v37;
          _os_log_impl(&dword_25543D000, v31, OS_LOG_TYPE_INFO, "#session-connection, Creating service: %@, for client: %@, success: %@", buf, 0x20u);
        }

        v24 = 0;
      }

      os_unfair_lock_unlock(&serviceCreationAndDeletionlock);
      serviceToken9 = [configurationCopy serviceToken];
      serviceIdentifier7 = [serviceToken9 serviceIdentifier];
      v40 = [server registerWithServiceIdentifier:serviceIdentifier7 withConnection:self];

      if (v40)
      {
        serviceToken10 = [configurationCopy serviceToken];
        serviceIdentifier8 = [serviceToken10 serviceIdentifier];
        [(IRSessionConnection *)self setServiceIdentifier:serviceIdentifier8];

        [(IRSessionConnection *)self setServiceHandler:v40];
        goto LABEL_17;
      }

      v50 = MEMORY[0x277CCA9B8];
      v62 = *MEMORY[0x277CCA470];
      v63 = @"Could not run service";
      v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
      serviceHandler = [v50 errorWithDomain:*MEMORY[0x277D21258] code:-12889 userInfo:v51];

      client4 = [(IRSessionConnection *)self client];
      [client4 _sessionDidFailWithError:serviceHandler];
    }

    else
    {
      v46 = MEMORY[0x277CCA9B8];
      v72 = *MEMORY[0x277CCA470];
      v73[0] = @"Could not run service, unknown client";
      v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:&v72 count:1];
      serviceHandler = [v46 errorWithDomain:*MEMORY[0x277D21258] code:-12889 userInfo:v47];

      client5 = [(IRSessionConnection *)self client];
      [client5 _sessionDidFailWithError:serviceHandler];
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

- (void)_updateCandidates:(id)candidates
{
  candidatesCopy = candidates;
  v5 = objc_opt_new();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__IRSessionConnection__updateCandidates___block_invoke;
  v8[3] = &unk_2797E25B8;
  v9 = v5;
  v6 = v5;
  [candidatesCopy enumerateObjectsUsingBlock:v8];

  serviceHandler = [(IRSessionConnection *)self serviceHandler];
  [serviceHandler updateCandidates:v6];
}

void __41__IRSessionConnection__updateCandidates___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [IRCandidateDO candidateDOFromCandidate:a2];
  [v2 addObject:v3];
}

- (void)_deleteCandidate:(id)candidate
{
  candidateCopy = candidate;
  serviceHandler = [(IRSessionConnection *)self serviceHandler];
  v5 = [IRCandidateDO candidateDOFromCandidate:candidateCopy];

  [serviceHandler deleteCandidate:v5];
}

- (void)_addEvent:(id)event forCandidate:(id)candidate
{
  candidateCopy = candidate;
  eventCopy = event;
  serviceHandler = [(IRSessionConnection *)self serviceHandler];
  eventDO = [eventCopy eventDO];

  v9 = [IRCandidateDO candidateDOFromCandidate:candidateCopy];

  [serviceHandler addEvent:eventDO forCandidate:v9];
}

- (void)_requestCurrentContextWithBundleID:(id)d
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  serviceHandler = [(IRSessionConnection *)self serviceHandler];
  v6 = [serviceHandler requestCurrentContextWithBundleID:dCopy];

  client = [(IRSessionConnection *)self client];
  [client _didUpdateContext:v6];

  v8 = *MEMORY[0x277D21270];
  if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
  {
    log = v8;
    client2 = [(IRSessionConnection *)self client];
    clientIdentifier = [client2 clientIdentifier];
    allKeys = [v6 allKeys];
    firstObject = [allKeys firstObject];
    allValues = [v6 allValues];
    firstObject2 = [allValues firstObject];
    bundleIdentifier = [firstObject2 bundleIdentifier];
    allValues2 = [v6 allValues];
    firstObject3 = [allValues2 firstObject];
    v16 = [IRLogQEUtility getContextAsString:firstObject3];
    *buf = 138413314;
    v22 = clientIdentifier;
    v23 = 2112;
    v24 = @"Request";
    v25 = 2112;
    v26 = firstObject;
    v27 = 2112;
    v28 = bundleIdentifier;
    v29 = 2112;
    v30 = v16;
    _os_log_impl(&dword_25543D000, log, OS_LOG_TYPE_DEFAULT, "#session-connection, [%@]:[%@]: didUpdateContexts: [%@][%@]:\n%@", buf, 0x34u);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_requestCurrentContextWithReply:(id)reply
{
  v32 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  serviceHandler = [(IRSessionConnection *)self serviceHandler];
  v6 = [serviceHandler requestCurrentContextWithBundleID:0];

  v7 = *MEMORY[0x277D21270];
  if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
  {
    log = v7;
    client = [(IRSessionConnection *)self client];
    clientIdentifier = [client clientIdentifier];
    allKeys = [v6 allKeys];
    firstObject = [allKeys firstObject];
    allValues = [v6 allValues];
    firstObject2 = [allValues firstObject];
    bundleIdentifier = [firstObject2 bundleIdentifier];
    allValues2 = [v6 allValues];
    firstObject3 = [allValues2 firstObject];
    v14 = [IRLogQEUtility getContextAsString:firstObject3];
    *buf = 138413314;
    v23 = clientIdentifier;
    v24 = 2112;
    v25 = @"RequestWithReply";
    v26 = 2112;
    v27 = firstObject;
    v28 = 2112;
    v29 = bundleIdentifier;
    v30 = 2112;
    v31 = v14;
    _os_log_impl(&dword_25543D000, log, OS_LOG_TYPE_DEFAULT, "#session-connection, [%@]:[%@]: didUpdateContexts: [%@][%@]:\n%@", buf, 0x34u);
  }

  allValues3 = [v6 allValues];
  firstObject4 = [allValues3 firstObject];
  replyCopy[2](replyCopy, firstObject4, 0);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_invalidate
{
  client = [(IRSessionConnection *)self client];
  [client invalidateXPCConnection];
}

- (void)didUpdateContexts:(id)contexts withReason:(id)reason
{
  v32 = *MEMORY[0x277D85DE8];
  contextsCopy = contexts;
  reasonCopy = reason;
  if ([(IRSessionConnection *)self mode]== 1)
  {
    client = [(IRSessionConnection *)self client];
    [client _didUpdateContext:contextsCopy];

    v9 = *MEMORY[0x277D21270];
    if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
    {
      log = v9;
      client2 = [(IRSessionConnection *)self client];
      clientIdentifier = [client2 clientIdentifier];
      allKeys = [contextsCopy allKeys];
      firstObject = [allKeys firstObject];
      allValues = [contextsCopy allValues];
      firstObject2 = [allValues firstObject];
      bundleIdentifier = [firstObject2 bundleIdentifier];
      allValues2 = [contextsCopy allValues];
      firstObject3 = [allValues2 firstObject];
      v16 = [IRLogQEUtility getContextAsString:firstObject3];
      *buf = 138413314;
      v23 = clientIdentifier;
      v24 = 2112;
      v25 = reasonCopy;
      v26 = 2112;
      v27 = firstObject;
      v28 = 2112;
      v29 = bundleIdentifier;
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&dword_25543D000, log, OS_LOG_TYPE_DEFAULT, "#session-connection, [%@]:[%@]: didUpdateContexts: [%@][%@]:\n%@", buf, 0x34u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)didUpdateBundlesWithSignificantInteractionPattern:(id)pattern
{
  v15 = *MEMORY[0x277D85DE8];
  patternCopy = pattern;
  client = [(IRSessionConnection *)self client];
  [client _didUpdateBundlesWithSignificantInteractionPattern:patternCopy];

  v6 = *MEMORY[0x277D21270];
  if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    client2 = [(IRSessionConnection *)self client];
    clientIdentifier = [client2 clientIdentifier];
    v11 = 138412546;
    v12 = clientIdentifier;
    v13 = 2112;
    v14 = patternCopy;
    _os_log_impl(&dword_25543D000, v7, OS_LOG_TYPE_DEFAULT, "#session-connection, [%@]: Did update bundles: [%@]", &v11, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_setSpotOnLocationWithParameters:(id)parameters
{
  parametersCopy = parameters;
  serviceHandler = [(IRSessionConnection *)self serviceHandler];
  client = [(IRSessionConnection *)self client];
  clientIdentifier = [client clientIdentifier];
  [serviceHandler setSpotOnLocationWithParameters:parametersCopy andClientID:clientIdentifier];
}

- (void)didSpotOnLocationComplete:(id)complete
{
  v16 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  client = [(IRSessionConnection *)self client];
  [client _didSpotOnLocationComplete:completeCopy];

  v6 = *MEMORY[0x277D21270];
  if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    client2 = [(IRSessionConnection *)self client];
    clientIdentifier = [client2 clientIdentifier];
    localizedDescription = [completeCopy localizedDescription];
    v12 = 138412546;
    v13 = clientIdentifier;
    v14 = 2112;
    v15 = localizedDescription;
    _os_log_impl(&dword_25543D000, v7, OS_LOG_TYPE_DEFAULT, "#session-connection, [%@]: Did Spot On Location Complete with error: [%@]", &v12, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end