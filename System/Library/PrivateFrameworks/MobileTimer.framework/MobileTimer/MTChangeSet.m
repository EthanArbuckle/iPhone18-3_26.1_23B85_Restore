@interface MTChangeSet
+ (id)changeSetWithChangesFromObject:(id)a3 toObject:(id)a4 inProperties:(id)a5;
+ (id)dictionaryFromChanges:(id)a3;
- (BOOL)_isEqualToChangeSet:(id)a3 checkOriginalValues:(BOOL)a4;
- (BOOL)hasChangesInCommonWithChangeSet:(id)a3;
- (MTChangeSet)initWithChangeDictionary:(id)a3;
- (MTChangeSet)initWithChanges:(id)a3;
- (id)_deserializer;
- (id)changeSetByAddingChangeSet:(id)a3;
- (id)changedValueForProperty:(id)a3 hasProperty:(BOOL *)a4;
- (id)description;
- (id)deserializedChangedValueForProperty:(id)a3 hasProperty:(BOOL *)a4;
@end

@implementation MTChangeSet

+ (id)dictionaryFromChanges:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__MTChangeSet_dictionaryFromChanges___block_invoke;
  v7[3] = &unk_1E7B0ED40;
  v5 = v4;
  v8 = v5;
  [v3 na_each:v7];

  return v5;
}

void __37__MTChangeSet_dictionaryFromChanges___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 property];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

- (MTChangeSet)initWithChanges:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() dictionaryFromChanges:v4];

  v6 = [(MTChangeSet *)self initWithChangeDictionary:v5];
  return v6;
}

- (MTChangeSet)initWithChangeDictionary:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = MTChangeSet;
  v6 = [(MTChangeSet *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_changeDictionary, a3);
    v8 = MEMORY[0x1E695DFD8];
    v9 = [v5 allKeys];
    v10 = [v8 setWithArray:v9];
    changedProperties = v7->_changedProperties;
    v7->_changedProperties = v10;
  }

  return v7;
}

- (BOOL)_isEqualToChangeSet:(id)a3 checkOriginalValues:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (self == v6)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v4)
      {
        v7 = [(MTChangeSet *)self changeDictionary];
        v8 = [(MTChangeSet *)v6 changeDictionary];
        v9 = [v7 isEqualToDictionary:v8];
      }

      else
      {
        v7 = [(MTChangeSet *)self changedProperties];
        v8 = [(MTChangeSet *)v6 changedProperties];
        if ([v7 isEqualToSet:v8])
        {
          v10 = [(MTChangeSet *)self changeDictionary];
          v11 = [v10 allKeys];
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __55__MTChangeSet__isEqualToChangeSet_checkOriginalValues___block_invoke;
          v13[3] = &unk_1E7B0ED68;
          v13[4] = self;
          v14 = v6;
          v9 = [v11 na_all:v13];
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

uint64_t __55__MTChangeSet__isEqualToChangeSet_checkOriginalValues___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 changeDictionary];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [*(a1 + 40) changeDictionary];
  v8 = [v7 objectForKeyedSubscript:v4];

  v9 = [v6 changedValue];
  v10 = [v8 changedValue];
  v11 = [v9 isEqual:v10];

  return v11;
}

- (id)changeSetByAddingChangeSet:(id)a3
{
  v4 = a3;
  v5 = [(MTChangeSet *)self changeDictionary];
  v6 = [v5 mutableCopy];

  v7 = [v4 changeDictionary];

  [v6 addEntriesFromDictionary:v7];
  v8 = [(MTChangeSet *)self initWithChangeDictionary:v6];

  return v8;
}

+ (id)changeSetWithChangesFromObject:(id)a3 toObject:(id)a4 inProperties:(id)a5
{
  v57 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v43 = a1;
    v11 = objc_opt_new();
    v46 = v8;
    [v11 encodeObject:v8 forKey:@"fromObject"];
    v45 = v9;
    [v11 encodeObject:v9 forKey:@"toObject"];
    v44 = v11;
    v12 = [v11 encodedDictionary];
    v13 = [v12 objectForKeyedSubscript:@"fromObject"];
    v42 = v12;
    v14 = [v12 objectForKeyedSubscript:@"toObject"];
    v41 = v13;
    v15 = [MTStorageReader _unwrap:v13];
    v40 = v14;
    v16 = [MTStorageReader _unwrap:v14];
    v17 = objc_opt_new();
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v18 = v15;
    v19 = [v18 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v52;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v52 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v51 + 1) + 8 * i);
          if (!v10 || [v10 containsObject:*(*(&v51 + 1) + 8 * i)])
          {
            v24 = [v18 objectForKeyedSubscript:v23];
            v25 = [v16 objectForKeyedSubscript:v23];
            v26 = v25;
            if (v25 != v24 && ([v25 isEqual:v24] & 1) == 0)
            {
              v27 = [[MTChange alloc] initWithProperty:v23 changedValue:v26 originalValue:v24];
              [v17 addObject:v27];
            }
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v20);
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v28 = v16;
    v29 = [v28 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v48;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v48 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v47 + 1) + 8 * j);
          if (!v10 || [v10 containsObject:*(*(&v47 + 1) + 8 * j)])
          {
            v34 = [v18 objectForKeyedSubscript:v33];

            if (!v34)
            {
              v35 = [v28 objectForKeyedSubscript:v33];
              v36 = [[MTChange alloc] initWithProperty:v33 changedValue:v35 originalValue:0];
              [v17 addObject:v36];
            }
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v30);
    }

    v37 = [[v43 alloc] initWithChanges:v17];
    v9 = v45;
    v8 = v46;
  }

  else
  {
    v37 = 0;
  }

  v38 = *MEMORY[0x1E69E9840];

  return v37;
}

- (BOOL)hasChangesInCommonWithChangeSet:(id)a3
{
  changedProperties = self->_changedProperties;
  v4 = [a3 changedProperties];
  LOBYTE(changedProperties) = [(NSSet *)changedProperties intersectsSet:v4];

  return changedProperties;
}

- (id)changedValueForProperty:(id)a3 hasProperty:(BOOL *)a4
{
  v5 = [(NSDictionary *)self->_changeDictionary objectForKeyedSubscript:a3];
  v6 = v5;
  if (a4)
  {
    *a4 = v5 != 0;
  }

  if (v5)
  {
    v7 = [v5 changedValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)deserializedChangedValueForProperty:(id)a3 hasProperty:(BOOL *)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(MTChangeSet *)self changedValueForProperty:v6 hasProperty:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [MTDictionaryDeserializer alloc];
    v14 = v6;
    v15[0] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v10 = [(MTStorageReader *)v8 initWithEncodedDictionary:v9];

    v11 = [(MTStorageReader *)v10 decodeObjectForKey:v6];
  }

  else
  {
    v11 = v7;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_deserializer
{
  v3 = [MTDictionaryDeserializer alloc];
  v4 = [(NSDictionary *)self->_changeDictionary na_dictionaryByMappingValues:&__block_literal_global_31];
  v5 = [(MTStorageReader *)v3 initWithEncodedDictionary:v4];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MTChangeSet *)self changes];
  v6 = [v3 stringWithFormat:@"<%@:%p %@ >", v4, self, v5];

  return v6;
}

@end