@interface HKMedicationsNumberToStringMap
- (HKMedicationsNumberToStringMap)init;
- (id)stringForKey:(int64_t)a3;
- (void)setString:(id)a3 forKey:(int64_t)a4;
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

- (id)stringForKey:(int64_t)a3
{
  storage = self->_storage;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)storage objectForKeyedSubscript:v4];

  return v5;
}

- (void)setString:(id)a3 forKey:(int64_t)a4
{
  storage = self->_storage;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithInteger:a4];
  [(NSMutableDictionary *)storage setObject:v7 forKeyedSubscript:v8];
}

@end