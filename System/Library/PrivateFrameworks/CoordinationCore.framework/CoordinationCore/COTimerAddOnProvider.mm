@interface COTimerAddOnProvider
- (COTimerAddOnProvider)init;
- (COTimerAddOnProvider)initWithTimerManager:(id)manager homekitAdapter:(id)adapter hubAdapter:(id)hubAdapter;
- (id)serviceAddOn;
@end

@implementation COTimerAddOnProvider

- (COTimerAddOnProvider)initWithTimerManager:(id)manager homekitAdapter:(id)adapter hubAdapter:(id)hubAdapter
{
  managerCopy = manager;
  adapterCopy = adapter;
  hubAdapterCopy = hubAdapter;
  v15.receiver = self;
  v15.super_class = COTimerAddOnProvider;
  v12 = [(COTimerAddOnProvider *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_timerManager, manager);
    objc_storeStrong(&v13->_homekit, adapter);
    objc_storeStrong(&v13->_homehub, hubAdapter);
  }

  return v13;
}

- (COTimerAddOnProvider)init
{
  v3 = objc_alloc_init(MEMORY[0x277D29740]);
  v4 = +[COHomeKitAdapter sharedInstance];
  v5 = +[COHomeHubAdapter sharedInstance];
  v6 = [(COTimerAddOnProvider *)self initWithTimerManager:v3 homekitAdapter:v4 hubAdapter:v5];

  return v6;
}

- (id)serviceAddOn
{
  v3 = [COMeshTimerAddOn alloc];
  timerManager = [(COTimerAddOnProvider *)self timerManager];
  homekit = [(COTimerAddOnProvider *)self homekit];
  homehub = [(COTimerAddOnProvider *)self homehub];
  v7 = [(COMeshTimerAddOn *)v3 initWithTimerManager:timerManager homekitAdapter:homekit hubAdapter:homehub];

  return v7;
}

@end