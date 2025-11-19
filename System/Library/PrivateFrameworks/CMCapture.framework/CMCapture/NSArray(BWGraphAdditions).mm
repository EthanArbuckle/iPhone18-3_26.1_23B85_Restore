@interface NSArray(BWGraphAdditions)
- (uint64_t)bw_intersectWithArray:()BWGraphAdditions;
@end

@implementation NSArray(BWGraphAdditions)

- (uint64_t)bw_intersectWithArray:()BWGraphAdditions
{
  v4 = [MEMORY[0x1E695DFA0] orderedSetWithArray:a1];
  [v4 intersectOrderedSet:{objc_msgSend(MEMORY[0x1E695DFB8], "orderedSetWithArray:", a3)}];

  return [v4 array];
}

@end