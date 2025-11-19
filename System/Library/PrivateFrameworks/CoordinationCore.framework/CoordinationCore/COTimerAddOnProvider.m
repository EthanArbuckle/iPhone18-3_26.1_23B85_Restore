@interface COTimerAddOnProvider
- (COTimerAddOnProvider)init;
- (COTimerAddOnProvider)initWithTimerManager:(id)a3 homekitAdapter:(id)a4 hubAdapter:(id)a5;
- (id)serviceAddOn;
@end

@implementation COTimerAddOnProvider

- (COTimerAddOnProvider)initWithTimerManager:(id)a3 homekitAdapter:(id)a4 hubAdapter:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = COTimerAddOnProvider;
  v12 = [(COTimerAddOnProvider *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_timerManager, a3);
    objc_storeStrong(&v13->_homekit, a4);
    objc_storeStrong(&v13->_homehub, a5);
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
  v4 = [(COTimerAddOnProvider *)self timerManager];
  v5 = [(COTimerAddOnProvider *)self homekit];
  v6 = [(COTimerAddOnProvider *)self homehub];
  v7 = [(COMeshTimerAddOn *)v3 initWithTimerManager:v4 homekitAdapter:v5 hubAdapter:v6];

  return v7;
}

@end