@interface UARPManagerListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)xpcConnectionHasEntitlement:(id)a3;
- (UARPManagerListener)initWithManager:(id)a3 dispatchQueue:(id)a4;
- (void)addAccessoryID:(id)a3 assetID:(id)a4 sandboxExtensionToken:(id)a5 reply:(id)a6;
- (void)changeAssetLocation:(id)a3 assetID:(id)a4 sandboxExtensionToken:(id)a5 reply:(id)a6;
- (void)checkForUpdate:(id)a3 reply:(id)a4;
- (void)dealloc;
- (void)disableTRMSystemAuthenticationForRegistryEntryID:(id)a3 reply:(id)a4;
- (void)downloadReleaseNotesForAccessoryID:(id)a3 assetID:(id)a4 reply:(id)a5;
- (void)enableTRMSystemAuthenticationForRegistryEntryID:(id)a3 reply:(id)a4;
- (void)firmwareUpdateProgressForAccessoryID:(id)a3 assetID:(id)a4 bytesSent:(unint64_t)a5 bytesTotal:(unint64_t)a6;
- (void)firmwareUpdateProgressForUARPConsent:(id)a3 bytesSent:(unint64_t)a4 bytesTotal:(unint64_t)a5;
- (void)getAssetIDForAccessoryID:(id)a3 reply:(id)a4;
- (void)getAttestationCertificates:(id)a3 assetID:(id)a4 reply:(id)a5;
- (void)getAttestationCertificates:(id)a3 reply:(id)a4;
- (void)getSandboxExtensionTokenForAssetID:(id)a3 reply:(id)a4;
- (void)getSupplementalAssetNameForAccessoryID:(id)a3 reply:(id)a4;
- (void)getSupportedAccessories:(id)a3 reply:(id)a4;
- (void)personalizationVectorForAccessoryID:(id)a3 assetTag:(id)a4 reply:(id)a5;
- (void)progressForUARPConsent:(id)a3 bytesSent:(unint64_t)a4 bytesTotal:(unint64_t)a5;
- (void)progressForUARPConsentInPostLogout:(id)a3 bytesSent:(unint64_t)a4 bytesTotal:(unint64_t)a5;
- (void)removeAccessoryID:(id)a3 reply:(id)a4;
- (void)requestConsent:(id)a3 reply:(id)a4;
- (void)revokeConsentRequest:(id)a3 reply:(id)a4;
- (void)sendUpdateFirmwareAnalyticsEventForAccessoryID:(id)a3 assetID:(id)a4 params:(id)a5;
- (void)stagingCompleteForAccessoryID:(id)a3 assetID:(id)a4 status:(unint64_t)a5;
- (void)updateProperty:(unint64_t)a3 value:(id)a4 forAccessory:(id)a5 reply:(id)a6;
@end

@implementation UARPManagerListener

- (UARPManagerListener)initWithManager:(id)a3 dispatchQueue:(id)a4
{
  v10.receiver = self;
  v10.super_class = UARPManagerListener;
  v6 = [(UARPManagerListener *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_manager = a3;
    v6->_internalQueue = a4;
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
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
  block[5] = a4;
  block[6] = &v8;
  dispatch_sync(internalQueue, block);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (BOOL)xpcConnectionHasEntitlement:(id)a3
{
  v5 = [a3 valueForEntitlement:@"com.apple.accessoryupdater.uarp"];
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
      sub_10004AD5C(a3);
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (void)addAccessoryID:(id)a3 assetID:(id)a4 sandboxExtensionToken:(id)a5 reply:(id)a6
{
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    v14 = 136315650;
    v15 = "[UARPManagerListener addAccessoryID:assetID:sandboxExtensionToken:reply:]";
    v16 = 2112;
    v17 = a3;
    v18 = 2112;
    v19 = a4;
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@ %@", &v14, 0x20u);
  }

  v12 = [(UARPManager *)self->_manager addAccessory:a3 assetID:a4 sandboxExtensionToken:a5];
  if (v12)
  {
    v13 = [NSError errorWithDomain:kUARPErrorDomain code:v12 userInfo:0];
  }

  else
  {
    v13 = 0;
  }

  (*(a6 + 2))(a6, v13);
}

- (void)removeAccessoryID:(id)a3 reply:(id)a4
{
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[UARPManagerListener removeAccessoryID:reply:]";
    v12 = 2112;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@", &v10, 0x16u);
  }

  v8 = [(UARPManager *)self->_manager removeAccessory:a3];
  if (v8)
  {
    v9 = [NSError errorWithDomain:kUARPErrorDomain code:v8 userInfo:0];
  }

  else
  {
    v9 = 0;
  }

  (*(a4 + 2))(a4, v9);
}

- (void)changeAssetLocation:(id)a3 assetID:(id)a4 sandboxExtensionToken:(id)a5 reply:(id)a6
{
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    v14 = 136315650;
    v15 = "[UARPManagerListener changeAssetLocation:assetID:sandboxExtensionToken:reply:]";
    v16 = 2112;
    v17 = a3;
    v18 = 2112;
    v19 = a4;
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@ %@", &v14, 0x20u);
  }

  v12 = [(UARPManager *)self->_manager changeAssetLocation:a3 assetID:a4 sandboxExtensionToken:a5];
  if (v12)
  {
    v13 = [NSError errorWithDomain:kUARPErrorDomain code:v12 userInfo:0];
  }

  else
  {
    v13 = 0;
  }

  (*(a6 + 2))(a6, v13);
}

- (void)downloadReleaseNotesForAccessoryID:(id)a3 assetID:(id)a4 reply:(id)a5
{
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "[UARPManagerListener downloadReleaseNotesForAccessoryID:assetID:reply:]";
    v14 = 2112;
    v15 = a3;
    v16 = 2112;
    v17 = a4;
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@ %@", &v12, 0x20u);
  }

  v10 = [(UARPManager *)self->_manager downloadReleaseNotesForAccessoryID:a3 assetID:a4];
  if (v10)
  {
    v11 = [NSError errorWithDomain:kUARPErrorDomain code:v10 userInfo:0];
  }

  else
  {
    v11 = 0;
  }

  (*(a5 + 2))(a5, v11);
}

- (void)firmwareUpdateProgressForAccessoryID:(id)a3 assetID:(id)a4 bytesSent:(unint64_t)a5 bytesTotal:(unint64_t)a6
{
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    v12 = 136316162;
    v13 = "[UARPManagerListener firmwareUpdateProgressForAccessoryID:assetID:bytesSent:bytesTotal:]";
    v14 = 2112;
    v15 = a3;
    v16 = 2112;
    v17 = a4;
    v18 = 2048;
    v19 = a5;
    v20 = 2048;
    v21 = a6;
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@ %@, bytesSent=%lu, bytesTotal=%lu", &v12, 0x34u);
  }

  [(UARPManager *)self->_manager firmwareUpdateProgressForAccessory:a3 assetID:a4 bytesSent:a5 bytesTotal:a6];
}

- (void)stagingCompleteForAccessoryID:(id)a3 assetID:(id)a4 status:(unint64_t)a5
{
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    v10 = 136315906;
    v11 = "[UARPManagerListener stagingCompleteForAccessoryID:assetID:status:]";
    v12 = 2112;
    v13 = a3;
    v14 = 2112;
    v15 = a4;
    v16 = 2080;
    v17 = UARPFirmwareStagingCompletionStatusToString();
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@ %@ status=%s", &v10, 0x2Au);
  }

  [(UARPManager *)self->_manager stagingCompleteForAccessoryID:a3 assetID:a4 status:a5];
}

- (void)firmwareUpdateProgressForUARPConsent:(id)a3 bytesSent:(unint64_t)a4 bytesTotal:(unint64_t)a5
{
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    v10 = 136315906;
    v11 = "[UARPManagerListener firmwareUpdateProgressForUARPConsent:bytesSent:bytesTotal:]";
    v12 = 2112;
    v13 = a3;
    v14 = 2048;
    v15 = a4;
    v16 = 2048;
    v17 = a5;
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@, bytesSent=%lu, bytesTotal=%lu", &v10, 0x2Au);
  }

  [(UARPManager *)self->_manager firmwareUpdateProgressForUARPConsent:a3 bytesSent:a4 bytesTotal:a5];
}

- (void)progressForUARPConsent:(id)a3 bytesSent:(unint64_t)a4 bytesTotal:(unint64_t)a5
{
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    v10 = 136315906;
    v11 = "[UARPManagerListener progressForUARPConsent:bytesSent:bytesTotal:]";
    v12 = 2112;
    v13 = a3;
    v14 = 2048;
    v15 = a4;
    v16 = 2048;
    v17 = a5;
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@, bytesSent=%lu, bytesTotal=%lu", &v10, 0x2Au);
  }

  [(UARPManager *)self->_manager progressForUARPConsent:a3 bytesSent:a4 bytesTotal:a5];
}

- (void)progressForUARPConsentInPostLogout:(id)a3 bytesSent:(unint64_t)a4 bytesTotal:(unint64_t)a5
{
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    v10 = 136315906;
    v11 = "[UARPManagerListener progressForUARPConsentInPostLogout:bytesSent:bytesTotal:]";
    v12 = 2112;
    v13 = a3;
    v14 = 2048;
    v15 = a4;
    v16 = 2048;
    v17 = a5;
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@, bytesSent=%lu, bytesTotal=%lu", &v10, 0x2Au);
  }

  [(UARPManager *)self->_manager progressForUARPConsentInPostLogout:a3 bytesSent:a4 bytesTotal:a5];
}

- (void)checkForUpdate:(id)a3 reply:(id)a4
{
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[UARPManagerListener checkForUpdate:reply:]";
    v12 = 2112;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@", &v10, 0x16u);
  }

  v8 = [(UARPManager *)self->_manager checkForUpdate:a3];
  if (v8)
  {
    v9 = [NSError errorWithDomain:kUARPErrorDomain code:v8 userInfo:0];
  }

  else
  {
    v9 = 0;
  }

  (*(a4 + 2))(a4, v9);
}

- (void)personalizationVectorForAccessoryID:(id)a3 assetTag:(id)a4 reply:(id)a5
{
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    *v12 = 136315650;
    *&v12[4] = "[UARPManagerListener personalizationVectorForAccessoryID:assetTag:reply:]";
    v13 = 2112;
    v14 = a3;
    v15 = 1024;
    v16 = [a4 unsignedIntValue];
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@, assetTag 0x%08x", v12, 0x1Cu);
  }

  *v12 = 0;
  v10 = -[UARPManager personalizationVectorForAccessoryID:assetTag:outVector:](self->_manager, "personalizationVectorForAccessoryID:assetTag:outVector:", a3, [a4 unsignedIntValue], v12);
  if (v10)
  {
    v11 = [NSError errorWithDomain:kUARPErrorDomain code:v10 userInfo:0];
  }

  else
  {
    v11 = 0;
  }

  (*(a5 + 2))(a5, v11, *v12);
}

- (void)sendUpdateFirmwareAnalyticsEventForAccessoryID:(id)a3 assetID:(id)a4 params:(id)a5
{
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    v10 = 136315650;
    v11 = "[UARPManagerListener sendUpdateFirmwareAnalyticsEventForAccessoryID:assetID:params:]";
    v12 = 2112;
    v13 = a3;
    v14 = 2112;
    v15 = a4;
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@ %@", &v10, 0x20u);
  }

  [(UARPManager *)self->_manager sendUpdateFirmwareAnalyticsEventForAccessoryID:a3 assetID:a4 params:a5];
}

- (void)updateProperty:(unint64_t)a3 value:(id)a4 forAccessory:(id)a5 reply:(id)a6
{
  v7 = [(UARPManager *)self->_manager updateProperty:a3 value:a4 forAccessory:a5];
  if (v7)
  {
    v8 = [NSError errorWithDomain:kUARPErrorDomain code:v7 userInfo:0];
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a6 + 2);

  v9(a6, v8);
}

- (void)getAssetIDForAccessoryID:(id)a3 reply:(id)a4
{
  v7 = [(UARPManager *)self->_manager copyAssetIDForAccessoryID:?];
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "[UARPManagerListener getAssetIDForAccessoryID:reply:]";
    v11 = 2112;
    v12 = a3;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@, returning %@", &v9, 0x20u);
  }

  (*(a4 + 2))(a4, v7);
}

- (void)getSupplementalAssetNameForAccessoryID:(id)a3 reply:(id)a4
{
  v7 = [(UARPManager *)self->_manager getSupplementalAssetNameForAccessoryID:?];
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "[UARPManagerListener getSupplementalAssetNameForAccessoryID:reply:]";
    v11 = 2112;
    v12 = a3;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@, returning %@", &v9, 0x20u);
  }

  (*(a4 + 2))(a4, v7);
}

- (void)getSupportedAccessories:(id)a3 reply:(id)a4
{
  v7 = +[NSMutableSet set];
  v8 = [(UARPManager *)self->_manager getFetchedSupportedAccessories:v7 forProductGroup:a3];
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

    v17 = a3;
    v18 = 2112;
    v19 = v11;
    _os_log_error_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_ERROR, "RECEIVED %s: returning %lu records for %@ isComplete %@", &v12, 0x2Au);
  }

  (*(a4 + 2))(a4, v7, v8);
}

- (void)getAttestationCertificates:(id)a3 reply:(id)a4
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
    v14 = a3;
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: returning %@ for %@", &v9, 0x20u);
  }

  (*(a4 + 2))(a4, v7);
}

- (void)getAttestationCertificates:(id)a3 assetID:(id)a4 reply:(id)a5
{
  v6 = [(UARPManager *)self->_manager getAttestationCertificates:a3 assetID:a4];
  if (v6)
  {
    v7 = [NSError errorWithDomain:kUARPErrorDomain code:v6 userInfo:0];
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a5 + 2);

  v8(a5, v7);
}

- (void)requestConsent:(id)a3 reply:(id)a4
{
  v5 = [(UARPManager *)self->_manager requestConsent:a3];
  if (v5)
  {
    v6 = [NSError errorWithDomain:kUARPErrorDomain code:v5 userInfo:0];
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a4 + 2);

  v7(a4, v6);
}

- (void)revokeConsentRequest:(id)a3 reply:(id)a4
{
  v5 = [(UARPManager *)self->_manager revokeConsentRequest:a3];
  if (v5)
  {
    v6 = [NSError errorWithDomain:kUARPErrorDomain code:v5 userInfo:0];
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a4 + 2);

  v7(a4, v6);
}

- (void)enableTRMSystemAuthenticationForRegistryEntryID:(id)a3 reply:(id)a4
{
  v5 = [(UARPManager *)self->_manager enableTRMSystemAuthenticationForRegistryEntryID:a3];
  if (v5)
  {
    v6 = [NSError errorWithDomain:kUARPErrorDomain code:v5 userInfo:0];
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a4 + 2);

  v7(a4, v6);
}

- (void)disableTRMSystemAuthenticationForRegistryEntryID:(id)a3 reply:(id)a4
{
  v5 = [(UARPManager *)self->_manager disableTRMSystemAuthenticationForRegistryEntryID:a3];
  if (v5)
  {
    v6 = [NSError errorWithDomain:kUARPErrorDomain code:v5 userInfo:0];
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a4 + 2);

  v7(a4, v6);
}

- (void)getSandboxExtensionTokenForAssetID:(id)a3 reply:(id)a4
{
  v7 = +[UARPSandboxExtension readWriteTokenStringWithURL:](UARPSandboxExtension, "readWriteTokenStringWithURL:", [a3 localURL]);
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "[UARPManagerListener getSandboxExtensionTokenForAssetID:reply:]";
    v11 = 2112;
    v12 = a3;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@, returning %@", &v9, 0x20u);
  }

  (*(a4 + 2))(a4, v7);
}

@end