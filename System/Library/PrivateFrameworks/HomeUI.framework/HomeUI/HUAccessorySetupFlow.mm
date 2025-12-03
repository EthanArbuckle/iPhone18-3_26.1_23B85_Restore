@interface HUAccessorySetupFlow
- (HUAccessorySetupFlow)initWithType:(id)type homeKitObjects:(id)objects;
- (id)description;
@end

@implementation HUAccessorySetupFlow

- (HUAccessorySetupFlow)initWithType:(id)type homeKitObjects:(id)objects
{
  typeCopy = type;
  objectsCopy = objects;
  v12.receiver = self;
  v12.super_class = HUAccessorySetupFlow;
  v9 = [(HUAccessorySetupFlow *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_type, type);
    objc_storeStrong(&v10->_homeKitObjects, objects);
  }

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  type = [(HUAccessorySetupFlow *)self type];
  [v3 appendString:type withName:@"type"];

  homeKitObjects = [(HUAccessorySetupFlow *)self homeKitObjects];
  v6 = [v3 appendObject:homeKitObjects withName:@"homeKitObjects"];

  build = [v3 build];

  return build;
}

@end