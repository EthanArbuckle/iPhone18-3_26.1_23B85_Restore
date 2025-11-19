@interface NSPredicate(RemoteQuery)
- (uint64_t)rq_containsLocal;
@end

@implementation NSPredicate(RemoteQuery)

- (uint64_t)rq_containsLocal
{
  v2 = [MEMORY[0x277D27440] rq_predicateForLocal];
  v3 = [a1 isEqual:v2];

  return v3;
}

@end