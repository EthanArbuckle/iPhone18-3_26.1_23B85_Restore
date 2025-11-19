@interface HUAccessorySetupFlow
- (HUAccessorySetupFlow)initWithType:(id)a3 homeKitObjects:(id)a4;
- (id)description;
@end

@implementation HUAccessorySetupFlow

- (HUAccessorySetupFlow)initWithType:(id)a3 homeKitObjects:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HUAccessorySetupFlow;
  v9 = [(HUAccessorySetupFlow *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_type, a3);
    objc_storeStrong(&v10->_homeKitObjects, a4);
  }

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HUAccessorySetupFlow *)self type];
  [v3 appendString:v4 withName:@"type"];

  v5 = [(HUAccessorySetupFlow *)self homeKitObjects];
  v6 = [v3 appendObject:v5 withName:@"homeKitObjects"];

  v7 = [v3 build];

  return v7;
}

@end