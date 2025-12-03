@interface ML3Collection
+ (BOOL)_updateRepresentativeItemsForPersistentIDs:(id)ds usingConnection:(id)connection;
+ (BOOL)canonicalizeCollectionRepresentativeItemsInLibrary:(id)library usingConnection:(id)connection;
+ (BOOL)deleteFromLibrary:(id)library deletionType:(int)type persistentIDs:(const int64_t *)ds count:(unint64_t)count usingConnection:(id)connection;
+ (BOOL)libraryContentsChangeForProperty:(id)property;
+ (BOOL)removeOrphanedCollectionsInLibrary:(id)library usingConnection:(id)connection;
+ (BOOL)updateRepresentativeItemPersistentIDsInLibrary:(id)library persistentIDs:(id)ds usingConnection:(id)connection;
+ (id)collectionEntityClasses;
+ (id)foreignPropertyForProperty:(id)property entityClass:(Class)class;
+ (id)propertiesForGroupingUniqueCollections;
+ (void)initialize;
- (ML3Collection)initWithDictionary:(id)dictionary inLibrary:(id)library cachedNameOrders:(id)orders usingConnection:(id)connection;
- (void)updateCloudStatus;
@end

@implementation ML3Collection

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    ML3TrackForeignPropertyForML3CollectionProperties = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"item_artist_pid", @"item_artist_pid", @"album_pid", @"album_pid", @"ROWID", @"item_pid", 0}];

    MEMORY[0x2821F96F8]();
  }
}

- (void)updateCloudStatus
{
  trackForeignPersistentID = [objc_opt_class() trackForeignPersistentID];
  v4 = [ML3ComparisonPredicate predicateWithProperty:trackForeignPersistentID equalToInt64:self->super._persistentID];
  WeakRetained = objc_loadWeakRetained(&self->super._library);
  v6 = [(ML3Entity *)ML3Track queryWithLibrary:WeakRetained predicate:v4 orderingTerms:0];

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = [MEMORY[0x277CBEA60] arrayWithObject:@"(item.remote_location_id >= 50 AND item.base_location_id < 250)"];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __34__ML3Collection_updateCloudStatus__block_invoke;
  v12[3] = &unk_278762210;
  v12[4] = &v17;
  v12[5] = &v13;
  [v6 enumeratePersistentIDsAndProperties:v7 usingBlock:v12];

  if (*(v18 + 24) == 1)
  {
    if (*(v14 + 24))
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [(ML3Entity *)self valueForProperty:@"cloud_status"];
  integerValue = [v9 integerValue];

  if (integerValue != v8)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
    [(ML3Entity *)self setValue:v11 forProperty:@"cloud_status"];
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
}

uint64_t __34__ML3Collection_updateCloudStatus__block_invoke(uint64_t result, uint64_t a2, id *a3, uint64_t a4, _BYTE *a5)
{
  v5 = result;
  if (*(*(*(result + 32) + 8) + 24) == 1 && *(*(*(result + 40) + 8) + 24) == 1)
  {
    *a5 = 1;
  }

  else
  {
    result = [*a3 BOOLValue];
    if (result)
    {
      v6 = *(v5 + 32);
    }

    else
    {
      v6 = *(v5 + 40);
    }

    *(*(v6 + 8) + 24) = 1;
  }

  return result;
}

- (ML3Collection)initWithDictionary:(id)dictionary inLibrary:(id)library cachedNameOrders:(id)orders usingConnection:(id)connection
{
  v32 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  libraryCopy = library;
  ordersCopy = orders;
  connectionCopy = connection;
  v14 = [dictionaryCopy objectForKey:@"grouping_key"];
  if (v14)
  {
    data = v14;
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    selfCopy = self;
    propertiesForGroupingKey = [objc_opt_class() propertiesForGroupingKey];
    v17 = [propertiesForGroupingKey countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        v20 = 0;
        do
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(propertiesForGroupingKey);
          }

          v21 = [dictionaryCopy objectForKey:*(*(&v27 + 1) + 8 * v20)];
          if ([v21 length])
          {
            data = [libraryCopy groupingKeyForString:v21];

            if (data)
            {

              goto LABEL_15;
            }
          }

          else
          {
          }

          ++v20;
        }

        while (v18 != v20);
        v18 = [propertiesForGroupingKey countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v18);
    }

    data = [MEMORY[0x277CBEA90] data];
    if (data)
    {
LABEL_15:
      v22 = [dictionaryCopy mutableCopy];
      [v22 setValue:data forKey:@"grouping_key"];

      dictionaryCopy = v22;
    }

    self = selfCopy;
  }

  v26.receiver = self;
  v26.super_class = ML3Collection;
  v23 = [(ML3Entity *)&v26 initWithDictionary:dictionaryCopy inLibrary:libraryCopy cachedNameOrders:ordersCopy usingConnection:connectionCopy];

  return v23;
}

+ (BOOL)_updateRepresentativeItemsForPersistentIDs:(id)ds usingConnection:(id)connection
{
  v36 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  connectionCopy = connection;
  if ([dsCopy count])
  {
    trackForeignPersistentID = [self trackForeignPersistentID];
    databaseTable = [self databaseTable];
    v9 = [MEMORY[0x277CCAB68] stringWithFormat:@"UPDATE %@ SET %@ = IFNULL( (SELECT item_pid FROM item LEFT OUTER JOIN best_artwork_token ON (item.ROWID = best_artwork_token.entity_pid AND best_artwork_token.entity_type = %ld) WHERE item.%@ = %@.ROWID ORDER BY item.media_type, best_artwork_token.available_artwork_token IS NOT NULL DESC LIMIT 1), 0)", databaseTable, @"representative_item_pid", 0, trackForeignPersistentID, databaseTable];
    if ([dsCopy count] < 0x3E9)
    {
      [v9 appendString:@" WHERE ROWID"];
      allObjects = [dsCopy allObjects];
      v13 = +[ML3DatabaseStatementRenderer defaultRenderer];
      v14 = [allObjects count];
      if (v14)
      {
        v15 = v14;
        v30 = v13;
        v27 = databaseTable;
        v28 = trackForeignPersistentID;
        v29 = dsCopy;
        v16 = 0;
        v17 = 0;
        v18 = -1;
        while (1)
        {
          if (v15 - v17 >= 0x64)
          {
            v19 = 100;
          }

          else
          {
            v19 = v15 - v17;
          }

          v20 = [allObjects subarrayWithRange:{v17, v19}];
          if (v18 != v19)
          {
            v21 = [v30 statementWithPrefix:v9 inParameterCount:v19];

            v18 = v19;
            v16 = v21;
          }

          v32 = 0;
          v22 = [connectionCopy executeUpdate:v16 withParameters:v20 error:&v32];
          v23 = v32;
          v24 = v23;
          if ((v22 & 1) == 0)
          {
            break;
          }

          v17 += v19;

          if (v17 >= v15)
          {

            v12 = 1;
            goto LABEL_23;
          }
        }

        v25 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v35 = v24;
          _os_log_impl(&dword_22D2FA000, v25, OS_LOG_TYPE_ERROR, "Failed to update collection representative items with error: %{public}@", buf, 0xCu);
        }

        v12 = 0;
LABEL_23:
        trackForeignPersistentID = v28;
        dsCopy = v29;
        databaseTable = v27;
        v13 = v30;
      }

      else
      {
        v12 = 1;
      }
    }

    else
    {
      v33 = 0;
      v10 = [connectionCopy executeUpdate:v9 withParameters:0 error:&v33];
      allObjects = v33;
      if (v10)
      {
        v12 = 1;
LABEL_25:

        goto LABEL_26;
      }

      v13 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v35 = allObjects;
        _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_ERROR, "Failed to update collection representative items with error: %{public}@", buf, 0xCu);
      }

      v12 = 0;
    }

    goto LABEL_25;
  }

  v12 = 1;
LABEL_26:

  return v12;
}

+ (id)collectionEntityClasses
{
  v4[5] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:5];

  return v2;
}

+ (BOOL)deleteFromLibrary:(id)library deletionType:(int)type persistentIDs:(const int64_t *)ds count:(unint64_t)count usingConnection:(id)connection
{
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___ML3Collection;
  return objc_msgSendSuper2(&v8, sel_deleteFromLibrary_deletionType_persistentIDs_count_usingConnection_, library, *&type, ds, count, connection);
}

+ (BOOL)removeOrphanedCollectionsInLibrary:(id)library usingConnection:(id)connection
{
  v44 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  connectionCopy = connection;
  v7 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v42 = 138543362;
    v43 = libraryCopy;
    _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_DEFAULT, "Checking for orphaned collections in library %{public}@", &v42, 0xCu);
  }

  v8 = [connectionCopy executeQuery:@"SELECT album_pid FROM album WHERE album_pid NOT IN (SELECT album_pid FROM item)"];
  v9 = [v8 objectsInColumn:0];

  if ([v9 count])
  {
    v10 = malloc_type_calloc([v9 count], 8uLL, 0x100004000313F17uLL);
    if ([v9 count])
    {
      v11 = 0;
      do
      {
        v12 = [v9 objectAtIndexedSubscript:v11];
        v10[v11] = [v12 longLongValue];

        ++v11;
      }

      while (v11 < [v9 count]);
    }

    if (+[ML3Album deleteFromLibrary:deletionType:persistentIDs:count:usingConnection:](ML3Album, "deleteFromLibrary:deletionType:persistentIDs:count:usingConnection:", libraryCopy, 2, v10, [v9 count], connectionCopy))
    {
      v13 = os_log_create("com.apple.amp.medialibrary", "Default_Oversize");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v42 = 138543362;
        v43 = v9;
        _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_DEFAULT, "Deleted Orphaned Album Pids=%{public}@", &v42, 0xCu);
      }
    }

    free(v10);
  }

  v14 = [connectionCopy executeQuery:@"SELECT album_artist_pid FROM album_artist WHERE ((album_artist_pid NOT IN (SELECT album_artist_pid FROM item) AND album_artist_pid NOT IN (SELECT album_artist_pid FROM album)) AND album_artist.liked_state=?)" withParameters:&unk_2840C8300];
  v15 = [v14 objectsInColumn:0];

  if ([v15 count])
  {
    v16 = malloc_type_calloc([v15 count], 8uLL, 0x100004000313F17uLL);
    if ([v15 count])
    {
      v17 = 0;
      do
      {
        v18 = [v15 objectAtIndexedSubscript:v17];
        v16[v17] = [v18 longLongValue];

        ++v17;
      }

      while (v17 < [v15 count]);
    }

    if (+[ML3AlbumArtist deleteFromLibrary:deletionType:persistentIDs:count:usingConnection:](ML3AlbumArtist, "deleteFromLibrary:deletionType:persistentIDs:count:usingConnection:", libraryCopy, 2, v16, [v15 count], connectionCopy))
    {
      v19 = os_log_create("com.apple.amp.medialibrary", "Default_Oversize");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v42 = 138543362;
        v43 = v15;
        _os_log_impl(&dword_22D2FA000, v19, OS_LOG_TYPE_DEFAULT, "Deleted Orphaned Album Artist Pids=%{public}@", &v42, 0xCu);
      }
    }

    free(v16);
  }

  v20 = [connectionCopy executeQuery:@"SELECT item_artist_pid FROM item_artist WHERE item_artist_pid NOT IN (SELECT item_artist_pid FROM item)"];
  v21 = [v20 objectsInColumn:0];

  if ([v21 count])
  {
    v22 = malloc_type_calloc([v21 count], 8uLL, 0x100004000313F17uLL);
    if ([v21 count])
    {
      v23 = 0;
      do
      {
        v24 = [v21 objectAtIndexedSubscript:v23];
        v22[v23] = [v24 longLongValue];

        ++v23;
      }

      while (v23 < [v21 count]);
    }

    if (+[ML3Collection deleteFromLibrary:deletionType:persistentIDs:count:usingConnection:](ML3Artist, "deleteFromLibrary:deletionType:persistentIDs:count:usingConnection:", libraryCopy, 2, v22, [v21 count], connectionCopy))
    {
      v25 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v21 count];
        v42 = 134217984;
        v43 = v26;
        _os_log_impl(&dword_22D2FA000, v25, OS_LOG_TYPE_DEFAULT, "Deleted %lu orphaned Artists", &v42, 0xCu);
      }
    }

    free(v22);
  }

  v27 = [connectionCopy executeQuery:@"SELECT composer_pid FROM composer WHERE composer_pid NOT IN (SELECT composer_pid FROM item)"];
  v28 = [v27 objectsInColumn:0];

  if ([v28 count])
  {
    v29 = malloc_type_calloc([v28 count], 8uLL, 0x100004000313F17uLL);
    if ([v28 count])
    {
      v30 = 0;
      do
      {
        v31 = [v28 objectAtIndexedSubscript:v30];
        v29[v30] = [v31 longLongValue];

        ++v30;
      }

      while (v30 < [v28 count]);
    }

    if (+[ML3Collection deleteFromLibrary:deletionType:persistentIDs:count:usingConnection:](ML3Composer, "deleteFromLibrary:deletionType:persistentIDs:count:usingConnection:", libraryCopy, 2, v29, [v28 count], connectionCopy))
    {
      v32 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [v28 count];
        v42 = 134217984;
        v43 = v33;
        _os_log_impl(&dword_22D2FA000, v32, OS_LOG_TYPE_DEFAULT, "Deleted %lu orphaned Composers", &v42, 0xCu);
      }
    }

    free(v29);
  }

  v34 = [connectionCopy executeQuery:@"SELECT genre_id FROM genre WHERE genre_id NOT IN (SELECT genre_id FROM item)"];
  v35 = [v34 objectsInColumn:0];

  if ([v35 count])
  {
    v36 = malloc_type_calloc([v35 count], 8uLL, 0x100004000313F17uLL);
    if ([v35 count])
    {
      v37 = 0;
      do
      {
        v38 = [v35 objectAtIndexedSubscript:v37];
        v36[v37] = [v38 longLongValue];

        ++v37;
      }

      while (v37 < [v35 count]);
    }

    if (+[ML3Collection deleteFromLibrary:deletionType:persistentIDs:count:usingConnection:](ML3Genre, "deleteFromLibrary:deletionType:persistentIDs:count:usingConnection:", libraryCopy, 2, v36, [v35 count], connectionCopy))
    {
      v39 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = [v35 count];
        v42 = 134217984;
        v43 = v40;
        _os_log_impl(&dword_22D2FA000, v39, OS_LOG_TYPE_DEFAULT, "Deleted %lu orphaned Genres", &v42, 0xCu);
      }
    }

    free(v36);
  }

  return 1;
}

+ (BOOL)canonicalizeCollectionRepresentativeItemsInLibrary:(id)library usingConnection:(id)connection
{
  v41 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  connectionCopy = connection;
  v8 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v36 = objc_opt_class();
    v37 = 2114;
    v38 = libraryCopy;
    v9 = v36;
    _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "Looking for representative items to update for collection type %{public}@ in library %{public}@", buf, 0x16u);
  }

  trackForeignPersistentID = [self trackForeignPersistentID];
  databaseTable = [self databaseTable];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT DISTINCT item.%@ FROM item JOIN %@ USING (%@) LEFT OUTER JOIN best_artwork_token ON (item.ROWID = best_artwork_token.entity_pid AND best_artwork_token.entity_type = %ld) WHERE %@.%@ = item.ROWID AND (((item.media_type & 1024) = 1024) OR best_artwork_token.available_artwork_token IS NULL)", trackForeignPersistentID, databaseTable, trackForeignPersistentID, 0, databaseTable, @"representative_item_pid"];
  v13 = [MEMORY[0x277CBEB58] set];
  v28 = v12;
  v14 = [connectionCopy executeQuery:v12];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __84__ML3Collection_canonicalizeCollectionRepresentativeItemsInLibrary_usingConnection___block_invoke;
  v33[3] = &unk_278766118;
  v15 = v13;
  v34 = v15;
  [v14 enumerateRowsWithBlock:v33];

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT %@.ROWID FROM %@ WHERE %@.%@ = 0", databaseTable, databaseTable, databaseTable, @"representative_item_pid"];
  v17 = [connectionCopy executeQuery:v16];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __84__ML3Collection_canonicalizeCollectionRepresentativeItemsInLibrary_usingConnection___block_invoke_2;
  v31[3] = &unk_278766118;
  v18 = v15;
  v32 = v18;
  [v17 enumerateRowsWithBlock:v31];

  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT %@.ROWID FROM %@ LEFT OUTER JOIN item ON (%@.%@ = item.ROWID) where %@.ROWID != IFNULL(item.%@, 0)", databaseTable, databaseTable, databaseTable, @"representative_item_pid", databaseTable, trackForeignPersistentID];
  v20 = [connectionCopy executeQuery:v19];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __84__ML3Collection_canonicalizeCollectionRepresentativeItemsInLibrary_usingConnection___block_invoke_3;
  v29[3] = &unk_278766118;
  v21 = v18;
  v30 = v21;
  [v20 enumerateRowsWithBlock:v29];

  v22 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v21 count];
    v24 = objc_opt_class();
    *buf = 134218498;
    v36 = v23;
    v37 = 2114;
    v38 = v24;
    v39 = 2114;
    v40 = libraryCopy;
    v25 = v24;
    _os_log_impl(&dword_22D2FA000, v22, OS_LOG_TYPE_DEFAULT, "Updating %lu representative items for collection %{public}@ in library %{public}@", buf, 0x20u);
  }

  v26 = [self _updateRepresentativeItemsForPersistentIDs:v21 usingConnection:connectionCopy];
  return v26;
}

uint64_t __84__ML3Collection_canonicalizeCollectionRepresentativeItemsInLibrary_usingConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectAtIndexedSubscript:0];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __84__ML3Collection_canonicalizeCollectionRepresentativeItemsInLibrary_usingConnection___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectAtIndexedSubscript:0];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __84__ML3Collection_canonicalizeCollectionRepresentativeItemsInLibrary_usingConnection___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 objectAtIndexedSubscript:0];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)updateRepresentativeItemPersistentIDsInLibrary:(id)library persistentIDs:(id)ds usingConnection:(id)connection
{
  libraryCopy = library;
  dsCopy = ds;
  connectionCopy = connection;
  trackForeignPersistentID = [self trackForeignPersistentID];
  selfCopy = self;
  databaseTable = [self databaseTable];
  v12 = [MEMORY[0x277CBEB58] set];
  v27 = databaseTable;
  v29 = trackForeignPersistentID;
  v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT %@ FROM %@ WHERE %@ = 0 OR %@", trackForeignPersistentID, databaseTable, @"representative_item_pid", @"representative_item_pid"];
  v31 = +[ML3DatabaseStatementRenderer defaultRenderer];
  v13 = [dsCopy count];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = 0;
    v17 = -1;
    do
    {
      if (v14 - v16 >= 0x64)
      {
        v18 = 100;
      }

      else
      {
        v18 = v14 - v16;
      }

      v19 = [dsCopy subarrayWithRange:{v16, v18}];
      if (v17 != v18)
      {
        [v31 statementWithPrefix:v32 inParameterCount:v18];
        v20 = v12;
        v21 = connectionCopy;
        v23 = v22 = dsCopy;

        v17 = v18;
        v15 = v23;
        dsCopy = v22;
        connectionCopy = v21;
        v12 = v20;
      }

      v16 += v18;
      v24 = [connectionCopy executeQuery:v15 withParameters:v19];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __94__ML3Collection_updateRepresentativeItemPersistentIDsInLibrary_persistentIDs_usingConnection___block_invoke;
      v33[3] = &unk_278766118;
      v34 = v12;
      [v24 enumerateRowsWithBlock:v33];
    }

    while (v16 < v14);
  }

  else
  {
    v15 = 0;
  }

  v25 = [selfCopy _updateRepresentativeItemsForPersistentIDs:v12 usingConnection:connectionCopy];

  return v25;
}

uint64_t __94__ML3Collection_updateRepresentativeItemPersistentIDsInLibrary_persistentIDs_usingConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectAtIndexedSubscript:0];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)libraryContentsChangeForProperty:(id)property
{
  propertyCopy = property;
  if ([propertyCopy isEqualToString:@"cloud_status"] & 1) != 0 || (objc_msgSend(propertyCopy, "isEqualToString:", @"representative_item_pid"))
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___ML3Collection;
    v5 = objc_msgSendSuper2(&v7, sel_libraryContentsChangeForProperty_, propertyCopy);
  }

  return v5;
}

+ (id)propertiesForGroupingUniqueCollections
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"grouping_key";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)foreignPropertyForProperty:(id)property entityClass:(Class)class
{
  propertyCopy = property;
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___ML3Collection;
  v7 = objc_msgSendSuper2(&v9, sel_foreignPropertyForProperty_entityClass_, propertyCopy, class);
  if (!v7)
  {
    if (objc_opt_class() == class)
    {
      v7 = [ML3TrackForeignPropertyForML3CollectionProperties objectForKey:propertyCopy];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end