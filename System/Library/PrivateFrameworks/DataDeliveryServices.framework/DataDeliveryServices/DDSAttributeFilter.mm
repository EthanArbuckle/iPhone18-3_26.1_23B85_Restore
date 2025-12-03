@interface DDSAttributeFilter
+ (id)attributeFilter;
+ (id)attributeFilterWithDictionary:(id)dictionary;
+ (unint64_t)hashDictionary:(id)dictionary;
+ (unint64_t)hashObject:(id)object;
+ (unint64_t)hashSet:(id)set;
- (BOOL)doesContainAttributes:(id)attributes;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToQueryFilter:(id)filter;
- (DDSAttributeFilter)initWithCoder:(id)coder;
- (DDSAttributeFilter)initWithDictionary:(id)dictionary;
- (id)_setForKey:(id)key;
- (id)allowedValuesForKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dumpDescription;
- (id)entriesMatchingAttributes:(id)attributes;
- (unint64_t)hash;
- (void)addAllowedValue:(id)value forKey:(id)key;
- (void)addAllowedValues:(id)values forKey:(id)key;
- (void)addEntriesFromFilter:(id)filter;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateAllowedValuesAndKeys:(id)keys;
- (void)removeAllowedValue:(id)value forKey:(id)key;
- (void)removeAllowedValues:(id)values forKey:(id)key;
@end

@implementation DDSAttributeFilter

+ (id)attributeFilter
{
  v2 = [self alloc];
  v3 = [v2 initWithDictionary:MEMORY[0x1E695E0F8]];

  return v3;
}

- (unint64_t)hash
{
  v3 = objc_opt_class();
  filters = [(DDSAttributeFilter *)self filters];
  v5 = [v3 hashObject:filters];

  return v5;
}

- (id)description
{
  if (DDS_LOG_REDACTED())
  {
    v3 = MEMORY[0x1E696AEC0];
    filters = [(DDSAttributeFilter *)self filters];
    [v3 stringWithFormat:@"<filter: %@>", filters];
  }

  else
  {
    filters2 = [(DDSAttributeFilter *)self filters];
    filters = [filters2 mutableCopy];

    v6 = [filters objectForKey:@"AssetRegion"];

    if (v6)
    {
      v7 = [MEMORY[0x1E695DFD8] setWithObject:@"<redacted>"];
      [filters setObject:v7 forKey:@"AssetRegion"];
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"<filter: %@>", filters];
  }
  v8 = ;

  return v8;
}

+ (id)attributeFilterWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [[self alloc] initWithDictionary:dictionaryCopy];

  return v5;
}

- (DDSAttributeFilter)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = DDSAttributeFilter;
  v5 = [(DDSAttributeFilter *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy mutableCopy];
    filters = v5->_filters;
    v5->_filters = v6;
  }

  return v5;
}

- (id)allowedValuesForKey:(id)key
{
  keyCopy = key;
  filters = [(DDSAttributeFilter *)self filters];
  v6 = [filters objectForKey:keyCopy];

  return v6;
}

- (void)enumerateAllowedValuesAndKeys:(id)keys
{
  keysCopy = keys;
  if (keysCopy)
  {
    filters = [(DDSAttributeFilter *)self filters];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __52__DDSAttributeFilter_enumerateAllowedValuesAndKeys___block_invoke;
    v6[3] = &unk_1E86C5D78;
    v7 = keysCopy;
    [filters enumerateKeysAndObjectsUsingBlock:v6];
  }
}

- (id)_setForKey:(id)key
{
  keyCopy = key;
  filters = [(DDSAttributeFilter *)self filters];
  v6 = [filters objectForKey:keyCopy];

  if (!v6)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    filters2 = [(DDSAttributeFilter *)self filters];
    [filters2 setObject:v6 forKey:keyCopy];
  }

  return v6;
}

- (void)addEntriesFromFilter:(id)filter
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__DDSAttributeFilter_addEntriesFromFilter___block_invoke;
  v3[3] = &unk_1E86C5DA0;
  v3[4] = self;
  [filter enumerateAllowedValuesAndKeys:v3];
}

- (id)entriesMatchingAttributes:(id)attributes
{
  attributesCopy = attributes;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__DDSAttributeFilter_entriesMatchingAttributes___block_invoke;
  v11[3] = &unk_1E86C5DC8;
  v12 = attributesCopy;
  v6 = dictionary;
  v13 = v6;
  v7 = attributesCopy;
  [(DDSAttributeFilter *)self enumerateAllowedValuesAndKeys:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

void __48__DDSAttributeFilter_entriesMatchingAttributes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:v8];
  LODWORD(v5) = [v6 containsObject:v7];

  if (v5)
  {
    [*(a1 + 40) setObject:v7 forKey:v8];
  }
}

- (BOOL)doesContainAttributes:(id)attributes
{
  attributesCopy = attributes;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__DDSAttributeFilter_doesContainAttributes___block_invoke;
  v6[3] = &unk_1E86C5DF0;
  v6[4] = self;
  v6[5] = &v7;
  [attributesCopy enumerateKeysAndObjectsUsingBlock:v6];
  LOBYTE(self) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return self;
}

void __44__DDSAttributeFilter_doesContainAttributes___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = [*(a1 + 32) allowedValuesForKey:a2];
  v8 = v7;
  if (!v7 || ([v7 containsObject:v9] & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (void)addAllowedValue:(id)value forKey:(id)key
{
  if (value)
  {
    valueCopy = value;
    v7 = [(DDSAttributeFilter *)self _setForKey:key];
    [v7 addObject:valueCopy];
  }
}

- (void)addAllowedValues:(id)values forKey:(id)key
{
  valuesCopy = values;
  keyCopy = key;
  if ([valuesCopy count])
  {
    v7 = [(DDSAttributeFilter *)self _setForKey:keyCopy];
    [v7 unionSet:valuesCopy];
  }
}

- (void)removeAllowedValue:(id)value forKey:(id)key
{
  if (value)
  {
    valueCopy = value;
    v7 = [(DDSAttributeFilter *)self _setForKey:key];
    [v7 removeObject:valueCopy];
  }
}

- (void)removeAllowedValues:(id)values forKey:(id)key
{
  valuesCopy = values;
  keyCopy = key;
  if ([valuesCopy count])
  {
    v7 = [(DDSAttributeFilter *)self _setForKey:keyCopy];
    [v7 minusSet:valuesCopy];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DDSAttributeFilter alloc];
  filters = [(DDSAttributeFilter *)self filters];
  v6 = [filters copy];
  v7 = [(DDSAttributeFilter *)v4 initWithDictionary:v6];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  filters = [(DDSAttributeFilter *)self filters];
  v5 = NSStringFromSelector(sel_filters);
  [coderCopy encodeObject:filters forKey:v5];
}

- (DDSAttributeFilter)initWithCoder:(id)coder
{
  v20[3] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = DDSAttributeFilter;
  v5 = [(DDSAttributeFilter *)&v19 init];
  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v20[2] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
    v9 = [v7 setWithArray:v8];

    v10 = NSStringFromSelector(sel_filters);
    v18 = 0;
    v11 = [coderCopy decodeTopLevelObjectOfClasses:v9 forKey:v10 error:&v18];
    v12 = v18;
    filters = v5->_filters;
    v5->_filters = v11;

    v6 = v5;
    if (v12)
    {
      v14 = DefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(DDSAttributeFilter *)sel_filters initWithCoder:v14];
      }

      v6 = 0;
    }
  }

  v15 = v6;

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)dumpDescription
{
  if (DDS_IS_INTERNAL_INSTALL())
  {
    v3 = MEMORY[0x1E696AEC0];
    filters = [(DDSAttributeFilter *)self filters];
    v5 = [v3 stringWithFormat:@"<filter: %@>", filters];
  }

  else
  {
    v5 = &stru_1F5ABCB80;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(DDSAttributeFilter *)self isEqualToQueryFilter:equalCopy];

  return v5;
}

- (BOOL)isEqualToQueryFilter:(id)filter
{
  filterCopy = filter;
  filters = [(DDSAttributeFilter *)self filters];
  filters2 = [filterCopy filters];

  LOBYTE(filterCopy) = DDSObjectsAreEqualOrNil(filters, filters2);
  return filterCopy;
}

+ (unint64_t)hashObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_opt_class() hashDictionary:objectCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [objc_opt_class() hashSet:objectCopy];
    }

    else
    {
      v4 = [objectCopy hash];
    }
  }

  if (v4)
  {
    v5 = 57097 * v4;
  }

  else
  {
    v5 = 0x1A2CCD34BLL;
  }

  return v5;
}

+ (unint64_t)hashDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 65537;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__DDSAttributeFilter_hashDictionary___block_invoke;
  v7[3] = &unk_1E86C5E18;
  v7[4] = &v8;
  v7[5] = self;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v7];
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __37__DDSAttributeFilter_hashDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = *(*(*(a1 + 32) + 8) + 24);
  v7 = a3;
  v8 = a2;
  v9 = [objc_opt_class() hashObject:v8];

  v10 = *(a1 + 40);
  v11 = [objc_opt_class() hashObject:v7];

  *(*(*(a1 + 32) + 8) + 24) = v9 * v6 * v11;
}

+ (unint64_t)hashSet:(id)set
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = 77239;
  setCopy = set;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [setCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(setCopy);
        }

        v3 *= [objc_opt_class() hashObject:*(*(&v11 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [setCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)initWithCoder:(const char *)a1 .cold.1(const char *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(a1);
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_1DF7C6000, a2, OS_LOG_TYPE_ERROR, "Error decoding object for key %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end