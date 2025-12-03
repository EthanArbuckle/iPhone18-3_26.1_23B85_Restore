@interface ML3ExportItem
+ (unsigned)allExportPropertyKeysForEntityClass:(Class)class returnedCount:(unsigned int *)count;
- (BOOL)hasValueForProperty:(unsigned int)property;
- (ML3ExportItem)initWithPersistentId:(int64_t)id entityClass:(Class)class propertyKeysToExport:(unsigned int *)export numKeys:(unsigned int)keys library:(id)library;
- (ML3ExportItem)initWithPersistentId:(int64_t)id entityClass:(id)class properties:(id)properties library:(id)library;
- (char)charValueForProperty:(unsigned int)property;
- (id)_allExportPropertyNames;
- (id)_propertyNameForKey:(unsigned int)key;
- (id)_propertyNamesFromKeys:(unsigned int *)keys numKeys:(unsigned int)numKeys;
- (id)stringValueForProperty:(unsigned int)property;
- (id)valueForProperty:(unsigned int)property;
- (int)longValueForProperty:(unsigned int)property;
- (int64_t)longlongValueForProperty:(unsigned int)property;
- (signed)shortValueForProperty:(unsigned int)property;
@end

@implementation ML3ExportItem

- (id)_allExportPropertyNames
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ML3ExportItem__allExportPropertyNames__block_invoke;
  block[3] = &unk_278765FB8;
  block[4] = self;
  if (_allExportPropertyNames___once != -1)
  {
    dispatch_once(&_allExportPropertyNames___once, block);
  }

  v3 = _allExportPropertyNames___allExportPropertyNames;
  v4 = NSStringFromClass(self->_entityClass);
  v5 = [v3 objectForKey:v4];

  return v5;
}

void __40__ML3ExportItem__allExportPropertyNames__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v3 = _allExportPropertyNames___allExportPropertyNames;
  _allExportPropertyNames___allExportPropertyNames = v2;

  v16 = 0;
  v4 = [ML3ExportItem allExportPropertyKeysForEntityClass:objc_opt_class() returnedCount:&v16];
  v5 = [*(a1 + 32) _propertyNamesFromKeys:v4 numKeys:v16];
  v6 = [v5 mutableCopy];

  v7 = _allExportPropertyNames___allExportPropertyNames;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v7 setObject:v6 forKey:v9];

  v10 = [ML3ExportItem allExportPropertyKeysForEntityClass:objc_opt_class() returnedCount:&v16];
  v11 = [*(a1 + 32) _propertyNamesFromKeys:v10 numKeys:v16];
  v12 = [v11 mutableCopy];

  v13 = _allExportPropertyNames___allExportPropertyNames;
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [v13 setObject:v12 forKey:v15];
}

- (id)_propertyNamesFromKeys:(unsigned int *)keys numKeys:(unsigned int)numKeys
{
  if (keys)
  {
    keysCopy = keys;
    numKeysCopy = numKeys;
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:numKeys];
    if (numKeys)
    {
      do
      {
        v9 = *keysCopy++;
        v10 = [(ML3ExportItem *)self _propertyNameForKey:v9];
        if (v10)
        {
          [v8 addObject:v10];
        }

        --numKeysCopy;
      }

      while (numKeysCopy);
    }
  }

  else
  {
    v8 = [(ML3ExportItem *)self _allExportPropertyNames:0];
  }

  return v8;
}

- (id)_propertyNameForKey:(unsigned int)key
{
  if (key > 184549378)
  {
    if (key > 184549407)
    {
      if (key <= 184549409)
      {
        if (key == 184549408)
        {
          v3 = @"store_cloud_id";
        }

        else
        {
          v3 = @"play_order";
        }

        goto LABEL_35;
      }

      if (key == 184549410)
      {
        v3 = @"is_reversed";
        goto LABEL_35;
      }

      if (key == 184549432)
      {
        v3 = 0;
        goto LABEL_36;
      }
    }

    else if (key > 184549396)
    {
      if (key == 184549397)
      {
        v3 = @"smart_is_folder";
        goto LABEL_35;
      }

      if (key == 184549400)
      {
        v3 = @"smart_is_genius";
        goto LABEL_35;
      }
    }

    else
    {
      if (key == 184549379)
      {
        v3 = @"distinguished_kind";
        goto LABEL_35;
      }

      if (key == 184549384)
      {
        v3 = @"name";
        goto LABEL_35;
      }
    }
  }

  else if (key > 167772178)
  {
    if (key > 184549376)
    {
      v3 = @"container_pid";
      goto LABEL_35;
    }

    if (key == 167772179)
    {
      v3 = @"genre_id";
      goto LABEL_35;
    }

    if (key == 167772185)
    {
      v3 = @"album.user_rating";
      goto LABEL_35;
    }
  }

  else
  {
    if (key > 167772176)
    {
      if (key == 167772177)
      {
        v3 = @"album_artist_pid";
      }

      else
      {
        v3 = @"composer_pid";
      }

      goto LABEL_35;
    }

    if (key == 167772175)
    {
      v3 = @"album_pid";
      goto LABEL_35;
    }

    if (key == 167772176)
    {
      v3 = @"item_artist_pid";
LABEL_35:
      v4 = v3;
      goto LABEL_36;
    }
  }

  v3 = ML3TrackRulesGetPropertyNameForKey(HIBYTE(key), *&key);
LABEL_36:

  return v3;
}

- (BOOL)hasValueForProperty:(unsigned int)property
{
  v3 = [(ML3ExportItem *)self valueForProperty:*&property];
  v4 = v3 != 0;

  return v4;
}

- (id)stringValueForProperty:(unsigned int)property
{
  v3 = [(ML3ExportItem *)self valueForProperty:*&property];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = v3;
  }

  else
  {
    stringValue = [v3 stringValue];
  }

  v5 = stringValue;

  return v5;
}

- (int64_t)longlongValueForProperty:(unsigned int)property
{
  v3 = [(ML3ExportItem *)self valueForProperty:*&property];
  longLongValue = [v3 longLongValue];

  return longLongValue;
}

- (int)longValueForProperty:(unsigned int)property
{
  v3 = [(ML3ExportItem *)self valueForProperty:*&property];
  intValue = [v3 intValue];

  return intValue;
}

- (signed)shortValueForProperty:(unsigned int)property
{
  v3 = [(ML3ExportItem *)self valueForProperty:*&property];
  shortValue = [v3 shortValue];

  return shortValue;
}

- (char)charValueForProperty:(unsigned int)property
{
  v3 = [(ML3ExportItem *)self valueForProperty:*&property];
  charValue = [v3 charValue];

  return charValue;
}

- (id)valueForProperty:(unsigned int)property
{
  properties = self->_properties;
  v4 = [(ML3ExportItem *)self _propertyNameForKey:*&property];
  v5 = [(NSDictionary *)properties valueForKey:v4];

  return v5;
}

- (ML3ExportItem)initWithPersistentId:(int64_t)id entityClass:(id)class properties:(id)properties library:(id)library
{
  classCopy = class;
  propertiesCopy = properties;
  libraryCopy = library;
  v17.receiver = self;
  v17.super_class = ML3ExportItem;
  v14 = [(ML3ExportItem *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_entityClass, class);
    v15->_persistentId = id;
    objc_storeStrong(&v15->_properties, properties);
    objc_storeStrong(&v15->_library, library);
  }

  return v15;
}

- (ML3ExportItem)initWithPersistentId:(int64_t)id entityClass:(Class)class propertyKeysToExport:(unsigned int *)export numKeys:(unsigned int)keys library:(id)library
{
  v8 = *&keys;
  libraryCopy = library;
  objc_storeStrong(&self->_entityClass, class);
  objc_storeStrong(&self->_library, library);
  v14 = [(ML3ExportItem *)self _propertyNamesFromKeys:export numKeys:v8];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__7770;
  v30 = __Block_byref_object_dispose__7771;
  v31 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v14, "count")}];
  v15 = [ML3ComparisonPredicate predicateWithProperty:@"ROWID" equalToInt64:id];
  v16 = [(objc_class *)class queryWithLibrary:libraryCopy predicate:v15];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __87__ML3ExportItem_initWithPersistentId_entityClass_propertyKeysToExport_numKeys_library___block_invoke;
  v23 = &unk_278762750;
  v25 = &v26;
  v17 = v14;
  v24 = v17;
  [v16 enumeratePersistentIDsAndProperties:v17 usingBlock:&v20];

  v18 = [(ML3ExportItem *)self initWithPersistentId:id entityClass:class properties:v27[5] library:libraryCopy, v20, v21, v22, v23];
  _Block_object_dispose(&v26, 8);

  return v18;
}

unint64_t __87__ML3ExportItem_initWithPersistentId_entityClass_propertyKeysToExport_numKeys_library___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  [v5 setObject:v6 forKey:@"ROWID"];

  result = [*(a1 + 32) count];
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v9 = *(a3 + 8 * i);
      if (v9)
      {
        v10 = *(*(*(a1 + 40) + 8) + 40);
        v11 = [*(a1 + 32) objectAtIndexedSubscript:i];
        [v10 setObject:v9 forKey:v11];
      }

      result = [*(a1 + 32) count];
    }
  }

  return result;
}

+ (unsigned)allExportPropertyKeysForEntityClass:(Class)class returnedCount:(unsigned int *)count
{
  *count = 0;
  if (objc_opt_class() == class)
  {
    result = &ML3ExportItemAllTrackPropertyKeys;
    v7 = 136;
  }

  else
  {
    if (objc_opt_class() != class)
    {
      return 0;
    }

    result = &ML3ExportItemAllPlaylistPropertyKeys;
    v7 = 7;
  }

  *count = v7;
  return result;
}

@end