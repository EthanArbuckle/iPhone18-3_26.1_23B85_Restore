@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v5 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
  [connection setExportedInterface:{objc_msgSend(MEMORY[0x277CCAE90], "interfaceWithProtocol:", &unk_286AB78B0)}];
  [objc_msgSend(connection "exportedInterface")];
  [objc_msgSend(connection "exportedInterface")];
  [objc_msgSend(connection "exportedInterface")];
  [objc_msgSend(connection "exportedInterface")];
  [objc_msgSend(connection "exportedInterface")];
  [objc_msgSend(connection "exportedInterface")];
  [objc_msgSend(connection "exportedInterface")];
  [connection setRemoteObjectInterface:{objc_msgSend(MEMORY[0x277CCAE90], "interfaceWithProtocol:", &unk_286AB90F0)}];
  [connection setExportedObject:{+[AUServiceAdapter sharedInstance](AUServiceAdapter, "sharedInstance")}];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3052000000;
  v16[3] = __Block_byref_object_copy_;
  v16[4] = __Block_byref_object_dispose_;
  v16[5] = +[AUServiceAdapter sharedInstance];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3052000000;
  v15[3] = __Block_byref_object_copy_;
  v15[4] = __Block_byref_object_dispose_;
  v15[5] = connection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__ServiceDelegate_listener_shouldAcceptNewConnection___block_invoke;
  v14[3] = &unk_2798E3630;
  v14[4] = v15;
  v14[5] = v16;
  [connection setInvalidationHandler:v14];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__ServiceDelegate_listener_shouldAcceptNewConnection___block_invoke_2;
  v13[3] = &unk_2798E3630;
  v13[4] = v15;
  v13[5] = v16;
  [connection setInterruptionHandler:v13];
  if (-[AUServiceAdapter hasActiveConnection](+[AUServiceAdapter sharedInstance](AUServiceAdapter, "sharedInstance"), "hasActiveConnection") || ![connection valueForEntitlement:@"com.apple.private.accessoryupdater.client"])
  {
    NSLog(&cfstr_SDenyingIncomi.isa, "[ServiceDelegate listener:shouldAcceptNewConnection:]", [+[AUServiceAdapter hasActiveConnection] sharedInstance];
    v11 = 0;
  }

  else
  {
    [+[AUServiceAdapter sharedInstance](AUServiceAdapter setActiveConnection:"setActiveConnection:", connection];
    [connection resume];
    v11 = 1;
  }

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v16, 8);
  return v11;
}

uint64_t __54__ServiceDelegate_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  NSLog(&cfstr_XpcConnectionI.isa);
  [*(*(*(a1 + 32) + 8) + 40) setInvalidationHandler:0];
  [*(*(*(a1 + 32) + 8) + 40) setInterruptionHandler:0];
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 setActiveConnection:0];
}

uint64_t __54__ServiceDelegate_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  NSLog(&cfstr_XpcConnectionI_0.isa);
  [*(*(*(a1 + 32) + 8) + 40) setInvalidationHandler:0];
  [*(*(*(a1 + 32) + 8) + 40) setInterruptionHandler:0];
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 setActiveConnection:0];
}

@end