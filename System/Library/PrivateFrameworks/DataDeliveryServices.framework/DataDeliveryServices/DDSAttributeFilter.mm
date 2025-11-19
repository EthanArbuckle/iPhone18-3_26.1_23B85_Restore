@interface DDSAttributeFilter
+ (id)attributeFilter;
+ (id)attributeFilterWithDictionary:(id)a3;
+ (unint64_t)hashDictionary:(id)a3;
+ (unint64_t)hashObject:(id)a3;
+ (unint64_t)hashSet:(id)a3;
- (BOOL)doesContainAttributes:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToQueryFilter:(id)a3;
- (DDSAttributeFilter)initWithCoder:(id)a3;
- (DDSAttributeFilter)initWithDictionary:(id)a3;
- (id)_setForKey:(id)a3;
- (id)allowedValuesForKey:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dumpDescription;
- (id)entriesMatchingAttributes:(id)a3;
- (unint64_t)hash;
- (void)addAllowedValue:(id)a3 forKey:(id)a4;
- (void)addAllowedValues:(id)a3 forKey:(id)a4;
- (void)addEntriesFromFilter:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateAllowedValuesAndKeys:(id)a3;
- (void)removeAllowedValue:(id)a3 forKey:(id)a4;
- (void)removeAllowedValues:(id)a3 forKey:(id)a4;
@end

@implementation DDSAttributeFilter

+ (id)attributeFilter
{
  v2 = [a1 alloc];
  v3 = [v2 initWithDictionary:MEMORY[0x1E695E0F8]];

  return v3;
}

- (unint64_t)hash
{
  v3 = objc_opt_class();
  v4 = [(DDSAttributeFilter *)self filters];
  v5 = [v3 hashObject:v4];

  return v5;
}

- (id)description
{
  if (DDS_LOG_REDACTED())
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [(DDSAttributeFilter *)self filters];
    [v3 stringWithFormat:@"<filter: %@>", v4];
  }

  else
  {
    v5 = [(DDSAttributeFilter *)self filters];
    v4 = [v5 mutableCopy];

    v6 = [v4 objectForKey:@"AssetRegion"];

    if (v6)
    {
      v7 = [MEMORY[0x1E695DFD8] setWithObject:@"<redacted>"];
      [v4 setObject:v7 forKey:@"AssetRegion"];
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"<filter: %@>", v4];
  }
  v8 = ;

  return v8;
}

+ (id)attributeFilterWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDictionary:v4];

  return v5;
}

- (DDSAttributeFilter)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DDSAttributeFilter;
  v5 = [(DDSAttributeFilter *)&v9 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    filters = v5->_filters;
    v5->_filters = v6;
  }

  return v5;
}

- (id)allowedValuesForKey:(id)a3
{
  v4 = a3;
  v5 = [(DDSAttributeFilter *)self filters];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)enumerateAllowedValuesAndKeys:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(DDSAttributeFilter *)self filters];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __52__DDSAttributeFilter_enumerateAllowedValuesAndKeys___block_invoke;
    v6[3] = &unk_1E86C5D78;
    v7 = v4;
    [v5 enumerateKeysAndObjectsUsingBlock:v6];
  }
}

- (id)_setForKey:(id)a3
{
  v4 = a3;
  v5 = [(DDSAttributeFilter *)self filters];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    v7 = [(DDSAttributeFilter *)self filters];
    [v7 setObject:v6 forKey:v4];
  }

  return v6;
}

- (void)addEntriesFromFilter:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__DDSAttributeFilter_addEntriesFromFilter___block_invoke;
  v3[3] = &unk_1E86C5DA0;
  v3[4] = self;
  [a3 enumerateAllowedValuesAndKeys:v3];
}

- (id)entriesMatchingAttributes:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__DDSAttributeFilter_entriesMatchingAttributes___block_invoke;
  v11[3] = &unk_1E86C5DC8;
  v12 = v4;
  v6 = v5;
  v13 = v6;
  v7 = v4;
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

- (BOOL)doesContainAttributes:(id)a3
{
  v4 = a3;
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
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
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

- (void)addAllowedValue:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    v6 = a3;
    v7 = [(DDSAttributeFilter *)self _setForKey:a4];
    [v7 addObject:v6];
  }
}

- (void)addAllowedValues:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([v8 count])
  {
    v7 = [(DDSAttributeFilter *)self _setForKey:v6];
    [v7 unionSet:v8];
  }
}

- (void)removeAllowedValue:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    v6 = a3;
    v7 = [(DDSAttributeFilter *)self _setForKey:a4];
    [v7 removeObject:v6];
  }
}

- (void)removeAllowedValues:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([v8 count])
  {
    v7 = [(DDSAttributeFilter *)self _setForKey:v6];
    [v7 minusSet:v8];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DDSAttributeFilter alloc];
  v5 = [(DDSAttributeFilter *)self filters];
  v6 = [v5 copy];
  v7 = [(DDSAttributeFilter *)v4 initWithDictionary:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(DDSAttributeFilter *)self filters];
  v5 = NSStringFromSelector(sel_filters);
  [v4 encodeObject:v6 forKey:v5];
}

- (DDSAttributeFilter)initWithCoder:(id)a3
{
  v20[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    v11 = [v4 decodeTopLevelObjectOfClasses:v9 forKey:v10 error:&v18];
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
    v4 = [(DDSAttributeFilter *)self filters];
    v5 = [v3 stringWithFormat:@"<filter: %@>", v4];
  }

  else
  {
    v5 = &stru_1F5ABCB80;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(DDSAttributeFilter *)self isEqualToQueryFilter:v4];

  return v5;
}

- (BOOL)isEqualToQueryFilter:(id)a3
{
  v4 = a3;
  v5 = [(DDSAttributeFilter *)self filters];
  v6 = [v4 filters];

  LOBYTE(v4) = DDSObjectsAreEqualOrNil(v5, v6);
  return v4;
}

+ (unint64_t)hashObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_opt_class() hashDictionary:v3];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [objc_opt_class() hashSet:v3];
    }

    else
    {
      v4 = [v3 hash];
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

+ (unint64_t)hashDictionary:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 65537;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__DDSAttributeFilter_hashDictionary___block_invoke;
  v7[3] = &unk_1E86C5E18;
  v7[4] = &v8;
  v7[5] = a1;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];
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

+ (unint64_t)hashSet:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = 77239;
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v3 *= [objc_opt_class() hashObject:*(*(&v11 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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