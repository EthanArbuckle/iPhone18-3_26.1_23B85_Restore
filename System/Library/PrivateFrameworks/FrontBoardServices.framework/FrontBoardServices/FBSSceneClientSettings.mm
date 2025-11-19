@interface FBSSceneClientSettings
+ (id)settings;
- (FBSSceneClientSettings)initWithSettings:(id)a3;
@end

@implementation FBSSceneClientSettings

+ (id)settings
{
  v2 = [[a1 alloc] initWithSettings:0];

  return v2;
}

- (FBSSceneClientSettings)initWithSettings:(id)a3
{
  v4.receiver = self;
  v4.super_class = FBSSceneClientSettings;
  return [(FBSSettings *)&v4 initWithSettings:a3];
}

@end