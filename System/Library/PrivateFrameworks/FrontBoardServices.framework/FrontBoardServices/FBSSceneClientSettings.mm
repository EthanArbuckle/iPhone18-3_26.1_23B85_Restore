@interface FBSSceneClientSettings
+ (id)settings;
- (FBSSceneClientSettings)initWithSettings:(id)settings;
@end

@implementation FBSSceneClientSettings

+ (id)settings
{
  v2 = [[self alloc] initWithSettings:0];

  return v2;
}

- (FBSSceneClientSettings)initWithSettings:(id)settings
{
  v4.receiver = self;
  v4.super_class = FBSSceneClientSettings;
  return [(FBSSettings *)&v4 initWithSettings:settings];
}

@end