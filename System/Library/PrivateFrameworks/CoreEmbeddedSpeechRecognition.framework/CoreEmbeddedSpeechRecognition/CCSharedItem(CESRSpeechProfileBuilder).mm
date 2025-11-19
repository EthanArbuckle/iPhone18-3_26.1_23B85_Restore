@interface CCSharedItem(CESRSpeechProfileBuilder)
- (uint64_t)isBoosted;
- (void)setIsBoosted:()CESRSpeechProfileBuilder;
@end

@implementation CCSharedItem(CESRSpeechProfileBuilder)

- (uint64_t)isBoosted
{
  v1 = objc_getAssociatedObject(a1, kIsBoostedKey);
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)setIsBoosted:()CESRSpeechProfileBuilder
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(a1, kIsBoostedKey, v2, 3);
}

@end