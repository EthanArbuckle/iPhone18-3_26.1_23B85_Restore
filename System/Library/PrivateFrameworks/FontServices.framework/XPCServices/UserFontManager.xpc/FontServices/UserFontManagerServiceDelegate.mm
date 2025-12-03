@interface UserFontManagerServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation UserFontManagerServiceDelegate

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
    goto LABEL_13;
  }

  v9 = v8;
  v10 = SecTaskCopyValueForEntitlement(v8, @"com.apple.fontservices.allow-manage-fonts", 0);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v10 BOOLValue] & 1) == 0)
  {
    v11 = SecTaskCopySigningIdentifier(v9, 0);
    if (([(__CFString *)v11 isEqualToString:@"com.apple.Preferences"]& 1) != 0 || ([(__CFString *)v11 isEqualToString:@"com.apple.installcoordinationd"]& 1) != 0)
    {
      goto LABEL_10;
    }

    CFRelease(v9);

LABEL_13:
    NSLog(@"UserFontManager was called by unauthorized %@.", v11);
    v14 = 0;
    goto LABEL_14;
  }

  v11 = 0;
LABEL_10:
  CFRelease(v9);

  v12 = +[FSUserFontManager xpcInterface];
  [v7 setExportedInterface:v12];

  v13 = objc_opt_new();
  [v7 setExportedObject:v13];
  [v7 resume];

  v14 = 1;
LABEL_14:

  return v14;
}

@end