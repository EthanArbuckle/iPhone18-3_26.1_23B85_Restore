@interface MAManifestStorageServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)_descriptionForConnection:(id)connection;
@end

@implementation MAManifestStorageServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.private.MobileAsset.ManifestStorageService"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v6 BOOLValue])
  {
    v7 = [(MAManifestStorageServiceDelegate *)self _descriptionForConnection:connectionCopy];
    v8 = _MAClientLog(@"Manifest");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Client connected: %{public}@", buf, 0xCu);
    }

    v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MAManifestStorageServiceProtocol];
    [connectionCopy setExportedInterface:v9];

    v10 = objc_alloc_init(MAManifestStorageService);
    [connectionCopy setExportedObject:v10];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100001BA4;
    v20[3] = &unk_100008310;
    v11 = v7;
    v21 = v11;
    [connectionCopy setInvalidationHandler:v20];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100001C54;
    v18 = &unk_100008310;
    v19 = v11;
    v12 = v11;
    [connectionCopy setInterruptionHandler:&v15];
    [connectionCopy resume];

    v13 = 1;
  }

  else
  {
    v12 = _MAClientLog(@"Manifest");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v23 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Rejecting incoming XPC connection: %{public}@", buf, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

- (id)_descriptionForConnection:(id)connection
{
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  effectiveUserIdentifier = [connectionCopy effectiveUserIdentifier];

  bzero(buffer, 0x1000uLL);
  if (proc_pidpath(processIdentifier, buffer, 0x1000u) < 1)
  {
    v6 = 0;
    lastPathComponent = 0;
  }

  else
  {
    v6 = [NSString stringWithUTF8String:buffer];
    lastPathComponent = [v6 lastPathComponent];
  }

  v8 = [NSString stringWithFormat:@"%@ (pid = %d, uid = %d, path = %@)", lastPathComponent, processIdentifier, effectiveUserIdentifier, v6];

  return v8;
}

@end