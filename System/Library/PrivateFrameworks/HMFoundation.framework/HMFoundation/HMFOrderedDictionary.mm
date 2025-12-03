@interface HMFOrderedDictionary
+ (id)orderedDictionary;
+ (id)orderedDictionaryWithObject:(id)object forKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (HMFOrderedDictionary)initWithCoder:(id)coder;
- (HMFOrderedDictionary)initWithObject:(id)object forKey:(id)key;
- (HMFOrderedDictionary)initWithObjects:(id)objects orderedKeySet:(id)set;
- (id)_valueForKey:(id *)key;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)mutableUnorderedCopy;
- (id)objectsForKeys:(id)keys notFoundMarker:(id)marker;
- (id)unorderedCopy;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)options usingBlock:(id)block;
@end

@implementation HMFOrderedDictionary

+ (id)orderedDictionary
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)orderedDictionaryWithObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  v8 = [[self alloc] initWithObject:objectCopy forKey:keyCopy];

  return v8;
}

- (HMFOrderedDictionary)initWithObjects:(id)objects orderedKeySet:(id)set
{
  objectsCopy = objects;
  setCopy = set;
  v9 = [objectsCopy count];
  v10 = [setCopy count];
  if (v9 != v10)
  {
    v14 = MEMORY[0x277CBEAD8];
    v15 = *MEMORY[0x277CBE660];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Count of objects (%lu) differs from count of keys (%lu)", v9, v10];
    v17 = [v14 exceptionWithName:v15 reason:v16 userInfo:0];
    v18 = v17;

    objc_exception_throw(v17);
  }

  v19.receiver = self;
  v19.super_class = HMFOrderedDictionary;
  v11 = [(HMFOrderedDictionary *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_objects, objects);
    objc_storeStrong(&v12->_keys, set);
  }

  return v12;
}

- (HMFOrderedDictionary)initWithObject:(id)object forKey:(id)key
{
  v15[1] = *MEMORY[0x277D85DE8];
  v15[0] = object;
  v6 = MEMORY[0x277CBEA60];
  keyCopy = key;
  objectCopy = object;
  v9 = [v6 arrayWithObjects:v15 count:1];
  v14 = keyCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];

  v11 = [(HMFOrderedDictionary *)self initWithObjects:v9 forKeys:v10 copyObjects:0 copyKeys:1];
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)_valueForKey:(id *)key
{
  v3 = a2;
  if (key)
  {
    v4 = [key[2] indexOfObject:v3];
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      key = 0;
    }

    else
    {
      key = [key[1] objectAtIndex:v4];
    }
  }

  return key;
}

- (id)objectsForKeys:(id)keys notFoundMarker:(id)marker
{
  v26 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  markerCopy = marker;
  if (!markerCopy)
  {
    _HMFPreconditionFailure(@"notFoundMarker");
  }

  v8 = markerCopy;
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(keysCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = keysCopy;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(HMFOrderedDictionary *)&self->super.isa _valueForKey:?];
        v16 = v15;
        if (v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = v8;
        }

        [v9 addObject:{v17, v21}];
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  v18 = [v9 copy];
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)options usingBlock:(id)block
{
  blockCopy = block;
  keys = self->_keys;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__HMFOrderedDictionary_enumerateKeysAndObjectsWithOptions_usingBlock___block_invoke;
  v9[3] = &unk_2786E7E00;
  v9[4] = self;
  v10 = blockCopy;
  v8 = blockCopy;
  [(NSOrderedSet *)keys enumerateObjectsWithOptions:options usingBlock:v9];
}

void __70__HMFOrderedDictionary_enumerateKeysAndObjectsWithOptions_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 8);
  v8 = a2;
  v9 = [v7 objectAtIndex:a3];
  (*(v6 + 16))(v6, v8, v9, a4);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if ([(NSOrderedSet *)self->_keys isEqualToOrderedSet:v5->_keys])
      {
        v6 = [(NSArray *)self->_objects isEqualToArray:v5->_objects];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (HMFOrderedDictionary)initWithCoder:(id)coder
{
  v20[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMF.keys"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMF.objects"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ and %@ must be present", @"HMF.keys", @"HMF.objects"];
    v12 = LABEL_10:;
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA050];
    v19 = *MEMORY[0x277CCA450];
    v20[0] = v12;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v16 = [v13 errorWithDomain:v14 code:4864 userInfo:v15];
    [coderCopy failWithError:v16];

    selfCopy = 0;
    goto LABEL_11;
  }

  v9 = [v5 count];
  v10 = [v7 count];
  if (v10 != v9)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"count of objects (%lu) differs from count of keys (%lu)", v10, v9];
    goto LABEL_10;
  }

  self = [(HMFOrderedDictionary *)self initWithObjects:v7 forKeys:v5 copyObjects:0 copyKeys:0];
  selfCopy = self;
LABEL_11:

  v17 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  keys = self->_keys;
  coderCopy = coder;
  array = [(NSOrderedSet *)keys array];
  [coderCopy encodeObject:array forKey:@"HMF.keys"];

  v7 = [(NSArray *)self->_objects copy];
  [coderCopy encodeObject:v7 forKey:@"HMF.objects"];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMFMutableOrderedDictionary alloc];
  v5 = [(NSArray *)self->_objects mutableCopy];
  v6 = [(NSOrderedSet *)self->_keys mutableCopy];
  v7 = [(HMFMutableOrderedDictionary *)v4 initWithObjects:v5 orderedKeySet:v6];

  return v7;
}

- (id)unorderedCopy
{
  v3 = objc_alloc(MEMORY[0x277CBEAC0]);
  objects = self->_objects;
  array = [(NSOrderedSet *)self->_keys array];
  v6 = [v3 initWithObjects:objects forKeys:array];

  return v6;
}

- (id)mutableUnorderedCopy
{
  v3 = objc_alloc(MEMORY[0x277CBEB38]);
  objects = self->_objects;
  array = [(NSOrderedSet *)self->_keys array];
  v6 = [v3 initWithObjects:objects forKeys:array];

  return v6;
}

@end