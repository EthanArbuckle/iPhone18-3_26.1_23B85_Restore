@interface CRKUserDefaultsObject
- (CRKUserDefaultsObject)initWithKey:(id)a3;
- (CRKUserDefaultsObject)initWithStore:(id)a3 key:(id)a4;
- (id)value;
- (void)registerDefaultValue:(id)a3;
- (void)setValue:(id)a3;
@end

@implementation CRKUserDefaultsObject

- (CRKUserDefaultsObject)initWithKey:(id)a3
{
  v4 = MEMORY[0x277CBEBD0];
  v5 = a3;
  v6 = [v4 standardUserDefaults];
  v7 = [(CRKUserDefaultsObject *)self initWithStore:v6 key:v5];

  return v7;
}

- (CRKUserDefaultsObject)initWithStore:(id)a3 key:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CRKUserDefaultsObject;
  v9 = [(CRKUserDefaultsObject *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_store, a3);
    v11 = [v8 copy];
    key = v10->_key;
    v10->_key = v11;
  }

  return v10;
}

- (id)value
{
  v3 = [(CRKUserDefaultsObject *)self store];
  v4 = [(CRKUserDefaultsObject *)self key];
  v5 = [v3 objectForKey:v4];

  return v5;
}

- (void)setValue:(id)a3
{
  v6 = a3;
  v4 = [(CRKUserDefaultsObject *)self store];
  v5 = [(CRKUserDefaultsObject *)self key];
  if (v6)
  {
    [v4 setObject:v6 forKey:v5];
  }

  else
  {
    [v4 removeObjectForKey:v5];
  }
}

- (void)registerDefaultValue:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CRKUserDefaultsObject *)self store];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CRKUserDefaultsObject *)self store];
    v8 = [(CRKUserDefaultsObject *)self key];
    v10 = v8;
    v11[0] = v4;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v7 registerDefaults:v9];
  }
}

@end