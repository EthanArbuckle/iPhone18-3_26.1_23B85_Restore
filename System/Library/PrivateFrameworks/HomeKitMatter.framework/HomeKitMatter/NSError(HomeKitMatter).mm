@interface NSError(HomeKitMatter)
- (uint64_t)hmmtr_isMatterError;
- (uint64_t)isHMMTRError;
@end

@implementation NSError(HomeKitMatter)

- (uint64_t)isHMMTRError
{
  domain = [self domain];
  v2 = [domain isEqualToString:@"HMMTRErrorDomain"];

  return v2;
}

- (uint64_t)hmmtr_isMatterError
{
  domain = [self domain];
  v2 = [domain isEqualToString:*MEMORY[0x277CD5120]];

  return v2;
}

@end