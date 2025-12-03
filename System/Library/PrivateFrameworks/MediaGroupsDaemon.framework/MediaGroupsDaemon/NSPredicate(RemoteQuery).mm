@interface NSPredicate(RemoteQuery)
- (uint64_t)rq_containsLocal;
@end

@implementation NSPredicate(RemoteQuery)

- (uint64_t)rq_containsLocal
{
  rq_predicateForLocal = [MEMORY[0x277D27440] rq_predicateForLocal];
  v3 = [self isEqual:rq_predicateForLocal];

  return v3;
}

@end