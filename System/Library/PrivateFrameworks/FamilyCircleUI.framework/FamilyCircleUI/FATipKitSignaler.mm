@interface FATipKitSignaler
+ (void)_sendSignalForEventIdentifier:(id)a3 context:(id)a4;
@end

@implementation FATipKitSignaler

+ (void)_sendSignalForEventIdentifier:(id)a3 context:(id)a4
{
  v5 = MEMORY[0x277CF1938];
  v6 = a4;
  v7 = a3;
  v10 = [[v5 alloc] initWithIdentifier:v7 bundleID:@"com.apple.Preferences" context:v6 userInfo:0];

  v8 = [MEMORY[0x277CF1B58] discoverabilitySignal];
  v9 = [v8 source];
  [v9 sendEvent:v10];
}

@end