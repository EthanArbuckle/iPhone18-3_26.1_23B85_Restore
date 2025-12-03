@interface MTChangeSet
+ (id)changeSetWithChangesFromObject:(id)object toObject:(id)toObject inProperties:(id)properties;
+ (id)dictionaryFromChanges:(id)changes;
- (BOOL)_isEqualToChangeSet:(id)set checkOriginalValues:(BOOL)values;
- (BOOL)hasChangesInCommonWithChangeSet:(id)set;
- (MTChangeSet)initWithChangeDictionary:(id)dictionary;
- (MTChangeSet)initWithChanges:(id)changes;
- (id)_deserializer;
- (id)changeSetByAddingChangeSet:(id)set;
- (id)changedValueForProperty:(id)property hasProperty:(BOOL *)hasProperty;
- (id)description;
- (id)deserializedChangedValueForProperty:(id)property hasProperty:(BOOL *)hasProperty;
@end

@implementation MTChangeSet

+ (id)dictionaryFromChanges:(id)changes
{
  changesCopy = changes;
  v4 = objc_opt_new();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__MTChangeSet_dictionaryFromChanges___block_invoke;
  v7[3] = &unk_1E7B0ED40;
  v5 = v4;
  v8 = v5;
  [changesCopy na_each:v7];

  return v5;
}

void __37__MTChangeSet_dictionaryFromChanges___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 property];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

- (MTChangeSet)initWithChanges:(id)changes
{
  changesCopy = changes;
  v5 = [objc_opt_class() dictionaryFromChanges:changesCopy];

  v6 = [(MTChangeSet *)self initWithChangeDictionary:v5];
  return v6;
}

- (MTChangeSet)initWithChangeDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = MTChangeSet;
  v6 = [(MTChangeSet *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_changeDictionary, dictionary);
    v8 = MEMORY[0x1E695DFD8];
    allKeys = [dictionaryCopy allKeys];
    v10 = [v8 setWithArray:allKeys];
    changedProperties = v7->_changedProperties;
    v7->_changedProperties = v10;
  }

  return v7;
}

- (BOOL)_isEqualToChangeSet:(id)set checkOriginalValues:(BOOL)values
{
  valuesCopy = values;
  setCopy = set;
  if (self == setCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (valuesCopy)
      {
        changeDictionary = [(MTChangeSet *)self changeDictionary];
        changeDictionary2 = [(MTChangeSet *)setCopy changeDictionary];
        v9 = [changeDictionary isEqualToDictionary:changeDictionary2];
      }

      else
      {
        changeDictionary = [(MTChangeSet *)self changedProperties];
        changeDictionary2 = [(MTChangeSet *)setCopy changedProperties];
        if ([changeDictionary isEqualToSet:changeDictionary2])
        {
          changeDictionary3 = [(MTChangeSet *)self changeDictionary];
          allKeys = [changeDictionary3 allKeys];
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __55__MTChangeSet__isEqualToChangeSet_checkOriginalValues___block_invoke;
          v13[3] = &unk_1E7B0ED68;
          v13[4] = self;
          v14 = setCopy;
          v9 = [allKeys na_all:v13];
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

- (id)changeSetByAddingChangeSet:(id)set
{
  setCopy = set;
  changeDictionary = [(MTChangeSet *)self changeDictionary];
  v6 = [changeDictionary mutableCopy];

  changeDictionary2 = [setCopy changeDictionary];

  [v6 addEntriesFromDictionary:changeDictionary2];
  v8 = [(MTChangeSet *)self initWithChangeDictionary:v6];

  return v8;
}

+ (id)changeSetWithChangesFromObject:(id)object toObject:(id)toObject inProperties:(id)properties
{
  v57 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  toObjectCopy = toObject;
  propertiesCopy = properties;
  if (toObjectCopy)
  {
    selfCopy = self;
    v11 = objc_opt_new();
    v46 = objectCopy;
    [v11 encodeObject:objectCopy forKey:@"fromObject"];
    v45 = toObjectCopy;
    [v11 encodeObject:toObjectCopy forKey:@"toObject"];
    v44 = v11;
    encodedDictionary = [v11 encodedDictionary];
    v13 = [encodedDictionary objectForKeyedSubscript:@"fromObject"];
    v42 = encodedDictionary;
    v14 = [encodedDictionary objectForKeyedSubscript:@"toObject"];
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
          if (!propertiesCopy || [propertiesCopy containsObject:*(*(&v51 + 1) + 8 * i)])
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
          if (!propertiesCopy || [propertiesCopy containsObject:*(*(&v47 + 1) + 8 * j)])
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

    v37 = [[selfCopy alloc] initWithChanges:v17];
    toObjectCopy = v45;
    objectCopy = v46;
  }

  else
  {
    v37 = 0;
  }

  v38 = *MEMORY[0x1E69E9840];

  return v37;
}

- (BOOL)hasChangesInCommonWithChangeSet:(id)set
{
  changedProperties = self->_changedProperties;
  changedProperties = [set changedProperties];
  LOBYTE(changedProperties) = [(NSSet *)changedProperties intersectsSet:changedProperties];

  return changedProperties;
}

- (id)changedValueForProperty:(id)property hasProperty:(BOOL *)hasProperty
{
  v5 = [(NSDictionary *)self->_changeDictionary objectForKeyedSubscript:property];
  v6 = v5;
  if (hasProperty)
  {
    *hasProperty = v5 != 0;
  }

  if (v5)
  {
    changedValue = [v5 changedValue];
  }

  else
  {
    changedValue = 0;
  }

  return changedValue;
}

- (id)deserializedChangedValueForProperty:(id)property hasProperty:(BOOL *)hasProperty
{
  v15[1] = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  v7 = [(MTChangeSet *)self changedValueForProperty:propertyCopy hasProperty:hasProperty];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [MTDictionaryDeserializer alloc];
    v14 = propertyCopy;
    v15[0] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v10 = [(MTStorageReader *)v8 initWithEncodedDictionary:v9];

    v11 = [(MTStorageReader *)v10 decodeObjectForKey:propertyCopy];
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
  changes = [(MTChangeSet *)self changes];
  v6 = [v3 stringWithFormat:@"<%@:%p %@ >", v4, self, changes];

  return v6;
}

@end