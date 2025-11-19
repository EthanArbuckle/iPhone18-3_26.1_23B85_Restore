@interface ICHashtag(UI)
- (uint64_t)removeUsage;
@end

@implementation ICHashtag(UI)

- (uint64_t)removeUsage
{
  [MEMORY[0x1E69B7760] removeUsageOfHashtag:a1];
  v2 = MEMORY[0x1E69B77F0];

  return [v2 removeUsageOfHashtag:a1];
}

@end