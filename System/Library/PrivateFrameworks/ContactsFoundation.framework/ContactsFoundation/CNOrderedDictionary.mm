@interface CNOrderedDictionary
+ (id)dictionaryWithObject:(id)a3 forKey:(id)a4;
+ (id)orderedDictionary;
- (BOOL)isEqual:(id)a3;
- (CNOrderedDictionary)init;
- (NSArray)allKeys;
- (NSArray)allObjects;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)forEach:(id)a3;
@end

@implementation CNOrderedDictionary

+ (id)orderedDictionary
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)dictionaryWithObject:(id)a3 forKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(CNMutableOrderedDictionary);
  [(CNMutableOrderedDictionary *)v7 setObject:v6 forKeyedSubscript:v5];

  return v7;
}

- (CNOrderedDictionary)init
{
  v9.receiver = self;
  v9.super_class = CNOrderedDictionary;
  v2 = [(CNOrderedDictionary *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dictionary = v2->_dictionary;
    v2->_dictionary = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    orderedKeys = v2->_orderedKeys;
    v2->_orderedKeys = v5;

    v7 = v2;
  }

  return v2;
}

- (NSArray)allKeys
{
  v2 = [(NSMutableArray *)self->_orderedKeys copy];

  return v2;
}

- (NSArray)allObjects
{
  orderedKeys = self->_orderedKeys;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__CNOrderedDictionary_allObjects__block_invoke;
  v5[3] = &unk_1E6ED5FE0;
  v5[4] = self;
  v3 = [(NSMutableArray *)orderedKeys _cn_map:v5];

  return v3;
}

- (void)forEach:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self;
  v6 = [(CNOrderedDictionary *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)v5->_dictionary objectForKeyedSubscript:v10, v13];
        v4[2](v4, v10, v11);
      }

      v7 = [(CNOrderedDictionary *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CNMutableOrderedDictionary alloc];
  dictionary = self->_dictionary;
  orderedKeys = self->_orderedKeys;

  return [(CNMutableOrderedDictionary *)v4 initWithDictionary:dictionary orderedKeys:orderedKeys];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __31__CNOrderedDictionary_isEqual___block_invoke;
  v15[3] = &unk_1E6ED60C8;
  v15[4] = self;
  v16 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __31__CNOrderedDictionary_isEqual___block_invoke_2;
  v12 = &unk_1E6ED60C8;
  v13 = self;
  v14 = v4;
  v6 = v4;
  v7 = _Block_copy(&aBlock);
  LOBYTE(self) = [CNEqualsBuilder isObject:v6 kindOfClass:v5 andEqualToObject:self withBlocks:v15, v7, 0, aBlock, v10, v11, v12, v13];

  return self;
}

- (unint64_t)hash
{
  aBlock[4] = self;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__CNOrderedDictionary_hash__block_invoke;
  v6[3] = &unk_1E6ED5F00;
  v6[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __27__CNOrderedDictionary_hash__block_invoke_2;
  aBlock[3] = &unk_1E6ED5F00;
  v2 = _Block_copy(aBlock);
  v3 = [CNHashBuilder hashWithBlocks:v6, v2, 0];

  return v3;
}

- (id)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [v3 appendNamesAndObjects:{@"Dictionary", self->_dictionary, 0}];
  v5 = [v3 appendNamesAndObjects:{@"Ordered Keys", self->_orderedKeys, 0}];
  v6 = [v3 build];

  return v6;
}

@end