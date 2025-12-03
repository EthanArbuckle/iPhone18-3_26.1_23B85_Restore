@interface MobileInstallationHelperServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation MobileInstallationHelperServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [connectionCopy valueForEntitlement:@"com.apple.private.MobileInstallationHelperService.allowed"];

  if (v5)
  {
    v6 = MobileInstallationHelperServiceProtocolInterface();
    [connectionCopy setExportedInterface:v6];

    v7 = objc_opt_new();
    [connectionCopy setExportedObject:v7];
    [v7 setXpcConnection:connectionCopy];
    [connectionCopy setInterruptionHandler:&stru_100024C18];
    [connectionCopy setInvalidationHandler:&stru_100024C38];
    [connectionCopy resume];
LABEL_6:

    goto LABEL_7;
  }

  [connectionCopy processIdentifier];
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    v7 = MICopyProcessNameForPid();
    MOLogWrite();
    goto LABEL_6;
  }

LABEL_7:

  return v5 != 0;
}

@end