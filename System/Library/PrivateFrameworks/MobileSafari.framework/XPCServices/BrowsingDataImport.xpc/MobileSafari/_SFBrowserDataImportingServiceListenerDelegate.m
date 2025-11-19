@interface _SFBrowserDataImportingServiceListenerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation _SFBrowserDataImportingServiceListenerDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [v4 valueForEntitlement:canImportBrowsingDataToSafariEntitlement];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = WBSBrowsingDataImportServiceInterface();
    [v4 setExportedInterface:v7];

    v8 = objc_alloc_init(WBSBrowsingDataImportService);
    [v4 setExportedObject:v8];

    [v4 resume];
  }

  return v6;
}

@end