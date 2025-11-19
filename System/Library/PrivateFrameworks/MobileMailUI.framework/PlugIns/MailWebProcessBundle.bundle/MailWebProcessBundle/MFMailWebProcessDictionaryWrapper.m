@interface MFMailWebProcessDictionaryWrapper
- (MFMailWebProcessDictionaryWrapper)initWithName:(id)a3;
- (id)objectForKey:(id)a3;
- (id)objectForKeyedSubscript:(id)a3;
- (void)removeObjectForKey:(id)a3;
- (void)setDictionary:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setValuesForKeysWithDictionary:(id)a3;
@end

@implementation MFMailWebProcessDictionaryWrapper

- (MFMailWebProcessDictionaryWrapper)initWithName:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MFMailWebProcessDictionaryWrapper;
  v6 = [(MFMailWebProcessDictionaryWrapper *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
    v8 = objc_alloc_init(NSMutableDictionary);
    storage = v7->_storage;
    v7->_storage = v8;
  }

  return v7;
}

- (void)setDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  storage = self->_storage;
  self->_storage = v5;

  if (self->_onChangeCallback)
  {
    v7 = [v4 allKeys];
    onChangeCallback = self->_onChangeCallback;
    v11 = v7;
    v9 = [NSArray arrayWithObjects:&v11 count:1];
    v10 = [(JSValue *)onChangeCallback callWithArguments:v9];
  }
}

- (id)objectForKeyedSubscript:(id)a3
{
  v3 = [(MFMailWebProcessDictionaryWrapper *)self objectForKey:a3];

  return v3;
}

- (id)objectForKey:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:a3];

  return v3;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = +[NSNull null];
  }

  [(NSMutableDictionary *)self->_storage setObject:v6 forKeyedSubscript:v7];
  onChangeCallback = self->_onChangeCallback;
  if (onChangeCallback)
  {
    v12 = v7;
    v9 = [NSArray arrayWithObjects:&v12 count:1];
    v13 = v9;
    v10 = [NSArray arrayWithObjects:&v13 count:1];
    v11 = [(JSValue *)onChangeCallback callWithArguments:v10];
  }
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  [(NSMutableDictionary *)self->_storage removeObjectForKey:v4];
  onChangeCallback = self->_onChangeCallback;
  if (onChangeCallback)
  {
    v9 = v4;
    v6 = [NSArray arrayWithObjects:&v9 count:1];
    v10 = v6;
    v7 = [NSArray arrayWithObjects:&v10 count:1];
    v8 = [(JSValue *)onChangeCallback callWithArguments:v7];
  }
}

- (void)setValuesForKeysWithDictionary:(id)a3
{
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [v4 allKeys];
  v5 = [obj countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = 0;
  v7 = *v19;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v19 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v18 + 1) + 8 * i);
      v10 = [v4 objectForKeyedSubscript:v9];
      v11 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:v9];
      v12 = [v10 isEqual:v11];

      if ((v12 & 1) == 0)
      {
        v13 = [v4 objectForKeyedSubscript:v9];
        [(NSMutableDictionary *)self->_storage setObject:v13 forKeyedSubscript:v9];

        v6 = 1;
      }
    }

    v5 = [obj countByEnumeratingWithState:&v18 objects:v23 count:16];
  }

  while (v5);

  if (v6)
  {
    onChangeCallback = self->_onChangeCallback;
    if (onChangeCallback)
    {
      obj = [v4 allKeys];
      v22 = obj;
      v15 = [NSArray arrayWithObjects:&v22 count:1];
      v16 = [(JSValue *)onChangeCallback callWithArguments:v15];

LABEL_13:
    }
  }
}

@end