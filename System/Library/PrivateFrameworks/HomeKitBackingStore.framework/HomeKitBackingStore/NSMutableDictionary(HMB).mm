@interface NSMutableDictionary(HMB)
+ (id)hmbDictionaryFromOPACKData:()HMB error:;
@end

@implementation NSMutableDictionary(HMB)

+ (id)hmbDictionaryFromOPACKData:()HMB error:
{
  v0 = [MEMORY[0x277CBEAC0] hmbDictionaryFromOPACKData:? error:?];
  v1 = [v0 mutableCopy];

  return v1;
}

@end