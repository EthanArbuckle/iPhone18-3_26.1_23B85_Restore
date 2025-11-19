@interface CNAggregateObjectTestFromArray
@end

@implementation CNAggregateObjectTestFromArray

uint64_t ___CNAggregateObjectTestFromArray_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___CNAggregateObjectTestFromArray_block_invoke_2;
  v8[3] = &unk_1E6ED7458;
  v9 = v3;
  v5 = v3;
  v6 = [v4 _cn_all:v8];

  return v6;
}

@end