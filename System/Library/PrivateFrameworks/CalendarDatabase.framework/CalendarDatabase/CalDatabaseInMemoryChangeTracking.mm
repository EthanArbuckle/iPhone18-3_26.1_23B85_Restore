@interface CalDatabaseInMemoryChangeTracking
+ (id)canonicalizePath:(id)a3;
+ (id)changeTrackingForDatabase:(CalDatabase *)a3;
+ (id)changeTrackingForDatabaseWithPath:(id)a3;
+ (id)pathForDatabase:(CalDatabase *)a3;
+ (void)_setInterestedDatabasePaths:(id)a3 forContext:(id)a4;
+ (void)setInterestedDatabasePaths:(id)a3 forContext:(id)a4;
+ (void)setInterestedDatabases:(id)a3 forContext:(id)a4;
- (CalDatabaseInMemoryChangeTracking)init;
- (id)changedEntityIDsBetweenMinExternalTimestamp:(unint64_t)a3 minSelfTimestamp:(unint64_t)a4 maxExternalTimestamp:(unint64_t)a5 allowIntegrationChanges:(BOOL)a6 latestSelfTimestamp:(unint64_t *)a7 client:(int)a8 changeType:(unint64_t *)a9 deleteOffset:(unint64_t *)a10;
- (int)_writeChanges:(id)a3 withTimestamp:(unint64_t)a4 flags:(int)a5 clientID:(unsigned int)a6 atIndex:(int)a7;
- (void)clearAllChangesets;
@end

@implementation CalDatabaseInMemoryChangeTracking

- (CalDatabaseInMemoryChangeTracking)init
{
  v3.receiver = self;
  v3.super_class = CalDatabaseInMemoryChangeTracking;
  result = [(CalDatabaseInMemoryChangeTracking *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

+ (id)canonicalizePath:(id)a3
{
  v3 = a3;
  if (([v3 hasSuffix:@"/"] & 1) == 0)
  {
    v4 = [v3 stringByAppendingString:@"/"];

    v3 = v4;
  }

  return v3;
}

+ (id)pathForDatabase:(CalDatabase *)a3
{
  v4 = CalDatabaseCopyDirectoryPathForDatabase(a3);
  v5 = [a1 canonicalizePath:v4];

  return v5;
}

+ (void)_setInterestedDatabasePaths:(id)a3 forContext:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  os_unfair_lock_lock(&_trackedDatabasesLock);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [_trackedDatabases allKeys];
  v7 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = [_trackedDatabases objectForKeyedSubscript:v11];
        v13 = [v5 containsObject:v11];
        v14 = [v12 clients];
        v15 = v14;
        if (v13)
        {
          [v14 addObject:v6];

          [v5 removeObject:v11];
        }

        else
        {
          [v14 removeObject:v6];

          if (([v12 hasClients] & 1) == 0)
          {
            [_trackedDatabases removeObjectForKey:v11];
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v8);
  }

  if (!_trackedDatabases)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v17 = _trackedDatabases;
    _trackedDatabases = v16;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = v5;
  v19 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v28 + 1) + 8 * j);
        v24 = objc_alloc_init(CalInMemoryTrackedDatabase);
        v25 = [(CalInMemoryTrackedDatabase *)v24 clients];
        [v25 addObject:v6];

        [_trackedDatabases setObject:v24 forKeyedSubscript:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v20);
  }

  os_unfair_lock_unlock(&_trackedDatabasesLock);
  v26 = *MEMORY[0x1E69E9840];
}

+ (void)setInterestedDatabases:(id)a3 forContext:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [a1 pathForDatabase:{*(*(&v16 + 1) + 8 * i), v16}];
          [v8 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v8 = 0;
  }

  [a1 _setInterestedDatabasePaths:v8 forContext:{v7, v16}];

  v15 = *MEMORY[0x1E69E9840];
}

+ (void)setInterestedDatabasePaths:(id)a3 forContext:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [a1 canonicalizePath:{*(*(&v16 + 1) + 8 * i), v16}];
          [v8 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v8 = 0;
  }

  [a1 _setInterestedDatabasePaths:v8 forContext:{v7, v16}];

  v15 = *MEMORY[0x1E69E9840];
}

+ (id)changeTrackingForDatabase:(CalDatabase *)a3
{
  v4 = [a1 pathForDatabase:a3];
  v5 = [a1 changeTrackingForDatabaseWithPath:v4];

  return v5;
}

+ (id)changeTrackingForDatabaseWithPath:(id)a3
{
  v3 = [a1 canonicalizePath:a3];
  os_unfair_lock_lock(&_trackedDatabasesLock);
  v4 = [_trackedDatabases objectForKeyedSubscript:v3];
  v5 = [v4 database];

  os_unfair_lock_unlock(&_trackedDatabasesLock);

  return v5;
}

- (void)clearAllChangesets
{
  os_unfair_lock_lock(&self->_lock);
  self->_nextIndex = 0;
  self->_changeCount = 0;
  self->_lastPrunedTimestamp = CalMonotonicTime();

  os_unfair_lock_unlock(&self->_lock);
}

- (int)_writeChanges:(id)a3 withTimestamp:(unint64_t)a4 flags:(int)a5 clientID:(unsigned int)a6 atIndex:(int)a7
{
  v31 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    changes = self->_changes;
    v17 = ((a6 & 0x1FFFFF) << 8) | (a5 << 29);
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v26 + 1) + 8 * i);
        v20 = &changes[a7];
        v20->timestamp = a4;
        v21 = CalRecordIDGetEntityType(v19);
        *(v20 + 3) = *(v20 + 3) & 0xFFFFFF00 | internalEntityTypeFromExternalType(v21);
        v22 = CalRecordIDGetRowID(v19);
        v23 = v17 | *(v20 + 12);
        v20->rowID = v22;
        *(v20 + 3) = v23;
        if (a7 == 511)
        {
          a7 = 0;
        }

        else
        {
          ++a7;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v14);
  }

  v24 = *MEMORY[0x1E69E9840];
  return a7;
}

- (id)changedEntityIDsBetweenMinExternalTimestamp:(unint64_t)a3 minSelfTimestamp:(unint64_t)a4 maxExternalTimestamp:(unint64_t)a5 allowIntegrationChanges:(BOOL)a6 latestSelfTimestamp:(unint64_t *)a7 client:(int)a8 changeType:(unint64_t *)a9 deleteOffset:(unint64_t *)a10
{
  v11 = a6;
  v13 = a10;
  changeCount = self->_changeCount;
  if (changeCount < 1)
  {
    p_lastPrunedTimestamp = &self->_lastPrunedTimestamp;
  }

  else
  {
    nextIndex = self->_nextIndex;
    if (nextIndex)
    {
      v16 = nextIndex - 1;
    }

    else
    {
      v16 = 511;
    }

    p_lastPrunedTimestamp = &self->_changes[v16];
  }

  *a7 = p_lastPrunedTimestamp->timestamp;
  if (a10)
  {
    *a10 = 0;
  }

  if (a3 >= a4)
  {
    v18 = a4;
  }

  else
  {
    v18 = a3;
  }

  if (v18 < self->_lastPrunedTimestamp)
  {
    v19 = 0;
    goto LABEL_83;
  }

  if (!changeCount)
  {
    if (a9)
    {
      *a9 = 1;
    }

    v19 = objc_alloc_init(MEMORY[0x1E695DEF0]);
    goto LABEL_83;
  }

  v20 = self->_nextIndex - changeCount + ((self->_nextIndex - changeCount) >> 31 << 9);
  v21 = changeCount - 1;
  v22 = 0;
  if (changeCount > 1)
  {
    do
    {
      v23 = v20 + ((v22 + v21) >> 1);
      v24 = v23 & 0x1FF;
      v26 = -v23;
      v25 = v26 < 0;
      v27 = v26 & 0x1FF;
      if (v25)
      {
        v28 = v24;
      }

      else
      {
        v28 = -v27;
      }

      if (self->_changes[v28].timestamp <= v18)
      {
        v22 = ((v22 + v21) >> 1) + 1;
      }

      else
      {
        v21 = (v22 + v21) >> 1;
      }
    }

    while (v22 < v21);
  }

  v29 = changeCount - v22;
  Mutable = CFDictionaryCreateMutable(0, changeCount - v22, 0, 0);
  v78 = Mutable;
  v79 = 0;
  if (v29 < 1)
  {
    v55 = Mutable;
    v31 = 0;
    v57 = 0;
    v56 = 1;
    goto LABEL_76;
  }

  v64 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  if ((v22 + v20) <= 0)
  {
    v35 = -(-(v22 + v20) & 0x1FF);
  }

  else
  {
    v35 = (v22 + v20) & 0x1FF;
  }

  changes = self->_changes;
  v37 = 1;
  v39 = a4;
  v38 = a5;
  v40 = a3;
  v61 = v11;
  v62 = a8;
  do
  {
    v41 = &changes[v35];
    timestamp = v41->timestamp;
    v43 = *(v41 + 3);
    if (((v43 >> 8) & 0x1FFFFF) == a8)
    {
      if (timestamp <= v39)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v44 = timestamp <= v40 || timestamp > v38;
      if (v44)
      {
        goto LABEL_64;
      }
    }

    if ((v43 & 0x60000000) != 0x40000000 || v11)
    {
      v70 = v34;
      v71 = v33;
      v46 = *(v41 + 3);
      rowID = v41->rowID;
      v68 = v37 != ((v43 >> 29) & 3);
      if ((v34 & 1) == 0)
      {
        v37 = (v43 >> 29) & 3;
      }

      v69 = v37;
      v74 = 0;
      v75 = 0;
      v76 = 0;
      Value = CFDictionaryGetValue(v78, rowID);
      LODWORD(v74) = Value;
      if (Value)
      {
        if ((Value & 0x80000000) == 0)
        {
          v49 = 0;
          while ((Value & 0x1F) != v46)
          {
            ++v49;
            v44 = Value > 0x3F;
            Value >>= 6;
            if (!v44)
            {
              LODWORD(v76) = v49;
              HIDWORD(v74) = -1;
              goto LABEL_53;
            }
          }

          HIDWORD(v74) = v49;
          if ((Value & 0x20) == 0)
          {
LABEL_58:
            if ((v43 & 0x80000000) != 0)
            {
              EntityDict_set(&v78, v43, rowID, &v74, 1);
              ++v64;
              --v31;
            }

            goto LABEL_63;
          }

          goto LABEL_61;
        }

        v63 = v31;
        ValueAtIndex = CFArrayGetValueAtIndex(v79, Value & 0x7FFFFFFF);
        v75 = ValueAtIndex;
        Count = CFArrayGetCount(ValueAtIndex);
        if (Count >= 1)
        {
          v52 = Count;
          v53 = 0;
          while (1)
          {
            v54 = CFArrayGetValueAtIndex(ValueAtIndex, v53);
            if ((v54 & 0x1F) == v46)
            {
              break;
            }

            if (v52 == ++v53)
            {
              goto LABEL_52;
            }
          }

          HIDWORD(v74) = v53;
          v31 = v63;
          v11 = v61;
          a8 = v62;
          if ((v54 & 0x20) == 0)
          {
            goto LABEL_58;
          }

LABEL_61:
          if ((v43 & 0x80000000) != 0)
          {
            goto LABEL_63;
          }

          EntityDict_set(&v78, v43, rowID, &v74, 0);
          --v64;
          goto LABEL_55;
        }

LABEL_52:
        HIDWORD(v74) = -1;
        v31 = v63;
        v11 = v61;
        a8 = v62;
      }

      else
      {
        v74 = 0xFFFFFFFF00000000;
        LODWORD(v76) = 0;
      }

LABEL_53:
      if ((v43 & 0x80000000) != 0)
      {
        EntityDict_set(&v78, v43, rowID, &v74, 1);
        ++v64;
        goto LABEL_63;
      }

      EntityDict_set(&v78, v43, rowID, &v74, 0);
LABEL_55:
      ++v31;
LABEL_63:
      v33 = v70 & v68 | v71;
      v34 = 1;
      v39 = a4;
      v38 = a5;
      v40 = a3;
      v37 = v69;
LABEL_64:
      if (v35 == 511)
      {
        v35 = 0;
      }

      else
      {
        ++v35;
      }
    }

    ++v32;
  }

  while (v32 != v29);
  v55 = v78;
  if (v33)
  {
    v56 = 0;
  }

  else
  {
    v56 = v37;
  }

  v13 = a10;
  v57 = v64;
LABEL_76:
  v58 = 8 * (v57 + v31);
  v59 = malloc_type_malloc(v58, 0x100004000313F17uLL);
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v73[0] = 0;
  v73[1] = v73;
  v73[2] = 0x2020000000;
  v73[3] = v31;
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __194__CalDatabaseInMemoryChangeTracking_changedEntityIDsBetweenMinExternalTimestamp_minSelfTimestamp_maxExternalTimestamp_allowIntegrationChanges_latestSelfTimestamp_client_changeType_deleteOffset___block_invoke;
  v72[3] = &unk_1E8694500;
  v72[5] = &v74;
  v72[6] = v59;
  v72[4] = v73;
  context[0] = &v78;
  context[1] = v72;
  CFDictionaryApplyFunction(v55, _EntityDict_enumerate, context);
  CFRelease(v78);
  if (v79)
  {
    CFRelease(v79);
  }

  v19 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v59 length:v58 freeWhenDone:1];
  if (a9)
  {
    *a9 = v56;
  }

  if (v13)
  {
    *v13 = v31;
  }

  _Block_object_dispose(v73, 8);
  _Block_object_dispose(&v74, 8);
LABEL_83:

  return v19;
}

uint64_t __194__CalDatabaseInMemoryChangeTracking_changedEntityIDsBetweenMinExternalTimestamp_minSelfTimestamp_maxExternalTimestamp_allowIntegrationChanges_latestSelfTimestamp_client_changeType_deleteOffset___block_invoke(uint64_t result, int a2, int a3, int a4)
{
  if ((a2 - 1) > 0x13)
  {
    v4 = -1;
  }

  else
  {
    v4 = dword_1DECB2170[a2 - 1];
  }

  v5 = 40;
  if (a4)
  {
    v5 = 32;
  }

  v6 = *(result + 48);
  *(v6 + 8 * *(*(*(result + v5) + 8) + 24)) = v4;
  *(v6 + 8 * (*(*(*(result + v5) + 8) + 24))++ + 4) = a3;
  return result;
}

@end