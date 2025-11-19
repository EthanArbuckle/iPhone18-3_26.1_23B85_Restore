@interface ULServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (ULServer)initWithQueue:(id)a3 serviceHandling:(id)a4 legacyServiceHandling:(id)a5 diagnosticsHandling:(id)a6;
- (id)_remoteProxyForToken:(id)a3;
- (void)clientConnectionSeveredConnection:(id)a3;
- (void)didCompleteObservationWithMetaInformation:(id)a3 toConnection:(id)a4;
- (void)didCompletePredictionWithMetaInformation:(id)a3 toConnection:(id)a4;
- (void)didCompleteRequest:(id)a3 withError:(id)a4 toConnection:(id)a5;
- (void)didCreateCustomLoiAtCurrentLocationWithError:(id)a3 forConnection:(id)a4;
- (void)didFailWithError:(id)a3 toConnection:(id)a4;
- (void)didRemoveCustomLoiWithIdentifier:(id)a3 forConnection:(id)a4 withError:(id)a5;
- (void)didSendGenericEvent:(unint64_t)a3 withDescription:(id)a4 toConnection:(id)a5;
- (void)didSendPredictionContextResults:(id)a3 toConnection:(id)a4;
- (void)didUpdateMap:(id)a3 toConnection:(id)a4;
@end

@implementation ULServer

- (ULServer)initWithQueue:(id)a3 serviceHandling:(id)a4 legacyServiceHandling:(id)a5 diagnosticsHandling:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatch_assert_queue_V2(v10);
  v18.receiver = self;
  v18.super_class = ULServer;
  v14 = [(ULServer *)&v18 init];
  v15 = v14;
  if (v14)
  {
    [(ULServer *)v14 setQueue:v10];
    [(ULServer *)v15 setServiceHandling:v11];
    [(ULServer *)v15 setLegacyServiceHandling:v12];
    [(ULServer *)v15 setDiagnosticsHandling:v13];
    v16 = [MEMORY[0x277CBEB58] set];
    [(ULServer *)v15 setClientConnections:v16];
  }

  return v15;
}

- (id)_remoteProxyForToken:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ULServer *)self queue];
  dispatch_assert_queue_V2(v5);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(ULServer *)self clientConnections];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 connectionToken];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          v7 = [v10 remoteObjectProxy];
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [(ULServer *)self queue];
  dispatch_assert_queue_not_V2(v6);

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v7 = [(ULServer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__ULServer_NSXPCListenerDelegate__listener_shouldAcceptNewConnection___block_invoke;
  block[3] = &unk_2798D4B38;
  v11 = v5;
  v12 = self;
  v13 = &v14;
  v8 = v5;
  dispatch_sync(v7, block);

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

- (void)clientConnectionSeveredConnection:(id)a3
{
  v4 = a3;
  v5 = [(ULServer *)self queue];
  dispatch_assert_queue_not_V2(v5);

  v6 = [(ULServer *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__ULServer_ULClientProcessConnectionDelegate__clientConnectionSeveredConnection___block_invoke;
  v8[3] = &unk_2798D44B0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(v6, v8);
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

- (void)didSendPredictionContextResults:(id)a3 toConnection:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(ULServer *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = [(ULServer *)self _remoteProxyForToken:v6];
  [v8 didUpdatePredictionContext:v9];
}

- (void)didUpdateMap:(id)a3 toConnection:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(ULServer *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = [(ULServer *)self _remoteProxyForToken:v6];
  [v8 didUpdateMap:v9];
}

- (void)didCompleteRequest:(id)a3 withError:(id)a4 toConnection:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(ULServer *)self queue];
  dispatch_assert_queue_V2(v10);

  v11 = [(ULServer *)self _remoteProxyForToken:v9];
  [v11 didCompleteRequest:v12 withError:v8];
}

- (void)didCreateCustomLoiAtCurrentLocationWithError:(id)a3 forConnection:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(ULServer *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = [(ULServer *)self _remoteProxyForToken:v6];
  [v8 didCreateCustomLocationOfInterestWithError:v9];
}

- (void)didRemoveCustomLoiWithIdentifier:(id)a3 forConnection:(id)a4 withError:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(ULServer *)self queue];
  dispatch_assert_queue_V2(v10);

  v11 = [(ULServer *)self _remoteProxyForToken:v8];
  [v11 didRemoveCustomLocationOfInterestWithIdentifier:v12 withError:v9];
}

- (void)didFailWithError:(id)a3 toConnection:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(ULServer *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = [(ULServer *)self _remoteProxyForToken:v6];
  [v8 didFailWithError:v9];
}

- (void)didSendGenericEvent:(unint64_t)a3 withDescription:(id)a4 toConnection:(id)a5
{
  v11 = a4;
  v8 = a5;
  v9 = [(ULServer *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = [(ULServer *)self _remoteProxyForToken:v8];
  [v10 didSendGenericEvent:a3 withDescription:v11];
}

- (void)didCompleteObservationWithMetaInformation:(id)a3 toConnection:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(ULServer *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = [(ULServer *)self _remoteProxyForToken:v6];
  [v8 didCompleteObservationWithMetaInformation:v9];
}

- (void)didCompletePredictionWithMetaInformation:(id)a3 toConnection:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(ULServer *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = [(ULServer *)self _remoteProxyForToken:v6];
  [v8 didCompletePredictionWithMetaInformation:v9];
}

@end