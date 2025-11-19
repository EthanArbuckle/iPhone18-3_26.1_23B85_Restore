@interface CARSessionRequestHandlerProxy
- (CARSessionRequestHandling)requestHandler;
- (void)service_cancelRequestsWithReply:(id)a3;
- (void)service_prepareForRemovingWiFiUUID:(id)a3 reply:(id)a4;
- (void)service_startAdvertisingCarPlayControlForUSBWithReply:(id)a3;
- (void)service_startAdvertisingCarPlayControlForWiFiUUID:(id)a3 reply:(id)a4;
- (void)service_startSessionWithHost:(id)a3 requestIdentifier:(id)a4 reply:(id)a5;
- (void)service_stoppedSessionWithHostIdentifier:(id)a3 reply:(id)a4;
@end

@implementation CARSessionRequestHandlerProxy

- (void)service_startSessionWithHost:(id)a3 requestIdentifier:(id)a4 reply:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CarGeneralLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v17 = 138412546;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_1C81FC000, v11, OS_LOG_TYPE_INFO, "Received start session request for host %@, requestID: %@", &v17, 0x16u);
  }

  v12 = [(CARSessionRequestHandlerProxy *)self requestHandler];
  v13 = objc_opt_respondsToSelector();

  v14 = [(CARSessionRequestHandlerProxy *)self requestHandler];
  v15 = v14;
  if (v13)
  {
    [v14 startSessionWithHost:v8 requestIdentifier:v9 completion:v10];
LABEL_7:

    goto LABEL_8;
  }

  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v15 = [(CARSessionRequestHandlerProxy *)self requestHandler];
    [v15 startSessionWithHost:v8 completion:v10];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)service_stoppedSessionWithHostIdentifier:(id)a3 reply:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&dword_1C81FC000, v8, OS_LOG_TYPE_INFO, "Received stop session request for host ID %@", &v12, 0xCu);
  }

  v9 = [(CARSessionRequestHandlerProxy *)self requestHandler];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(CARSessionRequestHandlerProxy *)self requestHandler];
    [v11 stoppedSessionForHostIdentifier:v6];
  }

  v7[2](v7, 1, 0);
}

- (void)service_startAdvertisingCarPlayControlForWiFiUUID:(id)a3 reply:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&dword_1C81FC000, v8, OS_LOG_TYPE_INFO, "Received startAdvertisingCarPlayControl for Wi-Fi UUID: %@", &v12, 0xCu);
  }

  v9 = [(CARSessionRequestHandlerProxy *)self requestHandler];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(CARSessionRequestHandlerProxy *)self requestHandler];
    [v11 startAdvertisingCarPlayControlForWiFiUUID:v6];
  }

  v7[2](v7, 1, 0);
}

- (void)service_startAdvertisingCarPlayControlForUSBWithReply:(id)a3
{
  v4 = a3;
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_INFO, "Received startAdvertisingCarPlayControl for USB", v9, 2u);
  }

  v6 = [(CARSessionRequestHandlerProxy *)self requestHandler];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CARSessionRequestHandlerProxy *)self requestHandler];
    [v8 startAdvertisingCarPlayControlForUSB];
  }

  v4[2](v4, 1, 0);
}

- (void)service_prepareForRemovingWiFiUUID:(id)a3 reply:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&dword_1C81FC000, v8, OS_LOG_TYPE_INFO, "Received prepareForRemovingWiFiUUID: %@", &v12, 0xCu);
  }

  v9 = [(CARSessionRequestHandlerProxy *)self requestHandler];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(CARSessionRequestHandlerProxy *)self requestHandler];
    [v11 prepareForRemovingWiFiUUID:v6 completion:v7];
  }
}

- (void)service_cancelRequestsWithReply:(id)a3
{
  v4 = a3;
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_INFO, "Received cancelRequests", v9, 2u);
  }

  v6 = [(CARSessionRequestHandlerProxy *)self requestHandler];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CARSessionRequestHandlerProxy *)self requestHandler];
    [v8 cancelRequests];
  }

  v4[2](v4, 1, 0);
}

- (CARSessionRequestHandling)requestHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_requestHandler);

  return WeakRetained;
}

@end