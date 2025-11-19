@interface NSDictionary(SUUIExtensions)
+ (id)su_dictionaryWithSize:()SUUIExtensions;
@end

@implementation NSDictionary(SUUIExtensions)

+ (id)su_dictionaryWithSize:()SUUIExtensions
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"width";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v7[1] = @"height";
  v8[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

@end