@interface BPSApproximateDistinctCount
- (BOOL)countMapFull;
- (BPSApproximateDistinctCount)initWithCoder:(id)a3;
- (BPSApproximateDistinctCount)initWithHllState:(hll_state *)a3;
- (double)approximateDistinctCount;
- (void)addData:(id)a3;
- (void)addValue:(unsigned int)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)printState;
@end

@implementation BPSApproximateDistinctCount

- (BPSApproximateDistinctCount)initWithHllState:(hll_state *)a3
{
  v8.receiver = self;
  v8.super_class = BPSApproximateDistinctCount;
  v4 = [(BPSApproximateDistinctCount *)&v8 init];
  if (v4)
  {
    v5 = malloc_type_calloc(1uLL, 0x20uLL, 0x1000040E0EAB150uLL);
    v4->_hllState = v5;
    if (!v5)
    {
      abort();
    }

    if (a3)
    {
      v6 = *&a3->var0[16];
      *v5->var0 = *a3->var0;
      *&v5->var0[16] = v6;
    }

    v4->_lock._os_unfair_lock_opaque = 0;
  }

  return v4;
}

- (void)dealloc
{
  free(self->_hllState);
  v3.receiver = self;
  v3.super_class = BPSApproximateDistinctCount;
  [(BPSApproximateDistinctCount *)&v3 dealloc];
}

- (void)addValue:(unsigned int)a3
{
  os_unfair_lock_lock(&self->_lock);
  v4 = _PASMurmur3_x86_32();
  hllState = self->_hllState;
  v6 = v4 >> 27;
  v7 = (__clz(v4 & 0x7FFFFFF) - 4);
  if (v7 <= hllState->var0[v6])
  {
    LOBYTE(v7) = hllState->var0[v6];
  }

  hllState->var0[v6] = v7;
  os_unfair_lock_unlock(&self->_lock);
}

- (void)addData:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [v4 bytes];
  [v4 length];

  v5 = _PASMurmur3_x86_32();
  hllState = self->_hllState;
  v7 = v5 >> 27;
  v8 = (__clz(v5 & 0x7FFFFFF) - 4);
  if (v8 <= hllState->var0[v7])
  {
    LOBYTE(v8) = hllState->var0[v7];
  }

  hllState->var0[v7] = v8;

  os_unfair_lock_unlock(&self->_lock);
}

- (double)approximateDistinctCount
{
  os_unfair_lock_lock(&self->_lock);
  v3 = 0;
  v4 = 0;
  hllState = self->_hllState;
  v6 = 0.0;
  do
  {
    if (!hllState->var0[v3])
    {
      ++v4;
    }

    v6 = v6 + exp2(-hllState->var0[v3++]);
  }

  while (v3 != 32);
  v7 = 0.697 / v6 * 32.0 * 32.0;
  if (v7 <= 80.0 && v4 != 0)
  {
    v7 = log(32.0 / v4) * 32.0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v7;
}

- (BOOL)countMapFull
{
  os_unfair_lock_lock(&self->_lock);
  hllState = self->_hllState;
  if (hllState->var0[0] == 31)
  {
    v4 = 0;
    v5 = &hllState->var0[1];
    do
    {
      v6 = v4;
      if (v4 == 31)
      {
        break;
      }

      v7 = v5[v4++];
    }

    while (v7 == 31);
    v8 = v6 > 0x1E;
  }

  else
  {
    v8 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v8;
}

- (void)printState
{
  os_unfair_lock_lock(&self->_lock);
  v3 = 0;
  hllState = self->_hllState;
  do
  {
    printf("%d:\t%u\n", v3, hllState->var0[v3]);
    ++v3;
  }

  while (v3 != 32);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [v4 encodeInt:5 forKey:@"hllRegisterBitWidth"];
  [v4 encodeInt:32 forKey:@"hllRegisterCount"];
  [v4 encodeBytes:self->_hllState length:32 forKey:@"hllData"];

  os_unfair_lock_unlock(&self->_lock);
}

- (BPSApproximateDistinctCount)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 decodeIntForKey:@"hllRegisterBitWidth"] != 5)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BPSApproximateDistinctCount initWithCoder:];
    }

    goto LABEL_9;
  }

  if ([v4 decodeIntForKey:@"hllRegisterCount"] != 32)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BPSApproximateDistinctCount initWithCoder:];
    }

LABEL_9:

LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  v10 = 0;
  v5 = [v4 decodeBytesForKey:@"hllData" returnedLength:&v10];
  if (v10 != 32)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(BPSApproximateDistinctCount *)&v10 initWithCoder:v9];
    }

    goto LABEL_10;
  }

  self = [(BPSApproximateDistinctCount *)self initWithHllState:v5];
  v6 = self;
LABEL_11:

  return v6;
}

- (void)initWithCoder:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  v3 = 5;
  _os_log_error_impl(&dword_1C871B000, v0, OS_LOG_TYPE_ERROR, "Mismatch between encoded HyperLogLog register width %u and current width %u", v2, 0xEu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:.cold.2()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  v3 = 32;
  _os_log_error_impl(&dword_1C871B000, v0, OS_LOG_TYPE_ERROR, "Mismatch between encoded HyperLogLog register count %u and current count %u", v2, 0xEu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:(uint64_t *)a1 .cold.3(uint64_t *a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 134218240;
  v5 = v2;
  v6 = 2048;
  v7 = 32;
  _os_log_error_impl(&dword_1C871B000, a2, OS_LOG_TYPE_ERROR, "Mismatch between encoded HyperLogLog data size %zu and current expected size %lu", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end