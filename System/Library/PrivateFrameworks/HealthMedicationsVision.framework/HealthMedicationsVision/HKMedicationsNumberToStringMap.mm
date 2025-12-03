@interface HKMedicationsNumberToStringMap
- (HKMedicationsNumberToStringMap)init;
- (id)stringForKey:(int64_t)key;
- (void)setString:(id)string forKey:(int64_t)key;
@end

@implementation HKMedicationsNumberToStringMap

- (HKMedicationsNumberToStringMap)init
{
  v6.receiver = self;
  v6.super_class = HKMedicationsNumberToStringMap;
  v2 = [(HKMedicationsNumberToStringMap *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    storage = v2->_storage;
    v2->_storage = v3;
  }

  return v2;
}

- (id)stringForKey:(int64_t)key
{
  storage = self->_storage;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:key];
  v5 = [(NSMutableDictionary *)storage objectForKeyedSubscript:v4];

  return v5;
}

- (void)setString:(id)string forKey:(int64_t)key
{
  storage = self->_storage;
  v6 = MEMORY[0x277CCABB0];
  stringCopy = string;
  v8 = [v6 numberWithInteger:key];
  [(NSMutableDictionary *)storage setObject:stringCopy forKeyedSubscript:v8];
}

@end