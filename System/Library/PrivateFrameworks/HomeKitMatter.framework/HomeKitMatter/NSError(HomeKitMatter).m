@interface NSError(HomeKitMatter)
- (uint64_t)hmmtr_isMatterError;
- (uint64_t)isHMMTRError;
@end

@implementation NSError(HomeKitMatter)

- (uint64_t)isHMMTRError
{
  v1 = [a1 domain];
  v2 = [v1 isEqualToString:@"HMMTRErrorDomain"];

  return v2;
}

- (uint64_t)hmmtr_isMatterError
{
  v1 = [a1 domain];
  v2 = [v1 isEqualToString:*MEMORY[0x277CD5120]];

  return v2;
}

@end