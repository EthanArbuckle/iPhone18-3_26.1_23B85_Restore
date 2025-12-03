@interface CRKUserDefaultsObject
- (CRKUserDefaultsObject)initWithKey:(id)key;
- (CRKUserDefaultsObject)initWithStore:(id)store key:(id)key;
- (id)value;
- (void)registerDefaultValue:(id)value;
- (void)setValue:(id)value;
@end

@implementation CRKUserDefaultsObject

- (CRKUserDefaultsObject)initWithKey:(id)key
{
  v4 = MEMORY[0x277CBEBD0];
  keyCopy = key;
  standardUserDefaults = [v4 standardUserDefaults];
  v7 = [(CRKUserDefaultsObject *)self initWithStore:standardUserDefaults key:keyCopy];

  return v7;
}

- (CRKUserDefaultsObject)initWithStore:(id)store key:(id)key
{
  storeCopy = store;
  keyCopy = key;
  v14.receiver = self;
  v14.super_class = CRKUserDefaultsObject;
  v9 = [(CRKUserDefaultsObject *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_store, store);
    v11 = [keyCopy copy];
    key = v10->_key;
    v10->_key = v11;
  }

  return v10;
}

- (id)value
{
  store = [(CRKUserDefaultsObject *)self store];
  v4 = [(CRKUserDefaultsObject *)self key];
  v5 = [store objectForKey:v4];

  return v5;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  store = [(CRKUserDefaultsObject *)self store];
  v5 = [(CRKUserDefaultsObject *)self key];
  if (valueCopy)
  {
    [store setObject:valueCopy forKey:v5];
  }

  else
  {
    [store removeObjectForKey:v5];
  }
}

- (void)registerDefaultValue:(id)value
{
  v11[1] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  store = [(CRKUserDefaultsObject *)self store];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    store2 = [(CRKUserDefaultsObject *)self store];
    v8 = [(CRKUserDefaultsObject *)self key];
    v10 = v8;
    v11[0] = valueCopy;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [store2 registerDefaults:v9];
  }
}

@end