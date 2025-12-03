@interface CNMultiDictionary
+ (id)multiDictionary;
+ (id)multiDictionaryWithEntries:(id)entries;
+ (id)multiDictionaryWithObject:(id)object forKey:(id)key;
- (BOOL)containsKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (CNMultiDictionary)initWithEntries:(id)entries;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectsForKey:(id)key;
- (id)objectsForKeys:(id)keys;
- (unint64_t)count;
- (unint64_t)hash;
- (void)eachObject:(id)object;
@end

@implementation CNMultiDictionary

+ (id)multiDictionary
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    if (multiDictionary_cn_once_token_1 != -1)
    {
      +[CNMultiDictionary multiDictionary];
    }

    v4 = multiDictionary_cn_once_object_1;
  }

  else
  {
    v4 = objc_alloc_init(self);
  }

  return v4;
}

- (unint64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  entries = self->_entries;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26__CNMultiDictionary_count__block_invoke;
  v5[3] = &unk_1E6ED7778;
  v5[4] = &v6;
  [(NSMutableDictionary *)entries enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __26__CNMultiDictionary_count__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 count];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t __36__CNMultiDictionary_multiDictionary__block_invoke()
{
  v0 = objc_alloc_init(CNMultiDictionary);
  v1 = multiDictionary_cn_once_object_1;
  multiDictionary_cn_once_object_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)multiDictionaryWithObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  v7 = objc_alloc_init(CNMutableMultiDictionary);
  [(CNMutableMultiDictionary *)v7 addObject:objectCopy forKey:keyCopy];

  return v7;
}

+ (id)multiDictionaryWithEntries:(id)entries
{
  entriesCopy = entries;
  v5 = [[self alloc] initWithEntries:entriesCopy];

  return v5;
}

- (CNMultiDictionary)initWithEntries:(id)entries
{
  entriesCopy = entries;
  v10.receiver = self;
  v10.super_class = CNMultiDictionary;
  v5 = [(CNMultiDictionary *)&v10 init];
  if (v5)
  {
    v6 = [entriesCopy mutableCopy];
    entries = v5->_entries;
    v5->_entries = v6;

    v8 = v5;
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CNMutableMultiDictionary alloc];
  entries = self->_entries;

  return [(CNMultiDictionary *)v4 initWithEntries:entries];
}

- (id)objectsForKey:(id)key
{
  array = [(NSMutableDictionary *)self->_entries objectForKey:key];
  if (!array)
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  return array;
}

- (id)objectsForKeys:(id)keys
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__CNMultiDictionary_objectsForKeys___block_invoke;
  v6[3] = &unk_1E6ED5FE0;
  v6[4] = self;
  v3 = [keys _cn_map:v6];
  v4 = [v3 _cn_filter:&__block_literal_global_7_2];

  return v4;
}

id __36__CNMultiDictionary_objectsForKeys___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsKey:v3])
  {
    v4 = [*(a1 + 32) objectsForKey:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)containsKey:(id)key
{
  v3 = [(NSMutableDictionary *)self->_entries objectForKey:key];
  v4 = v3 != 0;

  return v4;
}

- (void)eachObject:(id)object
{
  objectCopy = object;
  entries = self->_entries;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__CNMultiDictionary_eachObject___block_invoke;
  v7[3] = &unk_1E6ED77A0;
  v8 = objectCopy;
  v6 = objectCopy;
  [(NSMutableDictionary *)entries enumerateKeysAndObjectsUsingBlock:v7];
}

void __32__CNMultiDictionary_eachObject___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __32__CNMultiDictionary_eachObject___block_invoke_2;
  v8[3] = &unk_1E6ED5670;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  [a3 enumerateObjectsUsingBlock:v8];
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [(NSMutableDictionary *)self->_entries copy];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __29__CNMultiDictionary_isEqual___block_invoke;
  v8[3] = &unk_1E6ED60C8;
  v8[4] = self;
  v9 = equalCopy;
  v6 = equalCopy;
  LOBYTE(self) = [CNEqualsBuilder isObject:v6 kindOfClass:v5 andEqualToObject:self withBlocks:v8, 0];

  return self;
}

- (unint64_t)hash
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __25__CNMultiDictionary_hash__block_invoke;
  v3[3] = &unk_1E6ED5F00;
  v3[4] = self;
  return [CNHashBuilder hashWithBlocks:v3, 0];
}

- (id)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [v3 appendNamesAndObjects:{@"entries", self->_entries, 0}];
  build = [v3 build];

  return build;
}

@end