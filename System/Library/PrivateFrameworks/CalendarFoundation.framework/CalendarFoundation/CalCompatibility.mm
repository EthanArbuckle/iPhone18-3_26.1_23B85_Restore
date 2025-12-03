@interface CalCompatibility
+ (BOOL)isProgramSDKAtLeast:(id)least;
@end

@implementation CalCompatibility

+ (BOOL)isProgramSDKAtLeast:(id)least
{
  if ([self simulateLegacyBehaviors])
  {
    return 0;
  }

  return (MEMORY[0x1EEE706E0])(least);
}

@end