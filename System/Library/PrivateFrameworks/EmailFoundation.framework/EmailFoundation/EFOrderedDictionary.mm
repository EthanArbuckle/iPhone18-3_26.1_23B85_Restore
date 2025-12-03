@interface EFOrderedDictionary
- (EFOrderedDictionary)init;
- (EFOrderedDictionary)initWithCoder:(id)coder;
- (NSArray)allValues;
- (NSDictionary)dictionary;
- (NSOrderedSet)allKeys;
- (id)_initWithOrderedKeys:(id)keys objectsByKey:(id)key;
- (id)firstObject;
- (id)lastObject;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
- (id)objectForKey:(id)key;
- (id)objectForKeyedSubscript:(id)subscript;
- (id)objectsAtIndexes:(id)indexes;
- (id)objectsForKeys:(id)keys notFoundMarker:(id)marker;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateKeysAndObjectsAtIndexes:(id)indexes options:(unint64_t)options usingBlock:(id)block;
- (void)enumerateKeysAndObjectsUsingBlock:(id)block;
- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)options usingBlock:(id)block;
@end

@implementation EFOrderedDictionary

- (EFOrderedDictionary)init
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFB8]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF20]);
  v5 = [(EFOrderedDictionary *)self _initWithOrderedKeys:v3 objectsByKey:v4];

  return v5;
}

- (id)_initWithOrderedKeys:(id)keys objectsByKey:(id)key
{
  keysCopy = keys;
  keyCopy = key;
  v12.receiver = self;
  v12.super_class = EFOrderedDictionary;
  v9 = [(EFOrderedDictionary *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_orderedKeys, keys);
    objc_storeStrong(p_isa + 2, key);
  }

  return p_isa;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [EFMutableOrderedDictionary alloc];
  orderedKeys = self->_orderedKeys;
  objectsByKey = self->_objectsByKey;

  return [(EFMutableOrderedDictionary *)v4 _initWithOrderedKeys:orderedKeys objectsByKey:objectsByKey];
}

- (id)firstObject
{
  objectsByKey = self->_objectsByKey;
  firstKey = [(EFOrderedDictionary *)self firstKey];
  v4 = [(NSDictionary *)objectsByKey objectForKeyedSubscript:firstKey];

  return v4;
}

- (id)lastObject
{
  objectsByKey = self->_objectsByKey;
  lastKey = [(EFOrderedDictionary *)self lastKey];
  v4 = [(NSDictionary *)objectsByKey objectForKeyedSubscript:lastKey];

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
  array = [(NSOrderedSet *)self->_orderedKeys array];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__EFOrderedDictionary_allValues__block_invoke;
  v6[3] = &unk_1E8249910;
  v6[4] = self;
  v4 = [array ef_map:v6];

  return v4;
}

id __32__EFOrderedDictionary_allValues__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:a2];

  return v2;
}

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  objectsByKey = self->_objectsByKey;
  v4 = [(NSOrderedSet *)self->_orderedKeys objectAtIndexedSubscript:subscript];
  v5 = [(NSDictionary *)objectsByKey objectForKeyedSubscript:v4];

  return v5;
}

- (id)objectForKey:(id)key
{
  v3 = [(EFOrderedDictionary *)self objectForKeyedSubscript:key];

  return v3;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  v3 = [(NSDictionary *)self->_objectsByKey objectForKeyedSubscript:subscript];

  return v3;
}

- (id)objectsAtIndexes:(id)indexes
{
  v4 = [(NSOrderedSet *)self->_orderedKeys objectsAtIndexes:indexes];
  null = [MEMORY[0x1E695DFB0] null];
  v6 = [(EFOrderedDictionary *)self objectsForKeys:v4 notFoundMarker:null];

  return v6;
}

- (id)objectsForKeys:(id)keys notFoundMarker:(id)marker
{
  v4 = [(NSDictionary *)self->_objectsByKey objectsForKeys:keys notFoundMarker:marker];

  return v4;
}

- (void)enumerateKeysAndObjectsUsingBlock:(id)block
{
  blockCopy = block;
  orderedKeys = self->_orderedKeys;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__EFOrderedDictionary_enumerateKeysAndObjectsUsingBlock___block_invoke;
  v7[3] = &unk_1E8249938;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
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

- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)options usingBlock:(id)block
{
  blockCopy = block;
  orderedKeys = self->_orderedKeys;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__EFOrderedDictionary_enumerateKeysAndObjectsWithOptions_usingBlock___block_invoke;
  v9[3] = &unk_1E8249938;
  v9[4] = self;
  v10 = blockCopy;
  v8 = blockCopy;
  [(NSOrderedSet *)orderedKeys enumerateObjectsWithOptions:options usingBlock:v9];
}

void __69__EFOrderedDictionary_enumerateKeysAndObjectsWithOptions_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = *(a1 + 40);
  v10 = v7;
  v9 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:?];
  (*(v8 + 16))(v8, a3, v10, v9, a4);
}

- (void)enumerateKeysAndObjectsAtIndexes:(id)indexes options:(unint64_t)options usingBlock:(id)block
{
  blockCopy = block;
  orderedKeys = self->_orderedKeys;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__EFOrderedDictionary_enumerateKeysAndObjectsAtIndexes_options_usingBlock___block_invoke;
  v11[3] = &unk_1E8249938;
  v11[4] = self;
  v12 = blockCopy;
  v10 = blockCopy;
  [(NSOrderedSet *)orderedKeys enumerateObjectsAtIndexes:indexes options:options usingBlock:v11];
}

void __75__EFOrderedDictionary_enumerateKeysAndObjectsAtIndexes_options_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = *(a1 + 40);
  v10 = v7;
  v9 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:?];
  (*(v8 + 16))(v8, a3, v10, v9, a4);
}

- (EFOrderedDictionary)initWithCoder:(id)coder
{
  coderCopy = coder;
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
  v28 = [coderCopy decodeObjectOfClasses:v13 forKey:@"EFPropertyKey_orderedKeys"];

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
  v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"EFPropertyKey_objectsByKey"];

  v26 = [(EFOrderedDictionary *)self _initWithOrderedKeys:v28 objectsByKey:v25];
  return v26;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_orderedKeys forKey:@"EFPropertyKey_orderedKeys"];
  [coderCopy encodeObject:self->_objectsByKey forKey:@"EFPropertyKey_objectsByKey"];
}

@end