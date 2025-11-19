@interface MSVTransformStateValue
@end

@implementation MSVTransformStateValue

void ___MSVTransformStateValue_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = _MSVTransformStateValue(a3);
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

@end