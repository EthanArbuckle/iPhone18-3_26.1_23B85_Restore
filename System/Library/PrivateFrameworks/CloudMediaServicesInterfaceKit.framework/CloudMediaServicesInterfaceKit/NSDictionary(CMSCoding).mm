@interface NSDictionary(CMSCoding)
+ (id)instanceFromCMSCoded:()CMSCoding;
- (id)cmsCoded;
@end

@implementation NSDictionary(CMSCoding)

- (id)cmsCoded
{
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(self, "count")}];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__NSDictionary_CMSCoding__cmsCoded__block_invoke;
  v5[3] = &unk_278DDCC18;
  v3 = v2;
  v6 = v3;
  [self enumerateKeysAndObjectsUsingBlock:v5];

  return v3;
}

+ (id)instanceFromCMSCoded:()CMSCoding
{
  v3 = cmsSafeDictionary(a3);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end