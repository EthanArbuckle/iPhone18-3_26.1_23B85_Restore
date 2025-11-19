@interface CDPCAAccountInfoRepairEffectivenessReporter
- (CDPCAAccountInfoRepairEffectivenessReporter)init;
@end

@implementation CDPCAAccountInfoRepairEffectivenessReporter

- (CDPCAAccountInfoRepairEffectivenessReporter)init
{
  v3.receiver = self;
  v3.super_class = CDPCAAccountInfoRepairEffectivenessReporter;
  return [(CDPCAReporter *)&v3 initWithEvent:@"com.apple.cdp.accountInfoRepairEffectiveness"];
}

@end