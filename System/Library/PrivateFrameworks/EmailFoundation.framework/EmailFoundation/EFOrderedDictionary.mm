@interface EFOrderedDictionary
- (EFOrderedDictionary)init;
- (EFOrderedDictionary)initWithCoder:(id)a3;
- (NSArray)allValues;
- (NSDictionary)dictionary;
- (NSOrderedSet)allKeys;
- (id)_initWithOrderedKeys:(id)a3 objectsByKey:(id)a4;
- (id)firstObject;
- (id)lastObject;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)objectAtIndexedSubscript:(unint64_t)a3;
- (id)objectForKey:(id)a3;
- (id)objectForKeyedSubscript:(id)a3;
- (id)objectsAtIndexes:(id)a3;
- (id)objectsForKeys:(id)a3 notFoundMarker:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateKeysAndObjectsAtIndexes:(id)a3 options:(unint64_t)a4 usingBlock:(id)a5;
- (void)enumerateKeysAndObjectsUsingBlock:(id)a3;
- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4;
@end

@implementation EFOrderedDictionary

- (EFOrderedDictionary)init
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFB8]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF20]);
  v5 = [(EFOrderedDictionary *)self _initWithOrderedKeys:v3 objectsByKey:v4];

  return v5;
}

- (id)_initWithOrderedKeys:(id)a3 objectsByKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = EFOrderedDictionary;
  v9 = [(EFOrderedDictionary *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_orderedKeys, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  return p_isa;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [EFMutableOrderedDictionary alloc];
  orderedKeys = self->_orderedKeys;
  objectsByKey = self->_objectsByKey;

  return [(EFMutableOrderedDictionary *)v4 _initWithOrderedKeys:orderedKeys objectsByKey:objectsByKey];
}

- (id)firstObject
{
  objectsByKey = self->_objectsByKey;
  v3 = [(EFOrderedDictionary *)self firstKey];
  v4 = [(NSDictionary *)objectsByKey objectForKeyedSubscript:v3];

  return v4;
}

- (id)lastObject
{
  objectsByKey = self->_objectsByKey;
  v3 = [(EFOrderedDictionary *)self lastKey];
  v4 = [(NSDictionary *)objectsByKey objectForKeyedSubscript:v3];

  return v4;
}

- (NSDictionary)dictionary
{
  v2 = [(NSDictionary *)self->_objectsByKey copy];

  return v2;
}

- (NSOrderedSet)allKeys
{
  v2 = [(NSOrderedSet *)self->_orderedKeys copy];

  return v2;
}

- (NSArray)allValues
{
  v3 = [(NSOrderedSet *)self->_orderedKeys array];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__EFOrderedDictionary_allValues__block_invoke;
  v6[3] = &unk_1E8249910;
  v6[4] = self;
  v4 = [v3 ef_map:v6];

  return v4;
}

id __32__EFOrderedDictionary_allValues__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:a2];

  return v2;
}

- (id)objectAtIndexedSubscript:(unint64_t)a3
{
  objectsByKey = self->_objectsByKey;
  v4 = [(NSOrderedSet *)self->_orderedKeys objectAtIndexedSubscript:a3];
  v5 = [(NSDictionary *)objectsByKey objectForKeyedSubscript:v4];

  return v5;
}

- (id)objectForKey:(id)a3
{
  v3 = [(EFOrderedDictionary *)self objectForKeyedSubscript:a3];

  return v3;
}

- (id)objectForKeyedSubscript:(id)a3
{
  v3 = [(NSDictionary *)self->_objectsByKey objectForKeyedSubscript:a3];

  return v3;
}

- (id)objectsAtIndexes:(id)a3
{
  v4 = [(NSOrderedSet *)self->_orderedKeys objectsAtIndexes:a3];
  v5 = [MEMORY[0x1E695DFB0] null];
  v6 = [(EFOrderedDictionary *)self objectsForKeys:v4 notFoundMarker:v5];

  return v6;
}

- (id)objectsForKeys:(id)a3 notFoundMarker:(id)a4
{
  v4 = [(NSDictionary *)self->_objectsByKey objectsForKeys:a3 notFoundMarker:a4];

  return v4;
}

- (void)enumerateKeysAndObjectsUsingBlock:(id)a3
{
  v4 = a3;
  orderedKeys = self->_orderedKeys;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__EFOrderedDictionary_enumerateKeysAndObjectsUsingBlock___block_invoke;
  v7[3] = &unk_1E8249938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NSOrderedSet *)orderedKeys enumerateObjectsUsingBlock:v7];
}

void __57__EFOrderedDictionary_enumerateKeysAndObjectsUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = *(a1 + 40);
  v10 = v7;
  v9 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:?];
  (*(v8 + 16))(v8, a3, v10, v9, a4);
}

- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  orderedKeys = self->_orderedKeys;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__EFOrderedDictionary_enumerateKeysAndObjectsWithOptions_usingBlock___block_invoke;
  v9[3] = &unk_1E8249938;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [(NSOrderedSet *)orderedKeys enumerateObjectsWithOptions:a3 usingBlock:v9];
}

void __69__EFOrderedDictionary_enumerateKeysAndObjectsWithOptions_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = *(a1 + 40);
  v10 = v7;
  v9 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:?];
  (*(v8 + 16))(v8, a3, v10, v9, a4);
}

- (void)enumerateKeysAndObjectsAtIndexes:(id)a3 options:(unint64_t)a4 usingBlock:(id)a5
{
  v8 = a5;
  orderedKeys = self->_orderedKeys;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__EFOrderedDictionary_enumerateKeysAndObjectsAtIndexes_options_usingBlock___block_invoke;
  v11[3] = &unk_1E8249938;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [(NSOrderedSet *)orderedKeys enumerateObjectsAtIndexes:a3 options:a4 usingBlock:v11];
}

void __75__EFOrderedDictionary_enumerateKeysAndObjectsAtIndexes_options_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = *(a1 + 40);
  v10 = v7;
  v9 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:?];
  (*(v8 + 16))(v8, a3, v10, v9, a4);
}

- (EFOrderedDictionary)initWithCoder:(id)a3
{
  v30 = a3;
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v3 setWithObjects:{v4, v5, v6, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
  v28 = [v30 decodeObjectOfClasses:v13 forKey:@"EFPropertyKey_orderedKeys"];

  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = [v14 setWithObjects:{v15, v16, v17, v18, v19, v20, v21, v22, v23, objc_opt_class(), 0}];
  v25 = [v30 decodeObjectOfClasses:v24 forKey:@"EFPropertyKey_objectsByKey"];

  v26 = [(EFOrderedDictionary *)self _initWithOrderedKeys:v28 objectsByKey:v25];
  return v26;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_orderedKeys forKey:@"EFPropertyKey_orderedKeys"];
  [v4 encodeObject:self->_objectsByKey forKey:@"EFPropertyKey_objectsByKey"];
}

@end