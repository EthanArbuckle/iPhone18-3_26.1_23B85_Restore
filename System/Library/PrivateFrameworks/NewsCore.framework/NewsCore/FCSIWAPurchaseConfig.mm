@interface FCSIWAPurchaseConfig
- (FCSIWAPurchaseConfig)initWithClientIdentifier:(id)identifier teamIdentifier:(id)teamIdentifier;
- (FCSIWAPurchaseConfig)initWithConfigDictionary:(id)dictionary;
@end

@implementation FCSIWAPurchaseConfig

- (FCSIWAPurchaseConfig)initWithConfigDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = FCSIWAPurchaseConfig;
  v5 = [(FCSIWAPurchaseConfig *)&v11 init];
  if (v5)
  {
    v5->_isEnabled = FCAppConfigurationBoolValue(dictionaryCopy, @"isEnabled", 0);
    v6 = FCAppConfigurationStringValue(dictionaryCopy, @"clientIdentifier", 0);
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v6;

    v8 = FCAppConfigurationStringValue(dictionaryCopy, @"teamIdentifier", 0);
    teamIdentifier = v5->_teamIdentifier;
    v5->_teamIdentifier = v8;
  }

  return v5;
}

- (FCSIWAPurchaseConfig)initWithClientIdentifier:(id)identifier teamIdentifier:(id)teamIdentifier
{
  identifierCopy = identifier;
  teamIdentifierCopy = teamIdentifier;
  v12.receiver = self;
  v12.super_class = FCSIWAPurchaseConfig;
  v9 = [(FCSIWAPurchaseConfig *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_isEnabled = 1;
    objc_storeStrong(&v9->_clientIdentifier, identifier);
    objc_storeStrong(&v10->_teamIdentifier, teamIdentifier);
  }

  return v10;
}

@end