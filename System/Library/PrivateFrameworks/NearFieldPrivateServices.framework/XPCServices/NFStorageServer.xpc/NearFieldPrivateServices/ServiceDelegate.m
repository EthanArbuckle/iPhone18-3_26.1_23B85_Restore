@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a4;
  memset(buffer, 0, 255);
  proc_name([v6 processIdentifier], buffer, 0xFEu);
  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFPrivateServiceInterface];
  [v6 setExportedInterface:v7];

  v8 = objc_opt_new();
  [v6 setExportedObject:v8];
  v9 = [v6 valueForEntitlement:@"com.apple.nfstorage"];

  if (v9)
  {
    [v6 resume];
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
      v21 = [v6 processIdentifier];
      v16 = 43;
      if (!isMetaClass)
      {
        v16 = 45;
      }

      v11(3, "%c[%{public}s %{public}s]:%i PID %d (%s) missing entitlement: %s", v16, ClassName, Name, 37, v21, buffer, "com.apple.nfstorage");
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
      v31 = [v6 processIdentifier];
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