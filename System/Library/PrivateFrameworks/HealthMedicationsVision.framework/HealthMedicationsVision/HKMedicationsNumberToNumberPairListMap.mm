@interface HKMedicationsNumberToNumberPairListMap
- (HKMedicationsNumberToNumberPairListMap)init;
- (void)addInteger:(int64_t)integer andInteger:(int64_t)andInteger forKey:(int64_t)key;
- (void)enumerateIntegersForKey:(int64_t)key block:(id)block;
@end

@implementation HKMedicationsNumberToNumberPairListMap

- (HKMedicationsNumberToNumberPairListMap)init
{
  v6.receiver = self;
  v6.super_class = HKMedicationsNumberToNumberPairListMap;
  v2 = [(HKMedicationsNumberToNumberPairListMap *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    storage = v2->_storage;
    v2->_storage = v3;
  }

  return v2;
}

- (void)addInteger:(int64_t)integer andInteger:(int64_t)andInteger forKey:(int64_t)key
{
  storage = self->_storage;
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:key];
  v14 = [(NSMutableDictionary *)storage objectForKeyedSubscript:v10];

  if (!v14)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = self->_storage;
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:key];
    [(NSMutableDictionary *)v11 setObject:v14 forKeyedSubscript:v12];
  }

  v13 = objc_alloc_init(HKMedicationsIntegerPair);
  [(HKMedicationsIntegerPair *)v13 setFirst:integer];
  [(HKMedicationsIntegerPair *)v13 setSecond:andInteger];
  [v14 addObject:v13];
}

- (void)enumerateIntegersForKey:(int64_t)key block:(id)block
{
  v21 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
  {
    storage = self->_storage;
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:key];
    v9 = [(NSMutableDictionary *)storage objectForKeyedSubscript:v8];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          blockCopy[2](blockCopy, [*(*(&v16 + 1) + 8 * v14) first], objc_msgSend(*(*(&v16 + 1) + 8 * v14), "second"));
          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end