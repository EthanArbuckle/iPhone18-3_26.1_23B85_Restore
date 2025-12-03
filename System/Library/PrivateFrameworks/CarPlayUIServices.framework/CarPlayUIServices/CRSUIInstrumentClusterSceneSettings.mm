@interface CRSUIInstrumentClusterSceneSettings
- (NSNumber)frameRateLimit;
- (NSString)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)mapStyle;
- (unint64_t)displayLocation;
- (unint64_t)hostedAltScreenPresentationType;
- (unint64_t)itemType;
- (unint64_t)layoutJustification;
- (unint64_t)showsCompass;
- (unint64_t)showsETA;
- (unint64_t)showsSpeedLimit;
@end

@implementation CRSUIInstrumentClusterSceneSettings

- (unint64_t)itemType
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:4293273408];

  unsignedIntegerValue = [v3 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (unint64_t)showsCompass
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:4293273410];

  unsignedIntegerValue = [v3 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (unint64_t)showsSpeedLimit
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:4293273411];

  unsignedIntegerValue = [v3 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (unint64_t)showsETA
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:4293273412];

  unsignedIntegerValue = [v3 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (NSNumber)frameRateLimit
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:3152422722];

  return v3;
}

- (int64_t)mapStyle
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:3152422721];

  integerValue = [v3 integerValue];
  return integerValue;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CRSUIMutableInstrumentClusterSceneSettings allocWithZone:zone];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (unint64_t)layoutJustification
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:4293273409];

  unsignedIntegerValue = [v3 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (unint64_t)hostedAltScreenPresentationType
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:4293273415];

  unsignedIntegerValue = [v3 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (unint64_t)displayLocation
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:4293273416];

  unsignedIntegerValue = [v3 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCAB68];
  v18.receiver = self;
  v18.super_class = CRSUIInstrumentClusterSceneSettings;
  v4 = [(FBSSettings *)&v18 description];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRSUIInstrumentClusterSceneSettings itemType](self, "itemType")}];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRSUIInstrumentClusterSceneSettings showsCompass](self, "showsCompass")}];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRSUIInstrumentClusterSceneSettings showsSpeedLimit](self, "showsSpeedLimit")}];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRSUIInstrumentClusterSceneSettings showsETA](self, "showsETA")}];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRSUIInstrumentClusterSceneSettings layoutJustification](self, "layoutJustification")}];
  v10 = [v3 stringWithFormat:@"%@: itemType: %@, compass: %@, speedLimit: %@, eta: %@, layoutType: %@", v4, v5, v6, v7, v8, v9];

  v11 = MEMORY[0x277CCACA8];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRSUIInstrumentClusterSceneSettings hostedAltScreenPresentationType](self, "hostedAltScreenPresentationType")}];
  v13 = [v11 stringWithFormat:@"presentationType: %@", v12];
  [v10 appendString:v13];

  v14 = MEMORY[0x277CCACA8];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRSUIInstrumentClusterSceneSettings displayLocation](self, "displayLocation")}];
  v16 = [v14 stringWithFormat:@"displayLocation: %@", v15];
  [v10 appendString:v16];

  return v10;
}

@end