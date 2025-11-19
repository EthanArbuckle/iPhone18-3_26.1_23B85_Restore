@interface MakeVisibleFunctionTablesForPipeline
@end

@implementation MakeVisibleFunctionTablesForPipeline

uint64_t ___MakeVisibleFunctionTablesForPipeline_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"type"];
  if ([v4 unsignedIntValue] == 24)
  {
    v5 = [v3 objectForKeyedSubscript:@"index"];
    v6 = [v5 isEqualToNumber:*(a1 + 32)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end