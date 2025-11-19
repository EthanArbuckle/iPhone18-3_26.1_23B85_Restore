@interface NTKVictoryAppLauncher
+ (id)complication;
@end

@implementation NTKVictoryAppLauncher

+ (id)complication
{
  v2 = [MEMORY[0x277CBB718] legacyComplicationDescriptor];
  v3 = [NTKRemoteComplication complicationWithClientIdentifier:@"com.nike.nikeplus-gps.watchkitapp.watchkitextension" appBundleIdentifier:@"com.nike.nikeplus-gps.watchkitapp" complicationDescriptor:v2];

  return v3;
}

@end