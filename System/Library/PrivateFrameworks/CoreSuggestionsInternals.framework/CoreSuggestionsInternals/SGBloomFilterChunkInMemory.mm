@interface SGBloomFilterChunkInMemory
- (BOOL)exists:(id)a3;
- (SGBloomFilterChunkInMemory)init;
- (void)add:(id)a3;
@end

@implementation SGBloomFilterChunkInMemory

- (BOOL)exists:(id)a3
{
  v3 = &self->_buf[6150 * (a3.var0 & 7)];
  if (((v3[(a3.var1.var0 % 0x1806) >> 3] >> ((a3.var1.var0 % 0x1806) & 7)) & 1) == 0)
  {
    return 0;
  }

  v4 = 2 * a3.var1.var0;
  v5 = -1;
  while (v5 != 8)
  {
    v6 = v3[(v4 % 0x1806) >> 3];
    v7 = (v4 % 0x1806) & 7;
    v4 += a3.var1.var0;
    ++v5;
    if (((v6 >> v7) & 1) == 0)
    {
      return v5 > 8;
    }
  }

  v5 = 9;
  return v5 > 8;
}

- (void)add:(id)a3
{
  if (doInsert(self->_buf, a3.var1.var0, 7))
  {
    ++self->_count;
  }
}

- (SGBloomFilterChunkInMemory)init
{
  v3.receiver = self;
  v3.super_class = SGBloomFilterChunkInMemory;
  return [(SGBloomFilterChunkInMemory *)&v3 init];
}

@end