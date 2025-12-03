@interface FATipKitSignaler
+ (void)_sendSignalForEventIdentifier:(id)identifier context:(id)context;
@end

@implementation FATipKitSignaler

+ (void)_sendSignalForEventIdentifier:(id)identifier context:(id)context
{
  v5 = MEMORY[0x277CF1938];
  contextCopy = context;
  identifierCopy = identifier;
  v10 = [[v5 alloc] initWithIdentifier:identifierCopy bundleID:@"com.apple.Preferences" context:contextCopy userInfo:0];

  discoverabilitySignal = [MEMORY[0x277CF1B58] discoverabilitySignal];
  source = [discoverabilitySignal source];
  [source sendEvent:v10];
}

@end