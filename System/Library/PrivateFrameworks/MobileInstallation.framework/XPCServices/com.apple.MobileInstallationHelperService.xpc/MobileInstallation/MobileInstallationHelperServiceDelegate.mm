@interface MobileInstallationHelperServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation MobileInstallationHelperServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [v4 valueForEntitlement:@"com.apple.private.MobileInstallationHelperService.allowed"];

  if (v5)
  {
    v6 = MobileInstallationHelperServiceProtocolInterface();
    [v4 setExportedInterface:v6];

    v7 = objc_opt_new();
    [v4 setExportedObject:v7];
    [v7 setXpcConnection:v4];
    [v4 setInterruptionHandler:&stru_100024C18];
    [v4 setInvalidationHandler:&stru_100024C38];
    [v4 resume];
LABEL_6:

    goto LABEL_7;
  }

  [v4 processIdentifier];
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