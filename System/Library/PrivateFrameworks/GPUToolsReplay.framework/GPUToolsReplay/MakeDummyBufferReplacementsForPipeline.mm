@interface MakeDummyBufferReplacementsForPipeline
@end

@implementation MakeDummyBufferReplacementsForPipeline

uint64_t ___MakeDummyBufferReplacementsForPipeline_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"type"];
  if ([v4 unsignedIntValue])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 objectForKeyedSubscript:@"index"];
    v5 = [v6 isEqualToNumber:*(a1 + 32)];
  }

  return v5;
}

@end