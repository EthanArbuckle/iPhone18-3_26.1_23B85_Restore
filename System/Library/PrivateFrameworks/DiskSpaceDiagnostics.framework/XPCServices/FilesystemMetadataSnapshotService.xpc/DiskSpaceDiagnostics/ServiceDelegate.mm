@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = [connectionCopy processIdentifier];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "New connection from pid %d ", v10, 8u);
  }

  v6 = [connectionCopy valueForEntitlement:@"com.apple.filesystem-metadata-snapshotting"];

  if (v6)
  {
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DSFilesystemMetadataSnapshotting];
    [connectionCopy setExportedInterface:v7];

    v8 = objc_opt_new();
    [connectionCopy setExportedObject:v8];
    [connectionCopy resume];
  }

  else
  {
    v8 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10003193C(connectionCopy);
    }
  }

  return v6 != 0;
}

@end