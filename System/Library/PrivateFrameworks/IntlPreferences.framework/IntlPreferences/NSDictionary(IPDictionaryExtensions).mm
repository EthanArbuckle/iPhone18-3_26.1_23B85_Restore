@interface NSDictionary(IPDictionaryExtensions)
- (id)invertedDictionary;
@end

@implementation NSDictionary(IPDictionaryExtensions)

- (id)invertedDictionary
{
  v2 = [a1 allKeys];
  v3 = [a1 allValues];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v2 forKeys:v3];

  return v4;
}

@end