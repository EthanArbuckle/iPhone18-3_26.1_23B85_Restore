@interface FCSIWAPurchaseConfig
- (FCSIWAPurchaseConfig)initWithClientIdentifier:(id)a3 teamIdentifier:(id)a4;
- (FCSIWAPurchaseConfig)initWithConfigDictionary:(id)a3;
@end

@implementation FCSIWAPurchaseConfig

- (FCSIWAPurchaseConfig)initWithConfigDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FCSIWAPurchaseConfig;
  v5 = [(FCSIWAPurchaseConfig *)&v11 init];
  if (v5)
  {
    v5->_isEnabled = FCAppConfigurationBoolValue(v4, @"isEnabled", 0);
    v6 = FCAppConfigurationStringValue(v4, @"clientIdentifier", 0);
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v6;

    v8 = FCAppConfigurationStringValue(v4, @"teamIdentifier", 0);
    teamIdentifier = v5->_teamIdentifier;
    v5->_teamIdentifier = v8;
  }

  return v5;
}

- (FCSIWAPurchaseConfig)initWithClientIdentifier:(id)a3 teamIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FCSIWAPurchaseConfig;
  v9 = [(FCSIWAPurchaseConfig *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_isEnabled = 1;
    objc_storeStrong(&v9->_clientIdentifier, a3);
    objc_storeStrong(&v10->_teamIdentifier, a4);
  }

  return v10;
}

@end