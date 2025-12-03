@interface SGBloomFilterChunkInMemorySparse
- (BOOL)exists:(id)exists;
- (SGBloomFilterChunkInMemorySparse)init;
- (void)add:(id)add;
@end

@implementation SGBloomFilterChunkInMemorySparse

- (BOOL)exists:(id)exists
{
  hashes = self->_hashes;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:exists.var0];
  LOBYTE(hashes) = [(NSMutableSet *)hashes containsObject:v4];

  return hashes;
}

- (void)add:(id)add
{
  hashes = self->_hashes;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:add.var0];
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