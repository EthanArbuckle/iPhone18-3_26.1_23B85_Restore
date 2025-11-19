@interface WFOrderedDictionary
- (WFOrderedDictionary)init;
- (WFOrderedDictionary)initWithCoder:(id)a3;
- (WFOrderedDictionary)initWithObjects:(const void *)a3 forKeys:(const void *)a4 count:(unint64_t)a5;
- (WFOrderedDictionary)initWithQueryItems:(id)a3;
- (id)allKeys;
- (id)keyEnumerator;
- (id)objectForKey:(id)a3;
- (unint64_t)count;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFOrderedDictionary

- (WFOrderedDictionary)initWithQueryItems:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"WFOrderedDictionary+URLQueryItems.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"queryItems"}];
  }

  v6 = [v5 if_map:&__block_literal_global_23904];
  v7 = [v5 if_map:&__block_literal_global_9];
  v8 = [(WFOrderedDictionary *)self initWithObjects:v7 forKeys:v6];

  return v8;
}

__CFString *__57__WFOrderedDictionary_URLQueryItems__initWithQueryItems___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_282F53518;
  }

  v5 = v4;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFOrderedDictionary *)self keys];
  [v4 encodeObject:v5 forKey:@"keys"];

  v6 = [(WFOrderedDictionary *)self allValues];
  [v4 encodeObject:v6 forKey:@"objects"];
}

- (WFOrderedDictionary)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 allowedClasses];
  v6 = [v5 setByAddingObject:objc_opt_class()];
  v7 = [v5 setByAddingObject:objc_opt_class()];
  v8 = [v4 decodeObjectOfClasses:v6 forKey:@"keys"];
  v9 = [v4 decodeObjectOfClasses:v7 forKey:@"objects"];

  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10 || (v18.receiver = self, v18.super_class = WFOrderedDictionary, v11 = [(WFOrderedDictionary *)&v18 init], (self = v11) == 0))
  {
    v16 = 0;
  }

  else
  {
    objc_storeStrong(&v11->_keys, v8);
    v12 = objc_alloc(MEMORY[0x277CBEAC0]);
    v13 = [v8 array];
    v14 = [v12 initWithObjects:v9 forKeys:v13];
    dictionary = self->_dictionary;
    self->_dictionary = v14;

    self = self;
    v16 = self;
  }

  return v16;
}

- (id)allKeys
{
  v2 = [(WFOrderedDictionary *)self keys];
  v3 = [v2 array];

  return v3;
}

- (WFOrderedDictionary)initWithObjects:(const void *)a3 forKeys:(const void *)a4 count:(unint64_t)a5
{
  v15.receiver = self;
  v15.super_class = WFOrderedDictionary;
  v8 = [(WFOrderedDictionary *)&v15 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB70]) initWithObjects:a4 count:a5];
    keys = v8->_keys;
    v8->_keys = v9;

    v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjects:a3 forKeys:a4 count:a5];
    dictionary = v8->_dictionary;
    v8->_dictionary = v11;

    v13 = v8;
  }

  return v8;
}

- (WFOrderedDictionary)init
{
  v9.receiver = self;
  v9.super_class = WFOrderedDictionary;
  v2 = [(WFOrderedDictionary *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_new();
    keys = v2->_keys;
    v2->_keys = v3;

    v5 = objc_opt_new();
    dictionary = v2->_dictionary;
    v2->_dictionary = v5;

    v7 = v2;
  }

  return v2;
}

- (id)keyEnumerator
{
  v2 = [(WFOrderedDictionary *)self keys];
  v3 = [v2 objectEnumerator];

  return v3;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(WFOrderedDictionary *)self dictionary];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (unint64_t)count
{
  v2 = [(WFOrderedDictionary *)self dictionary];
  v3 = [v2 count];

  return v3;
}

@end