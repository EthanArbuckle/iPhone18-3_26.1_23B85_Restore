@interface DKEventStatsUtilities
@end

@implementation DKEventStatsUtilities

void __47___DKEventStatsUtilities_safeStringWithString___block_invoke()
{
  v2 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz01234567890"];
  v0 = [v2 invertedSet];
  v1 = safeStringWithString__nonPermittedCharacterSet;
  safeStringWithString__nonPermittedCharacterSet = v0;
}

@end