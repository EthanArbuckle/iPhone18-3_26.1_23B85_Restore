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
  v9 = [v6 valueForEntitlement:@"com.apple.nfrestore"];

  if (!v9)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v12 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v34 = [v6 processIdentifier];
      v17 = 43;
      if (!isMetaClass)
      {
        v17 = 45;
      }

      v12(3, "%c[%{public}s %{public}s]:%i PID %d (%s) missing entitlement: %s", v17, ClassName, Name, 35, v34, buffer, "com.apple.nfrestore");
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    v19 = object_getClass(self);
    if (class_isMetaClass(v19))
    {
      v20 = 43;
    }

    else
    {
      v20 = 45;
    }

    *buf = 67110658;
    v36 = v20;
    v37 = 2082;
    v38 = object_getClassName(self);
    v39 = 2082;
    v40 = sel_getName(a2);
    v41 = 1024;
    v42 = 35;
    v43 = 1024;
    v44 = [v6 processIdentifier];
    v45 = 2080;
    v46 = buffer;
    v47 = 2080;
    v48 = "com.apple.nfrestore";
    v21 = "%c[%{public}s %{public}s]:%i PID %d (%s) missing entitlement: %s";
    v22 = v18;
    v23 = 60;
    goto LABEL_22;
  }

  if (!+[NFRestoreServiceServer checkCurrentuser])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFLogGetLogger();
    if (v24)
    {
      v25 = v24;
      v26 = object_getClass(self);
      v27 = class_isMetaClass(v26);
      v28 = object_getClassName(self);
      v33 = sel_getName(a2);
      v29 = 45;
      if (v27)
      {
        v29 = 43;
      }

      v25(3, "%c[%{public}s %{public}s]:%i Current user isn't expected", v29, v28, v33, 40);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    v30 = object_getClass(self);
    if (class_isMetaClass(v30))
    {
      v31 = 43;
    }

    else
    {
      v31 = 45;
    }

    *buf = 67109890;
    v36 = v31;
    v37 = 2082;
    v38 = object_getClassName(self);
    v39 = 2082;
    v40 = sel_getName(a2);
    v41 = 1024;
    v42 = 40;
    v21 = "%c[%{public}s %{public}s]:%i Current user isn't expected";
    v22 = v18;
    v23 = 34;
LABEL_22:
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
LABEL_23:

    v10 = 0;
    goto LABEL_24;
  }

  [v6 resume];
  v10 = 1;
LABEL_24:

  return v10;
}

@end