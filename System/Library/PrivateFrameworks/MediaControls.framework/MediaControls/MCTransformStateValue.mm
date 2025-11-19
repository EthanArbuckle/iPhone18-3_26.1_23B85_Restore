@interface MCTransformStateValue
@end

@implementation MCTransformStateValue

void ___MCTransformStateValue_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = _MCTransformStateValue(a3);
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

@end