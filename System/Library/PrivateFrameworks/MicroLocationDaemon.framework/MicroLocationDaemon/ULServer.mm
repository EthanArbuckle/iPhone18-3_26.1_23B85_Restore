@interface ULServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (ULServer)initWithQueue:(id)queue serviceHandling:(id)handling legacyServiceHandling:(id)serviceHandling diagnosticsHandling:(id)diagnosticsHandling;
- (id)_remoteProxyForToken:(id)token;
- (void)clientConnectionSeveredConnection:(id)connection;
- (void)didCompleteObservationWithMetaInformation:(id)information toConnection:(id)connection;
- (void)didCompletePredictionWithMetaInformation:(id)information toConnection:(id)connection;
- (void)didCompleteRequest:(id)request withError:(id)error toConnection:(id)connection;
- (void)didCreateCustomLoiAtCurrentLocationWithError:(id)error forConnection:(id)connection;
- (void)didFailWithError:(id)error toConnection:(id)connection;
- (void)didRemoveCustomLoiWithIdentifier:(id)identifier forConnection:(id)connection withError:(id)error;
- (void)didSendGenericEvent:(unint64_t)event withDescription:(id)description toConnection:(id)connection;
- (void)didSendPredictionContextResults:(id)results toConnection:(id)connection;
- (void)didUpdateMap:(id)map toConnection:(id)connection;
@end

@implementation ULServer

- (ULServer)initWithQueue:(id)queue serviceHandling:(id)handling legacyServiceHandling:(id)serviceHandling diagnosticsHandling:(id)diagnosticsHandling
{
  queueCopy = queue;
  handlingCopy = handling;
  serviceHandlingCopy = serviceHandling;
  diagnosticsHandlingCopy = diagnosticsHandling;
  dispatch_assert_queue_V2(queueCopy);
  v18.receiver = self;
  v18.super_class = ULServer;
  v14 = [(ULServer *)&v18 init];
  v15 = v14;
  if (v14)
  {
    [(ULServer *)v14 setQueue:queueCopy];
    [(ULServer *)v15 setServiceHandling:handlingCopy];
    [(ULServer *)v15 setLegacyServiceHandling:serviceHandlingCopy];
    [(ULServer *)v15 setDiagnosticsHandling:diagnosticsHandlingCopy];
    v16 = [MEMORY[0x277CBEB58] set];
    [(ULServer *)v15 setClientConnections:v16];
  }

  return v15;
}

- (id)_remoteProxyForToken:(id)token
{
  v20 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  queue = [(ULServer *)self queue];
  dispatch_assert_queue_V2(queue);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  clientConnections = [(ULServer *)self clientConnections];
  remoteObjectProxy = [clientConnections countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (remoteObjectProxy)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != remoteObjectProxy; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(clientConnections);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        connectionToken = [v10 connectionToken];
        v12 = [connectionToken isEqual:tokenCopy];

        if (v12)
        {
          remoteObjectProxy = [v10 remoteObjectProxy];
          goto LABEL_11;
        }
      }

      remoteObjectProxy = [clientConnections countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (remoteObjectProxy)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return remoteObjectProxy;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  queue = [(ULServer *)self queue];
  dispatch_assert_queue_not_V2(queue);

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  queue2 = [(ULServer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__ULServer_NSXPCListenerDelegate__listener_shouldAcceptNewConnection___block_invoke;
  block[3] = &unk_2798D4B38;
  v11 = connectionCopy;
  selfCopy = self;
  v13 = &v14;
  v8 = connectionCopy;
  dispatch_sync(queue2, block);

  LOBYTE(self) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return self;
}

void __70__ULServer_NSXPCListenerDelegate__listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    __70__ULServer_NSXPCListenerDelegate__listener_shouldAcceptNewConnection___block_invoke_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v23 = 138412290;
    v24 = v3;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "trying to accept connection: %@", &v23, 0xCu);
  }

  v4 = [ULClientProcessConnection alloc];
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = [v5 serviceHandling];
  v8 = [*(a1 + 40) legacyServiceHandling];
  v9 = [*(a1 + 40) diagnosticsHandling];
  v10 = [*(a1 + 40) queue];
  v11 = [(ULClientProcessConnection *)v4 initWithXPCConnection:v6 delegate:v5 serviceHandling:v7 legacyServiceHandling:v8 diagnosticsHandling:v9 queue:v10];

  if (v11)
  {
    v12 = [(ULClientProcessConnection *)v11 signingIdentity];
    v13 = v12 == 0;

    if (!v13)
    {
      v14 = [*(a1 + 40) clientConnections];
      [v14 addObject:v11];

      if (onceToken_MicroLocation_Default != -1)
      {
        __70__ULServer_NSXPCListenerDelegate__listener_shouldAcceptNewConnection___block_invoke_cold_2();
      }

      v15 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(ULClientProcessConnection *)v11 signingIdentity];
        v17 = MEMORY[0x277CCABB0];
        v18 = [*(a1 + 40) clientConnections];
        v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(v18, "count")}];
        v23 = 138412546;
        v24 = v16;
        v25 = 2112;
        v26 = v19;
        _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_DEFAULT, "Accepting connection of: %@, number of connections: %@", &v23, 0x16u);
      }

      *(*(*(a1 + 48) + 8) + 24) = 1;
      goto LABEL_21;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      __70__ULServer_NSXPCListenerDelegate__listener_shouldAcceptNewConnection___block_invoke_cold_2();
    }

    v20 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      v21 = "Connection is not signed, declining";
      goto LABEL_20;
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __70__ULServer_NSXPCListenerDelegate__listener_shouldAcceptNewConnection___block_invoke_cold_2();
    }

    v20 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      v21 = "Connection declined";
LABEL_20:
      _os_log_impl(&dword_258FE9000, v20, OS_LOG_TYPE_ERROR, v21, &v23, 2u);
    }
  }

LABEL_21:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)clientConnectionSeveredConnection:(id)connection
{
  connectionCopy = connection;
  queue = [(ULServer *)self queue];
  dispatch_assert_queue_not_V2(queue);

  queue2 = [(ULServer *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__ULServer_ULClientProcessConnectionDelegate__clientConnectionSeveredConnection___block_invoke;
  v8[3] = &unk_2798D44B0;
  v8[4] = self;
  v9 = connectionCopy;
  v7 = connectionCopy;
  dispatch_sync(queue2, v8);
}

void __81__ULServer_ULClientProcessConnectionDelegate__clientConnectionSeveredConnection___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) clientConnections];
  [v2 removeObject:*(a1 + 40)];

  v3 = [*(a1 + 32) serviceHandling];
  v4 = [*(a1 + 40) connectionToken];
  [v3 removePendingConnectionRequestsByConnectionToken:v4];

  v5 = [*(a1 + 40) serviceIdentifier];

  if (v5)
  {
    v6 = [*(a1 + 32) serviceHandling];
    v7 = [*(a1 + 40) connectionToken];
    v8 = [*(a1 + 40) signingIdentity];
    v9 = [MEMORY[0x277CCAD78] UUID];
    [v6 disconnectWithConnectionToken:v7 clientIdentifier:v8 requestIdentifier:v9];
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    __70__ULServer_NSXPCListenerDelegate__listener_shouldAcceptNewConnection___block_invoke_cold_1();
  }

  v10 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 40) signingIdentity];
    v12 = MEMORY[0x277CCABB0];
    v13 = [*(a1 + 32) clientConnections];
    v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
    v16 = 138412546;
    v17 = v11;
    v18 = 2112;
    v19 = v14;
    _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "Connection (%@) severed, number of connections left: %@", &v16, 0x16u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)didSendPredictionContextResults:(id)results toConnection:(id)connection
{
  resultsCopy = results;
  connectionCopy = connection;
  queue = [(ULServer *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = [(ULServer *)self _remoteProxyForToken:connectionCopy];
  [v8 didUpdatePredictionContext:resultsCopy];
}

- (void)didUpdateMap:(id)map toConnection:(id)connection
{
  mapCopy = map;
  connectionCopy = connection;
  queue = [(ULServer *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = [(ULServer *)self _remoteProxyForToken:connectionCopy];
  [v8 didUpdateMap:mapCopy];
}

- (void)didCompleteRequest:(id)request withError:(id)error toConnection:(id)connection
{
  requestCopy = request;
  errorCopy = error;
  connectionCopy = connection;
  queue = [(ULServer *)self queue];
  dispatch_assert_queue_V2(queue);

  v11 = [(ULServer *)self _remoteProxyForToken:connectionCopy];
  [v11 didCompleteRequest:requestCopy withError:errorCopy];
}

- (void)didCreateCustomLoiAtCurrentLocationWithError:(id)error forConnection:(id)connection
{
  errorCopy = error;
  connectionCopy = connection;
  queue = [(ULServer *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = [(ULServer *)self _remoteProxyForToken:connectionCopy];
  [v8 didCreateCustomLocationOfInterestWithError:errorCopy];
}

- (void)didRemoveCustomLoiWithIdentifier:(id)identifier forConnection:(id)connection withError:(id)error
{
  identifierCopy = identifier;
  connectionCopy = connection;
  errorCopy = error;
  queue = [(ULServer *)self queue];
  dispatch_assert_queue_V2(queue);

  v11 = [(ULServer *)self _remoteProxyForToken:connectionCopy];
  [v11 didRemoveCustomLocationOfInterestWithIdentifier:identifierCopy withError:errorCopy];
}

- (void)didFailWithError:(id)error toConnection:(id)connection
{
  errorCopy = error;
  connectionCopy = connection;
  queue = [(ULServer *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = [(ULServer *)self _remoteProxyForToken:connectionCopy];
  [v8 didFailWithError:errorCopy];
}

- (void)didSendGenericEvent:(unint64_t)event withDescription:(id)description toConnection:(id)connection
{
  descriptionCopy = description;
  connectionCopy = connection;
  queue = [(ULServer *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = [(ULServer *)self _remoteProxyForToken:connectionCopy];
  [v10 didSendGenericEvent:event withDescription:descriptionCopy];
}

- (void)didCompleteObservationWithMetaInformation:(id)information toConnection:(id)connection
{
  informationCopy = information;
  connectionCopy = connection;
  queue = [(ULServer *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = [(ULServer *)self _remoteProxyForToken:connectionCopy];
  [v8 didCompleteObservationWithMetaInformation:informationCopy];
}

- (void)didCompletePredictionWithMetaInformation:(id)information toConnection:(id)connection
{
  informationCopy = information;
  connectionCopy = connection;
  queue = [(ULServer *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = [(ULServer *)self _remoteProxyForToken:connectionCopy];
  [v8 didCompletePredictionWithMetaInformation:informationCopy];
}

@end