@interface MTFrozenBag
- (BOOL)isExpired;
- (MTFrozenBag)initWithProfile:(id)profile profileVersion:(id)version config:(id)config;
- (NSDate)expirationDate;
- (id)BOOLForKey:(id)key;
- (id)URLForKey:(id)key;
- (id)arrayForKey:(id)key;
- (id)dictionaryForKey:(id)key;
- (id)doubleForKey:(id)key;
- (id)integerForKey:(id)key;
- (id)stringForKey:(id)key;
@end

@implementation MTFrozenBag

- (MTFrozenBag)initWithProfile:(id)profile profileVersion:(id)version config:(id)config
{
  profileCopy = profile;
  versionCopy = version;
  configCopy = config;
  v16.receiver = self;
  v16.super_class = MTFrozenBag;
  v12 = [(MTFrozenBag *)&v16 init];
  if (v12)
  {
    v13 = [configCopy copy];
    config = v12->_config;
    v12->_config = v13;

    objc_storeStrong(&v12->_profile, profile);
    objc_storeStrong(&v12->_profileVersion, version);
  }

  return v12;
}

- (BOOL)isExpired
{
  expirationDate = [(MTFrozenBag *)self expirationDate];
  date = [MEMORY[0x277CBEAA8] date];
  [expirationDate timeIntervalSinceDate:date];
  v5 = v4 < 0.0;

  return v5;
}

- (NSDate)expirationDate
{
  v2 = MEMORY[0x277CBEAA8];
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [v2 dateWithTimeInterval:date sinceDate:86400.0];

  return v4;
}

- (id)arrayForKey:(id)key
{
  keyCopy = key;
  config = [(MTFrozenBag *)self config];
  v6 = [config objectForKeyedSubscript:keyCopy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = MEMORY[0x277CBEAD8];
    keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"There is no array value for key %@", keyCopy];
    v11 = [v9 exceptionWithName:@"MTFrozenBag" reason:keyCopy userInfo:0];
    v12 = v11;

    objc_exception_throw(v11);
  }

  v7 = [MEMORY[0x277CEE410] frozenBagValueWithKey:keyCopy value:v6 valueType:0];

  return v7;
}

- (id)BOOLForKey:(id)key
{
  keyCopy = key;
  config = [(MTFrozenBag *)self config];
  v6 = [config objectForKeyedSubscript:keyCopy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = MEMORY[0x277CBEAD8];
    keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"There is no BOOLean value for key %@", keyCopy];
    v11 = [v9 exceptionWithName:@"MTFrozenBag" reason:keyCopy userInfo:0];
    v12 = v11;

    objc_exception_throw(v11);
  }

  v7 = [MEMORY[0x277CEE410] frozenBagValueWithKey:keyCopy value:v6 valueType:1];

  return v7;
}

- (id)doubleForKey:(id)key
{
  keyCopy = key;
  config = [(MTFrozenBag *)self config];
  v6 = [config objectForKeyedSubscript:keyCopy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = MEMORY[0x277CBEAD8];
    keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"There is no double value for key %@", keyCopy];
    v11 = [v9 exceptionWithName:@"MTFrozenBag" reason:keyCopy userInfo:0];
    v12 = v11;

    objc_exception_throw(v11);
  }

  v7 = [MEMORY[0x277CEE410] frozenBagValueWithKey:keyCopy value:v6 valueType:2];

  return v7;
}

- (id)integerForKey:(id)key
{
  keyCopy = key;
  config = [(MTFrozenBag *)self config];
  v6 = [config objectForKeyedSubscript:keyCopy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = MEMORY[0x277CBEAD8];
    keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"There is no integer value for key %@", keyCopy];
    v11 = [v9 exceptionWithName:@"MTFrozenBag" reason:keyCopy userInfo:0];
    v12 = v11;

    objc_exception_throw(v11);
  }

  v7 = [MEMORY[0x277CEE410] frozenBagValueWithKey:keyCopy value:v6 valueType:3];

  return v7;
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  config = [(MTFrozenBag *)self config];
  v6 = [config objectForKeyedSubscript:keyCopy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = MEMORY[0x277CBEAD8];
    keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"There is no string value for key %@", keyCopy];
    v11 = [v9 exceptionWithName:@"MTFrozenBag" reason:keyCopy userInfo:0];
    v12 = v11;

    objc_exception_throw(v11);
  }

  v7 = [MEMORY[0x277CEE410] frozenBagValueWithKey:keyCopy value:v6 valueType:4];

  return v7;
}

- (id)URLForKey:(id)key
{
  keyCopy = key;
  config = [(MTFrozenBag *)self config];
  v6 = [config objectForKeyedSubscript:keyCopy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = MEMORY[0x277CBEAD8];
    keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"There is no url value for key %@", keyCopy];
    v11 = [v9 exceptionWithName:@"MTFrozenBag" reason:keyCopy userInfo:0];
    v12 = v11;

    objc_exception_throw(v11);
  }

  v7 = [MEMORY[0x277CEE410] frozenBagValueWithKey:keyCopy value:v6 valueType:5];

  return v7;
}

- (id)dictionaryForKey:(id)key
{
  keyCopy = key;
  config = [(MTFrozenBag *)self config];
  v6 = [config objectForKeyedSubscript:keyCopy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = MEMORY[0x277CBEAD8];
    keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"There is no dictionary value for key %@", keyCopy];
    v11 = [v9 exceptionWithName:@"MTFrozenBag" reason:keyCopy userInfo:0];
    v12 = v11;

    objc_exception_throw(v11);
  }

  v7 = [MEMORY[0x277CEE410] frozenBagValueWithKey:keyCopy value:v6 valueType:6];

  return v7;
}

@end