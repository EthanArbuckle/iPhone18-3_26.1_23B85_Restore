@interface NSValue(GC)
+ (id)gc_valueWithSimdFloat4x4:()GC;
- (double)gc_simdFloat4x4Value;
@end

@implementation NSValue(GC)

+ (id)gc_valueWithSimdFloat4x4:()GC
{
  v5 = 0;
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;
  memset(v8, 0, sizeof(v8));
  do
  {
    v8[v5] = v9[v5];
    ++v5;
  }

  while (v5 != 4);
  v6 = [self valueWithBytes:v8 objCType:"{simd_float4x4_layout=[4{simd_float4_layout=ffff}]}"];

  return v6;
}

- (double)gc_simdFloat4x4Value
{
  memset(v3, 0, sizeof(v3));
  [self getValue:v3 size:64];
  v1 = 0;
  memset(v4, 0, sizeof(v4));
  do
  {
    v4[v1] = v3[v1];
    ++v1;
  }

  while (v1 != 4);
  return *v4;
}

@end