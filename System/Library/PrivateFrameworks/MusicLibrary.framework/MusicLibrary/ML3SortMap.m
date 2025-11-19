@interface ML3SortMap
- (BOOL)_insertSortedNameEntriesIntoSortMap:(id)a3;
- (BOOL)attemptInsertStringsIntoSortMap:(id)a3;
- (BOOL)commitFailedInsertedStrings:(id)a3;
- (BOOL)commitUpdates;
- (BOOL)insertStringsIntoSortMap:(id)a3 didReSortMap:(BOOL *)a4;
- (BOOL)loadExistingSortedEntries;
- (ML3SortMap)initWithConnection:(id)a3 library:(id)a4 preloadNames:(BOOL)a5;
- (id)_maxSortKeyForEntry:(id)a3 iPhoneSortKeyBuilder:(iPhoneSortKeyBuilder *)a4;
- (id)_minSortKeyForEntry:(id)a3 iPhoneSortKeyBuilder:(iPhoneSortKeyBuilder *)a4;
- (id)_sortKeyString:(id)a3;
- (id)_sortedNameEntriesToInsertForNames:(id)a3;
- (int64_t)_sortKeyDistance:(id)a3 sortKey2:(id)a4 offset:(unint64_t)a5;
@end

@implementation ML3SortMap

- (BOOL)commitUpdates
{
  v74 = *MEMORY[0x277D85DE8];
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 1;
  v3 = [MEMORY[0x277CCAB58] indexSet];
  v4 = v3;
  entries = self->_entries;
  if (self->_preloadNames)
  {
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __27__ML3SortMap_commitUpdates__block_invoke;
    v64[3] = &unk_278761F08;
    v65 = v3;
    [(NSMutableArray *)entries enumerateObjectsUsingBlock:v64];
    v6 = &v65;
  }

  else
  {
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __27__ML3SortMap_commitUpdates__block_invoke_2;
    v62[3] = &unk_278765D38;
    v63 = v3;
    v7 = v62;
    v8 = v7;
    if (entries)
    {
      isa = entries[2].super.super.isa;
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v71 = __64__ML3SortMapFaultingEntryArray_enumerateDirtyObjectsUsingBlock___block_invoke;
      v72 = &unk_278762070;
      v73 = v7;
      [(objc_class *)isa enumerateKeysAndObjectsUsingBlock:&buf];
    }

    v6 = &v63;
  }

  if ([v4 count])
  {
    v10 = [v4 count];
    if (v10 < 0x1F4)
    {
      goto LABEL_60;
    }

    v11 = os_log_create("com.apple.amp.medialibrary", "SortMap");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v4 count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v12;
      _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, "dropping sort_map indexes for %lu additions", &buf, 0xCu);
    }

    v13 = [ML3MusicLibrary dropIndexesUsingConnection:self->_connection tableNames:"'sort_map'"];
    *(v67 + 24) = v13;
    if (v13)
    {
LABEL_60:
      v14 = [(ML3DatabaseConnection *)self->_connection executeUpdate:@"CREATE TABLE IF NOT EXISTS sort_map_no_uniques (name TEXT, name_order INTEGER, name_section INTEGER, sort_key BLOB)"];
      *(v67 + 24) = v14;
      if (v14)
      {
        v15 = [(ML3DatabaseConnection *)self->_connection executeUpdate:@"DELETE FROM sort_map_no_uniques;"];
        *(v67 + 24) = v15;
        if (v15)
        {
          v16 = os_log_create("com.apple.amp.medialibrary", "SortMap");
          v17 = os_signpost_id_generate(v16);

          v18 = os_log_create("com.apple.amp.medialibrary", "SortMap");
          v19 = v18;
          v20 = v17 - 1;
          if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
          {
            LOWORD(buf) = 0;
            _os_signpost_emit_with_name_impl(&dword_22D2FA000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "insert:nameOrder", "", &buf, 2u);
          }

          connection = self->_connection;
          v59[0] = MEMORY[0x277D85DD0];
          v59[1] = 3221225472;
          v59[2] = __27__ML3SortMap_commitUpdates__block_invoke_363;
          v59[3] = &unk_278761F58;
          v59[4] = self;
          v22 = v4;
          v60 = v22;
          v61 = &v66;
          [(ML3DatabaseConnection *)connection performTransactionWithBlock:v59];
          v23 = os_log_create("com.apple.amp.medialibrary", "SortMap");
          v24 = v23;
          if (v20 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
          {
            LOWORD(buf) = 0;
            _os_signpost_emit_with_name_impl(&dword_22D2FA000, v24, OS_SIGNPOST_INTERVAL_END, v17, "insert:nameOrder", "", &buf, 2u);
          }

          if (*(v67 + 24) != 1)
          {
            LOBYTE(v39) = 0;
LABEL_56:

            goto LABEL_57;
          }

          v25 = os_log_create("com.apple.amp.medialibrary", "SortMap");
          v26 = v25;
          if (v20 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
          {
            LOWORD(buf) = 0;
            _os_signpost_emit_with_name_impl(&dword_22D2FA000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v17, "move", "", &buf, 2u);
          }

          v52 = __exceptionsEnabled;
          __exceptionsEnabled = 0;
          v27 = [(ML3DatabaseConnection *)self->_connection executeUpdate:@"INSERT INTO sort_map (name, name_order, name_section, sort_key) SELECT name, name_order, name_section, sort_key FROM sort_map_no_uniques"];
          *(v67 + 24) = v27;
          if (v27)
          {
LABEL_40:
            __exceptionsEnabled = v52;
            if (![(ML3DatabaseConnection *)self->_connection executeUpdate:@"DELETE FROM sort_map_no_uniques;"])
            {
              v40 = os_log_create("com.apple.amp.medialibrary", "Default");
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                LOWORD(buf) = 0;
                _os_log_impl(&dword_22D2FA000, v40, OS_LOG_TYPE_ERROR, "failed to delete sort_map_no_uniques", &buf, 2u);
              }
            }

            v41 = os_log_create("com.apple.amp.medialibrary", "SortMap");
            v42 = v41;
            if (v20 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
            {
              LOWORD(buf) = 0;
              _os_signpost_emit_with_name_impl(&dword_22D2FA000, v42, OS_SIGNPOST_INTERVAL_END, v17, "move", "", &buf, 2u);
            }

            v43 = v10 > 0x1F3;

            v44 = self->_entries;
            self->_entries = 0;

            v39 = *(v67 + 24);
            if ((v43 & v39) == 1)
            {
              v45 = os_log_create("com.apple.amp.medialibrary", "SortMap");
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                v46 = [v22 count];
                LODWORD(buf) = 134217984;
                *(&buf + 4) = v46;
                _os_log_impl(&dword_22D2FA000, v45, OS_LOG_TYPE_DEFAULT, "recreating sort_map indexes for %lu additions", &buf, 0xCu);
              }

              v47 = [(ML3DatabaseConnection *)self->_connection executeUpdate:@"CREATE INDEX IF NOT EXISTS SortMapSortKeys ON sort_map (sort_key ASC)"];
              *(v67 + 24) = v47;
              if (v47 && (v48 = [(ML3DatabaseConnection *)self->_connection executeUpdate:@"ANALYZE;"], (*(v67 + 24) = v48) != 0))
              {
                LOBYTE(v39) = 1;
              }

              else
              {
                v49 = os_log_create("com.apple.amp.medialibrary", "SortMap");
                if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                {
                  LOWORD(buf) = 0;
                  _os_log_impl(&dword_22D2FA000, v49, OS_LOG_TYPE_ERROR, "failed to rebuild sort_map indexes", &buf, 2u);
                }

                LOBYTE(v39) = *(v67 + 24);
              }
            }

            goto LABEL_56;
          }

          v28 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_22D2FA000, v28, OS_LOG_TYPE_ERROR, "Failed to merge into sort_map - attempting to repair and try again", &buf, 2u);
          }

          v29 = [MEMORY[0x277CBEB38] dictionary];
          v30 = [(ML3DatabaseConnection *)self->_connection executeQuery:@"SELECT ROWID, name, name_order, name_section, sort_key FROM sort_map_no_uniques WHERE name IN (SELECT name FROM sort_map_no_uniques GROUP BY name HAVING COUNT() > 1)"];
          v57[0] = MEMORY[0x277D85DD0];
          v57[1] = 3221225472;
          v57[2] = __27__ML3SortMap_commitUpdates__block_invoke_378;
          v57[3] = &unk_278766118;
          v31 = v29;
          v58 = v31;
          [v30 enumerateRowsWithBlock:v57];
          v56[0] = MEMORY[0x277D85DD0];
          v56[1] = 3221225472;
          v56[2] = __27__ML3SortMap_commitUpdates__block_invoke_379;
          v56[3] = &unk_278761F80;
          v56[4] = self;
          [v31 enumerateKeysAndObjectsUsingBlock:v56];
          v32 = [MEMORY[0x277CBEB18] array];
          v51 = [(ML3DatabaseConnection *)self->_connection executeQuery:@"SELECT sort_map_no_uniques.name, sort_map_no_uniques.name_order, sort_map_no_uniques.name_section, sort_map_no_uniques.sort_key, sort_map.name, sort_map.name_order, sort_map.name_section, sort_map.sort_key FROM sort_map_no_uniques JOIN sort_map USING (name) WHERE sort_map_no_uniques.name IN (SELECT name FROM sort_map)"];

          v54[0] = MEMORY[0x277D85DD0];
          v54[1] = 3221225472;
          v54[2] = __27__ML3SortMap_commitUpdates__block_invoke_2_387;
          v54[3] = &unk_278766118;
          v33 = v32;
          v55 = v33;
          [v51 enumerateRowsWithBlock:v54];
          v53[0] = MEMORY[0x277D85DD0];
          v53[1] = 3221225472;
          v53[2] = __27__ML3SortMap_commitUpdates__block_invoke_388;
          v53[3] = &unk_278761FA8;
          v53[4] = self;
          [v33 enumerateObjectsUsingBlock:v53];
          v34 = [(ML3DatabaseConnection *)self->_connection executeUpdate:@"INSERT INTO sort_map (name, name_order, name_section, sort_key) SELECT name, name_order, name_section, sort_key FROM sort_map_no_uniques"];
          *(v67 + 24) = v34;
          v35 = _ML3LogCategoryDefault();
          v36 = v35;
          if (v34)
          {
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&dword_22D2FA000, v36, OS_LOG_TYPE_DEFAULT, "Successfully merged into sort_map after removing invalid entries - rebuilding to repair tables", &buf, 2u);
            }

            v37 = [(ML3MusicLibrary *)self->_library inTransactionUpdateSortMapOnConnection:self->_connection forceRebuild:1 forceUpdateOriginals:1];
            *(v67 + 24) = v37;
            if (v37)
            {
              goto LABEL_39;
            }

            v36 = _ML3LogCategoryDefault();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf) = 0;
              v38 = "Failed to rebuild the sort map after merge - failing commit!";
LABEL_37:
              _os_log_impl(&dword_22D2FA000, v36, OS_LOG_TYPE_ERROR, v38, &buf, 2u);
            }
          }

          else if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            v38 = "Failed to merge into sort_map after removing invalid entries - failing commit";
            goto LABEL_37;
          }

LABEL_39:
          goto LABEL_40;
        }
      }
    }

    LOBYTE(v39) = 0;
  }

  else
  {
    LOBYTE(v39) = 1;
  }

LABEL_57:

  _Block_object_dispose(&v66, 8);
  return v39 & 1;
}

uint64_t __27__ML3SortMap_commitUpdates__block_invoke(uint64_t result, uint64_t a2)
{
  if (*(a2 + 36) == 1)
  {
    return [*(result + 32) addIndex:?];
  }

  return result;
}

uint64_t __27__ML3SortMap_commitUpdates__block_invoke_363(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1[4] + 8);
    v4 = [[ML3StatementAccumulator alloc] initWithConnection:*(a1[4] + 8)];
    v5 = [v3 currentTransactionID];
    [(ML3StatementAccumulator *)v4 setExistingTransactionIdentifier:v5];

    [(ML3StatementAccumulator *)v4 setPriorityLevel:0];
    [(ML3StatementAccumulator *)v4 setStatementThreshold:200];
  }

  else
  {
    v4 = 0;
  }

  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __27__ML3SortMap_commitUpdates__block_invoke_2_369;
  v14 = &unk_278761F30;
  v6 = a1[5];
  v15 = a1[4];
  v7 = v4;
  v16 = v7;
  v17 = @"INSERT INTO sort_map_no_uniques (name, name_order, name_section, sort_key) VALUES (?, ?, ?, ?)";
  v18 = a1[6];
  [v6 enumerateIndexesUsingBlock:&v11];
  v8 = *(*(a1[6] + 8) + 24);
  if (v8 == 1 && v7 != 0)
  {
    *(*(a1[6] + 8) + 24) = [(ML3StatementAccumulator *)v7 flushAndWait:1, v11, v12, v13, v14, v15];
    LOBYTE(v8) = *(*(a1[6] + 8) + 24);
  }

  objc_autoreleasePoolPop(v2);
  return v8 & 1;
}

void __27__ML3SortMap_commitUpdates__block_invoke_378(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 int64ForColumnIndex:0];
  v5 = [v3 stringForColumnIndex:1];
  v6 = [v3 int64ForColumnIndex:2];
  v7 = [v3 intForColumnIndex:3];
  v8 = [v3 dataForColumnIndex:4];

  v9 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    v12 = 138544130;
    v13 = v5;
    v14 = 2048;
    v15 = v6;
    v16 = 1024;
    v17 = v7;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_FAULT, "Found duplicate sort_map_no_uniques entry with common name. name='%{public}@', name_order=%lld, name_section=%d, sort_key=%{public}@", &v12, 0x26u);
  }

  v10 = *(a1 + 32);
  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:v4];
  [v10 setObject:v11 forKey:v5];
}

void __27__ML3SortMap_commitUpdates__block_invoke_379(uint64_t a1, void *a2, void *a3)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v4 = *(*(a1 + 32) + 8);
  v9[0] = a2;
  v9[1] = a3;
  v5 = MEMORY[0x277CBEA60];
  v6 = a3;
  v7 = a2;
  v8 = [v5 arrayWithObjects:v9 count:2];
  [v4 executeUpdate:@"DELETE FROM sort_map_no_uniques WHERE name = ? AND ROWID != ?" withParameters:v8 error:0];
}

void __27__ML3SortMap_commitUpdates__block_invoke_2_387(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 stringForColumnIndex:0];
  v5 = [v3 int64ForColumnIndex:1];
  v6 = [v3 intForColumnIndex:2];
  v7 = [v3 dataForColumnIndex:3];
  v8 = [v3 stringForColumnIndex:4];
  v9 = [v3 int64ForColumnIndex:5];
  v10 = [v3 intForColumnIndex:6];
  v11 = [v3 dataForColumnIndex:7];

  v12 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    v13 = 138545154;
    v14 = v4;
    v15 = 2048;
    v16 = v5;
    v17 = 1024;
    v18 = v6;
    v19 = 2114;
    v20 = v7;
    v21 = 2114;
    v22 = v8;
    v23 = 2048;
    v24 = v9;
    v25 = 1024;
    v26 = v10;
    v27 = 2114;
    v28 = v11;
    _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_FAULT, "Found matching entries in both sort_map_no_uniques and sort_map. NEW: name='%{public}@', name_order=%lld, name_section=%d, sort_key=%{public}@. EXISTING: name='%{public}@', name_order=%lld, name_section=%d, sort_key=%{public}@", &v13, 0x4Au);
  }

  [*(a1 + 32) addObject:v4];
}

void __27__ML3SortMap_commitUpdates__block_invoke_388(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  v6 = a2;
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v6 count:1];
  [v2 executeUpdate:@"DELETE FROM sort_map_no_uniques WHERE name = ?" withParameters:v5 error:{0, v6, v7}];
}

void __27__ML3SortMap_commitUpdates__block_invoke_2_369(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v6 = objc_autoreleasePoolPush();
  v7 = [*(*(a1 + 32) + 32) objectAtIndex:a2];
  v8 = *(v7 + 32);
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v20[0] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:v9];
  v20[1] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  v20[2] = v12;
  v13 = *(v7 + 24);
  v14 = v13;
  if (!v13)
  {
    v14 = [MEMORY[0x277CBEB68] null];
  }

  v20[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
  if (!v13)
  {
  }

  if (*(a1 + 40))
  {
    v16 = [ML3DatabaseNaturalStatement naturalStatementWithSQL:*(a1 + 48) parameters:v15];
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 40) enqueueStatement:v16];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(*(a1 + 32) + 8) executeUpdate:*(a1 + 48) withParameters:v15 error:0];
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    *(v7 + 36) = 0;
  }

  else
  {
    v17 = os_log_create("com.apple.amp.medialibrary", "SortMap");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = 138543362;
      v19 = v10;
      _os_log_impl(&dword_22D2FA000, v17, OS_LOG_TYPE_ERROR, "sort map insertion failed for '%{public}@'", &v18, 0xCu);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
    *a3 = 1;
  }

  objc_autoreleasePoolPop(v6);
}

- (id)_sortKeyString:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCAB68] stringWithCapacity:{objc_msgSend(v3, "length")}];
  v5 = [v3 bytes];
  if ([v3 length])
  {
    v6 = 0;
    do
    {
      [v4 appendFormat:@"%02x", *(v5 + v6++)];
    }

    while ([v3 length] > v6);
  }

  return v4;
}

- (int64_t)_sortKeyDistance:(id)a3 sortKey2:(id)a4 offset:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 length];
  v10 = [v8 length];
  v11 = [v7 bytes];
  v12 = [v8 bytes];
  if (a5 > 0xFFFFFFFFFFFFFFF8)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 7;
    do
    {
      if (a5 >= v9)
      {
        v15 = 0;
      }

      else
      {
        v15 = *(v11 + a5);
      }

      if (a5 >= v10)
      {
        v16 = 0;
      }

      else
      {
        v16 = *(v12 + a5);
      }

      v13 = (v13 << 8) - v15 + v16;
      ++a5;
      --v14;
    }

    while (v14);
  }

  return v13;
}

- (id)_maxSortKeyForEntry:(id)a3 iPhoneSortKeyBuilder:(iPhoneSortKeyBuilder *)a4
{
  v10[1] = *MEMORY[0x277D85DE8];
  maxSortKey = self->_maxSortKey;
  if (!maxSortKey)
  {
    v9 = *(a4 + 32) + 48;
    v6 = [MEMORY[0x277CBEB28] dataWithBytes:&v9 length:1];
    v10[0] = -1;
    [(NSData *)v6 appendBytes:v10 length:8];
    v7 = self->_maxSortKey;
    self->_maxSortKey = v6;

    maxSortKey = self->_maxSortKey;
  }

  return maxSortKey;
}

- (id)_minSortKeyForEntry:(id)a3 iPhoneSortKeyBuilder:(iPhoneSortKeyBuilder *)a4
{
  minSortKey = self->_minSortKey;
  if (!minSortKey)
  {
    v6 = iPhoneSortKeyBuilderCopySectionSortKey(a4, 0, 0);
    v7 = self->_minSortKey;
    self->_minSortKey = v6;

    minSortKey = self->_minSortKey;
  }

  return minSortKey;
}

- (BOOL)_insertSortedNameEntriesIntoSortMap:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CCAB58] indexSet];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 1;
  v7 = [(ML3SortMap *)self loadExistingSortedEntries];
  *(v38 + 24) = v7;
  if (v7)
  {
    v8 = os_log_create("com.apple.amp.medialibrary", "SortMap");
    v9 = os_signpost_id_generate(v8);

    v10 = os_log_create("com.apple.amp.medialibrary", "SortMap");
    v11 = v10;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22D2FA000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "insert", "", buf, 2u);
    }

    v23 = v9 - 1;
    v24 = v9;
    v25 = a2;
    v26 = v5;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v12 = v5;
    v13 = [v12 countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v13)
    {
      v14 = 0;
      v15 = *v33;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v32 + 1) + 8 * i);
          v14 = [(NSMutableArray *)self->_entries indexOfObject:v17 inSortedRange:v14 options:[(NSMutableArray *)self->_entries count]- v14 usingComparator:1536, &__block_literal_global_6433];
          [(NSMutableArray *)self->_entries insertObject:v17 atIndex:v14];
          [v6 addIndex:v14];
        }

        v13 = [v12 countByEnumeratingWithState:&v32 objects:v41 count:16];
      }

      while (v13);
    }

    v5 = v26;
    v18 = os_log_create("com.apple.amp.medialibrary", "SortMap");
    v19 = v18;
    if (v23 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22D2FA000, v19, OS_SIGNPOST_INTERVAL_END, v24, "insert", "", buf, 2u);
    }

    library = self->_library;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __50__ML3SortMap__insertSortedNameEntriesIntoSortMap___block_invoke;
    v27[3] = &unk_278761EE0;
    v28 = v6;
    v29 = self;
    v30 = &v37;
    v31 = v25;
    [(ML3MusicLibrary *)library accessSortKeyBuilder:v27];

    v21 = *(v38 + 24);
  }

  else
  {
    v21 = 0;
  }

  _Block_object_dispose(&v37, 8);

  return v21 & 1;
}

void __50__ML3SortMap__insertSortedNameEntriesIntoSortMap___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v59 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) firstIndex];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return;
  }

  v4 = v3;
  i = 0;
  v6 = 0;
  v48 = v2;
  while (1)
  {
    v7 = [*(*(v2 + 40) + 32) objectAtIndex:v4];
    if (v4)
    {
      v8 = [*(*(v2 + 40) + 32) objectAtIndex:v4 - 1];
    }

    else
    {
      v8 = 0;
    }

    if (i <= v4)
    {
      for (i = v4 + 1; i < [*(*(v2 + 40) + 32) count]; ++i)
      {
        v9 = v6;
        v6 = [*(*(v2 + 40) + 32) objectAtIndex:i];

        if (!v6 || *(v6 + 8) >= 1)
        {
          goto LABEL_13;
        }
      }

      v6 = 0;
    }

LABEL_13:
    if (v8)
    {
      v10 = *(v8 + 8);
      if (v6)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v10 = [*(v2 + 40) _minNameOrderForSortMapEntry:v7 iPhoneSortKeyBuilder:a2];
      if (v6)
      {
LABEL_15:
        v11 = *(v6 + 8);
        goto LABEL_18;
      }
    }

    v11 = [*(v2 + 40) _maxNameOrderForSortMapEntry:v7 iPhoneSortKeyBuilder:a2];
LABEL_18:
    if (v11 <= v10)
    {
      v34 = [MEMORY[0x277CCA890] currentHandler];
      v35 = v34;
      if (v8)
      {
        v36 = *(v8 + 16);
      }

      else
      {
        v36 = 0;
      }

      if (v6)
      {
        v45 = *(v6 + 16);
      }

      else
      {
        v45 = 0;
      }

      [v34 handleFailureInMethod:*(v2 + 56) object:*(v2 + 40) file:@"ML3SortMap.m" lineNumber:816 description:{@"corrupted name ordering detected. prevNameOrder=%lld, nextNameOrder=%lld, prevEntry=%@, nextEntry=%@", v10, v11, v36, v45}];
    }

    if (v11 - v10 == 1)
    {
      break;
    }

    if (v8)
    {
      v12 = *(v8 + 24);
    }

    else
    {
      v12 = [*(v2 + 40) _minSortKeyForEntry:v7 iPhoneSortKeyBuilder:a2];
    }

    v13 = v12;
    v52 = v8;
    v53 = v4;
    v50 = v11 - v10;
    v51 = v10;
    if (v6)
    {
      v14 = *(v6 + 24);
    }

    else
    {
      v14 = [*(v2 + 40) _maxSortKeyForEntry:v7 iPhoneSortKeyBuilder:a2];
    }

    v15 = v14;
    v16 = [v13 bytes];
    v17 = [v15 bytes];
    v18 = v7;
    v19 = [v7[3] bytes];
    v20 = [v13 length];
    v54 = v15;
    v21 = [v15 length];
    v22 = v18;
    v23 = [v18[3] length];
    if (v20 >= v21)
    {
      v24 = v21;
    }

    else
    {
      v24 = v20;
    }

    v25 = 0;
    if (v24 >= v23)
    {
      v24 = v23;
    }

    if (v24)
    {
      v2 = v48;
      while (1)
      {
        v26 = *(v16 + v25);
        if (v26 != *(v17 + v25) || v26 != *(v19 + v25))
        {
          break;
        }

        if (v24 == ++v25)
        {
          v25 = v24;
          break;
        }
      }
    }

    else
    {
      v2 = v48;
    }

    v27 = [*(v2 + 40) _sortKeyDistance:v13 sortKey2:v54 offset:v25];
    v28 = [*(v2 + 40) _sortKeyDistance:v13 sortKey2:v22[3] offset:v25];
    v29 = v28;
    if (v27 >= 2 && v28 <= v27)
    {
      if (!v52)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v37 = [MEMORY[0x277CCA890] currentHandler];
      v38 = v37;
      if (v52)
      {
        v39 = v52[2];
      }

      else
      {
        v39 = 0;
      }

      if (v6)
      {
        v46 = *(v6 + 16);
      }

      else
      {
        v46 = 0;
      }

      [v37 handleFailureInMethod:*(v2 + 56) object:*(v2 + 40) file:@"ML3SortMap.m" lineNumber:841 description:{@"incorrect sort key distance calculated. sortKeyGap=%lld, sortEntryDelta=%lld. prevEntry=%@, nextEntry=%@", v27, v29, v39, v46}];

      if (!v52)
      {
        goto LABEL_47;
      }
    }

    if (v29 <= 0 && compareSortKeys(v13, v22[3]) >= 1)
    {
      v44 = [MEMORY[0x277CCA890] currentHandler];
      [v44 handleFailureInMethod:*(v2 + 56) object:*(v2 + 40) file:@"ML3SortMap.m" lineNumber:842 description:{@"entryDistance = 0, but sort keys are descending"}];
    }

LABEL_47:
    if (v29 >= v27 && compareSortKeys(v54, v22[3]) < 0)
    {
      v40 = [MEMORY[0x277CCA890] currentHandler];
      [v40 handleFailureInMethod:*(v2 + 56) object:*(v2 + 40) file:@"ML3SortMap.m" lineNumber:843 description:{@"entryDistance = gapDistance, but sort keys are ascending"}];

      if (v29)
      {
        goto LABEL_50;
      }
    }

    else if (v29)
    {
      goto LABEL_50;
    }

    if (compareSortKeys(v13, v22[3]))
    {
      goto LABEL_61;
    }

LABEL_50:
    if (v29 == v27 && compareSortKeys(v54, v22[3]))
    {
LABEL_61:
      v31 = v27 / 2;
      v32 = 9 * (v27 / 0xAuLL);
      if (v29 != v27)
      {
        v32 = v27 / 0xAuLL;
      }

      v33 = v27 < 10;
      goto LABEL_64;
    }

    v31 = v27 / 10;
    v32 = 9 * (v27 / 10);
    if (v29 < v32)
    {
      v32 = v29;
    }

    v33 = v29 < v31;
LABEL_64:
    if (!v33)
    {
      v31 = v32;
    }

    v41 = (v50 / v27 * v31);
    if (v41 <= 1)
    {
      v41 = 1;
    }

    v22[1] = (v41 + v51);
    *(v22 + 36) = 1;
    v42 = *(*(v2 + 40) + 24);
    v43 = [MEMORY[0x277CCAE60] valueWithML3NameOrder:?];
    [v42 setObject:v43 forKey:v22[2]];

    v4 = [*(v2 + 32) indexGreaterThanIndex:v53];
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_84;
    }
  }

  v47 = os_log_create("com.apple.amp.medialibrary", "SortMap");
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218240;
    v56 = v10;
    v57 = 2048;
    v58 = v11;
    _os_log_impl(&dword_22D2FA000, v47, OS_LOG_TYPE_ERROR, "nameOrderSpacing <= 0 between %lld and %lld", buf, 0x16u);
  }

  *(*(*(v2 + 48) + 8) + 24) = 0;
LABEL_84:
}

- (id)_sortedNameEntriesToInsertForNames:(id)a3
{
  v5 = a3;
  [(ML3SortMap *)self loadExistingSortedEntries];
  v6 = [MEMORY[0x277CBEB18] array];
  library = self->_library;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __49__ML3SortMap__sortedNameEntriesToInsertForNames___block_invoke;
  v16 = &unk_278761EB8;
  v20 = a2;
  v17 = v5;
  v18 = self;
  v8 = v6;
  v19 = v8;
  v9 = v5;
  [(ML3MusicLibrary *)library accessSortKeyBuilder:&v13];
  [v8 sortUsingComparator:{&__block_literal_global_6433, v13, v14, v15, v16}];
  v10 = v19;
  v11 = v8;

  return v8;
}

void __49__ML3SortMap__sortedNameEntriesToInsertForNames___block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v21 = *(a1 + 32);
  v3 = [v21 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    v19 = *MEMORY[0x277CBED08];
    do
    {
      v6 = 0;
      do
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(v21);
        }

        v7 = *(*(&v23 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        if (![v7 length])
        {
          v18 = [MEMORY[0x277CCA890] currentHandler];
          [v18 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"ML3SortMap.m" lineNumber:749 description:@"blank string cannot be inserted into sort map"];
        }

        v9 = [*(*(a1 + 40) + 24) objectForKey:{v7, v19}];

        if (!v9)
        {
          v10 = [v7 length];
          MEMORY[0x28223BE20](v10);
          v12 = (&v19 - v11);
          [v7 getCharacters:&v19 - v11 range:{0, v10}];
          v22 = 0;
          v13 = v20;
          v14 = iPhoneSortKeyBuilderCreateFromUTF16String(v20, v12, v10, &v22);
          LODWORD(v10) = v22;
          SectionFromiPhoneSortKey = iPhoneSortKeyBuilderGetSectionFromiPhoneSortKey(v13, v14, v22);
          v16 = CFDataCreateWithBytesNoCopy(v19, v14, v10, v19);
          v17 = [[ML3MusicLibrary_SortMapEntry alloc] initWithName:v7 nameSection:SectionFromiPhoneSortKey sortKey:v16];
          CFRelease(v16);
          [*(a1 + 48) addObject:v17];
        }

        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v4 != v6);
      v4 = [v21 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v4);
  }
}

- (BOOL)commitFailedInsertedStrings:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(ML3SortMap *)self loadExistingSortedEntries];
  if (![(ML3SortMap *)self commitUpdates])
  {
    goto LABEL_13;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_nameOrders objectForKey:v10, v19];

        if (!v11)
        {
          connection = self->_connection;
          v23 = v10;
          v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
          [(ML3DatabaseConnection *)connection executeUpdate:@"INSERT INTO sort_map (name withParameters:sort_key) VALUES (? error:'')", v13, 0];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  nameOrders = self->_nameOrders;
  self->_nameOrders = 0;

  entries = self->_entries;
  self->_entries = 0;

  if ([(ML3MusicLibrary *)self->_library updateSortMapOnConnection:self->_connection forceUpdateOriginals:0])
  {
    v16 = [(ML3SortMap *)self _sortedNameEntriesToInsertForNames:v5];
    v17 = [(ML3SortMap *)self _insertSortedNameEntriesIntoSortMap:v16];
  }

  else
  {
LABEL_13:
    v17 = 0;
  }

  return v17;
}

- (BOOL)attemptInsertStringsIntoSortMap:(id)a3
{
  v4 = [(ML3SortMap *)self _sortedNameEntriesToInsertForNames:a3];
  v5 = [(ML3SortMap *)self _insertSortedNameEntriesIntoSortMap:v4];
  if (!v5)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "SortMap");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_ERROR, "initial sort map insert failed - commit what we have and force a rebuild", v8, 2u);
    }
  }

  return v5;
}

- (BOOL)insertStringsIntoSortMap:(id)a3 didReSortMap:(BOOL *)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  v7 = [(ML3SortMap *)self _sortedNameEntriesToInsertForNames:v6];
  if ([(ML3SortMap *)self _insertSortedNameEntriesIntoSortMap:v7])
  {
    v8 = 1;
  }

  else
  {
    if (a4)
    {
      *a4 = 1;
    }

    v9 = os_log_create("com.apple.amp.medialibrary", "SortMap");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_ERROR, "initial sort map insert failed - commit what we have and force a rebuild", buf, 2u);
    }

    if ([(ML3SortMap *)self commitUpdates])
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v23 = v6;
      v10 = v6;
      v11 = [v10 countByEnumeratingWithState:&v24 objects:v30 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v25;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v25 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v24 + 1) + 8 * i);
            v16 = [(NSMutableDictionary *)self->_nameOrders objectForKey:v15];

            if (!v16)
            {
              connection = self->_connection;
              v29 = v15;
              v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
              [(ML3DatabaseConnection *)connection executeUpdate:@"INSERT INTO sort_map (name withParameters:sort_key) VALUES (? error:'')", v18, 0];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v24 objects:v30 count:16];
        }

        while (v12);
      }

      nameOrders = self->_nameOrders;
      self->_nameOrders = 0;

      entries = self->_entries;
      self->_entries = 0;

      if ([(ML3MusicLibrary *)self->_library updateSortMapOnConnection:self->_connection forceUpdateOriginals:0])
      {
        v21 = [(ML3SortMap *)self _sortedNameEntriesToInsertForNames:v10];

        v8 = [(ML3SortMap *)self _insertSortedNameEntriesIntoSortMap:v21];
        v7 = v21;
      }

      else
      {
        v8 = 0;
      }

      v6 = v23;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)loadExistingSortedEntries
{
  v42 = *MEMORY[0x277D85DE8];
  if (!self->_entries || !self->_nameOrders)
  {
    if (self->_preloadNames)
    {
      v4 = os_log_create("com.apple.amp.medialibrary", "SortMap");
      v5 = os_signpost_id_generate(v4);

      v6 = os_log_create("com.apple.amp.medialibrary", "SortMap");
      v7 = v6;
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
      {
        LOWORD(buf.receiver) = 0;
        _os_signpost_emit_with_name_impl(&dword_22D2FA000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "db:fetch", "", &buf, 2u);
      }

      v8 = objc_autoreleasePoolPush();
      v9 = [(ML3DatabaseConnection *)self->_connection executeQuery:@"SELECT COUNT(*) FROM sort_map"];
      v10 = [v9 int64ValueForFirstRowAndColumn];
      if (v10)
      {
        v11 = v10;
        v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:v10];
        entries = self->_entries;
        self->_entries = v12;

        v14 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v11];
        nameOrders = self->_nameOrders;
        self->_nameOrders = v14;

        v16 = [(ML3DatabaseConnection *)self->_connection executeQuery:@"SELECT name, name_order, name_section, sort_key FROM sort_map ORDER BY name_order"];

        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __39__ML3SortMap_loadExistingSortedEntries__block_invoke;
        v40[3] = &unk_278761E90;
        v40[4] = self;
        v40[5] = a2;
        [v16 enumerateRowsWithBlock:v40];
        v9 = v16;
      }

      else
      {
        v31 = [MEMORY[0x277CBEB38] dictionary];
        v32 = self->_nameOrders;
        self->_nameOrders = v31;

        v33 = [MEMORY[0x277CBEB18] array];
        v34 = self->_entries;
        self->_entries = v33;
      }

      v35 = os_log_create("com.apple.amp.medialibrary", "SortMap");
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [(NSMutableArray *)self->_entries count];
        LODWORD(buf.receiver) = 134217984;
        *(&buf.receiver + 4) = v36;
        _os_log_impl(&dword_22D2FA000, v35, OS_LOG_TYPE_DEFAULT, "loaded %lu existing entries", &buf, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      v37 = os_log_create("com.apple.amp.medialibrary", "SortMap");
      v38 = v37;
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
      {
        LOWORD(buf.receiver) = 0;
        _os_signpost_emit_with_name_impl(&dword_22D2FA000, v38, OS_SIGNPOST_INTERVAL_END, v5, "db:fetch", "", &buf, 2u);
      }
    }

    else
    {
      v17 = [ML3SortMapFaultingNameOrderDictionary alloc];
      connection = self->_connection;
      v19 = connection;
      if (v17)
      {
        buf.receiver = v17;
        buf.super_class = ML3SortMapFaultingNameOrderDictionary;
        v20 = [(ML3SortMap *)&buf init];
        v17 = v20;
        if (v20)
        {
          objc_storeStrong(&v20->_connection, connection);
          v21 = [MEMORY[0x277CBEB38] dictionary];
          dirtyInserts = v17->_dirtyInserts;
          v17->_dirtyInserts = v21;
        }
      }

      v23 = self->_nameOrders;
      self->_nameOrders = &v17->super;

      v24 = [ML3SortMapFaultingEntryArray alloc];
      v25 = self->_connection;
      v26 = v25;
      if (v24)
      {
        buf.receiver = v24;
        buf.super_class = ML3SortMapFaultingEntryArray;
        v27 = [(ML3SortMap *)&buf init];
        v24 = v27;
        if (v27)
        {
          objc_storeStrong(&v27->_connection, v25);
          v28 = [MEMORY[0x277CBEB38] dictionary];
          v29 = v24->_dirtyInserts;
          v24->_dirtyInserts = v28;
        }
      }

      v30 = self->_entries;
      self->_entries = &v24->super;
    }
  }

  return 1;
}

void __39__ML3SortMap_loadExistingSortedEntries__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = [v3 stringForColumnIndex:0];
  v4 = [v3 int64ForColumnIndex:1];
  v5 = [v3 intForColumnIndex:2];
  v6 = [v3 dataForColumnIndex:3];

  v7 = [[ML3MusicLibrary_SortMapEntry alloc] initWithName:v11 nameSection:v5 sortKey:v6 nameOrder:v4 dirtyFlag:0];
  [*(*(a1 + 32) + 32) addObject:v7];
  v8 = [MEMORY[0x277CCAE60] valueWithML3NameOrder:{v4, v5}];
  if (v11)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"ML3SortMap.m" lineNumber:652 description:@"got nil name from the sort map!"];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v10 = [MEMORY[0x277CCA890] currentHandler];
  [v10 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"ML3SortMap.m" lineNumber:653 description:@"valueWithML3NameOrder returned nil!"];

LABEL_3:
  [*(*(a1 + 32) + 24) setObject:v8 forKey:v11];
}

- (ML3SortMap)initWithConnection:(id)a3 library:(id)a4 preloadNames:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = ML3SortMap;
  v11 = [(ML3SortMap *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_connection, a3);
    objc_storeStrong(&v12->_library, a4);
    v12->_smallestNameDelta = 0x7FFFFFFFFFFFFFFFLL;
    v12->_preloadNames = a5;
  }

  return v12;
}

@end