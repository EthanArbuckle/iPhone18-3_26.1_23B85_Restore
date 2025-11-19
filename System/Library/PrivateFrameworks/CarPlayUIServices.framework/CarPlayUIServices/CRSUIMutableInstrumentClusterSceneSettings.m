@interface CRSUIMutableInstrumentClusterSceneSettings
- (NSNumber)frameRateLimit;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)mapStyle;
- (unint64_t)displayLocation;
- (unint64_t)hostedAltScreenPresentationType;
- (unint64_t)itemType;
- (unint64_t)layoutJustification;
- (unint64_t)showsCompass;
- (unint64_t)showsETA;
- (unint64_t)showsSpeedLimit;
- (void)setDisplayLocation:(unint64_t)a3;
- (void)setFrameRateLimit:(id)a3;
- (void)setHostedAltScreenPresentationType:(unint64_t)a3;
- (void)setItemType:(unint64_t)a3;
- (void)setLayoutJustification:(unint64_t)a3;
- (void)setMapStyle:(int64_t)a3;
- (void)setShowsCompass:(unint64_t)a3;
- (void)setShowsETA:(unint64_t)a3;
- (void)setShowsSpeedLimit:(unint64_t)a3;
@end

@implementation CRSUIMutableInstrumentClusterSceneSettings

- (unint64_t)itemType
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:4293273408];

  v4 = [v3 unsignedIntegerValue];
  return v4;
}

- (void)setItemType:(unint64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forSetting:4293273408];
}

- (unint64_t)layoutJustification
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:4293273409];

  v4 = [v3 unsignedIntegerValue];
  return v4;
}

- (void)setLayoutJustification:(unint64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forSetting:4293273409];
}

- (unint64_t)showsCompass
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:4293273410];

  v4 = [v3 unsignedIntegerValue];
  return v4;
}

- (void)setShowsCompass:(unint64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forSetting:4293273410];
}

- (unint64_t)showsSpeedLimit
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:4293273411];

  v4 = [v3 unsignedIntegerValue];
  return v4;
}

- (void)setShowsSpeedLimit:(unint64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forSetting:4293273411];
}

- (unint64_t)showsETA
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:4293273412];

  v4 = [v3 unsignedIntegerValue];
  return v4;
}

- (void)setShowsETA:(unint64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forSetting:4293273412];
}

- (NSNumber)frameRateLimit
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:3152422722];

  return v3;
}

- (void)setFrameRateLimit:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:3152422722];
}

- (int64_t)mapStyle
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:3152422721];

  v4 = [v3 integerValue];
  return v4;
}

- (void)setMapStyle:(int64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:3152422721];
}

- (unint64_t)hostedAltScreenPresentationType
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:4293273415];

  v4 = [v3 unsignedIntegerValue];
  return v4;
}

- (void)setHostedAltScreenPresentationType:(unint64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forSetting:4293273415];
}

- (unint64_t)displayLocation
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:4293273416];

  v4 = [v3 unsignedIntegerValue];
  return v4;
}

- (void)setDisplayLocation:(unint64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forSetting:4293273416];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CRSUIInstrumentClusterSceneSettings allocWithZone:a3];

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