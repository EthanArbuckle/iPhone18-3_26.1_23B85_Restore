@interface NSDictionary(IPDictionaryExtensions)
- (id)invertedDictionary;
@end

@implementation NSDictionary(IPDictionaryExtensions)

- (id)invertedDictionary
{
  allKeys = [self allKeys];
  allValues = [self allValues];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:allKeys forKeys:allValues];

  return v4;
}

@end