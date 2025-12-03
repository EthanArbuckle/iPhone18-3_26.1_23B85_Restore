@interface ULEnvironment
+ (id)standardEnvironment;
- (ULEnvironment)init;
@end

@implementation ULEnvironment

+ (id)standardEnvironment
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (ULEnvironment)init
{
  v33.receiver = self;
  v33.super_class = ULEnvironment;
  v2 = [(ULEnvironment *)&v33 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.milod.mainQueue", v3);
    [(ULEnvironment *)v2 setQueue:v4];

    v5 = objc_alloc_init(MEMORY[0x277D28850]);
    [(ULEnvironment *)v2 setNotificationHelper:v5];

    v6 = [ULDataProtectionMonitor alloc];
    notificationHelper = [(ULEnvironment *)v2 notificationHelper];
    v8 = [(ULDataProtectionMonitor *)v6 initWithNotificationHelper:notificationHelper];
    [(ULEnvironment *)v2 setDataProtectionMonitor:v8];

    v9 = objc_alloc_init(ULAirplaneModeMonitor);
    [(ULEnvironment *)v2 setAirplaneModeMonitor:v9];

    v10 = [ULBatteryModeMonitor alloc];
    notificationHelper2 = [(ULEnvironment *)v2 notificationHelper];
    v12 = [(ULBatteryModeMonitor *)v10 initWithNotificationHelper:notificationHelper2];
    [(ULEnvironment *)v2 setBatteryModeMonitor:v12];

    v13 = objc_alloc_init(ULBluetoothMonitor);
    [(ULEnvironment *)v2 setBluetoothMonitor:v13];

    v14 = [ULRapportMonitor alloc];
    notificationHelper3 = [(ULEnvironment *)v2 notificationHelper];
    v16 = [(ULRapportMonitor *)v14 initWithNotificationHelper:notificationHelper3 identityTypeFlags:10 controlFlags:4];
    [(ULEnvironment *)v2 setRapportMonitor:v16];

    if ([MEMORY[0x277D28868] isMac])
    {
      v17 = objc_alloc_init(ULDisplayMonitor_OSX);
      [(ULEnvironment *)v2 setDisplayMonitor_OSX:v17];
    }

    else
    {
      v17 = objc_alloc_init(ULDisplayMonitor);
      [(ULEnvironment *)v2 setDisplayMonitor:v17];
    }

    v18 = [ULInternalNotifyMonitor alloc];
    notificationHelper4 = [(ULEnvironment *)v2 notificationHelper];
    v20 = [(ULInternalNotifyMonitor *)v18 initWithNotificationHelper:notificationHelper4];
    [(ULEnvironment *)v2 setInternalNotifyMonitor:v20];

    v21 = objc_alloc_init(ULBGSystemTaskManager);
    [(ULEnvironment *)v2 setBackgroundSystemTaskManager:v21];

    v22 = [[ULDiagnostics alloc] initWithLabel:@"milod"];
    [(ULEnvironment *)v2 setDiagnostics:v22];

    v23 = [ULPrivacyMonitor alloc];
    notificationHelper5 = [(ULEnvironment *)v2 notificationHelper];
    v25 = [(ULPrivacyMonitor *)v23 initWithNotificationHelper:notificationHelper5];
    [(ULEnvironment *)v2 setPrivacyMonitor:v25];

    v26 = [ULBuddyMonitor alloc];
    notificationHelper6 = [(ULEnvironment *)v2 notificationHelper];
    v28 = [(ULBuddyMonitor *)v26 initWithNotificationHelper:notificationHelper6];
    [(ULEnvironment *)v2 setBuddyMonitor:v28];

    v29 = objc_alloc_init(_TtC19MicroLocationDaemon34ULBiomeEventStreamCarPlayConnected);
    [(ULEnvironment *)v2 setBiomeEventStreamCarPlayConnected:v29];

    v30 = objc_alloc_init(_TtC19MicroLocationDaemon34ULBiomeEventStreamLocationSemantic);
    [(ULEnvironment *)v2 setBiomeEventStreamLocationSemantic:v30];

    v31 = objc_alloc_init(ULSleepWakeMonitor);
    [(ULEnvironment *)v2 setSleepWakeMonitor:v31];
  }

  return v2;
}

@end