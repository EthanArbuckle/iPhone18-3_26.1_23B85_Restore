@interface COAlarmAddOnProvider
- (COAlarmAddOnProvider)init;
- (COAlarmAddOnProvider)initWithAlarmManager:(id)a3 homekitAdapter:(id)a4 hubAdapter:(id)a5;
- (id)serviceAddOn;
@end

@implementation COAlarmAddOnProvider

- (COAlarmAddOnProvider)initWithAlarmManager:(id)a3 homekitAdapter:(id)a4 hubAdapter:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = COAlarmAddOnProvider;
  v12 = [(COAlarmAddOnProvider *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_alarmManager, a3);
    objc_storeStrong(&v13->_homekit, a4);
    objc_storeStrong(&v13->_homehub, a5);
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
  v4 = [(COAlarmAddOnProvider *)self alarmManager];
  v5 = [(COAlarmAddOnProvider *)self homekit];
  v6 = [(COAlarmAddOnProvider *)self homehub];
  v7 = [(COMeshAlarmAddOn *)v3 initWithAlarmManager:v4 homekitAdapter:v5 hubAdapter:v6];

  return v7;
}

@end