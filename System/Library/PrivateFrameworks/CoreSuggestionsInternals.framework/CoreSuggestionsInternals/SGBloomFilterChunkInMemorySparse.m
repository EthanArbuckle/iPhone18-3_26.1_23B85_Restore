@interface SGBloomFilterChunkInMemorySparse
- (BOOL)exists:(id)a3;
- (SGBloomFilterChunkInMemorySparse)init;
- (void)add:(id)a3;
@end

@implementation SGBloomFilterChunkInMemorySparse

- (BOOL)exists:(id)a3
{
  hashes = self->_hashes;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3.var0];
  LOBYTE(hashes) = [(NSMutableSet *)hashes containsObject:v4];

  return hashes;
}

- (void)add:(id)a3
{
  hashes = self->_hashes;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3.var0];
  [(NSMutableSet *)hashes addObject:v4];
}

- (SGBloomFilterChunkInMemorySparse)init
{
  v6.receiver = self;
  v6.super_class = SGBloomFilterChunkInMemorySparse;
  v2 = [(SGBloomFilterChunkInMemorySparse *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    hashes = v2->_hashes;
    v2->_hashes = v3;
  }

  return v2;
}

@end