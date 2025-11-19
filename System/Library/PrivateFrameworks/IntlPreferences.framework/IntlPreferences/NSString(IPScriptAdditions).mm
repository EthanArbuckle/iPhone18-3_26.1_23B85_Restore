@interface NSString(IPScriptAdditions)
- (id)localeIdentifierWithUpdatedScript:()IPScriptAdditions;
@end

@implementation NSString(IPScriptAdditions)

- (id)localeIdentifierWithUpdatedScript:()IPScriptAdditions
{
  v4 = MEMORY[0x277CBEAF8];
  v5 = a3;
  v6 = [v4 componentsFromLocaleIdentifier:a1];
  v7 = [v6 mutableCopy];

  [v7 setObject:v5 forKeyedSubscript:*MEMORY[0x277CBE6F8]];
  v8 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v7];

  return v8;
}

@end