@interface HKMedicationsNumberToNumberMap
- (HKMedicationsNumberToNumberMap)init;
- (int64_t)integerForKey:(int64_t)key;
- (void)setInteger:(int64_t)integer forKey:(int64_t)key;
@end

@implementation HKMedicationsNumberToNumberMap

- (HKMedicationsNumberToNumberMap)init
{
  v6.receiver = self;
  v6.super_class = HKMedicationsNumberToNumberMap;
  v2 = [(HKMedicationsNumberToNumberMap *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    storage = v2->_storage;
    v2->_storage = v3;
  }

  return v2;
}

- (int64_t)integerForKey:(int64_t)key
{
  storage = self->_storage;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:key];
  v5 = [(NSMutableDictionary *)storage objectForKeyedSubscript:v4];
  integerValue = [v5 integerValue];

  return integerValue;
}

- (void)setInteger:(int64_t)integer forKey:(int64_t)key
{
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:integer];
  storage = self->_storage;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:key];
  [(NSMutableDictionary *)storage setObject:v8 forKeyedSubscript:v7];
}

@end