@interface CalCompatibility
+ (BOOL)isProgramSDKAtLeast:(id)a3;
@end

@implementation CalCompatibility

+ (BOOL)isProgramSDKAtLeast:(id)a3
{
  if ([a1 simulateLegacyBehaviors])
  {
    return 0;
  }

  return (MEMORY[0x1EEE706E0])(a3);
}

@end