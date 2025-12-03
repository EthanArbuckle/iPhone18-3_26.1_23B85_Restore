@interface CARSessionRequestHandlerProxy
- (CARSessionRequestHandling)requestHandler;
- (void)service_cancelRequestsWithReply:(id)reply;
- (void)service_prepareForRemovingWiFiUUID:(id)d reply:(id)reply;
- (void)service_startAdvertisingCarPlayControlForUSBWithReply:(id)reply;
- (void)service_startAdvertisingCarPlayControlForWiFiUUID:(id)d reply:(id)reply;
- (void)service_startSessionWithHost:(id)host requestIdentifier:(id)identifier reply:(id)reply;
- (void)service_stoppedSessionWithHostIdentifier:(id)identifier reply:(id)reply;
@end

@implementation CARSessionRequestHandlerProxy

- (void)service_startSessionWithHost:(id)host requestIdentifier:(id)identifier reply:(id)reply
{
  v21 = *MEMORY[0x1E69E9840];
  hostCopy = host;
  identifierCopy = identifier;
  replyCopy = reply;
  v11 = CarGeneralLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v17 = 138412546;
    v18 = hostCopy;
    v19 = 2112;
    v20 = identifierCopy;
    _os_log_impl(&dword_1C81FC000, v11, OS_LOG_TYPE_INFO, "Received start session request for host %@, requestID: %@", &v17, 0x16u);
  }

  requestHandler = [(CARSessionRequestHandlerProxy *)self requestHandler];
  v13 = objc_opt_respondsToSelector();

  requestHandler2 = [(CARSessionRequestHandlerProxy *)self requestHandler];
  requestHandler3 = requestHandler2;
  if (v13)
  {
    [requestHandler2 startSessionWithHost:hostCopy requestIdentifier:identifierCopy completion:replyCopy];
LABEL_7:

    goto LABEL_8;
  }

  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    requestHandler3 = [(CARSessionRequestHandlerProxy *)self requestHandler];
    [requestHandler3 startSessionWithHost:hostCopy completion:replyCopy];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)service_stoppedSessionWithHostIdentifier:(id)identifier reply:(id)reply
{
  v14 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  replyCopy = reply;
  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = identifierCopy;
    _os_log_impl(&dword_1C81FC000, v8, OS_LOG_TYPE_INFO, "Received stop session request for host ID %@", &v12, 0xCu);
  }

  requestHandler = [(CARSessionRequestHandlerProxy *)self requestHandler];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    requestHandler2 = [(CARSessionRequestHandlerProxy *)self requestHandler];
    [requestHandler2 stoppedSessionForHostIdentifier:identifierCopy];
  }

  replyCopy[2](replyCopy, 1, 0);
}

- (void)service_startAdvertisingCarPlayControlForWiFiUUID:(id)d reply:(id)reply
{
  v14 = *MEMORY[0x1E69E9840];
  dCopy = d;
  replyCopy = reply;
  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = dCopy;
    _os_log_impl(&dword_1C81FC000, v8, OS_LOG_TYPE_INFO, "Received startAdvertisingCarPlayControl for Wi-Fi UUID: %@", &v12, 0xCu);
  }

  requestHandler = [(CARSessionRequestHandlerProxy *)self requestHandler];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    requestHandler2 = [(CARSessionRequestHandlerProxy *)self requestHandler];
    [requestHandler2 startAdvertisingCarPlayControlForWiFiUUID:dCopy];
  }

  replyCopy[2](replyCopy, 1, 0);
}

- (void)service_startAdvertisingCarPlayControlForUSBWithReply:(id)reply
{
  replyCopy = reply;
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_INFO, "Received startAdvertisingCarPlayControl for USB", v9, 2u);
  }

  requestHandler = [(CARSessionRequestHandlerProxy *)self requestHandler];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    requestHandler2 = [(CARSessionRequestHandlerProxy *)self requestHandler];
    [requestHandler2 startAdvertisingCarPlayControlForUSB];
  }

  replyCopy[2](replyCopy, 1, 0);
}

- (void)service_prepareForRemovingWiFiUUID:(id)d reply:(id)reply
{
  v14 = *MEMORY[0x1E69E9840];
  dCopy = d;
  replyCopy = reply;
  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = dCopy;
    _os_log_impl(&dword_1C81FC000, v8, OS_LOG_TYPE_INFO, "Received prepareForRemovingWiFiUUID: %@", &v12, 0xCu);
  }

  requestHandler = [(CARSessionRequestHandlerProxy *)self requestHandler];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    requestHandler2 = [(CARSessionRequestHandlerProxy *)self requestHandler];
    [requestHandler2 prepareForRemovingWiFiUUID:dCopy completion:replyCopy];
  }
}

- (void)service_cancelRequestsWithReply:(id)reply
{
  replyCopy = reply;
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_INFO, "Received cancelRequests", v9, 2u);
  }

  requestHandler = [(CARSessionRequestHandlerProxy *)self requestHandler];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    requestHandler2 = [(CARSessionRequestHandlerProxy *)self requestHandler];
    [requestHandler2 cancelRequests];
  }

  replyCopy[2](replyCopy, 1, 0);
}

- (CARSessionRequestHandling)requestHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_requestHandler);

  return WeakRetained;
}

@end