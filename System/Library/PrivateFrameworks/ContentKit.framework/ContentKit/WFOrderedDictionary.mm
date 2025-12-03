@interface WFOrderedDictionary
- (WFOrderedDictionary)init;
- (WFOrderedDictionary)initWithCoder:(id)coder;
- (WFOrderedDictionary)initWithObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count;
- (WFOrderedDictionary)initWithQueryItems:(id)items;
- (id)allKeys;
- (id)keyEnumerator;
- (id)objectForKey:(id)key;
- (unint64_t)count;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFOrderedDictionary

- (WFOrderedDictionary)initWithQueryItems:(id)items
{
  itemsCopy = items;
  if (!itemsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFOrderedDictionary+URLQueryItems.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"queryItems"}];
  }

  v6 = [itemsCopy if_map:&__block_literal_global_23904];
  v7 = [itemsCopy if_map:&__block_literal_global_9];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  keys = [(WFOrderedDictionary *)self keys];
  [coderCopy encodeObject:keys forKey:@"keys"];

  allValues = [(WFOrderedDictionary *)self allValues];
  [coderCopy encodeObject:allValues forKey:@"objects"];
}

- (WFOrderedDictionary)initWithCoder:(id)coder
{
  coderCopy = coder;
  allowedClasses = [coderCopy allowedClasses];
  v6 = [allowedClasses setByAddingObject:objc_opt_class()];
  v7 = [allowedClasses setByAddingObject:objc_opt_class()];
  v8 = [coderCopy decodeObjectOfClasses:v6 forKey:@"keys"];
  v9 = [coderCopy decodeObjectOfClasses:v7 forKey:@"objects"];

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
    selfCopy = 0;
  }

  else
  {
    objc_storeStrong(&v11->_keys, v8);
    v12 = objc_alloc(MEMORY[0x277CBEAC0]);
    array = [v8 array];
    v14 = [v12 initWithObjects:v9 forKeys:array];
    dictionary = self->_dictionary;
    self->_dictionary = v14;

    self = self;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)allKeys
{
  keys = [(WFOrderedDictionary *)self keys];
  array = [keys array];

  return array;
}

- (WFOrderedDictionary)initWithObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count
{
  v15.receiver = self;
  v15.super_class = WFOrderedDictionary;
  v8 = [(WFOrderedDictionary *)&v15 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB70]) initWithObjects:keys count:count];
    keys = v8->_keys;
    v8->_keys = v9;

    v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjects:objects forKeys:keys count:count];
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
  keys = [(WFOrderedDictionary *)self keys];
  objectEnumerator = [keys objectEnumerator];

  return objectEnumerator;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  dictionary = [(WFOrderedDictionary *)self dictionary];
  v6 = [dictionary objectForKey:keyCopy];

  return v6;
}

- (unint64_t)count
{
  dictionary = [(WFOrderedDictionary *)self dictionary];
  v3 = [dictionary count];

  return v3;
}

@end