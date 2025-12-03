@interface HDColumnCacheEntry
- (HDColumnCacheEntry)initWithDefinitions:(id)definitions;
- (id)description;
@end

@implementation HDColumnCacheEntry

- (HDColumnCacheEntry)initWithDefinitions:(id)definitions
{
  definitionsCopy = definitions;
  v15.receiver = self;
  v15.super_class = HDColumnCacheEntry;
  v6 = [(HDColumnCacheEntry *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_swiftColumnDefinitions, definitions);
    v8 = [definitionsCopy count];
    v7->_count = v8;
    v9 = [MEMORY[0x277CBEB28] dataWithLength:24 * v8];
    carrayStorage = v7->_carrayStorage;
    v7->_carrayStorage = v9;

    bytes = [(NSData *)v7->_carrayStorage bytes];
    v7->_columnDefinitions = bytes;
    swiftColumnDefinitions = v7->_swiftColumnDefinitions;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __42__HDColumnCacheEntry_initWithDefinitions___block_invoke;
    v14[3] = &__block_descriptor_40_e53_v32__0__HDSQLiteEntityColumnDefinitionObject_8Q16_B24l;
    v14[4] = bytes;
    [(NSArray *)swiftColumnDefinitions enumerateObjectsUsingBlock:v14];
  }

  return v7;
}

void __42__HDColumnCacheEntry_initWithDefinitions___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 name];
  v7 = *(a1 + 32);
  a3 *= 3;
  v8 = *(v7 + 8 * a3);
  *(v7 + 8 * a3) = v6;

  v9 = [v5 columnType];
  v10 = *(a1 + 32) + 8 * a3;
  v11 = *(v10 + 8);
  *(v10 + 8) = v9;

  v12 = *(a1 + 32) + 8 * a3;
  LOBYTE(a3) = [v5 keyPathType];

  *(v12 + 16) = a3;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v9.receiver = self;
  v9.super_class = HDColumnCacheEntry;
  v4 = [(HDColumnCacheEntry *)&v9 description];
  v5 = [v3 initWithString:v4];

  if (self->_count)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      [v5 appendFormat:@"\n%@, %@, %d", self->_columnDefinitions[v6].var0, self->_columnDefinitions[v6].var1, self->_columnDefinitions[v6].var2];
      ++v7;
      ++v6;
    }

    while (self->_count > v7);
  }

  return v5;
}

@end