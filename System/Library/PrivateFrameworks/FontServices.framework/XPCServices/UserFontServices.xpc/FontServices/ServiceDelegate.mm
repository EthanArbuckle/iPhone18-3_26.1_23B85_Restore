@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v7 = connectionCopy;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    memset(&token, 0, sizeof(token));
  }

  v8 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
  if (!v8)
  {
    v11 = 0;
    goto LABEL_11;
  }

  v9 = v8;
  v10 = SecTaskCopyValueForEntitlement(v8, @"com.apple.fontservices.allow-install-fonts", 0);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v10 BOOLValue])
  {
    v11 = SecTaskCopySigningIdentifier(v9, 0);
    v12 = [(__CFString *)v11 isEqualToString:@"com.apple.managedconfiguration.profiled"];
    CFRelease(v9);

    if (v12)
    {
      goto LABEL_9;
    }

LABEL_11:
    NSLog(@"UserFontServices was called by unauthorized %@.", v11);
    v22 = 0;
    goto LABEL_12;
  }

  CFRelease(v9);

  v11 = 0;
LABEL_9:
  v13 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UserFontServicesProtocol];
  v25 = listenerCopy;
  v14 = objc_opt_class();
  v15 = [NSSet setWithObjects:v14, objc_opt_class(), 0];
  [v13 setClasses:v15 forSelector:? argumentIndex:? ofReply:?];
  [v13 setClasses:v15 forSelector:"GSFontUnregisterPersistentURLs:forProfileFonts:withReply:" argumentIndex:0 ofReply:0];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = [NSSet setWithObjects:v16, v17, v18, v19, v20, objc_opt_class(), 0];
  v22 = 1;
  [v13 setClasses:v21 forSelector:"GSFontRegisterPersistentURLs:enabled:forProfileFonts:withReply:" argumentIndex:0 ofReply:1];
  [v13 setClasses:v21 forSelector:"GSFontUnregisterPersistentURLs:forProfileFonts:withReply:" argumentIndex:0 ofReply:1];
  [v13 setClasses:v15 forSelector:"GSFontEnableOrDisablePersistentURLs:forProfileFonts:enabled:suspend:withReply:" argumentIndex:0 ofReply:0];
  [v13 setClasses:v15 forSelector:"GSFontEnableOrDisablePersistentURLs:forProfileFonts:enabled:suspend:withReply:" argumentIndex:0 ofReply:1];
  [v7 setExportedInterface:v13];
  v23 = objc_opt_new();
  [v7 setExportedObject:v23];
  [v7 resume];

  listenerCopy = v25;
LABEL_12:

  return v22;
}

@end