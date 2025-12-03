@interface UARPManagerListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)xpcConnectionHasEntitlement:(id)entitlement;
- (UARPManagerListener)initWithManager:(id)manager dispatchQueue:(id)queue;
- (void)addAccessoryID:(id)d assetID:(id)iD sandboxExtensionToken:(id)token reply:(id)reply;
- (void)changeAssetLocation:(id)location assetID:(id)d sandboxExtensionToken:(id)token reply:(id)reply;
- (void)checkForUpdate:(id)update reply:(id)reply;
- (void)dealloc;
- (void)disableTRMSystemAuthenticationForRegistryEntryID:(id)d reply:(id)reply;
- (void)downloadReleaseNotesForAccessoryID:(id)d assetID:(id)iD reply:(id)reply;
- (void)enableTRMSystemAuthenticationForRegistryEntryID:(id)d reply:(id)reply;
- (void)firmwareUpdateProgressForAccessoryID:(id)d assetID:(id)iD bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total;
- (void)firmwareUpdateProgressForUARPConsent:(id)consent bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total;
- (void)getAssetIDForAccessoryID:(id)d reply:(id)reply;
- (void)getAttestationCertificates:(id)certificates assetID:(id)d reply:(id)reply;
- (void)getAttestationCertificates:(id)certificates reply:(id)reply;
- (void)getSandboxExtensionTokenForAssetID:(id)d reply:(id)reply;
- (void)getSupplementalAssetNameForAccessoryID:(id)d reply:(id)reply;
- (void)getSupportedAccessories:(id)accessories reply:(id)reply;
- (void)personalizationVectorForAccessoryID:(id)d assetTag:(id)tag reply:(id)reply;
- (void)progressForUARPConsent:(id)consent bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total;
- (void)progressForUARPConsentInPostLogout:(id)logout bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total;
- (void)removeAccessoryID:(id)d reply:(id)reply;
- (void)requestConsent:(id)consent reply:(id)reply;
- (void)revokeConsentRequest:(id)request reply:(id)reply;
- (void)sendUpdateFirmwareAnalyticsEventForAccessoryID:(id)d assetID:(id)iD params:(id)params;
- (void)stagingCompleteForAccessoryID:(id)d assetID:(id)iD status:(unint64_t)status;
- (void)updateProperty:(unint64_t)property value:(id)value forAccessory:(id)accessory reply:(id)reply;
@end

@implementation UARPManagerListener

- (UARPManagerListener)initWithManager:(id)manager dispatchQueue:(id)queue
{
  v10.receiver = self;
  v10.super_class = UARPManagerListener;
  v6 = [(UARPManagerListener *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_manager = manager;
    v6->_internalQueue = queue;
    v6->_xpcLog = os_log_create("com.apple.accessoryupdater.uarp", "xpc");
    v8 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.accessoryupdater.uarp"];
    v7->_listener = v8;
    [(NSXPCListener *)v8 setDelegate:v7];
    [(NSXPCListener *)v7->_listener resume];
  }

  return v7;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];

  v3.receiver = self;
  v3.super_class = UARPManagerListener;
  [(UARPManagerListener *)&v3 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002435C;
  block[3] = &unk_1000817B0;
  block[4] = self;
  block[5] = connection;
  block[6] = &v8;
  dispatch_sync(internalQueue, block);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (BOOL)xpcConnectionHasEntitlement:(id)entitlement
{
  v5 = [entitlement valueForEntitlement:@"com.apple.accessoryupdater.uarp"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v5 BOOLValue])
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v6 = os_log_type_enabled(self->_xpcLog, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      sub_10004AD5C(entitlement);
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (void)addAccessoryID:(id)d assetID:(id)iD sandboxExtensionToken:(id)token reply:(id)reply
{
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    v14 = 136315650;
    v15 = "[UARPManagerListener addAccessoryID:assetID:sandboxExtensionToken:reply:]";
    v16 = 2112;
    dCopy = d;
    v18 = 2112;
    iDCopy = iD;
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@ %@", &v14, 0x20u);
  }

  v12 = [(UARPManager *)self->_manager addAccessory:d assetID:iD sandboxExtensionToken:token];
  if (v12)
  {
    v13 = [NSError errorWithDomain:kUARPErrorDomain code:v12 userInfo:0];
  }

  else
  {
    v13 = 0;
  }

  (*(reply + 2))(reply, v13);
}

- (void)removeAccessoryID:(id)d reply:(id)reply
{
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[UARPManagerListener removeAccessoryID:reply:]";
    v12 = 2112;
    dCopy = d;
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@", &v10, 0x16u);
  }

  v8 = [(UARPManager *)self->_manager removeAccessory:d];
  if (v8)
  {
    v9 = [NSError errorWithDomain:kUARPErrorDomain code:v8 userInfo:0];
  }

  else
  {
    v9 = 0;
  }

  (*(reply + 2))(reply, v9);
}

- (void)changeAssetLocation:(id)location assetID:(id)d sandboxExtensionToken:(id)token reply:(id)reply
{
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    v14 = 136315650;
    v15 = "[UARPManagerListener changeAssetLocation:assetID:sandboxExtensionToken:reply:]";
    v16 = 2112;
    locationCopy = location;
    v18 = 2112;
    dCopy = d;
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@ %@", &v14, 0x20u);
  }

  v12 = [(UARPManager *)self->_manager changeAssetLocation:location assetID:d sandboxExtensionToken:token];
  if (v12)
  {
    v13 = [NSError errorWithDomain:kUARPErrorDomain code:v12 userInfo:0];
  }

  else
  {
    v13 = 0;
  }

  (*(reply + 2))(reply, v13);
}

- (void)downloadReleaseNotesForAccessoryID:(id)d assetID:(id)iD reply:(id)reply
{
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "[UARPManagerListener downloadReleaseNotesForAccessoryID:assetID:reply:]";
    v14 = 2112;
    dCopy = d;
    v16 = 2112;
    iDCopy = iD;
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@ %@", &v12, 0x20u);
  }

  v10 = [(UARPManager *)self->_manager downloadReleaseNotesForAccessoryID:d assetID:iD];
  if (v10)
  {
    v11 = [NSError errorWithDomain:kUARPErrorDomain code:v10 userInfo:0];
  }

  else
  {
    v11 = 0;
  }

  (*(reply + 2))(reply, v11);
}

- (void)firmwareUpdateProgressForAccessoryID:(id)d assetID:(id)iD bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total
{
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    v12 = 136316162;
    v13 = "[UARPManagerListener firmwareUpdateProgressForAccessoryID:assetID:bytesSent:bytesTotal:]";
    v14 = 2112;
    dCopy = d;
    v16 = 2112;
    iDCopy = iD;
    v18 = 2048;
    sentCopy = sent;
    v20 = 2048;
    totalCopy = total;
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@ %@, bytesSent=%lu, bytesTotal=%lu", &v12, 0x34u);
  }

  [(UARPManager *)self->_manager firmwareUpdateProgressForAccessory:d assetID:iD bytesSent:sent bytesTotal:total];
}

- (void)stagingCompleteForAccessoryID:(id)d assetID:(id)iD status:(unint64_t)status
{
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    v10 = 136315906;
    v11 = "[UARPManagerListener stagingCompleteForAccessoryID:assetID:status:]";
    v12 = 2112;
    dCopy = d;
    v14 = 2112;
    iDCopy = iD;
    v16 = 2080;
    v17 = UARPFirmwareStagingCompletionStatusToString();
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@ %@ status=%s", &v10, 0x2Au);
  }

  [(UARPManager *)self->_manager stagingCompleteForAccessoryID:d assetID:iD status:status];
}

- (void)firmwareUpdateProgressForUARPConsent:(id)consent bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total
{
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    v10 = 136315906;
    v11 = "[UARPManagerListener firmwareUpdateProgressForUARPConsent:bytesSent:bytesTotal:]";
    v12 = 2112;
    consentCopy = consent;
    v14 = 2048;
    sentCopy = sent;
    v16 = 2048;
    totalCopy = total;
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@, bytesSent=%lu, bytesTotal=%lu", &v10, 0x2Au);
  }

  [(UARPManager *)self->_manager firmwareUpdateProgressForUARPConsent:consent bytesSent:sent bytesTotal:total];
}

- (void)progressForUARPConsent:(id)consent bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total
{
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    v10 = 136315906;
    v11 = "[UARPManagerListener progressForUARPConsent:bytesSent:bytesTotal:]";
    v12 = 2112;
    consentCopy = consent;
    v14 = 2048;
    sentCopy = sent;
    v16 = 2048;
    totalCopy = total;
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@, bytesSent=%lu, bytesTotal=%lu", &v10, 0x2Au);
  }

  [(UARPManager *)self->_manager progressForUARPConsent:consent bytesSent:sent bytesTotal:total];
}

- (void)progressForUARPConsentInPostLogout:(id)logout bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total
{
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    v10 = 136315906;
    v11 = "[UARPManagerListener progressForUARPConsentInPostLogout:bytesSent:bytesTotal:]";
    v12 = 2112;
    logoutCopy = logout;
    v14 = 2048;
    sentCopy = sent;
    v16 = 2048;
    totalCopy = total;
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@, bytesSent=%lu, bytesTotal=%lu", &v10, 0x2Au);
  }

  [(UARPManager *)self->_manager progressForUARPConsentInPostLogout:logout bytesSent:sent bytesTotal:total];
}

- (void)checkForUpdate:(id)update reply:(id)reply
{
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[UARPManagerListener checkForUpdate:reply:]";
    v12 = 2112;
    updateCopy = update;
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@", &v10, 0x16u);
  }

  v8 = [(UARPManager *)self->_manager checkForUpdate:update];
  if (v8)
  {
    v9 = [NSError errorWithDomain:kUARPErrorDomain code:v8 userInfo:0];
  }

  else
  {
    v9 = 0;
  }

  (*(reply + 2))(reply, v9);
}

- (void)personalizationVectorForAccessoryID:(id)d assetTag:(id)tag reply:(id)reply
{
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    *v12 = 136315650;
    *&v12[4] = "[UARPManagerListener personalizationVectorForAccessoryID:assetTag:reply:]";
    v13 = 2112;
    dCopy = d;
    v15 = 1024;
    unsignedIntValue = [tag unsignedIntValue];
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@, assetTag 0x%08x", v12, 0x1Cu);
  }

  *v12 = 0;
  v10 = -[UARPManager personalizationVectorForAccessoryID:assetTag:outVector:](self->_manager, "personalizationVectorForAccessoryID:assetTag:outVector:", d, [tag unsignedIntValue], v12);
  if (v10)
  {
    v11 = [NSError errorWithDomain:kUARPErrorDomain code:v10 userInfo:0];
  }

  else
  {
    v11 = 0;
  }

  (*(reply + 2))(reply, v11, *v12);
}

- (void)sendUpdateFirmwareAnalyticsEventForAccessoryID:(id)d assetID:(id)iD params:(id)params
{
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    v10 = 136315650;
    v11 = "[UARPManagerListener sendUpdateFirmwareAnalyticsEventForAccessoryID:assetID:params:]";
    v12 = 2112;
    dCopy = d;
    v14 = 2112;
    iDCopy = iD;
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@ %@", &v10, 0x20u);
  }

  [(UARPManager *)self->_manager sendUpdateFirmwareAnalyticsEventForAccessoryID:d assetID:iD params:params];
}

- (void)updateProperty:(unint64_t)property value:(id)value forAccessory:(id)accessory reply:(id)reply
{
  v7 = [(UARPManager *)self->_manager updateProperty:property value:value forAccessory:accessory];
  if (v7)
  {
    v8 = [NSError errorWithDomain:kUARPErrorDomain code:v7 userInfo:0];
  }

  else
  {
    v8 = 0;
  }

  v9 = *(reply + 2);

  v9(reply, v8);
}

- (void)getAssetIDForAccessoryID:(id)d reply:(id)reply
{
  v7 = [(UARPManager *)self->_manager copyAssetIDForAccessoryID:?];
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "[UARPManagerListener getAssetIDForAccessoryID:reply:]";
    v11 = 2112;
    dCopy = d;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@, returning %@", &v9, 0x20u);
  }

  (*(reply + 2))(reply, v7);
}

- (void)getSupplementalAssetNameForAccessoryID:(id)d reply:(id)reply
{
  v7 = [(UARPManager *)self->_manager getSupplementalAssetNameForAccessoryID:?];
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "[UARPManagerListener getSupplementalAssetNameForAccessoryID:reply:]";
    v11 = 2112;
    dCopy = d;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@, returning %@", &v9, 0x20u);
  }

  (*(reply + 2))(reply, v7);
}

- (void)getSupportedAccessories:(id)accessories reply:(id)reply
{
  v7 = +[NSMutableSet set];
  v8 = [(UARPManager *)self->_manager getFetchedSupportedAccessories:v7 forProductGroup:accessories];
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_ERROR))
  {
    v10 = [v7 count];
    v11 = @"NO";
    v13 = "[UARPManagerListener getSupportedAccessories:reply:]";
    v14 = 2048;
    v12 = 136315906;
    v15 = v10;
    v16 = 2112;
    if (v8)
    {
      v11 = @"YES";
    }

    accessoriesCopy = accessories;
    v18 = 2112;
    v19 = v11;
    _os_log_error_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_ERROR, "RECEIVED %s: returning %lu records for %@ isComplete %@", &v12, 0x2Au);
  }

  (*(reply + 2))(reply, v7, v8);
}

- (void)getAttestationCertificates:(id)certificates reply:(id)reply
{
  v7 = [(UARPManager *)self->_manager getAttestationCertificates:?];
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "[UARPManagerListener getAttestationCertificates:reply:]";
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    certificatesCopy = certificates;
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: returning %@ for %@", &v9, 0x20u);
  }

  (*(reply + 2))(reply, v7);
}

- (void)getAttestationCertificates:(id)certificates assetID:(id)d reply:(id)reply
{
  v6 = [(UARPManager *)self->_manager getAttestationCertificates:certificates assetID:d];
  if (v6)
  {
    v7 = [NSError errorWithDomain:kUARPErrorDomain code:v6 userInfo:0];
  }

  else
  {
    v7 = 0;
  }

  v8 = *(reply + 2);

  v8(reply, v7);
}

- (void)requestConsent:(id)consent reply:(id)reply
{
  v5 = [(UARPManager *)self->_manager requestConsent:consent];
  if (v5)
  {
    v6 = [NSError errorWithDomain:kUARPErrorDomain code:v5 userInfo:0];
  }

  else
  {
    v6 = 0;
  }

  v7 = *(reply + 2);

  v7(reply, v6);
}

- (void)revokeConsentRequest:(id)request reply:(id)reply
{
  v5 = [(UARPManager *)self->_manager revokeConsentRequest:request];
  if (v5)
  {
    v6 = [NSError errorWithDomain:kUARPErrorDomain code:v5 userInfo:0];
  }

  else
  {
    v6 = 0;
  }

  v7 = *(reply + 2);

  v7(reply, v6);
}

- (void)enableTRMSystemAuthenticationForRegistryEntryID:(id)d reply:(id)reply
{
  v5 = [(UARPManager *)self->_manager enableTRMSystemAuthenticationForRegistryEntryID:d];
  if (v5)
  {
    v6 = [NSError errorWithDomain:kUARPErrorDomain code:v5 userInfo:0];
  }

  else
  {
    v6 = 0;
  }

  v7 = *(reply + 2);

  v7(reply, v6);
}

- (void)disableTRMSystemAuthenticationForRegistryEntryID:(id)d reply:(id)reply
{
  v5 = [(UARPManager *)self->_manager disableTRMSystemAuthenticationForRegistryEntryID:d];
  if (v5)
  {
    v6 = [NSError errorWithDomain:kUARPErrorDomain code:v5 userInfo:0];
  }

  else
  {
    v6 = 0;
  }

  v7 = *(reply + 2);

  v7(reply, v6);
}

- (void)getSandboxExtensionTokenForAssetID:(id)d reply:(id)reply
{
  v7 = +[UARPSandboxExtension readWriteTokenStringWithURL:](UARPSandboxExtension, "readWriteTokenStringWithURL:", [d localURL]);
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "[UARPManagerListener getSandboxExtensionTokenForAssetID:reply:]";
    v11 = 2112;
    dCopy = d;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@, returning %@", &v9, 0x20u);
  }

  (*(reply + 2))(reply, v7);
}

@end