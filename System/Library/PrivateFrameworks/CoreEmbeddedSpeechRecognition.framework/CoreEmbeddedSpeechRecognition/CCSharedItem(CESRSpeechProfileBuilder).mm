@interface CCSharedItem(CESRSpeechProfileBuilder)
- (uint64_t)isBoosted;
- (void)setIsBoosted:()CESRSpeechProfileBuilder;
@end

@implementation CCSharedItem(CESRSpeechProfileBuilder)

- (uint64_t)isBoosted
{
  v1 = objc_getAssociatedObject(self, kIsBoostedKey);
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)setIsBoosted:()CESRSpeechProfileBuilder
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(self, kIsBoostedKey, v2, 3);
}

@end