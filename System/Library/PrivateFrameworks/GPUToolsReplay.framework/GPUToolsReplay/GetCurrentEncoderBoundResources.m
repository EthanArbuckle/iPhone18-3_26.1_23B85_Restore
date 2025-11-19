@interface GetCurrentEncoderBoundResources
@end

@implementation GetCurrentEncoderBoundResources

uint64_t ___GetCurrentEncoderBoundResources_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"type"];
  if ([v4 isEqualToNumber:*(a1 + 32)])
  {
    v5 = [v3 objectForKeyedSubscript:@"index"];
    v6 = [v5 isEqualToNumber:*(a1 + 40)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t ___GetCurrentEncoderBoundResources_block_invoke_2(uint64_t a1, void *a2)
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