@interface MTFrozenBag
- (BOOL)isExpired;
- (MTFrozenBag)initWithProfile:(id)a3 profileVersion:(id)a4 config:(id)a5;
- (NSDate)expirationDate;
- (id)BOOLForKey:(id)a3;
- (id)URLForKey:(id)a3;
- (id)arrayForKey:(id)a3;
- (id)dictionaryForKey:(id)a3;
- (id)doubleForKey:(id)a3;
- (id)integerForKey:(id)a3;
- (id)stringForKey:(id)a3;
@end

@implementation MTFrozenBag

- (MTFrozenBag)initWithProfile:(id)a3 profileVersion:(id)a4 config:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = MTFrozenBag;
  v12 = [(MTFrozenBag *)&v16 init];
  if (v12)
  {
    v13 = [v11 copy];
    config = v12->_config;
    v12->_config = v13;

    objc_storeStrong(&v12->_profile, a3);
    objc_storeStrong(&v12->_profileVersion, a4);
  }

  return v12;
}

- (BOOL)isExpired
{
  v2 = [(MTFrozenBag *)self expirationDate];
  v3 = [MEMORY[0x277CBEAA8] date];
  [v2 timeIntervalSinceDate:v3];
  v5 = v4 < 0.0;

  return v5;
}

- (NSDate)expirationDate
{
  v2 = MEMORY[0x277CBEAA8];
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [v2 dateWithTimeInterval:v3 sinceDate:86400.0];

  return v4;
}

- (id)arrayForKey:(id)a3
{
  v4 = a3;
  v5 = [(MTFrozenBag *)self config];
  v6 = [v5 objectForKeyedSubscript:v4];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = MEMORY[0x277CBEAD8];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"There is no array value for key %@", v4];
    v11 = [v9 exceptionWithName:@"MTFrozenBag" reason:v10 userInfo:0];
    v12 = v11;

    objc_exception_throw(v11);
  }

  v7 = [MEMORY[0x277CEE410] frozenBagValueWithKey:v4 value:v6 valueType:0];

  return v7;
}

- (id)BOOLForKey:(id)a3
{
  v4 = a3;
  v5 = [(MTFrozenBag *)self config];
  v6 = [v5 objectForKeyedSubscript:v4];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = MEMORY[0x277CBEAD8];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"There is no BOOLean value for key %@", v4];
    v11 = [v9 exceptionWithName:@"MTFrozenBag" reason:v10 userInfo:0];
    v12 = v11;

    objc_exception_throw(v11);
  }

  v7 = [MEMORY[0x277CEE410] frozenBagValueWithKey:v4 value:v6 valueType:1];

  return v7;
}

- (id)doubleForKey:(id)a3
{
  v4 = a3;
  v5 = [(MTFrozenBag *)self config];
  v6 = [v5 objectForKeyedSubscript:v4];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = MEMORY[0x277CBEAD8];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"There is no double value for key %@", v4];
    v11 = [v9 exceptionWithName:@"MTFrozenBag" reason:v10 userInfo:0];
    v12 = v11;

    objc_exception_throw(v11);
  }

  v7 = [MEMORY[0x277CEE410] frozenBagValueWithKey:v4 value:v6 valueType:2];

  return v7;
}

- (id)integerForKey:(id)a3
{
  v4 = a3;
  v5 = [(MTFrozenBag *)self config];
  v6 = [v5 objectForKeyedSubscript:v4];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = MEMORY[0x277CBEAD8];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"There is no integer value for key %@", v4];
    v11 = [v9 exceptionWithName:@"MTFrozenBag" reason:v10 userInfo:0];
    v12 = v11;

    objc_exception_throw(v11);
  }

  v7 = [MEMORY[0x277CEE410] frozenBagValueWithKey:v4 value:v6 valueType:3];

  return v7;
}

- (id)stringForKey:(id)a3
{
  v4 = a3;
  v5 = [(MTFrozenBag *)self config];
  v6 = [v5 objectForKeyedSubscript:v4];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = MEMORY[0x277CBEAD8];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"There is no string value for key %@", v4];
    v11 = [v9 exceptionWithName:@"MTFrozenBag" reason:v10 userInfo:0];
    v12 = v11;

    objc_exception_throw(v11);
  }

  v7 = [MEMORY[0x277CEE410] frozenBagValueWithKey:v4 value:v6 valueType:4];

  return v7;
}

- (id)URLForKey:(id)a3
{
  v4 = a3;
  v5 = [(MTFrozenBag *)self config];
  v6 = [v5 objectForKeyedSubscript:v4];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = MEMORY[0x277CBEAD8];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"There is no url value for key %@", v4];
    v11 = [v9 exceptionWithName:@"MTFrozenBag" reason:v10 userInfo:0];
    v12 = v11;

    objc_exception_throw(v11);
  }

  v7 = [MEMORY[0x277CEE410] frozenBagValueWithKey:v4 value:v6 valueType:5];

  return v7;
}

- (id)dictionaryForKey:(id)a3
{
  v4 = a3;
  v5 = [(MTFrozenBag *)self config];
  v6 = [v5 objectForKeyedSubscript:v4];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = MEMORY[0x277CBEAD8];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"There is no dictionary value for key %@", v4];
    v11 = [v9 exceptionWithName:@"MTFrozenBag" reason:v10 userInfo:0];
    v12 = v11;

    objc_exception_throw(v11);
  }

  v7 = [MEMORY[0x277CEE410] frozenBagValueWithKey:v4 value:v6 valueType:6];

  return v7;
}

@end