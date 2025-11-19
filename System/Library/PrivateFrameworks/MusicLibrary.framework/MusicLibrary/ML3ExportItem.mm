@interface ML3ExportItem
+ (unsigned)allExportPropertyKeysForEntityClass:(Class)a3 returnedCount:(unsigned int *)a4;
- (BOOL)hasValueForProperty:(unsigned int)a3;
- (ML3ExportItem)initWithPersistentId:(int64_t)a3 entityClass:(Class)a4 propertyKeysToExport:(unsigned int *)a5 numKeys:(unsigned int)a6 library:(id)a7;
- (ML3ExportItem)initWithPersistentId:(int64_t)a3 entityClass:(id)a4 properties:(id)a5 library:(id)a6;
- (char)charValueForProperty:(unsigned int)a3;
- (id)_allExportPropertyNames;
- (id)_propertyNameForKey:(unsigned int)a3;
- (id)_propertyNamesFromKeys:(unsigned int *)a3 numKeys:(unsigned int)a4;
- (id)stringValueForProperty:(unsigned int)a3;
- (id)valueForProperty:(unsigned int)a3;
- (int)longValueForProperty:(unsigned int)a3;
- (int64_t)longlongValueForProperty:(unsigned int)a3;
- (signed)shortValueForProperty:(unsigned int)a3;
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

- (id)_propertyNamesFromKeys:(unsigned int *)a3 numKeys:(unsigned int)a4
{
  if (a3)
  {
    v6 = a3;
    v7 = a4;
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:a4];
    if (a4)
    {
      do
      {
        v9 = *v6++;
        v10 = [(ML3ExportItem *)self _propertyNameForKey:v9];
        if (v10)
        {
          [v8 addObject:v10];
        }

        --v7;
      }

      while (v7);
    }
  }

  else
  {
    v8 = [(ML3ExportItem *)self _allExportPropertyNames:0];
  }

  return v8;
}

- (id)_propertyNameForKey:(unsigned int)a3
{
  if (a3 > 184549378)
  {
    if (a3 > 184549407)
    {
      if (a3 <= 184549409)
      {
        if (a3 == 184549408)
        {
          v3 = @"store_cloud_id";
        }

        else
        {
          v3 = @"play_order";
        }

        goto LABEL_35;
      }

      if (a3 == 184549410)
      {
        v3 = @"is_reversed";
        goto LABEL_35;
      }

      if (a3 == 184549432)
      {
        v3 = 0;
        goto LABEL_36;
      }
    }

    else if (a3 > 184549396)
    {
      if (a3 == 184549397)
      {
        v3 = @"smart_is_folder";
        goto LABEL_35;
      }

      if (a3 == 184549400)
      {
        v3 = @"smart_is_genius";
        goto LABEL_35;
      }
    }

    else
    {
      if (a3 == 184549379)
      {
        v3 = @"distinguished_kind";
        goto LABEL_35;
      }

      if (a3 == 184549384)
      {
        v3 = @"name";
        goto LABEL_35;
      }
    }
  }

  else if (a3 > 167772178)
  {
    if (a3 > 184549376)
    {
      v3 = @"container_pid";
      goto LABEL_35;
    }

    if (a3 == 167772179)
    {
      v3 = @"genre_id";
      goto LABEL_35;
    }

    if (a3 == 167772185)
    {
      v3 = @"album.user_rating";
      goto LABEL_35;
    }
  }

  else
  {
    if (a3 > 167772176)
    {
      if (a3 == 167772177)
      {
        v3 = @"album_artist_pid";
      }

      else
      {
        v3 = @"composer_pid";
      }

      goto LABEL_35;
    }

    if (a3 == 167772175)
    {
      v3 = @"album_pid";
      goto LABEL_35;
    }

    if (a3 == 167772176)
    {
      v3 = @"item_artist_pid";
LABEL_35:
      v4 = v3;
      goto LABEL_36;
    }
  }

  v3 = ML3TrackRulesGetPropertyNameForKey(HIBYTE(a3), *&a3);
LABEL_36:

  return v3;
}

- (BOOL)hasValueForProperty:(unsigned int)a3
{
  v3 = [(ML3ExportItem *)self valueForProperty:*&a3];
  v4 = v3 != 0;

  return v4;
}

- (id)stringValueForProperty:(unsigned int)a3
{
  v3 = [(ML3ExportItem *)self valueForProperty:*&a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = [v3 stringValue];
  }

  v5 = v4;

  return v5;
}

- (int64_t)longlongValueForProperty:(unsigned int)a3
{
  v3 = [(ML3ExportItem *)self valueForProperty:*&a3];
  v4 = [v3 longLongValue];

  return v4;
}

- (int)longValueForProperty:(unsigned int)a3
{
  v3 = [(ML3ExportItem *)self valueForProperty:*&a3];
  v4 = [v3 intValue];

  return v4;
}

- (signed)shortValueForProperty:(unsigned int)a3
{
  v3 = [(ML3ExportItem *)self valueForProperty:*&a3];
  v4 = [v3 shortValue];

  return v4;
}

- (char)charValueForProperty:(unsigned int)a3
{
  v3 = [(ML3ExportItem *)self valueForProperty:*&a3];
  v4 = [v3 charValue];

  return v4;
}

- (id)valueForProperty:(unsigned int)a3
{
  properties = self->_properties;
  v4 = [(ML3ExportItem *)self _propertyNameForKey:*&a3];
  v5 = [(NSDictionary *)properties valueForKey:v4];

  return v5;
}

- (ML3ExportItem)initWithPersistentId:(int64_t)a3 entityClass:(id)a4 properties:(id)a5 library:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = ML3ExportItem;
  v14 = [(ML3ExportItem *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_entityClass, a4);
    v15->_persistentId = a3;
    objc_storeStrong(&v15->_properties, a5);
    objc_storeStrong(&v15->_library, a6);
  }

  return v15;
}

- (ML3ExportItem)initWithPersistentId:(int64_t)a3 entityClass:(Class)a4 propertyKeysToExport:(unsigned int *)a5 numKeys:(unsigned int)a6 library:(id)a7
{
  v8 = *&a6;
  v13 = a7;
  objc_storeStrong(&self->_entityClass, a4);
  objc_storeStrong(&self->_library, a7);
  v14 = [(ML3ExportItem *)self _propertyNamesFromKeys:a5 numKeys:v8];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__7770;
  v30 = __Block_byref_object_dispose__7771;
  v31 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v14, "count")}];
  v15 = [ML3ComparisonPredicate predicateWithProperty:@"ROWID" equalToInt64:a3];
  v16 = [(objc_class *)a4 queryWithLibrary:v13 predicate:v15];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __87__ML3ExportItem_initWithPersistentId_entityClass_propertyKeysToExport_numKeys_library___block_invoke;
  v23 = &unk_278762750;
  v25 = &v26;
  v17 = v14;
  v24 = v17;
  [v16 enumeratePersistentIDsAndProperties:v17 usingBlock:&v20];

  v18 = [(ML3ExportItem *)self initWithPersistentId:a3 entityClass:a4 properties:v27[5] library:v13, v20, v21, v22, v23];
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

+ (unsigned)allExportPropertyKeysForEntityClass:(Class)a3 returnedCount:(unsigned int *)a4
{
  *a4 = 0;
  if (objc_opt_class() == a3)
  {
    result = &ML3ExportItemAllTrackPropertyKeys;
    v7 = 136;
  }

  else
  {
    if (objc_opt_class() != a3)
    {
      return 0;
    }

    result = &ML3ExportItemAllPlaylistPropertyKeys;
    v7 = 7;
  }

  *a4 = v7;
  return result;
}

@end