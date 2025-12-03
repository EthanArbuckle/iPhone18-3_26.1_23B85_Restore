@interface CRSUIMutableInstrumentClusterSceneSettings
- (NSNumber)frameRateLimit;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)mapStyle;
- (unint64_t)displayLocation;
- (unint64_t)hostedAltScreenPresentationType;
- (unint64_t)itemType;
- (unint64_t)layoutJustification;
- (unint64_t)showsCompass;
- (unint64_t)showsETA;
- (unint64_t)showsSpeedLimit;
- (void)setDisplayLocation:(unint64_t)location;
- (void)setFrameRateLimit:(id)limit;
- (void)setHostedAltScreenPresentationType:(unint64_t)type;
- (void)setItemType:(unint64_t)type;
- (void)setLayoutJustification:(unint64_t)justification;
- (void)setMapStyle:(int64_t)style;
- (void)setShowsCompass:(unint64_t)compass;
- (void)setShowsETA:(unint64_t)a;
- (void)setShowsSpeedLimit:(unint64_t)limit;
@end

@implementation CRSUIMutableInstrumentClusterSceneSettings

- (unint64_t)itemType
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:4293273408];

  unsignedIntegerValue = [v3 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (void)setItemType:(unint64_t)type
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  [otherSettings setObject:v4 forSetting:4293273408];
}

- (unint64_t)layoutJustification
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:4293273409];

  unsignedIntegerValue = [v3 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (void)setLayoutJustification:(unint64_t)justification
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:justification];
  [otherSettings setObject:v4 forSetting:4293273409];
}

- (unint64_t)showsCompass
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:4293273410];

  unsignedIntegerValue = [v3 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (void)setShowsCompass:(unint64_t)compass
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:compass];
  [otherSettings setObject:v4 forSetting:4293273410];
}

- (unint64_t)showsSpeedLimit
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:4293273411];

  unsignedIntegerValue = [v3 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (void)setShowsSpeedLimit:(unint64_t)limit
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:limit];
  [otherSettings setObject:v4 forSetting:4293273411];
}

- (unint64_t)showsETA
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:4293273412];

  unsignedIntegerValue = [v3 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (void)setShowsETA:(unint64_t)a
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a];
  [otherSettings setObject:v4 forSetting:4293273412];
}

- (NSNumber)frameRateLimit
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:3152422722];

  return v3;
}

- (void)setFrameRateLimit:(id)limit
{
  limitCopy = limit;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:limitCopy forSetting:3152422722];
}

- (int64_t)mapStyle
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:3152422721];

  integerValue = [v3 integerValue];
  return integerValue;
}

- (void)setMapStyle:(int64_t)style
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:style];
  [otherSettings setObject:v4 forSetting:3152422721];
}

- (unint64_t)hostedAltScreenPresentationType
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:4293273415];

  unsignedIntegerValue = [v3 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (void)setHostedAltScreenPresentationType:(unint64_t)type
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  [otherSettings setObject:v4 forSetting:4293273415];
}

- (unint64_t)displayLocation
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:4293273416];

  unsignedIntegerValue = [v3 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (void)setDisplayLocation:(unint64_t)location
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:location];
  [otherSettings setObject:v4 forSetting:4293273416];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRSUIInstrumentClusterSceneSettings allocWithZone:zone];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCAB68];
  v18.receiver = self;
  v18.super_class = CRSUIMutableInstrumentClusterSceneSettings;
  v4 = [(FBSSettings *)&v18 description];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRSUIMutableInstrumentClusterSceneSettings itemType](self, "itemType")}];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRSUIMutableInstrumentClusterSceneSettings showsCompass](self, "showsCompass")}];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRSUIMutableInstrumentClusterSceneSettings showsSpeedLimit](self, "showsSpeedLimit")}];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRSUIMutableInstrumentClusterSceneSettings showsETA](self, "showsETA")}];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRSUIMutableInstrumentClusterSceneSettings layoutJustification](self, "layoutJustification")}];
  v10 = [v3 stringWithFormat:@"%@: itemType: %@, compass: %@, speedLimit: %@, eta: %@, layoutType: %@", v4, v5, v6, v7, v8, v9];

  v11 = MEMORY[0x277CCACA8];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRSUIMutableInstrumentClusterSceneSettings hostedAltScreenPresentationType](self, "hostedAltScreenPresentationType")}];
  v13 = [v11 stringWithFormat:@"presentationType: %@", v12];
  [v10 appendString:v13];

  v14 = MEMORY[0x277CCACA8];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRSUIMutableInstrumentClusterSceneSettings displayLocation](self, "displayLocation")}];
  v16 = [v14 stringWithFormat:@"displayLocation: %@", v15];
  [v10 appendString:v16];

  return v10;
}

@end