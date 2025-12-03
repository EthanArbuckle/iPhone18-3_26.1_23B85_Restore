@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  memset(buffer, 0, 255);
  proc_name([connectionCopy processIdentifier], buffer, 0xFEu);
  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFPrivateServiceInterface];
  [connectionCopy setExportedInterface:v7];

  v8 = objc_opt_new();
  [connectionCopy setExportedObject:v8];
  v9 = [connectionCopy valueForEntitlement:@"com.apple.nfstorage"];

  if (v9)
  {
    [connectionCopy resume];
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v11 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      processIdentifier = [connectionCopy processIdentifier];
      v16 = 43;
      if (!isMetaClass)
      {
        v16 = 45;
      }

      v11(3, "%c[%{public}s %{public}s]:%i PID %d (%s) missing entitlement: %s", v16, ClassName, Name, 37, processIdentifier, buffer, "com.apple.nfstorage");
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = object_getClass(self);
      if (class_isMetaClass(v18))
      {
        v19 = 43;
      }

      else
      {
        v19 = 45;
      }

      *buf = 67110658;
      v23 = v19;
      v24 = 2082;
      v25 = object_getClassName(self);
      v26 = 2082;
      v27 = sel_getName(a2);
      v28 = 1024;
      v29 = 37;
      v30 = 1024;
      processIdentifier2 = [connectionCopy processIdentifier];
      v32 = 2080;
      v33 = buffer;
      v34 = 2080;
      v35 = "com.apple.nfstorage";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i PID %d (%s) missing entitlement: %s", buf, 0x3Cu);
    }
  }

  return v9 != 0;
}

@end