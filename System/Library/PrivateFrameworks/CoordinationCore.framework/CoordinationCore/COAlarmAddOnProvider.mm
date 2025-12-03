@interface COAlarmAddOnProvider
- (COAlarmAddOnProvider)init;
- (COAlarmAddOnProvider)initWithAlarmManager:(id)manager homekitAdapter:(id)adapter hubAdapter:(id)hubAdapter;
- (id)serviceAddOn;
@end

@implementation COAlarmAddOnProvider

- (COAlarmAddOnProvider)initWithAlarmManager:(id)manager homekitAdapter:(id)adapter hubAdapter:(id)hubAdapter
{
  managerCopy = manager;
  adapterCopy = adapter;
  hubAdapterCopy = hubAdapter;
  v15.receiver = self;
  v15.super_class = COAlarmAddOnProvider;
  v12 = [(COAlarmAddOnProvider *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_alarmManager, manager);
    objc_storeStrong(&v13->_homekit, adapter);
    objc_storeStrong(&v13->_homehub, hubAdapter);
  }

  return v13;
}

- (COAlarmAddOnProvider)init
{
  v3 = objc_alloc_init(MEMORY[0x277D296D8]);
  v4 = +[COHomeKitAdapter sharedInstance];
  v5 = +[COHomeHubAdapter sharedInstance];
  v6 = [(COAlarmAddOnProvider *)self initWithAlarmManager:v3 homekitAdapter:v4 hubAdapter:v5];

  return v6;
}

- (id)serviceAddOn
{
  v3 = [COMeshAlarmAddOn alloc];
  alarmManager = [(COAlarmAddOnProvider *)self alarmManager];
  homekit = [(COAlarmAddOnProvider *)self homekit];
  homehub = [(COAlarmAddOnProvider *)self homehub];
  v7 = [(COMeshAlarmAddOn *)v3 initWithAlarmManager:alarmManager homekitAdapter:homekit hubAdapter:homehub];

  return v7;
}

@end