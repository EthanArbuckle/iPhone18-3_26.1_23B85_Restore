@interface NTKBundleComplicationMigrationServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation NTKBundleComplicationMigrationServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_requireEntitlement && ([v7 valueForEntitlement:@"com.apple.nanotimekit.BundleComplicationMigrationService"], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "BOOLValue"), v9, !v10))
  {
    v13 = 0;
  }

  else
  {
    v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28A85C0E0];
    [v8 setExportedInterface:v11];

    v12 = objc_opt_new();
    [v8 setExportedObject:v12];
    [v8 resume];

    v13 = 1;
  }

  return v13;
}

@end