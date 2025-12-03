@interface NSMutableDictionary(ML3ArtworkAdditions)
- (uint64_t)mergeWithDictionary:()ML3ArtworkAdditions;
@end

@implementation NSMutableDictionary(ML3ArtworkAdditions)

- (uint64_t)mergeWithDictionary:()ML3ArtworkAdditions
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__NSMutableDictionary_ML3ArtworkAdditions__mergeWithDictionary___block_invoke;
  v4[3] = &unk_278762E48;
  v4[4] = self;
  return [a3 enumerateKeysAndObjectsUsingBlock:v4];
}

@end