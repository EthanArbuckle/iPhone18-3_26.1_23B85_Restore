@interface _SFBrowserDataImportingServiceListenerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation _SFBrowserDataImportingServiceListenerDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [connectionCopy valueForEntitlement:canImportBrowsingDataToSafariEntitlement];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    v7 = WBSBrowsingDataImportServiceInterface();
    [connectionCopy setExportedInterface:v7];

    v8 = objc_alloc_init(WBSBrowsingDataImportService);
    [connectionCopy setExportedObject:v8];

    [connectionCopy resume];
  }

  return bOOLValue;
}

@end