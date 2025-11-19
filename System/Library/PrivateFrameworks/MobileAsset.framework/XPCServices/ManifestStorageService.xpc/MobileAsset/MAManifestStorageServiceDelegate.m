@interface MAManifestStorageServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)_descriptionForConnection:(id)a3;
@end

@implementation MAManifestStorageServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 valueForEntitlement:@"com.apple.private.MobileAsset.ManifestStorageService"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v6 BOOLValue])
  {
    v7 = [(MAManifestStorageServiceDelegate *)self _descriptionForConnection:v5];
    v8 = _MAClientLog(@"Manifest");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Client connected: %{public}@", buf, 0xCu);
    }

    v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MAManifestStorageServiceProtocol];
    [v5 setExportedInterface:v9];

    v10 = objc_alloc_init(MAManifestStorageService);
    [v5 setExportedObject:v10];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100001BA4;
    v20[3] = &unk_100008310;
    v11 = v7;
    v21 = v11;
    [v5 setInvalidationHandler:v20];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100001C54;
    v18 = &unk_100008310;
    v19 = v11;
    v12 = v11;
    [v5 setInterruptionHandler:&v15];
    [v5 resume];

    v13 = 1;
  }

  else
  {
    v12 = _MAClientLog(@"Manifest");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v23 = v5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Rejecting incoming XPC connection: %{public}@", buf, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

- (id)_descriptionForConnection:(id)a3
{
  v3 = a3;
  v4 = [v3 processIdentifier];
  v5 = [v3 effectiveUserIdentifier];

  bzero(buffer, 0x1000uLL);
  if (proc_pidpath(v4, buffer, 0x1000u) < 1)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = [NSString stringWithUTF8String:buffer];
    v7 = [v6 lastPathComponent];
  }

  v8 = [NSString stringWithFormat:@"%@ (pid = %d, uid = %d, path = %@)", v7, v4, v5, v6];

  return v8;
}

@end