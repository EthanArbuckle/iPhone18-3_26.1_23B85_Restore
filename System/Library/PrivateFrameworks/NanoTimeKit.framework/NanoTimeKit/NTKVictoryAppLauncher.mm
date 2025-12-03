@interface NTKVictoryAppLauncher
+ (id)complication;
@end

@implementation NTKVictoryAppLauncher

+ (id)complication
{
  legacyComplicationDescriptor = [MEMORY[0x277CBB718] legacyComplicationDescriptor];
  v3 = [NTKRemoteComplication complicationWithClientIdentifier:@"com.nike.nikeplus-gps.watchkitapp.watchkitextension" appBundleIdentifier:@"com.nike.nikeplus-gps.watchkitapp" complicationDescriptor:legacyComplicationDescriptor];

  return v3;
}

@end