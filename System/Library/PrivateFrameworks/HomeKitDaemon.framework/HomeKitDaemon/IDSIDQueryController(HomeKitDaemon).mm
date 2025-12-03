@interface IDSIDQueryController(HomeKitDaemon)
- (uint64_t)hmdIDInfoForDestinations:()HomeKitDaemon service:infoTypes:options:listenerID:queue:completionBlock:;
@end

@implementation IDSIDQueryController(HomeKitDaemon)

- (uint64_t)hmdIDInfoForDestinations:()HomeKitDaemon service:infoTypes:options:listenerID:queue:completionBlock:
{
  v16 = a9;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __123__IDSIDQueryController_HomeKitDaemon__hmdIDInfoForDestinations_service_infoTypes_options_listenerID_queue_completionBlock___block_invoke;
  v20[3] = &unk_27867BA78;
  v21 = v16;
  v17 = v16;
  v18 = [self idInfoForDestinations:a3 service:a4 infoTypes:a5 options:a6 listenerID:a7 queue:a8 completionBlock:v20];

  return v18;
}

@end